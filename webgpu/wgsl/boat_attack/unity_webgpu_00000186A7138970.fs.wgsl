struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_244 : MainLightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1971 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_75 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_131 : f32;
  var u_xlatb19 : bool;
  var u_xlatb57 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu19 : u32;
  var u_xlati19 : i32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat59 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat60 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat26 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb59 : bool;
  var u_xlatu57 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati59 : i32;
  var u_xlat61 : f32;
  var x_2145 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_79 : f32 = u_xlat1.x;
    x_75 = x_79;
  } else {
    x_75 = 0.0f;
  }
  let x_82 : f32 = x_75;
  u_xlat0.x = x_82;
  let x_87 : f32 = u_xlat0.w;
  let x_89 : f32 = x_57.x_BaseColor.w;
  let x_92 : f32 = x_57.x_Cutoff;
  u_xlat19.x = ((x_87 * x_89) + -(x_92));
  let x_98 : f32 = u_xlat1.x;
  u_xlat38 = dpdxCoarse(x_98);
  let x_102 : f32 = u_xlat1.x;
  u_xlat57 = dpdyCoarse(x_102);
  let x_104 : f32 = u_xlat57;
  let x_106 : f32 = u_xlat38;
  u_xlat38 = (abs(x_104) + abs(x_106));
  let x_109 : f32 = u_xlat38;
  u_xlat38 = max(x_109, 0.0001f);
  let x_113 : f32 = u_xlat19.x;
  let x_114 : f32 = u_xlat38;
  u_xlat19.x = (x_113 / x_114);
  let x_118 : f32 = u_xlat19.x;
  u_xlat19.x = (x_118 + 0.5f);
  let x_123 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_123, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb38 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb38;
  if (x_130) {
    let x_135 : f32 = u_xlat19.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat19.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat19.x;
  u_xlatb19 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb19;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_44.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat19;
  let x_175 : f32 = x_44.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat19.x = x_176.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
  u_xlatb57 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb57;
  if (x_189) {
    let x_194 : f32 = u_xlat19.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat19.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat19.x = x_201;
  let x_204 : f32 = u_xlat19.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat19.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat19.x;
  u_xlatb19 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb19;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat19.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat19;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  let x_234 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_239 : vec3<f32> = vs_TEXCOORD1;
  let x_246 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres0;
  let x_249 : vec3<f32> = (x_239 + -(vec3<f32>(x_246.x, x_246.y, x_246.z)));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : vec3<f32> = vs_TEXCOORD1;
  let x_255 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres1;
  let x_258 : vec3<f32> = (x_253 + -(vec3<f32>(x_255.x, x_255.y, x_255.z)));
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : vec3<f32> = vs_TEXCOORD1;
  let x_265 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres2;
  let x_268 : vec3<f32> = (x_262 + -(vec3<f32>(x_265.x, x_265.y, x_265.z)));
  let x_269 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec3<f32> = vs_TEXCOORD1;
  let x_274 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres3;
  let x_277 : vec3<f32> = (x_272 + -(vec3<f32>(x_274.x, x_274.y, x_274.z)));
  let x_278 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_286 : vec4<f32> = u_xlat4;
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_293 : vec4<f32> = u_xlat5;
  let x_295 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_299 : vec4<f32> = u_xlat6;
  let x_301 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_299.x, x_299.y, x_299.z), vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_308 : vec4<f32> = u_xlat3;
  let x_311 : vec4<f32> = x_244.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_308 < x_311);
  let x_314 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_314);
  let x_318 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_326);
  let x_330 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_330);
  let x_336 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_336);
  let x_340 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_340);
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : vec4<f32> = u_xlat4;
  let x_347 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) + vec3<f32>(x_345.y, x_345.z, x_345.w));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat3;
  let x_353 : vec3<f32> = max(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_354 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_354.x, x_353.x, x_353.y, x_353.z);
  let x_356 : vec4<f32> = u_xlat4;
  u_xlat19.x = dot(x_356, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_364 : f32 = u_xlat19.x;
  u_xlat19.x = (-(x_364) + 4.0f);
  let x_371 : f32 = u_xlat19.x;
  u_xlatu19 = u32(x_371);
  let x_375 : u32 = u_xlatu19;
  u_xlati19 = (bitcast<i32>(x_375) << bitcast<u32>(2i));
  let x_378 : vec3<f32> = vs_TEXCOORD1;
  let x_380 : i32 = u_xlati19;
  let x_383 : i32 = u_xlati19;
  let x_387 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_380 + 1i) / 4i)][((x_383 + 1i) % 4i)];
  let x_389 : vec3<f32> = (vec3<f32>(x_378.y, x_378.y, x_378.y) * vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : i32 = u_xlati19;
  let x_394 : i32 = u_xlati19;
  let x_397 : vec4<f32> = x_244.x_MainLightWorldToShadow[(x_392 / 4i)][(x_394 % 4i)];
  let x_399 : vec3<f32> = vs_TEXCOORD1;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_399.x, x_399.x, x_399.x)) + vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : i32 = u_xlati19;
  let x_410 : i32 = u_xlati19;
  let x_414 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_407 + 2i) / 4i)][((x_410 + 2i) % 4i)];
  let x_416 : vec3<f32> = vs_TEXCOORD1;
  let x_419 : vec4<f32> = u_xlat3;
  let x_421 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.z, x_416.z, x_416.z)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat3;
  let x_426 : i32 = u_xlati19;
  let x_429 : i32 = u_xlati19;
  let x_433 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_426 + 3i) / 4i)][((x_429 + 3i) % 4i)];
  let x_435 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) + vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_439 : f32 = vs_TEXCOORD1.y;
  let x_442 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat19.x = (x_439 * x_442);
  let x_446 : f32 = x_44.unity_MatrixV[0i].z;
  let x_448 : f32 = vs_TEXCOORD1.x;
  let x_451 : f32 = u_xlat19.x;
  u_xlat19.x = ((x_446 * x_448) + x_451);
  let x_455 : f32 = x_44.unity_MatrixV[2i].z;
  let x_457 : f32 = vs_TEXCOORD1.z;
  let x_460 : f32 = u_xlat19.x;
  u_xlat19.x = ((x_455 * x_457) + x_460);
  let x_464 : f32 = u_xlat19.x;
  let x_466 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat19.x = (x_464 + x_466);
  let x_470 : f32 = u_xlat19.x;
  let x_474 : f32 = x_44.x_ProjectionParams.y;
  u_xlat19.x = (-(x_470) + -(x_474));
  let x_479 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_479, 0.0f);
  let x_483 : f32 = u_xlat19.x;
  let x_486 : f32 = x_44.unity_FogParams.x;
  u_xlat19.x = (x_483 * x_486);
  u_xlat2.w = 1.0f;
  let x_492 : vec4<f32> = x_184.unity_SHAr;
  let x_493 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_492, x_493);
  let x_498 : vec4<f32> = x_184.unity_SHAg;
  let x_499 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_498, x_499);
  let x_504 : vec4<f32> = x_184.unity_SHAb;
  let x_505 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_504, x_505);
  let x_508 : vec4<f32> = u_xlat2;
  let x_510 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_508.y, x_508.z, x_508.z, x_508.x) * vec4<f32>(x_510.x, x_510.y, x_510.z, x_510.z));
  let x_515 : vec4<f32> = x_184.unity_SHBr;
  let x_516 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_515, x_516);
  let x_521 : vec4<f32> = x_184.unity_SHBg;
  let x_522 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_521, x_522);
  let x_527 : vec4<f32> = x_184.unity_SHBb;
  let x_528 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_527, x_528);
  let x_532 : f32 = u_xlat2.y;
  let x_534 : f32 = u_xlat2.y;
  u_xlat57 = (x_532 * x_534);
  let x_537 : f32 = u_xlat2.x;
  let x_539 : f32 = u_xlat2.x;
  let x_541 : f32 = u_xlat57;
  u_xlat57 = ((x_537 * x_539) + -(x_541));
  let x_546 : vec4<f32> = x_184.unity_SHC;
  let x_548 : f32 = u_xlat57;
  let x_551 : vec4<f32> = u_xlat6;
  let x_553 : vec3<f32> = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_548, x_548, x_548)) + vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : vec4<f32> = u_xlat5;
  let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec3<f32> = max(vec3<f32>(x_563.x, x_563.y, x_563.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_570 : f32 = x_244.x_MainLightShadowParams.y;
  u_xlatb57 = (0.0f < x_570);
  let x_572 : bool = u_xlatb57;
  if (x_572) {
    let x_576 : f32 = x_244.x_MainLightShadowParams.y;
    u_xlatb57 = (x_576 == 1.0f);
    let x_578 : bool = u_xlatb57;
    if (x_578) {
      let x_581 : vec4<f32> = u_xlat3;
      let x_584 : vec4<f32> = x_244.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y) + x_584);
      let x_587 : vec4<f32> = u_xlat5;
      let x_588 : vec2<f32> = vec2<f32>(x_587.x, x_587.y);
      let x_590 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_588.x, x_588.y, x_590);
      let x_602 : vec3<f32> = txVec0;
      let x_604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_602.xy, x_602.z);
      u_xlat6.x = x_604;
      let x_607 : vec4<f32> = u_xlat5;
      let x_608 : vec2<f32> = vec2<f32>(x_607.z, x_607.w);
      let x_610 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_608.x, x_608.y, x_610);
      let x_617 : vec3<f32> = txVec1;
      let x_619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_617.xy, x_617.z);
      u_xlat6.y = x_619;
      let x_621 : vec4<f32> = u_xlat3;
      let x_624 : vec4<f32> = x_244.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_621.x, x_621.y, x_621.x, x_621.y) + x_624);
      let x_627 : vec4<f32> = u_xlat5;
      let x_628 : vec2<f32> = vec2<f32>(x_627.x, x_627.y);
      let x_630 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_628.x, x_628.y, x_630);
      let x_637 : vec3<f32> = txVec2;
      let x_639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_637.xy, x_637.z);
      u_xlat6.z = x_639;
      let x_642 : vec4<f32> = u_xlat5;
      let x_643 : vec2<f32> = vec2<f32>(x_642.z, x_642.w);
      let x_645 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_643.x, x_643.y, x_645);
      let x_652 : vec3<f32> = txVec3;
      let x_654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_652.xy, x_652.z);
      u_xlat6.w = x_654;
      let x_656 : vec4<f32> = u_xlat6;
      u_xlat57 = dot(x_656, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_663 : f32 = x_244.x_MainLightShadowParams.y;
      u_xlatb1 = (x_663 == 2.0f);
      let x_665 : bool = u_xlatb1;
      if (x_665) {
        let x_668 : vec4<f32> = u_xlat3;
        let x_671 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_675 : vec2<f32> = ((vec2<f32>(x_668.x, x_668.y) * vec2<f32>(x_671.z, x_671.w)) + vec2<f32>(0.5f, 0.5f));
        let x_676 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat5;
        let x_680 : vec2<f32> = floor(vec2<f32>(x_678.x, x_678.y));
        let x_681 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_685 : vec4<f32> = u_xlat3;
        let x_688 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_691 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_685.x, x_685.y) * vec2<f32>(x_688.z, x_688.w)) + -(vec2<f32>(x_691.x, x_691.y)));
        let x_695 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_695.x, x_695.x, x_695.y, x_695.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_700 : vec4<f32> = u_xlat6;
        let x_702 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_700.x, x_700.x, x_700.z, x_700.z) * vec4<f32>(x_702.x, x_702.x, x_702.z, x_702.z));
        let x_705 : vec4<f32> = u_xlat7;
        let x_709 : vec2<f32> = (vec2<f32>(x_705.y, x_705.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_710 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_709.x, x_710.y, x_709.y, x_710.w);
        let x_712 : vec4<f32> = u_xlat7;
        let x_715 : vec2<f32> = u_xlat43;
        let x_717 : vec2<f32> = ((vec2<f32>(x_712.x, x_712.z) * vec2<f32>(0.5f, 0.5f)) + -(x_715));
        let x_718 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
        let x_721 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_721) + vec2<f32>(1.0f, 1.0f));
        let x_726 : vec2<f32> = u_xlat43;
        let x_728 : vec2<f32> = min(x_726, vec2<f32>(0.0f, 0.0f));
        let x_729 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_728.x, x_728.y, x_729.z, x_729.w);
        let x_731 : vec4<f32> = u_xlat8;
        let x_734 : vec4<f32> = u_xlat8;
        let x_737 : vec2<f32> = u_xlat45;
        let x_738 : vec2<f32> = ((-(vec2<f32>(x_731.x, x_731.y)) * vec2<f32>(x_734.x, x_734.y)) + x_737);
        let x_739 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_738.x, x_738.y, x_739.z, x_739.w);
        let x_741 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_741, vec2<f32>(0.0f, 0.0f));
        let x_743 : vec2<f32> = u_xlat43;
        let x_745 : vec2<f32> = u_xlat43;
        let x_747 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_743) * x_745) + vec2<f32>(x_747.y, x_747.w));
        let x_750 : vec4<f32> = u_xlat8;
        let x_752 : vec2<f32> = (vec2<f32>(x_750.x, x_750.y) + vec2<f32>(1.0f, 1.0f));
        let x_753 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
        let x_755 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_755 + vec2<f32>(1.0f, 1.0f));
        let x_758 : vec4<f32> = u_xlat7;
        let x_762 : vec2<f32> = (vec2<f32>(x_758.x, x_758.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_763 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
        let x_765 : vec2<f32> = u_xlat45;
        let x_766 : vec2<f32> = (x_765 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_767 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
        let x_769 : vec4<f32> = u_xlat8;
        let x_771 : vec2<f32> = (vec2<f32>(x_769.x, x_769.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_772 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
        let x_775 : vec2<f32> = u_xlat43;
        let x_776 : vec2<f32> = (x_775 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_777 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
        let x_779 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_779.y, x_779.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_783 : f32 = u_xlat8.x;
        u_xlat9.z = x_783;
        let x_786 : f32 = u_xlat43.x;
        u_xlat9.w = x_786;
        let x_789 : f32 = u_xlat10.x;
        u_xlat7.z = x_789;
        let x_792 : f32 = u_xlat6.x;
        u_xlat7.w = x_792;
        let x_795 : vec4<f32> = u_xlat7;
        let x_797 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_795.z, x_795.w, x_795.x, x_795.z) + vec4<f32>(x_797.z, x_797.w, x_797.x, x_797.z));
        let x_801 : f32 = u_xlat9.y;
        u_xlat8.z = x_801;
        let x_804 : f32 = u_xlat43.y;
        u_xlat8.w = x_804;
        let x_807 : f32 = u_xlat7.y;
        u_xlat10.z = x_807;
        let x_810 : f32 = u_xlat6.z;
        u_xlat10.w = x_810;
        let x_812 : vec4<f32> = u_xlat8;
        let x_814 : vec4<f32> = u_xlat10;
        let x_816 : vec3<f32> = (vec3<f32>(x_812.z, x_812.y, x_812.w) + vec3<f32>(x_814.z, x_814.y, x_814.w));
        let x_817 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
        let x_819 : vec4<f32> = u_xlat7;
        let x_821 : vec4<f32> = u_xlat11;
        let x_823 : vec3<f32> = (vec3<f32>(x_819.x, x_819.z, x_819.w) / vec3<f32>(x_821.z, x_821.w, x_821.y));
        let x_824 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
        let x_826 : vec4<f32> = u_xlat7;
        let x_832 : vec3<f32> = (vec3<f32>(x_826.x, x_826.y, x_826.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_833 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
        let x_835 : vec4<f32> = u_xlat10;
        let x_837 : vec4<f32> = u_xlat6;
        let x_839 : vec3<f32> = (vec3<f32>(x_835.z, x_835.y, x_835.w) / vec3<f32>(x_837.x, x_837.y, x_837.z));
        let x_840 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat8;
        let x_844 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_845 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
        let x_847 : vec4<f32> = u_xlat7;
        let x_850 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_852 : vec3<f32> = (vec3<f32>(x_847.y, x_847.x, x_847.z) * vec3<f32>(x_850.x, x_850.x, x_850.x));
        let x_853 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
        let x_855 : vec4<f32> = u_xlat8;
        let x_858 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_860 : vec3<f32> = (vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(x_858.y, x_858.y, x_858.y));
        let x_861 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
        let x_864 : f32 = u_xlat8.x;
        u_xlat7.w = x_864;
        let x_866 : vec4<f32> = u_xlat5;
        let x_869 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_872 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_866.x, x_866.y, x_866.x, x_866.y) * vec4<f32>(x_869.x, x_869.y, x_869.x, x_869.y)) + vec4<f32>(x_872.y, x_872.w, x_872.x, x_872.w));
        let x_875 : vec4<f32> = u_xlat5;
        let x_878 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_881 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_875.x, x_875.y) * vec2<f32>(x_878.x, x_878.y)) + vec2<f32>(x_881.z, x_881.w));
        let x_885 : f32 = u_xlat7.y;
        u_xlat8.w = x_885;
        let x_887 : vec4<f32> = u_xlat8;
        let x_888 : vec2<f32> = vec2<f32>(x_887.y, x_887.z);
        let x_889 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_889.x, x_888.x, x_889.z, x_888.y);
        let x_891 : vec4<f32> = u_xlat5;
        let x_894 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_897 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_891.x, x_891.y, x_891.x, x_891.y) * vec4<f32>(x_894.x, x_894.y, x_894.x, x_894.y)) + vec4<f32>(x_897.x, x_897.y, x_897.z, x_897.y));
        let x_900 : vec4<f32> = u_xlat5;
        let x_903 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_906 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y) * vec4<f32>(x_903.x, x_903.y, x_903.x, x_903.y)) + vec4<f32>(x_906.w, x_906.y, x_906.w, x_906.z));
        let x_909 : vec4<f32> = u_xlat5;
        let x_912 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_915 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_909.x, x_909.y, x_909.x, x_909.y) * vec4<f32>(x_912.x, x_912.y, x_912.x, x_912.y)) + vec4<f32>(x_915.x, x_915.w, x_915.z, x_915.w));
        let x_919 : vec4<f32> = u_xlat6;
        let x_921 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_919.x, x_919.x, x_919.x, x_919.y) * vec4<f32>(x_921.z, x_921.w, x_921.y, x_921.z));
        let x_925 : vec4<f32> = u_xlat6;
        let x_927 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_925.y, x_925.y, x_925.z, x_925.z) * x_927);
        let x_930 : f32 = u_xlat6.z;
        let x_932 : f32 = u_xlat11.y;
        u_xlat1.x = (x_930 * x_932);
        let x_936 : vec4<f32> = u_xlat9;
        let x_937 : vec2<f32> = vec2<f32>(x_936.x, x_936.y);
        let x_939 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_937.x, x_937.y, x_939);
        let x_947 : vec3<f32> = txVec4;
        let x_949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_947.xy, x_947.z);
        u_xlat59 = x_949;
        let x_951 : vec4<f32> = u_xlat9;
        let x_952 : vec2<f32> = vec2<f32>(x_951.z, x_951.w);
        let x_954 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_952.x, x_952.y, x_954);
        let x_962 : vec3<f32> = txVec5;
        let x_964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_962.xy, x_962.z);
        u_xlat60 = x_964;
        let x_965 : f32 = u_xlat60;
        let x_967 : f32 = u_xlat12.y;
        u_xlat60 = (x_965 * x_967);
        let x_970 : f32 = u_xlat12.x;
        let x_971 : f32 = u_xlat59;
        let x_973 : f32 = u_xlat60;
        u_xlat59 = ((x_970 * x_971) + x_973);
        let x_976 : vec2<f32> = u_xlat43;
        let x_978 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_976.x, x_976.y, x_978);
        let x_985 : vec3<f32> = txVec6;
        let x_987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_985.xy, x_985.z);
        u_xlat60 = x_987;
        let x_989 : f32 = u_xlat12.z;
        let x_990 : f32 = u_xlat60;
        let x_992 : f32 = u_xlat59;
        u_xlat59 = ((x_989 * x_990) + x_992);
        let x_995 : vec4<f32> = u_xlat8;
        let x_996 : vec2<f32> = vec2<f32>(x_995.x, x_995.y);
        let x_998 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec7;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1005.xy, x_1005.z);
        u_xlat60 = x_1007;
        let x_1009 : f32 = u_xlat12.w;
        let x_1010 : f32 = u_xlat60;
        let x_1012 : f32 = u_xlat59;
        u_xlat59 = ((x_1009 * x_1010) + x_1012);
        let x_1015 : vec4<f32> = u_xlat10;
        let x_1016 : vec2<f32> = vec2<f32>(x_1015.x, x_1015.y);
        let x_1018 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1016.x, x_1016.y, x_1018);
        let x_1025 : vec3<f32> = txVec8;
        let x_1027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1025.xy, x_1025.z);
        u_xlat60 = x_1027;
        let x_1029 : f32 = u_xlat13.x;
        let x_1030 : f32 = u_xlat60;
        let x_1032 : f32 = u_xlat59;
        u_xlat59 = ((x_1029 * x_1030) + x_1032);
        let x_1035 : vec4<f32> = u_xlat10;
        let x_1036 : vec2<f32> = vec2<f32>(x_1035.z, x_1035.w);
        let x_1038 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1036.x, x_1036.y, x_1038);
        let x_1045 : vec3<f32> = txVec9;
        let x_1047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1045.xy, x_1045.z);
        u_xlat60 = x_1047;
        let x_1049 : f32 = u_xlat13.y;
        let x_1050 : f32 = u_xlat60;
        let x_1052 : f32 = u_xlat59;
        u_xlat59 = ((x_1049 * x_1050) + x_1052);
        let x_1055 : vec4<f32> = u_xlat8;
        let x_1056 : vec2<f32> = vec2<f32>(x_1055.z, x_1055.w);
        let x_1058 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1056.x, x_1056.y, x_1058);
        let x_1065 : vec3<f32> = txVec10;
        let x_1067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1065.xy, x_1065.z);
        u_xlat60 = x_1067;
        let x_1069 : f32 = u_xlat13.z;
        let x_1070 : f32 = u_xlat60;
        let x_1072 : f32 = u_xlat59;
        u_xlat59 = ((x_1069 * x_1070) + x_1072);
        let x_1075 : vec4<f32> = u_xlat7;
        let x_1076 : vec2<f32> = vec2<f32>(x_1075.x, x_1075.y);
        let x_1078 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1076.x, x_1076.y, x_1078);
        let x_1085 : vec3<f32> = txVec11;
        let x_1087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1085.xy, x_1085.z);
        u_xlat60 = x_1087;
        let x_1089 : f32 = u_xlat13.w;
        let x_1090 : f32 = u_xlat60;
        let x_1092 : f32 = u_xlat59;
        u_xlat59 = ((x_1089 * x_1090) + x_1092);
        let x_1095 : vec4<f32> = u_xlat7;
        let x_1096 : vec2<f32> = vec2<f32>(x_1095.z, x_1095.w);
        let x_1098 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1096.x, x_1096.y, x_1098);
        let x_1105 : vec3<f32> = txVec12;
        let x_1107 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1105.xy, x_1105.z);
        u_xlat60 = x_1107;
        let x_1109 : f32 = u_xlat1.x;
        let x_1110 : f32 = u_xlat60;
        let x_1112 : f32 = u_xlat59;
        u_xlat57 = ((x_1109 * x_1110) + x_1112);
      } else {
        let x_1115 : vec4<f32> = u_xlat3;
        let x_1118 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1115.x, x_1115.y) * vec2<f32>(x_1118.z, x_1118.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1122 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat5;
        let x_1126 : vec2<f32> = floor(vec2<f32>(x_1124.x, x_1124.y));
        let x_1127 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1129 : vec4<f32> = u_xlat3;
        let x_1132 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.z, x_1132.w)) + -(vec2<f32>(x_1135.x, x_1135.y)));
        let x_1139 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1139.x, x_1139.x, x_1139.y, x_1139.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1142 : vec4<f32> = u_xlat6;
        let x_1144 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1142.x, x_1142.x, x_1142.z, x_1142.z) * vec4<f32>(x_1144.x, x_1144.x, x_1144.z, x_1144.z));
        let x_1147 : vec4<f32> = u_xlat7;
        let x_1151 : vec2<f32> = (vec2<f32>(x_1147.y, x_1147.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1152 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1152.x, x_1151.x, x_1152.z, x_1151.y);
        let x_1154 : vec4<f32> = u_xlat7;
        let x_1157 : vec2<f32> = u_xlat43;
        let x_1159 : vec2<f32> = ((vec2<f32>(x_1154.x, x_1154.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1157));
        let x_1160 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1159.x, x_1160.y, x_1159.y, x_1160.w);
        let x_1162 : vec2<f32> = u_xlat43;
        let x_1164 : vec2<f32> = (-(x_1162) + vec2<f32>(1.0f, 1.0f));
        let x_1165 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1167, vec2<f32>(0.0f, 0.0f));
        let x_1169 : vec2<f32> = u_xlat45;
        let x_1171 : vec2<f32> = u_xlat45;
        let x_1173 : vec4<f32> = u_xlat7;
        let x_1175 : vec2<f32> = ((-(x_1169) * x_1171) + vec2<f32>(x_1173.x, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1178, vec2<f32>(0.0f, 0.0f));
        let x_1181 : vec2<f32> = u_xlat45;
        let x_1183 : vec2<f32> = u_xlat45;
        let x_1185 : vec4<f32> = u_xlat6;
        let x_1187 : vec2<f32> = ((-(x_1181) * x_1183) + vec2<f32>(x_1185.y, x_1185.w));
        let x_1188 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1187.x, x_1188.y, x_1187.y);
        let x_1190 : vec4<f32> = u_xlat7;
        let x_1193 : vec2<f32> = (vec2<f32>(x_1190.x, x_1190.y) + vec2<f32>(2.0f, 2.0f));
        let x_1194 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1193.x, x_1193.y, x_1194.z, x_1194.w);
        let x_1196 : vec3<f32> = u_xlat25;
        let x_1198 : vec2<f32> = (vec2<f32>(x_1196.x, x_1196.z) + vec2<f32>(2.0f, 2.0f));
        let x_1199 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1199.x, x_1198.x, x_1199.z, x_1198.y);
        let x_1202 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1202 * 0.081632003f);
        let x_1206 : vec4<f32> = u_xlat6;
        let x_1209 : vec3<f32> = (vec3<f32>(x_1206.z, x_1206.x, x_1206.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1210 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
        let x_1212 : vec4<f32> = u_xlat7;
        let x_1215 : vec2<f32> = (vec2<f32>(x_1212.x, x_1212.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1216 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1219 : f32 = u_xlat10.y;
        u_xlat9.x = x_1219;
        let x_1221 : vec2<f32> = u_xlat43;
        let x_1228 : vec2<f32> = ((vec2<f32>(x_1221.x, x_1221.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1229.x, x_1228.x, x_1229.z, x_1228.y);
        let x_1231 : vec2<f32> = u_xlat43;
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1231.x, x_1231.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1235.x, x_1236.y, x_1235.y, x_1236.w);
        let x_1239 : f32 = u_xlat6.x;
        u_xlat7.y = x_1239;
        let x_1242 : f32 = u_xlat8.y;
        u_xlat7.w = x_1242;
        let x_1244 : vec4<f32> = u_xlat7;
        let x_1245 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1244 + x_1245);
        let x_1247 : vec2<f32> = u_xlat43;
        let x_1250 : vec2<f32> = ((vec2<f32>(x_1247.y, x_1247.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1251 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1251.x, x_1250.x, x_1251.z, x_1250.y);
        let x_1253 : vec2<f32> = u_xlat43;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1253.y, x_1253.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1257 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1256.x, x_1257.y, x_1256.y, x_1257.w);
        let x_1260 : f32 = u_xlat6.y;
        u_xlat8.y = x_1260;
        let x_1262 : vec4<f32> = u_xlat8;
        let x_1263 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1262 + x_1263);
        let x_1265 : vec4<f32> = u_xlat7;
        let x_1266 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1265 / x_1266);
        let x_1268 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1268 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1274 : vec4<f32> = u_xlat8;
        let x_1275 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1274 / x_1275);
        let x_1277 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1277 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1279 : vec4<f32> = u_xlat7;
        let x_1282 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1279.w, x_1279.x, x_1279.y, x_1279.z) * vec4<f32>(x_1282.x, x_1282.x, x_1282.x, x_1282.x));
        let x_1285 : vec4<f32> = u_xlat8;
        let x_1288 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1285.x, x_1285.w, x_1285.y, x_1285.z) * vec4<f32>(x_1288.y, x_1288.y, x_1288.y, x_1288.y));
        let x_1291 : vec4<f32> = u_xlat7;
        let x_1292 : vec3<f32> = vec3<f32>(x_1291.y, x_1291.z, x_1291.w);
        let x_1293 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1292.x, x_1293.y, x_1292.y, x_1292.z);
        let x_1296 : f32 = u_xlat8.x;
        u_xlat10.y = x_1296;
        let x_1298 : vec4<f32> = u_xlat5;
        let x_1301 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1304.y));
        let x_1307 : vec4<f32> = u_xlat5;
        let x_1310 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1307.x, x_1307.y) * vec2<f32>(x_1310.x, x_1310.y)) + vec2<f32>(x_1313.w, x_1313.y));
        let x_1317 : f32 = u_xlat10.y;
        u_xlat7.y = x_1317;
        let x_1320 : f32 = u_xlat8.z;
        u_xlat10.y = x_1320;
        let x_1322 : vec4<f32> = u_xlat5;
        let x_1325 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1322.x, x_1322.y, x_1322.x, x_1322.y) * vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y)) + vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1328.y));
        let x_1331 : vec4<f32> = u_xlat5;
        let x_1334 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat10;
        let x_1339 : vec2<f32> = ((vec2<f32>(x_1331.x, x_1331.y) * vec2<f32>(x_1334.x, x_1334.y)) + vec2<f32>(x_1337.w, x_1337.y));
        let x_1340 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
        let x_1343 : f32 = u_xlat10.y;
        u_xlat7.z = x_1343;
        let x_1346 : vec4<f32> = u_xlat5;
        let x_1349 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1346.x, x_1346.y, x_1346.x, x_1346.y) * vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y)) + vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.z));
        let x_1356 : f32 = u_xlat8.w;
        u_xlat10.y = x_1356;
        let x_1359 : vec4<f32> = u_xlat5;
        let x_1362 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y) * vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y)) + vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1365.y));
        let x_1369 : vec4<f32> = u_xlat5;
        let x_1372 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(x_1372.x, x_1372.y)) + vec2<f32>(x_1375.w, x_1375.y));
        let x_1379 : f32 = u_xlat10.y;
        u_xlat7.w = x_1379;
        let x_1382 : vec4<f32> = u_xlat5;
        let x_1385 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(x_1385.x, x_1385.y)) + vec2<f32>(x_1388.x, x_1388.w));
        let x_1391 : vec4<f32> = u_xlat10;
        let x_1392 : vec3<f32> = vec3<f32>(x_1391.x, x_1391.z, x_1391.w);
        let x_1393 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1392.x, x_1393.y, x_1392.y, x_1392.z);
        let x_1395 : vec4<f32> = u_xlat5;
        let x_1398 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1401 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1395.x, x_1395.y, x_1395.x, x_1395.y) * vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y)) + vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1401.y));
        let x_1405 : vec4<f32> = u_xlat5;
        let x_1408 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1411 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1405.x, x_1405.y) * vec2<f32>(x_1408.x, x_1408.y)) + vec2<f32>(x_1411.w, x_1411.y));
        let x_1415 : f32 = u_xlat7.x;
        u_xlat8.x = x_1415;
        let x_1417 : vec4<f32> = u_xlat5;
        let x_1420 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat8;
        let x_1425 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1420.x, x_1420.y)) + vec2<f32>(x_1423.x, x_1423.y));
        let x_1426 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1425.x, x_1425.y, x_1426.z, x_1426.w);
        let x_1429 : vec4<f32> = u_xlat6;
        let x_1431 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1429.x, x_1429.x, x_1429.x, x_1429.x) * x_1431);
        let x_1434 : vec4<f32> = u_xlat6;
        let x_1436 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1434.y, x_1434.y, x_1434.y, x_1434.y) * x_1436);
        let x_1439 : vec4<f32> = u_xlat6;
        let x_1441 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1439.z, x_1439.z, x_1439.z, x_1439.z) * x_1441);
        let x_1443 : vec4<f32> = u_xlat6;
        let x_1445 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1443.w, x_1443.w, x_1443.w, x_1443.w) * x_1445);
        let x_1448 : vec4<f32> = u_xlat11;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.x, x_1448.y);
        let x_1451 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec13;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1458.xy, x_1458.z);
        u_xlat1.x = x_1460;
        let x_1463 : vec4<f32> = u_xlat11;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.z, x_1463.w);
        let x_1466 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec14;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1473.xy, x_1473.z);
        u_xlat59 = x_1475;
        let x_1476 : f32 = u_xlat59;
        let x_1478 : f32 = u_xlat16.y;
        u_xlat59 = (x_1476 * x_1478);
        let x_1481 : f32 = u_xlat16.x;
        let x_1483 : f32 = u_xlat1.x;
        let x_1485 : f32 = u_xlat59;
        u_xlat1.x = ((x_1481 * x_1483) + x_1485);
        let x_1489 : vec2<f32> = u_xlat43;
        let x_1491 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec15;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1498.xy, x_1498.z);
        u_xlat59 = x_1500;
        let x_1502 : f32 = u_xlat16.z;
        let x_1503 : f32 = u_xlat59;
        let x_1506 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1502 * x_1503) + x_1506);
        let x_1510 : vec4<f32> = u_xlat14;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.x, x_1510.y);
        let x_1513 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec16;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1520.xy, x_1520.z);
        u_xlat59 = x_1522;
        let x_1524 : f32 = u_xlat16.w;
        let x_1525 : f32 = u_xlat59;
        let x_1528 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1524 * x_1525) + x_1528);
        let x_1532 : vec4<f32> = u_xlat12;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.x, x_1532.y);
        let x_1535 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec17;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1542.xy, x_1542.z);
        u_xlat59 = x_1544;
        let x_1546 : f32 = u_xlat17.x;
        let x_1547 : f32 = u_xlat59;
        let x_1550 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1546 * x_1547) + x_1550);
        let x_1554 : vec4<f32> = u_xlat12;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.z, x_1554.w);
        let x_1557 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec18;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1564.xy, x_1564.z);
        u_xlat59 = x_1566;
        let x_1568 : f32 = u_xlat17.y;
        let x_1569 : f32 = u_xlat59;
        let x_1572 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1568 * x_1569) + x_1572);
        let x_1576 : vec4<f32> = u_xlat13;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.x, x_1576.y);
        let x_1579 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec19;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1586.xy, x_1586.z);
        u_xlat59 = x_1588;
        let x_1590 : f32 = u_xlat17.z;
        let x_1591 : f32 = u_xlat59;
        let x_1594 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1590 * x_1591) + x_1594);
        let x_1598 : vec4<f32> = u_xlat14;
        let x_1599 : vec2<f32> = vec2<f32>(x_1598.z, x_1598.w);
        let x_1601 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec20;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1608.xy, x_1608.z);
        u_xlat59 = x_1610;
        let x_1612 : f32 = u_xlat17.w;
        let x_1613 : f32 = u_xlat59;
        let x_1616 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1612 * x_1613) + x_1616);
        let x_1620 : vec4<f32> = u_xlat15;
        let x_1621 : vec2<f32> = vec2<f32>(x_1620.x, x_1620.y);
        let x_1623 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1621.x, x_1621.y, x_1623);
        let x_1630 : vec3<f32> = txVec21;
        let x_1632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1630.xy, x_1630.z);
        u_xlat59 = x_1632;
        let x_1634 : f32 = u_xlat18.x;
        let x_1635 : f32 = u_xlat59;
        let x_1638 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1634 * x_1635) + x_1638);
        let x_1642 : vec4<f32> = u_xlat15;
        let x_1643 : vec2<f32> = vec2<f32>(x_1642.z, x_1642.w);
        let x_1645 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1643.x, x_1643.y, x_1645);
        let x_1652 : vec3<f32> = txVec22;
        let x_1654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1652.xy, x_1652.z);
        u_xlat59 = x_1654;
        let x_1656 : f32 = u_xlat18.y;
        let x_1657 : f32 = u_xlat59;
        let x_1660 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1656 * x_1657) + x_1660);
        let x_1664 : vec2<f32> = u_xlat26;
        let x_1666 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1664.x, x_1664.y, x_1666);
        let x_1673 : vec3<f32> = txVec23;
        let x_1675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1673.xy, x_1673.z);
        u_xlat59 = x_1675;
        let x_1677 : f32 = u_xlat18.z;
        let x_1678 : f32 = u_xlat59;
        let x_1681 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1677 * x_1678) + x_1681);
        let x_1685 : vec2<f32> = u_xlat51;
        let x_1687 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec24;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1694.xy, x_1694.z);
        u_xlat59 = x_1696;
        let x_1698 : f32 = u_xlat18.w;
        let x_1699 : f32 = u_xlat59;
        let x_1702 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1698 * x_1699) + x_1702);
        let x_1706 : vec4<f32> = u_xlat10;
        let x_1707 : vec2<f32> = vec2<f32>(x_1706.x, x_1706.y);
        let x_1709 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec25;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1716.xy, x_1716.z);
        u_xlat59 = x_1718;
        let x_1720 : f32 = u_xlat6.x;
        let x_1721 : f32 = u_xlat59;
        let x_1724 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1720 * x_1721) + x_1724);
        let x_1728 : vec4<f32> = u_xlat10;
        let x_1729 : vec2<f32> = vec2<f32>(x_1728.z, x_1728.w);
        let x_1731 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
        let x_1738 : vec3<f32> = txVec26;
        let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1738.xy, x_1738.z);
        u_xlat59 = x_1740;
        let x_1742 : f32 = u_xlat6.y;
        let x_1743 : f32 = u_xlat59;
        let x_1746 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1742 * x_1743) + x_1746);
        let x_1750 : vec2<f32> = u_xlat46;
        let x_1752 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec27;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1759.xy, x_1759.z);
        u_xlat59 = x_1761;
        let x_1763 : f32 = u_xlat6.z;
        let x_1764 : f32 = u_xlat59;
        let x_1767 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1763 * x_1764) + x_1767);
        let x_1771 : vec4<f32> = u_xlat5;
        let x_1772 : vec2<f32> = vec2<f32>(x_1771.x, x_1771.y);
        let x_1774 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1772.x, x_1772.y, x_1774);
        let x_1781 : vec3<f32> = txVec28;
        let x_1783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1781.xy, x_1781.z);
        u_xlat59 = x_1783;
        let x_1785 : f32 = u_xlat6.w;
        let x_1786 : f32 = u_xlat59;
        let x_1789 : f32 = u_xlat1.x;
        u_xlat57 = ((x_1785 * x_1786) + x_1789);
      }
    }
  } else {
    let x_1793 : vec4<f32> = u_xlat3;
    let x_1794 : vec2<f32> = vec2<f32>(x_1793.x, x_1793.y);
    let x_1796 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1794.x, x_1794.y, x_1796);
    let x_1803 : vec3<f32> = txVec29;
    let x_1805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1803.xy, x_1803.z);
    u_xlat57 = x_1805;
  }
  let x_1807 : f32 = x_244.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1807) + 1.0f);
  let x_1811 : f32 = u_xlat57;
  let x_1813 : f32 = x_244.x_MainLightShadowParams.x;
  let x_1816 : f32 = u_xlat1.x;
  u_xlat57 = ((x_1811 * x_1813) + x_1816);
  let x_1819 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_1819);
  let x_1823 : f32 = u_xlat3.z;
  u_xlatb59 = (x_1823 >= 1.0f);
  let x_1825 : bool = u_xlatb1;
  let x_1826 : bool = u_xlatb59;
  u_xlatb1 = (x_1825 | x_1826);
  let x_1828 : bool = u_xlatb1;
  let x_1829 : f32 = u_xlat57;
  u_xlat57 = select(x_1829, 1.0f, x_1828);
  let x_1831 : vec3<f32> = vs_TEXCOORD1;
  let x_1834 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1836 : vec3<f32> = (x_1831 + -(x_1834));
  let x_1837 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1836.x, x_1836.y, x_1836.z, x_1837.w);
  let x_1839 : vec4<f32> = u_xlat3;
  let x_1841 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_1839.x, x_1839.y, x_1839.z), vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
  let x_1846 : f32 = u_xlat1.x;
  let x_1848 : f32 = x_244.x_MainLightShadowParams.z;
  let x_1851 : f32 = x_244.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1846 * x_1848) + x_1851);
  let x_1855 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1855, 0.0f, 1.0f);
  let x_1858 : f32 = u_xlat57;
  u_xlat59 = (-(x_1858) + 1.0f);
  let x_1862 : f32 = u_xlat1.x;
  let x_1863 : f32 = u_xlat59;
  let x_1865 : f32 = u_xlat57;
  u_xlat57 = ((x_1862 * x_1863) + x_1865);
  let x_1867 : f32 = u_xlat57;
  let x_1869 : f32 = x_184.unity_LightData.z;
  u_xlat57 = (x_1867 * x_1869);
  let x_1871 : f32 = u_xlat57;
  let x_1874 : vec4<f32> = x_44.x_MainLightColor;
  let x_1876 : vec3<f32> = (vec3<f32>(x_1871, x_1871, x_1871) * vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
  let x_1877 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1877.w);
  let x_1879 : vec4<f32> = u_xlat2;
  let x_1882 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat57 = dot(vec3<f32>(x_1879.x, x_1879.y, x_1879.z), vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
  let x_1885 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1885, 0.0f, 1.0f);
  let x_1887 : f32 = u_xlat57;
  let x_1889 : vec4<f32> = u_xlat3;
  let x_1891 : vec3<f32> = (vec3<f32>(x_1887, x_1887, x_1887) * vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
  let x_1892 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1891.x, x_1891.y, x_1891.z, x_1892.w);
  let x_1894 : vec4<f32> = u_xlat1;
  let x_1896 : vec4<f32> = u_xlat3;
  let x_1898 : vec3<f32> = (vec3<f32>(x_1894.y, x_1894.z, x_1894.w) * vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1899 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
  let x_1901 : vec4<f32> = u_xlat0;
  let x_1903 : vec4<f32> = u_xlat3;
  let x_1905 : vec3<f32> = (vec3<f32>(x_1901.x, x_1901.x, x_1901.x) * vec3<f32>(x_1903.x, x_1903.y, x_1903.z));
  let x_1906 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1905.x, x_1905.y, x_1905.z, x_1906.w);
  let x_1909 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1911 : f32 = x_184.unity_LightData.y;
  u_xlat57 = min(x_1909, x_1911);
  let x_1914 : f32 = u_xlat57;
  u_xlatu57 = bitcast<u32>(i32(x_1914));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1926 : u32 = u_xlatu_loop_1;
    let x_1927 : u32 = u_xlatu57;
    if ((x_1926 < x_1927)) {
    } else {
      break;
    }
    let x_1930 : u32 = u_xlatu_loop_1;
    u_xlatu59 = (x_1930 >> 2u);
    let x_1933 : u32 = u_xlatu_loop_1;
    u_xlati60 = bitcast<i32>((x_1933 & 3u));
    let x_1936 : u32 = u_xlatu59;
    let x_1939 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_1936)];
    let x_1949 : i32 = u_xlati60;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1954 : vec4<u32> = indexable[x_1949];
    u_xlat59 = dot(x_1939, bitcast<vec4<f32>>(x_1954));
    let x_1958 : f32 = u_xlat59;
    u_xlati59 = i32(x_1958);
    let x_1960 : vec3<f32> = vs_TEXCOORD1;
    let x_1972 : i32 = u_xlati59;
    let x_1974 : vec4<f32> = x_1971.x_AdditionalLightsPosition[x_1972];
    let x_1977 : i32 = u_xlati59;
    let x_1979 : vec4<f32> = x_1971.x_AdditionalLightsPosition[x_1977];
    let x_1981 : vec3<f32> = ((-(x_1960) * vec3<f32>(x_1974.w, x_1974.w, x_1974.w)) + vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
    let x_1982 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1981.x, x_1981.y, x_1981.z, x_1982.w);
    let x_1984 : vec4<f32> = u_xlat6;
    let x_1986 : vec4<f32> = u_xlat6;
    u_xlat60 = dot(vec3<f32>(x_1984.x, x_1984.y, x_1984.z), vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
    let x_1989 : f32 = u_xlat60;
    u_xlat60 = max(x_1989, 6.10351562e-05f);
    let x_1993 : f32 = u_xlat60;
    u_xlat61 = inverseSqrt(x_1993);
    let x_1995 : f32 = u_xlat61;
    let x_1997 : vec4<f32> = u_xlat6;
    let x_1999 : vec3<f32> = (vec3<f32>(x_1995, x_1995, x_1995) * vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
    let x_2000 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
    let x_2002 : f32 = u_xlat60;
    u_xlat61 = (1.0f / x_2002);
    let x_2004 : f32 = u_xlat60;
    let x_2005 : i32 = u_xlati59;
    let x_2007 : f32 = x_1971.x_AdditionalLightsAttenuation[x_2005].x;
    u_xlat60 = (x_2004 * x_2007);
    let x_2009 : f32 = u_xlat60;
    let x_2011 : f32 = u_xlat60;
    u_xlat60 = ((-(x_2009) * x_2011) + 1.0f);
    let x_2014 : f32 = u_xlat60;
    u_xlat60 = max(x_2014, 0.0f);
    let x_2016 : f32 = u_xlat60;
    let x_2017 : f32 = u_xlat60;
    u_xlat60 = (x_2016 * x_2017);
    let x_2019 : f32 = u_xlat60;
    let x_2020 : f32 = u_xlat61;
    u_xlat60 = (x_2019 * x_2020);
    let x_2022 : i32 = u_xlati59;
    let x_2024 : vec4<f32> = x_1971.x_AdditionalLightsSpotDir[x_2022];
    let x_2026 : vec4<f32> = u_xlat6;
    u_xlat61 = dot(vec3<f32>(x_2024.x, x_2024.y, x_2024.z), vec3<f32>(x_2026.x, x_2026.y, x_2026.z));
    let x_2029 : f32 = u_xlat61;
    let x_2030 : i32 = u_xlati59;
    let x_2032 : f32 = x_1971.x_AdditionalLightsAttenuation[x_2030].z;
    let x_2034 : i32 = u_xlati59;
    let x_2036 : f32 = x_1971.x_AdditionalLightsAttenuation[x_2034].w;
    u_xlat61 = ((x_2029 * x_2032) + x_2036);
    let x_2038 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2038, 0.0f, 1.0f);
    let x_2040 : f32 = u_xlat61;
    let x_2041 : f32 = u_xlat61;
    u_xlat61 = (x_2040 * x_2041);
    let x_2043 : f32 = u_xlat60;
    let x_2044 : f32 = u_xlat61;
    u_xlat60 = (x_2043 * x_2044);
    let x_2046 : f32 = u_xlat60;
    let x_2048 : i32 = u_xlati59;
    let x_2050 : vec4<f32> = x_1971.x_AdditionalLightsColor[x_2048];
    let x_2052 : vec3<f32> = (vec3<f32>(x_2046, x_2046, x_2046) * vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
    let x_2053 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2052.x, x_2052.y, x_2052.z, x_2053.w);
    let x_2055 : vec4<f32> = u_xlat2;
    let x_2057 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_2055.x, x_2055.y, x_2055.z), vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
    let x_2060 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2060, 0.0f, 1.0f);
    let x_2062 : f32 = u_xlat59;
    let x_2064 : vec4<f32> = u_xlat7;
    let x_2066 : vec3<f32> = (vec3<f32>(x_2062, x_2062, x_2062) * vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
    let x_2067 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
    let x_2069 : vec4<f32> = u_xlat1;
    let x_2071 : vec4<f32> = u_xlat6;
    let x_2073 : vec3<f32> = (vec3<f32>(x_2069.y, x_2069.z, x_2069.w) * vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
    let x_2074 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
    let x_2076 : vec4<f32> = u_xlat6;
    let x_2078 : vec4<f32> = u_xlat0;
    let x_2081 : vec4<f32> = u_xlat5;
    let x_2083 : vec3<f32> = ((vec3<f32>(x_2076.x, x_2076.y, x_2076.z) * vec3<f32>(x_2078.x, x_2078.x, x_2078.x)) + vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
    let x_2084 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);

    continuing {
      let x_2086 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2086 + bitcast<u32>(1i));
    }
  }
  let x_2088 : vec4<f32> = u_xlat4;
  let x_2090 : vec4<f32> = u_xlat1;
  let x_2093 : vec4<f32> = u_xlat3;
  let x_2095 : vec3<f32> = ((vec3<f32>(x_2088.x, x_2088.y, x_2088.z) * vec3<f32>(x_2090.y, x_2090.z, x_2090.w)) + vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
  let x_2096 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
  let x_2098 : vec4<f32> = u_xlat5;
  let x_2100 : vec4<f32> = u_xlat1;
  let x_2102 : vec3<f32> = (vec3<f32>(x_2098.x, x_2098.y, x_2098.z) + vec3<f32>(x_2100.x, x_2100.y, x_2100.z));
  let x_2103 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
  let x_2106 : f32 = u_xlat19.x;
  let x_2108 : f32 = u_xlat19.x;
  u_xlat19.x = (x_2106 * -(x_2108));
  let x_2113 : f32 = u_xlat19.x;
  u_xlat19.x = exp2(x_2113);
  let x_2116 : vec4<f32> = u_xlat1;
  let x_2119 : vec4<f32> = x_44.unity_FogColor;
  let x_2122 : vec3<f32> = (vec3<f32>(x_2116.x, x_2116.y, x_2116.z) + -(vec3<f32>(x_2119.x, x_2119.y, x_2119.z)));
  let x_2123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2122.x, x_2122.y, x_2122.z, x_2123.w);
  let x_2127 : vec3<f32> = u_xlat19;
  let x_2129 : vec4<f32> = u_xlat1;
  let x_2133 : vec4<f32> = x_44.unity_FogColor;
  let x_2135 : vec3<f32> = ((vec3<f32>(x_2127.x, x_2127.x, x_2127.x) * vec3<f32>(x_2129.x, x_2129.y, x_2129.z)) + vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
  let x_2136 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
  let x_2139 : f32 = x_57.x_Surface;
  u_xlatb19 = (x_2139 == 1.0f);
  let x_2141 : bool = u_xlatb19;
  let x_2142 : bool = u_xlatb38;
  u_xlatb19 = (x_2141 | x_2142);
  let x_2144 : bool = u_xlatb19;
  if (x_2144) {
    let x_2149 : f32 = u_xlat0.x;
    x_2145 = x_2149;
  } else {
    x_2145 = 1.0f;
  }
  let x_2151 : f32 = x_2145;
  SV_Target0.w = x_2151;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

