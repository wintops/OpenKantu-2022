program kantu2025;

{$IFNDEF FPC}
{$DEFINE DELPHI}
{$DEFINE TEECHART}
{$DEFINE VCL}
{$ENDIF}

uses
  Forms,
  Classes,
  kantu_main in 'kantu_main.pas' {MainForm},
  kantu_loadsymbol in 'kantu_loadsymbol.pas' {loadSymbol},
  kantu_pricepattern in 'kantu_pricepattern.pas' {PricePatternForm},
  kantu_filters in 'kantu_filters.pas' {FiltersForm},
  kantu_custom_filter in 'kantu_custom_filter.pas' {CustomFilterForm},
  kantu_portfolioresults in 'kantu_portfolioresults.pas' {PortfolioResultForm},
  kantu_simulation in 'kantu_simulation.pas' {SimulationForm},
  kantu_simulation_show in 'kantu_simulation_show.pas' {SimulationForm2},
  kantu_singlesystem in 'kantu_singlesystem.pas' {SingleSystem},
  kantu_definitions in 'kantu_definitions.pas',
  kantu_indicators in 'kantu_indicators.pas',
  kantu_multithreading in 'kantu_multithreading.pas',
  ktUtils in 'ktUtils.pas',
  ktInit in 'ktInit.pas',
  ktCode in 'ktCode.pas',
  ktChart in 'ktChart.pas' {ChartForm},
  ktTradeGrid in 'ktTradeGrid.pas' {FormTradeGrid};

{$R *.res}

begin

  Application.Initialize;

  Application.CreateForm(TComponentClass(TMainForm), MainForm);

  Application.CreateForm(TComponentClass(TSimulationForm), SimulationForm);
  Application.CreateForm(TComponentClass(TloadSymbol), loadSymbol);

  Application.CreateForm(TComponentClass(TPricePatternForm), PricePatternForm);
  Application.CreateForm(TComponentClass(TFiltersForm), FiltersForm);
  Application.CreateForm(TComponentClass(TCustomFilterForm), CustomFilterForm);

  Application.CreateForm(TComponentClass(TPortfolioResultForm),
    PortfolioResultForm);
  Application.CreateForm(TComponentClass(TSimulationForm2), SimulationForm2);
  Application.CreateForm(TComponentClass(TSingleSystem), SingleSystem);
    Application.CreateForm(TChartForm, ChartForm);
    Application.CreateForm(TFormTradeGrid, FormTradeGrid);
  init;
  start;
  Application.Run;

end.




