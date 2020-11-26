import {inject, lifeCycleObserver, LifeCycleObserver} from '@loopback/core';
import {juggler} from '@loopback/repository';

const config = {
  name: 'bd_escuela',
  connector: 'mssql',
  url: 'mssql://sa:diegosql@DESKTOP-A3L64N2/Escuela',
  host: 'DESKTOP-A3L64N2',
  port: 1433,
  user: 'sa',
  password: 'diegosql',
  database: 'Escuela'
};

// Observe application's life cycle to disconnect the datasource when
// application is stopped. This allows the application to be shut down
// gracefully. The `stop()` method is inherited from `juggler.DataSource`.
// Learn more at https://loopback.io/doc/en/lb4/Life-cycle.html
@lifeCycleObserver('datasource')
export class BdEscuelaDataSource extends juggler.DataSource
  implements LifeCycleObserver {
  static dataSourceName = 'bd_escuela';
  static readonly defaultConfig = config;

  constructor(
    @inject('datasources.config.bd_escuela', {optional: true})
    dsConfig: object = config,
  ) {
    super(dsConfig);
  }
}
