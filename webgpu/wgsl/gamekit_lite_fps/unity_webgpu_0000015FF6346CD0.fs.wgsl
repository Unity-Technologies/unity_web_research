struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_MaxCoC : f32,
  x_RcpAspect : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat6 : f32;

@group(0) @binding(0) var<uniform> x_35 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlatb0 : bool;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati12 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var indexable : array<vec4<u32>, 71u>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0.x = x_25.w;
  let x_41 : f32 = x_35.x_MainTex_TexelSize.y;
  let x_43 : f32 = x_35.x_MainTex_TexelSize.y;
  u_xlat6 = (x_41 + x_43);
  u_xlat1.w = 1.0f;
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlat2.w = 0.0f;
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlat3.w = 0.0f;
  u_xlati_loop_1 = 0i;
  loop {
    let x_69 : i32 = u_xlati_loop_1;
    if ((x_69 < 71i)) {
    } else {
      break;
    }
    let x_76 : f32 = x_35.x_MaxCoC;
    let x_78 : f32 = x_35.x_MaxCoC;
    let x_79 : vec2<f32> = vec2<f32>(x_76, x_78);
    let x_268 : i32 = u_xlati_loop_1;
    indexable = array<vec4<u32>, 71u>(vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(1049443788u, 0u, 0u, 0u), vec4<u32>(1043341321u, 1046272668u, 0u, 0u), vec4<u32>(3178983152u, 1049211711u, 0u, 0u), vec4<u32>(3195961881u, 1039474978u, 0u, 0u), vec4<u32>(3195961881u, 3186958623u, 0u, 0u), vec4<u32>(3178983122u, 3196695360u, 0u, 0u), vec4<u32>(1043341319u, 3193756318u, 0u, 0u), vec4<u32>(1057253870u, 0u, 0u, 0u), vec4<u32>(1055824373u, 1046859531u, 0u, 0u), vec4<u32>(1051008519u, 1053756656u, 0u, 0u), vec4<u32>(1038858241u, 1057036298u, 0u, 0u), vec4<u32>(3186341887u, 1057036298u, 0u, 0u), vec4<u32>(3198492170u, 1053756654u, 0u, 0u), vec4<u32>(3203308021u, 1046859533u, 0u, 0u), vec4<u32>(3204737518u, 0u, 0u, 0u), vec4<u32>(3203308021u, 3194343179u, 0u, 0u), vec4<u32>(3198492164u, 3201240306u, 0u, 0u), vec4<u32>(3186341859u, 3204519947u, 0u, 0u), vec4<u32>(1038858277u, 3204519945u, 0u, 0u), vec4<u32>(1051008517u, 3201240306u, 0u, 0u), vec4<u32>(1055824373u, 3194343179u, 0u, 0u), vec4<u32>(1061303543u, 0u, 0u, 0u), vec4<u32>(1060738094u, 1046804821u, 0u, 0u), vec4<u32>(1059091989u, 1054526754u, 0u, 0u), vec4<u32>(1056058378u, 1058526794u, 0u, 0u), vec4<u32>(1049487178u, 1060423736u, 0u, 0u), vec4<u32>(1030239637u, 1061267955u, 0u, 0u), vec4<u32>(3190611012u, 1060984437u, 0u, 0u), vec4<u32>(3200398585u, 1059598375u, 0u, 0u), vec4<u32>(3205389598u, 1057232927u, 0u, 0u), vec4<u32>(3207526768u, 1051231942u, 0u, 0u), vec4<u32>(3208645035u, 1038585692u, 0u, 0u), vec4<u32>(3208645035u, 3186069381u, 0u, 0u), vec4<u32>(3207526768u, 3198715588u, 0u, 0u), vec4<u32>(3205389597u, 3204716577u, 0u, 0u), vec4<u32>(3200398581u, 3207082024u, 0u, 0u), vec4<u32>(3190611015u, 3208468085u, 0u, 0u), vec4<u32>(1030239696u, 3208751602u, 0u, 0u), vec4<u32>(1049487191u, 3207907381u, 0u, 0u), vec4<u32>(1056058375u, 3206010444u, 0u, 0u), vec4<u32>(1059091990u, 3202010399u, 0u, 0u), vec4<u32>(1060738095u, 3194288451u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1064932576u, 1046731911u, 0u, 0u), vec4<u32>(1063691749u, 1054746115u, 0u, 0u), vec4<u32>(1061692956u, 1059036423u, 0u, 0u), vec4<u32>(1059036423u, 1061692956u, 0u, 0u), vec4<u32>(1054746111u, 1063691750u, 0u, 0u), vec4<u32>(1046731914u, 1064932576u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(3194215560u, 1064932576u, 0u, 0u), vec4<u32>(3202229766u, 1063691749u, 0u, 0u), vec4<u32>(3206520074u, 1061692954u, 0u, 0u), vec4<u32>(3209176607u, 1059036419u, 0u, 0u), vec4<u32>(3211175397u, 1054746117u, 0u, 0u), vec4<u32>(3212416224u, 1046731911u, 0u, 0u), vec4<u32>(3212836864u, 0u, 0u, 0u), vec4<u32>(3212416224u, 3194215555u, 0u, 0u), vec4<u32>(3211175397u, 3202229763u, 0u, 0u), vec4<u32>(3209176602u, 3206520073u, 0u, 0u), vec4<u32>(3206520068u, 3209176606u, 0u, 0u), vec4<u32>(3202229753u, 3211175400u, 0u, 0u), vec4<u32>(3194215533u, 3212416226u, 0u, 0u), vec4<u32>(0u, 3212836864u, 0u, 0u), vec4<u32>(1046731949u, 3212416222u, 0u, 0u), vec4<u32>(1054746106u, 3211175399u, 0u, 0u), vec4<u32>(1059036421u, 3209176606u, 0u, 0u), vec4<u32>(1061692955u, 3206520072u, 0u, 0u), vec4<u32>(1063691749u, 3202229763u, 0u, 0u), vec4<u32>(1064932576u, 3194215554u, 0u, 0u));
    let x_274 : vec4<u32> = indexable[x_268];
    let x_277 : vec2<f32> = (vec2<f32>(x_79.x, x_79.y) * bitcast<vec2<f32>>(vec2<u32>(x_274.x, x_274.y)));
    let x_278 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_278.x, x_277.x, x_277.y, x_278.w);
    let x_281 : vec4<f32> = u_xlat4;
    let x_283 : vec4<f32> = u_xlat4;
    u_xlat18 = dot(vec2<f32>(x_281.y, x_281.z), vec2<f32>(x_283.y, x_283.z));
    let x_286 : f32 = u_xlat18;
    u_xlat18 = sqrt(x_286);
    let x_289 : f32 = u_xlat4.y;
    let x_292 : f32 = x_35.x_RcpAspect;
    u_xlat4.x = (x_289 * x_292);
    let x_295 : vec4<f32> = u_xlat4;
    let x_298 : vec2<f32> = vs_TEXCOORD0;
    let x_299 : vec2<f32> = (vec2<f32>(x_295.x, x_295.z) + x_298);
    let x_300 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_299.x, x_299.y, x_300.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat4;
    let x_306 : vec2<f32> = clamp(vec2<f32>(x_302.x, x_302.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_307 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_306.x, x_306.y, x_307.z, x_307.w);
    let x_309 : vec4<f32> = u_xlat4;
    let x_312 : f32 = x_35.x_RenderViewportScaleFactor;
    let x_314 : vec2<f32> = (vec2<f32>(x_309.x, x_309.y) * vec2<f32>(x_312, x_312));
    let x_315 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_315.z, x_315.w);
    let x_320 : vec4<f32> = u_xlat4;
    let x_322 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_320.x, x_320.y));
    u_xlat4 = x_322;
    let x_325 : f32 = u_xlat0.x;
    let x_327 : f32 = u_xlat4.w;
    u_xlat5 = min(x_325, x_327);
    let x_329 : f32 = u_xlat5;
    u_xlat5 = max(x_329, 0.0f);
    let x_331 : f32 = u_xlat18;
    let x_333 : f32 = u_xlat5;
    u_xlat5 = (-(x_331) + x_333);
    let x_336 : f32 = x_35.x_MainTex_TexelSize.y;
    let x_339 : f32 = u_xlat5;
    u_xlat5 = ((x_336 * 2.0f) + x_339);
    let x_341 : f32 = u_xlat5;
    let x_342 : f32 = u_xlat6;
    u_xlat5 = (x_341 / x_342);
    let x_344 : f32 = u_xlat5;
    u_xlat5 = clamp(x_344, 0.0f, 1.0f);
    let x_346 : f32 = u_xlat18;
    let x_349 : f32 = u_xlat4.w;
    u_xlat18 = (-(x_346) + -(x_349));
    let x_353 : f32 = x_35.x_MainTex_TexelSize.y;
    let x_355 : f32 = u_xlat18;
    u_xlat18 = ((x_353 * 2.0f) + x_355);
    let x_357 : f32 = u_xlat18;
    let x_358 : f32 = u_xlat6;
    u_xlat18 = (x_357 / x_358);
    let x_360 : f32 = u_xlat18;
    u_xlat18 = clamp(x_360, 0.0f, 1.0f);
    let x_365 : f32 = u_xlat4.w;
    let x_368 : f32 = x_35.x_MainTex_TexelSize.y;
    u_xlatb22 = (-(x_365) >= x_368);
    let x_371 : bool = u_xlatb22;
    u_xlat22 = select(0.0f, 1.0f, x_371);
    let x_373 : f32 = u_xlat18;
    let x_374 : f32 = u_xlat22;
    u_xlat18 = (x_373 * x_374);
    let x_376 : vec4<f32> = u_xlat4;
    let x_377 : vec3<f32> = vec3<f32>(x_376.x, x_376.y, x_376.z);
    let x_378 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
    let x_380 : vec4<f32> = u_xlat1;
    let x_381 : f32 = u_xlat5;
    let x_384 : vec4<f32> = u_xlat2;
    u_xlat2 = ((x_380 * vec4<f32>(x_381, x_381, x_381, x_381)) + x_384);
    let x_386 : vec4<f32> = u_xlat1;
    let x_387 : f32 = u_xlat18;
    let x_390 : vec4<f32> = u_xlat3;
    u_xlat3 = ((x_386 * vec4<f32>(x_387, x_387, x_387, x_387)) + x_390);

    continuing {
      let x_392 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_392 + 1i);
    }
  }
  let x_396 : f32 = u_xlat2.w;
  u_xlatb0 = (x_396 == 0.0f);
  let x_398 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_398);
  let x_402 : f32 = u_xlat0.x;
  let x_404 : f32 = u_xlat2.w;
  u_xlat0.x = (x_402 + x_404);
  let x_407 : vec4<f32> = u_xlat2;
  let x_409 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_407.x, x_407.y, x_407.z) / vec3<f32>(x_409.x, x_409.x, x_409.x));
  let x_414 : f32 = u_xlat3.w;
  u_xlatb18 = (x_414 == 0.0f);
  let x_416 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_416);
  let x_418 : f32 = u_xlat18;
  let x_420 : f32 = u_xlat3.w;
  u_xlat18 = (x_418 + x_420);
  let x_422 : vec4<f32> = u_xlat3;
  let x_424 : f32 = u_xlat18;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) / vec3<f32>(x_424, x_424, x_424));
  let x_427 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : f32 = u_xlat3.w;
  u_xlat18 = (x_430 * 0.044247784f);
  let x_433 : f32 = u_xlat18;
  u_xlat18 = min(x_433, 1.0f);
  let x_435 : vec3<f32> = u_xlat0;
  let x_437 : vec4<f32> = u_xlat1;
  let x_439 : vec3<f32> = (-(x_435) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_444 : f32 = u_xlat18;
  let x_446 : vec4<f32> = u_xlat1;
  let x_449 : vec3<f32> = u_xlat0;
  let x_450 : vec3<f32> = ((vec3<f32>(x_444, x_444, x_444) * vec3<f32>(x_446.x, x_446.y, x_446.z)) + x_449);
  let x_451 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : f32 = u_xlat18;
  SV_Target0.w = x_453;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

