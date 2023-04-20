diagnostic(off, derivative_uniformity);

alias Arr = array<mat4x4<f32>, 5u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
}

alias Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_1,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  unity_FogColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_20 : LightShadows;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb0 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb9 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb3 : bool;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_308 : UnityPerDraw;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_387 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_272 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD6;
  let x_25 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres0;
  let x_28 : vec3<f32> = (x_13 + -(vec3<f32>(x_25.x, x_25.y, x_25.z)));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_28.z, x_29.w);
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_31.x, x_31.y, x_31.z), vec3<f32>(x_33.x, x_33.y, x_33.z));
  let x_40 : vec3<f32> = vs_TEXCOORD6;
  let x_43 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres1;
  let x_46 : vec3<f32> = (x_40 + -(vec3<f32>(x_43.x, x_43.y, x_43.z)));
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_49 : vec4<f32> = u_xlat1;
  let x_51 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(x_49.x, x_49.y, x_49.z), vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_56 : vec3<f32> = vs_TEXCOORD6;
  let x_59 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres2;
  let x_62 : vec3<f32> = (x_56 + -(vec3<f32>(x_59.x, x_59.y, x_59.z)));
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_65 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(x_65.x, x_65.y, x_65.z), vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_72 : vec3<f32> = vs_TEXCOORD6;
  let x_75 : vec4<f32> = x_20.x_CascadeShadowSplitSpheres3;
  let x_78 : vec3<f32> = (x_72 + -(vec3<f32>(x_75.x, x_75.y, x_75.z)));
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat0.w = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_92 : vec4<f32> = u_xlat0;
  let x_95 : vec4<f32> = x_20.x_CascadeShadowSplitSphereRadii;
  u_xlatb0 = (x_92 < x_95);
  let x_99 : bool = u_xlatb0.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_99);
  let x_105 : bool = u_xlatb0.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_105);
  let x_109 : bool = u_xlatb0.z;
  u_xlat1.z = select(-0.0f, -1.0f, x_109);
  let x_113 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_113);
  let x_119 : bool = u_xlatb0.y;
  u_xlat0.y = select(0.0f, 1.0f, x_119);
  let x_123 : bool = u_xlatb0.z;
  u_xlat0.z = select(0.0f, 1.0f, x_123);
  let x_127 : bool = u_xlatb0.w;
  u_xlat0.w = select(0.0f, 1.0f, x_127);
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec4<f32> = u_xlat0;
  let x_134 : vec3<f32> = (vec3<f32>(x_130.x, x_130.y, x_130.z) + vec3<f32>(x_132.y, x_132.z, x_132.w));
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_137 : vec4<f32> = u_xlat1;
  let x_140 : vec3<f32> = max(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_141.x, x_140.x, x_140.y, x_140.z);
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_143, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_151) + 4.0f);
  let x_158 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_158);
  let x_162 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_162) << bitcast<u32>(2i));
  let x_167 : vec3<f32> = vs_TEXCOORD6;
  let x_170 : i32 = u_xlati0;
  let x_173 : i32 = u_xlati0;
  let x_177 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_170 + 1i) / 4i)][((x_173 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_167.y, x_167.y, x_167.y) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : i32 = u_xlati0;
  let x_182 : i32 = u_xlati0;
  let x_185 : vec4<f32> = x_20.x_MainLightWorldToShadow[(x_180 / 4i)][(x_182 % 4i)];
  let x_187 : vec3<f32> = vs_TEXCOORD6;
  let x_190 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.x, x_187.x, x_187.x)) + x_190);
  let x_192 : i32 = u_xlati0;
  let x_195 : i32 = u_xlati0;
  let x_199 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_192 + 2i) / 4i)][((x_195 + 2i) % 4i)];
  let x_201 : vec3<f32> = vs_TEXCOORD6;
  let x_204 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201.z, x_201.z, x_201.z)) + x_204);
  let x_206 : vec3<f32> = u_xlat3;
  let x_207 : i32 = u_xlati0;
  let x_210 : i32 = u_xlati0;
  let x_214 : vec4<f32> = x_20.x_MainLightWorldToShadow[((x_207 + 3i) / 4i)][((x_210 + 3i) % 4i)];
  let x_216 : vec3<f32> = (x_206 + vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_221 : f32 = u_xlat0.z;
  u_xlatb9 = (0.0f >= x_221);
  let x_225 : f32 = u_xlat0.z;
  u_xlatb1 = (x_225 >= 1.0f);
  let x_230 : vec4<f32> = u_xlat0;
  let x_231 : vec2<f32> = vec2<f32>(x_230.x, x_230.y);
  let x_233 : f32 = u_xlat0.z;
  txVec0 = vec3<f32>(x_231.x, x_231.y, x_233);
  let x_247 : vec3<f32> = txVec0;
  let x_249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_247.xy, x_247.z);
  u_xlat0.x = x_249;
  let x_252 : bool = u_xlatb9;
  let x_253 : bool = u_xlatb1;
  u_xlatb3 = (x_252 | x_253);
  let x_259 : f32 = x_20.x_MainLightShadowParams.x;
  u_xlat6 = (-(x_259) + 1.0f);
  let x_263 : f32 = u_xlat0.x;
  let x_265 : f32 = x_20.x_MainLightShadowParams.x;
  let x_267 : f32 = u_xlat6;
  u_xlat0.x = ((x_263 * x_265) + x_267);
  let x_270 : bool = u_xlatb3;
  if (x_270) {
    x_272 = 1.0f;
  } else {
    let x_277 : f32 = u_xlat0.x;
    x_272 = x_277;
  }
  let x_278 : f32 = x_272;
  u_xlat0.x = x_278;
  let x_284 : f32 = vs_TEXCOORD5.y;
  let x_286 : f32 = vs_TEXCOORD5.y;
  u_xlat3.x = (x_284 * x_286);
  let x_290 : f32 = vs_TEXCOORD5.x;
  let x_292 : f32 = vs_TEXCOORD5.x;
  let x_295 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_290 * x_292) + -(x_295));
  let x_299 : vec4<f32> = vs_TEXCOORD5;
  let x_301 : vec4<f32> = vs_TEXCOORD5;
  u_xlat1 = (vec4<f32>(x_299.y, x_299.z, x_299.z, x_299.x) * vec4<f32>(x_301.x, x_301.y, x_301.z, x_301.z));
  let x_311 : vec4<f32> = x_308.unity_SHBr;
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_311, x_312);
  let x_317 : vec4<f32> = x_308.unity_SHBg;
  let x_318 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_317, x_318);
  let x_323 : vec4<f32> = x_308.unity_SHBb;
  let x_324 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_323, x_324);
  let x_329 : vec4<f32> = x_308.unity_SHC;
  let x_331 : vec3<f32> = u_xlat3;
  let x_334 : vec3<f32> = u_xlat2;
  u_xlat3 = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.x, x_331.x, x_331.x)) + x_334);
  let x_336 : vec4<f32> = vs_TEXCOORD5;
  let x_337 : vec3<f32> = vec3<f32>(x_336.x, x_336.y, x_336.z);
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  u_xlat1.w = 1.0f;
  let x_343 : vec4<f32> = x_308.unity_SHAr;
  let x_344 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_343, x_344);
  let x_349 : vec4<f32> = x_308.unity_SHAg;
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_349, x_350);
  let x_355 : vec4<f32> = x_308.unity_SHAb;
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_355, x_356);
  let x_359 : vec3<f32> = u_xlat3;
  let x_360 : vec3<f32> = u_xlat2;
  u_xlat3 = (x_359 + x_360);
  let x_362 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_362, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_365 : vec4<f32> = vs_TEXCOORD3;
  let x_367 : vec4<f32> = u_xlat0;
  let x_370 : vec3<f32> = u_xlat3;
  let x_371 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.x, x_367.x, x_367.x)) + x_370);
  let x_372 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_384 : vec2<f32> = vs_TEXCOORD0;
  let x_389 : f32 = x_387.x_GlobalMipBias.x;
  let x_390 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_384, x_389);
  u_xlat1 = x_390;
  let x_391 : vec4<f32> = u_xlat1;
  let x_393 : vec4<f32> = u_xlat0;
  let x_397 : vec4<f32> = x_387.unity_FogColor;
  let x_400 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393.x, x_393.y, x_393.z)) + -(vec3<f32>(x_397.x, x_397.y, x_397.z)));
  let x_401 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_406 : f32 = u_xlat1.w;
  SV_Target0.w = x_406;
  let x_411 : f32 = vs_TEXCOORD3.w;
  let x_413 : f32 = vs_TEXCOORD3.w;
  u_xlat9 = (x_411 * -(x_413));
  let x_416 : f32 = u_xlat9;
  u_xlat9 = exp2(x_416);
  let x_418 : f32 = u_xlat9;
  let x_420 : vec4<f32> = u_xlat0;
  let x_424 : vec4<f32> = x_387.unity_FogColor;
  let x_426 : vec3<f32> = ((vec3<f32>(x_418, x_418, x_418) * vec3<f32>(x_420.x, x_420.y, x_420.z)) + vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD6_param : vec3<f32>, @location(2) vs_TEXCOORD5_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


