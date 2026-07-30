% RetailerSystem_SubModel  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ sellProducts,
    selfServe,
    auction,
    salesperson,
    handleOrder,
    catalogueProducts,
    handleRequestFromBidder,
    useInternalService ].
goals(soft) <--
  [ or([ lowLatency,
         throughput,
         performance,
         availability,
         accessibility,
         transactionFailabilityTolerance ]) ].
auction <-- [handleOrder, catalogueProducts, handleRequestFromBidder].
catalogueProducts <-- [useInternalService].
catalogueProducts <-- [useEShopService].
catalogueProducts <-- [useECatalogService].
sellProducts <-- [selfServe].
sellProducts <-- [auction].
sellProducts <-- [salesperson].
useInternalService <-- [useWarehouseService].
useInternalService <-- [useOrderDepService].
accessibility <-- [makes(availability)].
availability <-- [helps(useEShopService)].
lowLatency <--
  [ helps(useECatalogService),
    helps(useWarehouseService),
    makes(useOrderDepService),
    hurts(useEShopService) ].
performance <-- [makes(throughput), makes(lowLatency)].
throughput <-- [hurts(useECatalogService)].
transactionFailabilityTolerance <-- [breaks(useECatalogService)].
