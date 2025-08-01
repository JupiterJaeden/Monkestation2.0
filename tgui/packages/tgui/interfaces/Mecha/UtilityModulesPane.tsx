import { useBackend } from '../../backend';
import { Box, Button, ProgressBar, Section, Tooltip } from '../../components';
import { OperatorData, MechaUtility } from './data';

const UtilityName = (props: { name: string }) => {
  const { name } = props;
  return (
    <Tooltip content={name} position="top">
      <span className="UtilityModulePane__UtilityName">{`${name}:`}</span>
    </Tooltip>
  );
};

type EquipmentProps = {
  module: MechaUtility;
};

const Equipment = (props: EquipmentProps) => {
  const { module } = props;
  const { act } = useBackend<OperatorData>();

  return (
    <div className="UtilityModulePane__Equipment">
      <UtilityName name={module.name} />
      <Button
        className="UtilityModulePane__Equipment__button"
        content={(module.activated ? 'En' : 'Dis') + 'abled'}
        onClick={() =>
          act('equip_act', {
            ref: module.ref,
            gear_action: 'toggle',
          })
        }
        selected={module.activated}
      />
      <Button
        className="UtilityModulePane__Equipment__button"
        content={'Detach'}
        onClick={() =>
          act('equip_act', {
            ref: module.ref,
            gear_action: 'detach',
          })
        }
      />
    </div>
  );
};

export const UtilityModulesPane = (props) => {
  const { data } = useBackend<OperatorData>();
  const { mech_equipment } = data;
  return (
    <Box style={{ height: '16rem' }}>
      <Section scrollable fill>
        <div>
          {mech_equipment['utility'].map((module, i) => {
            return module.snowflake.snowflake_id ? (
              <Snowflake module={module} />
            ) : (
              <Equipment module={module} />
            );
          })}
        </div>
      </Section>
    </Box>
  );
};

const MECHA_SNOWFLAKE_ID_EJECTOR = 'ejector_snowflake';
const MECHA_SNOWFLAKE_ID_EXTINGUISHER = 'extinguisher_snowflake';
const MECHA_SNOWFLAKE_ID_OREBOX_MANAGER = 'orebox_manager_snowflake';

// Handles all the snowflake buttons and whatever
const Snowflake = (props: { module: MechaUtility }) => {
  const { snowflake } = props.module;
  switch (snowflake['snowflake_id']) {
    case MECHA_SNOWFLAKE_ID_EJECTOR:
      return <SnowflakeEjector module={props.module} />;
    case MECHA_SNOWFLAKE_ID_EXTINGUISHER:
      return <SnowflakeExtinguisher module={props.module} />;
    case MECHA_SNOWFLAKE_ID_OREBOX_MANAGER:
      return <SnowflakeOrebox module={props.module} />;
    default:
      return null;
  }
};

const SnowflakeOrebox = (props: { module: MechaUtility }) => {
  const { act, data } = useBackend<OperatorData>();
  const { cargo } = props.module.snowflake;
  return (
    <Box>
      <div className="UtilityModulePane__SnowflakeEjector__entry">
        <UtilityName name={'Ore Box'} />
        <Button
          onClick={() =>
            act('equip_act', {
              ref: props.module.ref,
              gear_action: 'dump',
            })
          }
          disabled={!cargo}
        >
          {cargo ? 'Dump contents' : 'Empty'}
        </Button>
      </div>
    </Box>
  );
};

const SnowflakeEjector = (props: { module: MechaUtility }) => {
  const { act, data } = useBackend<OperatorData>();
  const { cargo } = props.module.snowflake;
  return (
    <>
      {cargo && cargo.length > 0 && <Box>Cargo</Box>}
      <Box style={{ 'margin-left': '1rem' }}>
        {cargo.map((item) => (
          <div
            key={props.module.ref}
            className="UtilityModulePane__SnowflakeEjector__entry"
          >
            <UtilityName name={item.name} />
            <Button
              onClick={() =>
                act('equip_act', {
                  ref: props.module.ref,
                  cargoref: item.ref,
                  gear_action: 'eject',
                })
              }
            >
              {'Eject'}
            </Button>
          </div>
        ))}
      </Box>
    </>
  );
};

const SnowflakeExtinguisher = (props: { module: MechaUtility }) => {
  const { act, data } = useBackend<OperatorData>();
  return (
    <>
      <ProgressBar
        value={props.module.snowflake.reagents}
        minValue={0}
        maxValue={props.module.snowflake.total_reagents}
      >
        {props.module.snowflake.reagents}
      </ProgressBar>
      <Button
        tooltip={'ACTIVATE'}
        color={'red'}
        disabled={
          props.module.snowflake.reagents < props.module.snowflake.minimum_requ
            ? 1
            : 0
        }
        icon={'fire-extinguisher'}
        onClick={() =>
          act('equip_act', {
            ref: props.module.ref,
            gear_action: 'activate',
          })
        }
      />
      <Button
        tooltip={'REFILL'}
        icon={'fill'}
        onClick={() =>
          act('equip_act', {
            ref: props.module.ref,
            gear_action: 'refill',
          })
        }
      />
      <Button
        tooltip={'REPAIR'}
        icon={'wrench'}
        onClick={() =>
          act('equip_act', {
            ref: props.module.ref,
            gear_action: 'repair',
          })
        }
      />
      <Button
        tooltip={'DETACH'}
        icon={'arrow-down'}
        onClick={() =>
          act('equip_act', {
            ref: props.module.ref,
            gear_action: 'detach',
          })
        }
      />
    </>
  );
};
