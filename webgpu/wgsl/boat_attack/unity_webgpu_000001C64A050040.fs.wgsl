struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScaleBiasRt : vec4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_157 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1511 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1610 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat55 : f32;
  var u_xlat56 : f32;
  var u_xlatb3 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat21 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat40 : vec2<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat39 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat57 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
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
  var u_xlatb39 : bool;
  var x_1451 : f32;
  var u_xlatu55 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu58 : u32;
  var u_xlati5 : i32;
  var u_xlat58 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati58 : i32;
  var u_xlat59 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_1759 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_65, x_66);
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_71);
  let x_74 : vec3<f32> = u_xlat1;
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_74.x, x_74.x, x_74.x) * x_76);
  let x_85 : vec2<f32> = vs_TEXCOORD7;
  let x_87 : f32 = x_43.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_85, x_87);
  u_xlat2 = vec3<f32>(x_88.x, x_88.y, x_88.z);
  let x_94 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_95 : vec2<f32> = vec2<f32>(x_94.x, x_94.y);
  let x_99 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_95.x, x_95.y));
  let x_100 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_100.w);
  let x_102 : vec4<f32> = u_xlat3;
  let x_104 : vec4<f32> = hlslcc_FragCoord;
  let x_106 : vec2<f32> = (vec2<f32>(x_102.x, x_102.y) * vec2<f32>(x_104.x, x_104.y));
  let x_107 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_112 : f32 = u_xlat3.y;
  let x_115 : f32 = x_43.x_ScaleBiasRt.x;
  let x_118 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_112 * x_115) + x_118);
  let x_120 : f32 = u_xlat55;
  u_xlat3.z = (-(x_120) + 1.0f);
  let x_130 : vec4<f32> = u_xlat3;
  let x_133 : f32 = x_43.x_GlobalMipBias.x;
  let x_134 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_130.x, x_130.z), x_133);
  u_xlat55 = x_134.x;
  let x_137 : f32 = u_xlat55;
  u_xlat56 = (x_137 + -1.0f);
  let x_142 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_143 : f32 = u_xlat56;
  u_xlat56 = ((x_142 * x_143) + 1.0f);
  let x_146 : f32 = u_xlat55;
  u_xlat55 = min(x_146, 1.0f);
  let x_160 : f32 = x_157.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_160);
  let x_162 : bool = u_xlatb3;
  if (x_162) {
    let x_166 : f32 = x_157.x_MainLightShadowParams.y;
    u_xlatb3 = (x_166 == 1.0f);
    let x_168 : bool = u_xlatb3;
    if (x_168) {
      let x_172 : vec4<f32> = vs_TEXCOORD6;
      let x_176 : vec4<f32> = x_157.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_172.x, x_172.y, x_172.x, x_172.y) + x_176);
      let x_179 : vec4<f32> = u_xlat3;
      let x_180 : vec2<f32> = vec2<f32>(x_179.x, x_179.y);
      let x_182 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_180.x, x_180.y, x_182);
      let x_195 : vec3<f32> = txVec0;
      let x_197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_195.xy, x_195.z);
      u_xlat4.x = x_197;
      let x_200 : vec4<f32> = u_xlat3;
      let x_201 : vec2<f32> = vec2<f32>(x_200.z, x_200.w);
      let x_203 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_201.x, x_201.y, x_203);
      let x_210 : vec3<f32> = txVec1;
      let x_212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_210.xy, x_210.z);
      u_xlat4.y = x_212;
      let x_214 : vec4<f32> = vs_TEXCOORD6;
      let x_217 : vec4<f32> = x_157.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_214.x, x_214.y, x_214.x, x_214.y) + x_217);
      let x_220 : vec4<f32> = u_xlat3;
      let x_221 : vec2<f32> = vec2<f32>(x_220.x, x_220.y);
      let x_223 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_221.x, x_221.y, x_223);
      let x_230 : vec3<f32> = txVec2;
      let x_232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_230.xy, x_230.z);
      u_xlat4.z = x_232;
      let x_235 : vec4<f32> = u_xlat3;
      let x_236 : vec2<f32> = vec2<f32>(x_235.z, x_235.w);
      let x_238 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_236.x, x_236.y, x_238);
      let x_245 : vec3<f32> = txVec3;
      let x_247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_245.xy, x_245.z);
      u_xlat4.w = x_247;
      let x_249 : vec4<f32> = u_xlat4;
      u_xlat3.x = dot(x_249, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_257 : f32 = x_157.x_MainLightShadowParams.y;
      u_xlatb21 = (x_257 == 2.0f);
      let x_260 : bool = u_xlatb21;
      if (x_260) {
        let x_264 : vec4<f32> = vs_TEXCOORD6;
        let x_268 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_273 : vec2<f32> = ((vec2<f32>(x_264.x, x_264.y) * vec2<f32>(x_268.z, x_268.w)) + vec2<f32>(0.5f, 0.5f));
        let x_274 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_273.x, x_273.y, x_274.z);
        let x_276 : vec3<f32> = u_xlat21;
        let x_278 : vec2<f32> = floor(vec2<f32>(x_276.x, x_276.y));
        let x_279 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_278.x, x_278.y, x_279.z);
        let x_281 : vec4<f32> = vs_TEXCOORD6;
        let x_284 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_287 : vec3<f32> = u_xlat21;
        let x_290 : vec2<f32> = ((vec2<f32>(x_281.x, x_281.y) * vec2<f32>(x_284.z, x_284.w)) + -(vec2<f32>(x_287.x, x_287.y)));
        let x_291 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_291.z, x_291.w);
        let x_294 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_294.x, x_294.x, x_294.y, x_294.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_299 : vec4<f32> = u_xlat5;
        let x_301 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_299.x, x_299.x, x_299.z, x_299.z) * vec4<f32>(x_301.x, x_301.x, x_301.z, x_301.z));
        let x_306 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_306.y, x_306.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_311 : vec4<f32> = u_xlat6;
        let x_314 : vec4<f32> = u_xlat4;
        let x_317 : vec2<f32> = ((vec2<f32>(x_311.x, x_311.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_314.x, x_314.y)));
        let x_318 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_317.x, x_318.y, x_317.y, x_318.w);
        let x_320 : vec4<f32> = u_xlat4;
        let x_323 : vec2<f32> = (-(vec2<f32>(x_320.x, x_320.y)) + vec2<f32>(1.0f, 1.0f));
        let x_324 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_323.x, x_323.y, x_324.z, x_324.w);
        let x_327 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_327.x, x_327.y), vec2<f32>(0.0f, 0.0f));
        let x_331 : vec2<f32> = u_xlat42;
        let x_333 : vec2<f32> = u_xlat42;
        let x_335 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_331) * x_333) + vec2<f32>(x_335.x, x_335.y));
        let x_338 : vec4<f32> = u_xlat4;
        let x_340 : vec2<f32> = max(vec2<f32>(x_338.x, x_338.y), vec2<f32>(0.0f, 0.0f));
        let x_341 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_340.x, x_340.y, x_341.z, x_341.w);
        let x_343 : vec4<f32> = u_xlat4;
        let x_346 : vec4<f32> = u_xlat4;
        let x_349 : vec4<f32> = u_xlat5;
        let x_351 : vec2<f32> = ((-(vec2<f32>(x_343.x, x_343.y)) * vec2<f32>(x_346.x, x_346.y)) + vec2<f32>(x_349.y, x_349.w));
        let x_352 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_351.x, x_351.y, x_352.z, x_352.w);
        let x_354 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_354 + vec2<f32>(1.0f, 1.0f));
        let x_356 : vec4<f32> = u_xlat4;
        let x_358 : vec2<f32> = (vec2<f32>(x_356.x, x_356.y) + vec2<f32>(1.0f, 1.0f));
        let x_359 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_358.x, x_358.y, x_359.z, x_359.w);
        let x_362 : vec4<f32> = u_xlat5;
        let x_366 : vec2<f32> = (vec2<f32>(x_362.x, x_362.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_367 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
        let x_370 : vec4<f32> = u_xlat6;
        let x_372 : vec2<f32> = (vec2<f32>(x_370.x, x_370.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_373 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
        let x_375 : vec2<f32> = u_xlat42;
        let x_376 : vec2<f32> = (x_375 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_377 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
        let x_380 : vec4<f32> = u_xlat4;
        let x_382 : vec2<f32> = (vec2<f32>(x_380.x, x_380.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_383 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
        let x_385 : vec4<f32> = u_xlat5;
        let x_387 : vec2<f32> = (vec2<f32>(x_385.y, x_385.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_388 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
        let x_391 : f32 = u_xlat6.x;
        u_xlat7.z = x_391;
        let x_394 : f32 = u_xlat4.x;
        u_xlat7.w = x_394;
        let x_397 : f32 = u_xlat9.x;
        u_xlat8.z = x_397;
        let x_400 : f32 = u_xlat40.x;
        u_xlat8.w = x_400;
        let x_402 : vec4<f32> = u_xlat7;
        let x_404 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_402.z, x_402.w, x_402.x, x_402.z) + vec4<f32>(x_404.z, x_404.w, x_404.x, x_404.z));
        let x_408 : f32 = u_xlat7.y;
        u_xlat6.z = x_408;
        let x_411 : f32 = u_xlat4.y;
        u_xlat6.w = x_411;
        let x_414 : f32 = u_xlat8.y;
        u_xlat9.z = x_414;
        let x_417 : f32 = u_xlat40.y;
        u_xlat9.w = x_417;
        let x_419 : vec4<f32> = u_xlat6;
        let x_421 : vec4<f32> = u_xlat9;
        let x_423 : vec3<f32> = (vec3<f32>(x_419.z, x_419.y, x_419.w) + vec3<f32>(x_421.z, x_421.y, x_421.w));
        let x_424 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
        let x_426 : vec4<f32> = u_xlat8;
        let x_428 : vec4<f32> = u_xlat5;
        let x_430 : vec3<f32> = (vec3<f32>(x_426.x, x_426.z, x_426.w) / vec3<f32>(x_428.z, x_428.w, x_428.y));
        let x_431 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
        let x_433 : vec4<f32> = u_xlat6;
        let x_439 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_440 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
        let x_442 : vec4<f32> = u_xlat9;
        let x_444 : vec4<f32> = u_xlat4;
        let x_446 : vec3<f32> = (vec3<f32>(x_442.z, x_442.y, x_442.w) / vec3<f32>(x_444.x, x_444.y, x_444.z));
        let x_447 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
        let x_449 : vec4<f32> = u_xlat7;
        let x_451 : vec3<f32> = (vec3<f32>(x_449.x, x_449.y, x_449.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_452 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
        let x_454 : vec4<f32> = u_xlat6;
        let x_457 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_459 : vec3<f32> = (vec3<f32>(x_454.y, x_454.x, x_454.z) * vec3<f32>(x_457.x, x_457.x, x_457.x));
        let x_460 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
        let x_462 : vec4<f32> = u_xlat7;
        let x_465 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_467 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(x_465.y, x_465.y, x_465.y));
        let x_468 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
        let x_471 : f32 = u_xlat7.x;
        u_xlat6.w = x_471;
        let x_473 : vec3<f32> = u_xlat21;
        let x_476 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_479 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_473.x, x_473.y, x_473.x, x_473.y) * vec4<f32>(x_476.x, x_476.y, x_476.x, x_476.y)) + vec4<f32>(x_479.y, x_479.w, x_479.x, x_479.w));
        let x_482 : vec3<f32> = u_xlat21;
        let x_485 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_488 : vec4<f32> = u_xlat6;
        let x_490 : vec2<f32> = ((vec2<f32>(x_482.x, x_482.y) * vec2<f32>(x_485.x, x_485.y)) + vec2<f32>(x_488.z, x_488.w));
        let x_491 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_494 : f32 = u_xlat6.y;
        u_xlat7.w = x_494;
        let x_496 : vec4<f32> = u_xlat7;
        let x_497 : vec2<f32> = vec2<f32>(x_496.y, x_496.z);
        let x_498 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_498.x, x_497.x, x_498.z, x_497.y);
        let x_501 : vec3<f32> = u_xlat21;
        let x_504 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_507 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_501.x, x_501.y, x_501.x, x_501.y) * vec4<f32>(x_504.x, x_504.y, x_504.x, x_504.y)) + vec4<f32>(x_507.x, x_507.y, x_507.z, x_507.y));
        let x_510 : vec3<f32> = u_xlat21;
        let x_513 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_516 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_510.x, x_510.y, x_510.x, x_510.y) * vec4<f32>(x_513.x, x_513.y, x_513.x, x_513.y)) + vec4<f32>(x_516.w, x_516.y, x_516.w, x_516.z));
        let x_519 : vec3<f32> = u_xlat21;
        let x_522 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_525 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_519.x, x_519.y, x_519.x, x_519.y) * vec4<f32>(x_522.x, x_522.y, x_522.x, x_522.y)) + vec4<f32>(x_525.x, x_525.w, x_525.z, x_525.w));
        let x_529 : vec4<f32> = u_xlat4;
        let x_531 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_529.x, x_529.x, x_529.x, x_529.y) * vec4<f32>(x_531.z, x_531.w, x_531.y, x_531.z));
        let x_535 : vec4<f32> = u_xlat4;
        let x_537 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_535.y, x_535.y, x_535.z, x_535.z) * x_537);
        let x_540 : f32 = u_xlat4.z;
        let x_542 : f32 = u_xlat5.y;
        u_xlat21.x = (x_540 * x_542);
        let x_546 : vec4<f32> = u_xlat8;
        let x_547 : vec2<f32> = vec2<f32>(x_546.x, x_546.y);
        let x_549 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_547.x, x_547.y, x_549);
        let x_557 : vec3<f32> = txVec4;
        let x_559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_557.xy, x_557.z);
        u_xlat39 = x_559;
        let x_561 : vec4<f32> = u_xlat8;
        let x_562 : vec2<f32> = vec2<f32>(x_561.z, x_561.w);
        let x_564 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_562.x, x_562.y, x_564);
        let x_572 : vec3<f32> = txVec5;
        let x_574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_572.xy, x_572.z);
        u_xlat57 = x_574;
        let x_575 : f32 = u_xlat57;
        let x_577 : f32 = u_xlat11.y;
        u_xlat57 = (x_575 * x_577);
        let x_580 : f32 = u_xlat11.x;
        let x_581 : f32 = u_xlat39;
        let x_583 : f32 = u_xlat57;
        u_xlat39 = ((x_580 * x_581) + x_583);
        let x_586 : vec4<f32> = u_xlat9;
        let x_587 : vec2<f32> = vec2<f32>(x_586.x, x_586.y);
        let x_589 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_587.x, x_587.y, x_589);
        let x_596 : vec3<f32> = txVec6;
        let x_598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_596.xy, x_596.z);
        u_xlat57 = x_598;
        let x_600 : f32 = u_xlat11.z;
        let x_601 : f32 = u_xlat57;
        let x_603 : f32 = u_xlat39;
        u_xlat39 = ((x_600 * x_601) + x_603);
        let x_606 : vec4<f32> = u_xlat7;
        let x_607 : vec2<f32> = vec2<f32>(x_606.x, x_606.y);
        let x_609 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_607.x, x_607.y, x_609);
        let x_616 : vec3<f32> = txVec7;
        let x_618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_616.xy, x_616.z);
        u_xlat57 = x_618;
        let x_620 : f32 = u_xlat11.w;
        let x_621 : f32 = u_xlat57;
        let x_623 : f32 = u_xlat39;
        u_xlat39 = ((x_620 * x_621) + x_623);
        let x_626 : vec4<f32> = u_xlat10;
        let x_627 : vec2<f32> = vec2<f32>(x_626.x, x_626.y);
        let x_629 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_627.x, x_627.y, x_629);
        let x_636 : vec3<f32> = txVec8;
        let x_638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_636.xy, x_636.z);
        u_xlat57 = x_638;
        let x_640 : f32 = u_xlat12.x;
        let x_641 : f32 = u_xlat57;
        let x_643 : f32 = u_xlat39;
        u_xlat39 = ((x_640 * x_641) + x_643);
        let x_646 : vec4<f32> = u_xlat10;
        let x_647 : vec2<f32> = vec2<f32>(x_646.z, x_646.w);
        let x_649 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_647.x, x_647.y, x_649);
        let x_656 : vec3<f32> = txVec9;
        let x_658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_656.xy, x_656.z);
        u_xlat57 = x_658;
        let x_660 : f32 = u_xlat12.y;
        let x_661 : f32 = u_xlat57;
        let x_663 : f32 = u_xlat39;
        u_xlat39 = ((x_660 * x_661) + x_663);
        let x_666 : vec4<f32> = u_xlat7;
        let x_667 : vec2<f32> = vec2<f32>(x_666.z, x_666.w);
        let x_669 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_667.x, x_667.y, x_669);
        let x_676 : vec3<f32> = txVec10;
        let x_678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_676.xy, x_676.z);
        u_xlat57 = x_678;
        let x_680 : f32 = u_xlat12.z;
        let x_681 : f32 = u_xlat57;
        let x_683 : f32 = u_xlat39;
        u_xlat39 = ((x_680 * x_681) + x_683);
        let x_686 : vec4<f32> = u_xlat6;
        let x_687 : vec2<f32> = vec2<f32>(x_686.x, x_686.y);
        let x_689 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_687.x, x_687.y, x_689);
        let x_696 : vec3<f32> = txVec11;
        let x_698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_696.xy, x_696.z);
        u_xlat57 = x_698;
        let x_700 : f32 = u_xlat12.w;
        let x_701 : f32 = u_xlat57;
        let x_703 : f32 = u_xlat39;
        u_xlat39 = ((x_700 * x_701) + x_703);
        let x_706 : vec4<f32> = u_xlat6;
        let x_707 : vec2<f32> = vec2<f32>(x_706.z, x_706.w);
        let x_709 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_707.x, x_707.y, x_709);
        let x_716 : vec3<f32> = txVec12;
        let x_718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_716.xy, x_716.z);
        u_xlat57 = x_718;
        let x_720 : f32 = u_xlat21.x;
        let x_721 : f32 = u_xlat57;
        let x_723 : f32 = u_xlat39;
        u_xlat3.x = ((x_720 * x_721) + x_723);
      } else {
        let x_727 : vec4<f32> = vs_TEXCOORD6;
        let x_730 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_733 : vec2<f32> = ((vec2<f32>(x_727.x, x_727.y) * vec2<f32>(x_730.z, x_730.w)) + vec2<f32>(0.5f, 0.5f));
        let x_734 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_733.x, x_733.y, x_734.z);
        let x_736 : vec3<f32> = u_xlat21;
        let x_738 : vec2<f32> = floor(vec2<f32>(x_736.x, x_736.y));
        let x_739 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_738.x, x_738.y, x_739.z);
        let x_741 : vec4<f32> = vs_TEXCOORD6;
        let x_744 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_747 : vec3<f32> = u_xlat21;
        let x_750 : vec2<f32> = ((vec2<f32>(x_741.x, x_741.y) * vec2<f32>(x_744.z, x_744.w)) + -(vec2<f32>(x_747.x, x_747.y)));
        let x_751 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
        let x_753 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_753.x, x_753.x, x_753.y, x_753.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_756 : vec4<f32> = u_xlat5;
        let x_758 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_756.x, x_756.x, x_756.z, x_756.z) * vec4<f32>(x_758.x, x_758.x, x_758.z, x_758.z));
        let x_761 : vec4<f32> = u_xlat6;
        let x_765 : vec2<f32> = (vec2<f32>(x_761.y, x_761.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_766 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_766.x, x_765.x, x_766.z, x_765.y);
        let x_768 : vec4<f32> = u_xlat6;
        let x_771 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_768.x, x_768.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_771.x, x_771.y)));
        let x_775 : vec4<f32> = u_xlat4;
        let x_778 : vec2<f32> = (-(vec2<f32>(x_775.x, x_775.y)) + vec2<f32>(1.0f, 1.0f));
        let x_779 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_778.x, x_779.y, x_778.y, x_779.w);
        let x_781 : vec4<f32> = u_xlat4;
        let x_783 : vec2<f32> = min(vec2<f32>(x_781.x, x_781.y), vec2<f32>(0.0f, 0.0f));
        let x_784 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat6;
        let x_789 : vec4<f32> = u_xlat6;
        let x_792 : vec4<f32> = u_xlat5;
        let x_794 : vec2<f32> = ((-(vec2<f32>(x_786.x, x_786.y)) * vec2<f32>(x_789.x, x_789.y)) + vec2<f32>(x_792.x, x_792.z));
        let x_795 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_794.x, x_795.y, x_794.y, x_795.w);
        let x_797 : vec4<f32> = u_xlat4;
        let x_799 : vec2<f32> = max(vec2<f32>(x_797.x, x_797.y), vec2<f32>(0.0f, 0.0f));
        let x_800 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_799.x, x_799.y, x_800.z, x_800.w);
        let x_802 : vec4<f32> = u_xlat6;
        let x_805 : vec4<f32> = u_xlat6;
        let x_808 : vec4<f32> = u_xlat5;
        let x_810 : vec2<f32> = ((-(vec2<f32>(x_802.x, x_802.y)) * vec2<f32>(x_805.x, x_805.y)) + vec2<f32>(x_808.y, x_808.w));
        let x_811 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_811.x, x_810.x, x_811.z, x_810.y);
        let x_813 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_813 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_817 : f32 = u_xlat5.y;
        u_xlat6.z = (x_817 * 0.081632003f);
        let x_821 : vec2<f32> = u_xlat40;
        let x_824 : vec2<f32> = (vec2<f32>(x_821.y, x_821.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_825 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_827 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_827.x, x_827.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_831 : f32 = u_xlat5.w;
        u_xlat8.z = (x_831 * 0.081632003f);
        let x_835 : f32 = u_xlat8.y;
        u_xlat6.x = x_835;
        let x_837 : vec4<f32> = u_xlat4;
        let x_844 : vec2<f32> = ((vec2<f32>(x_837.x, x_837.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_845 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_845.x, x_844.x, x_845.z, x_844.y);
        let x_847 : vec4<f32> = u_xlat4;
        let x_851 : vec2<f32> = ((vec2<f32>(x_847.x, x_847.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_852 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_851.x, x_852.y, x_851.y, x_852.w);
        let x_855 : f32 = u_xlat40.x;
        u_xlat5.y = x_855;
        let x_858 : f32 = u_xlat7.y;
        u_xlat5.w = x_858;
        let x_860 : vec4<f32> = u_xlat5;
        let x_861 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_860 + x_861);
        let x_863 : vec4<f32> = u_xlat4;
        let x_866 : vec2<f32> = ((vec2<f32>(x_863.y, x_863.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_867 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_867.x, x_866.x, x_867.z, x_866.y);
        let x_869 : vec4<f32> = u_xlat4;
        let x_872 : vec2<f32> = ((vec2<f32>(x_869.y, x_869.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_873 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_872.x, x_873.y, x_872.y, x_873.w);
        let x_876 : f32 = u_xlat40.y;
        u_xlat7.y = x_876;
        let x_878 : vec4<f32> = u_xlat7;
        let x_879 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_878 + x_879);
        let x_881 : vec4<f32> = u_xlat5;
        let x_882 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_881 / x_882);
        let x_884 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_884 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_890 : vec4<f32> = u_xlat7;
        let x_891 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_890 / x_891);
        let x_893 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_893 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_895 : vec4<f32> = u_xlat5;
        let x_898 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_895.w, x_895.x, x_895.y, x_895.z) * vec4<f32>(x_898.x, x_898.x, x_898.x, x_898.x));
        let x_901 : vec4<f32> = u_xlat7;
        let x_904 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_901.x, x_901.w, x_901.y, x_901.z) * vec4<f32>(x_904.y, x_904.y, x_904.y, x_904.y));
        let x_907 : vec4<f32> = u_xlat5;
        let x_908 : vec3<f32> = vec3<f32>(x_907.y, x_907.z, x_907.w);
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_908.x, x_909.y, x_908.y, x_908.z);
        let x_912 : f32 = u_xlat7.x;
        u_xlat8.y = x_912;
        let x_914 : vec3<f32> = u_xlat21;
        let x_917 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_920 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_914.x, x_914.y, x_914.x, x_914.y) * vec4<f32>(x_917.x, x_917.y, x_917.x, x_917.y)) + vec4<f32>(x_920.x, x_920.y, x_920.z, x_920.y));
        let x_923 : vec3<f32> = u_xlat21;
        let x_926 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_929 : vec4<f32> = u_xlat8;
        let x_931 : vec2<f32> = ((vec2<f32>(x_923.x, x_923.y) * vec2<f32>(x_926.x, x_926.y)) + vec2<f32>(x_929.w, x_929.y));
        let x_932 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_935 : f32 = u_xlat8.y;
        u_xlat5.y = x_935;
        let x_938 : f32 = u_xlat7.z;
        u_xlat8.y = x_938;
        let x_940 : vec3<f32> = u_xlat21;
        let x_943 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_946 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_940.x, x_940.y, x_940.x, x_940.y) * vec4<f32>(x_943.x, x_943.y, x_943.x, x_943.y)) + vec4<f32>(x_946.x, x_946.y, x_946.z, x_946.y));
        let x_950 : vec3<f32> = u_xlat21;
        let x_953 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_956 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_950.x, x_950.y) * vec2<f32>(x_953.x, x_953.y)) + vec2<f32>(x_956.w, x_956.y));
        let x_960 : f32 = u_xlat8.y;
        u_xlat5.z = x_960;
        let x_962 : vec3<f32> = u_xlat21;
        let x_965 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_962.x, x_962.y, x_962.x, x_962.y) * vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.y)) + vec4<f32>(x_968.x, x_968.y, x_968.x, x_968.z));
        let x_972 : f32 = u_xlat7.w;
        u_xlat8.y = x_972;
        let x_975 : vec3<f32> = u_xlat21;
        let x_978 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_981 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_975.x, x_975.y, x_975.x, x_975.y) * vec4<f32>(x_978.x, x_978.y, x_978.x, x_978.y)) + vec4<f32>(x_981.x, x_981.y, x_981.z, x_981.y));
        let x_985 : vec3<f32> = u_xlat21;
        let x_988 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_991 : vec4<f32> = u_xlat8;
        u_xlat23 = ((vec2<f32>(x_985.x, x_985.y) * vec2<f32>(x_988.x, x_988.y)) + vec2<f32>(x_991.w, x_991.y));
        let x_995 : f32 = u_xlat8.y;
        u_xlat5.w = x_995;
        let x_998 : vec3<f32> = u_xlat21;
        let x_1001 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat5;
        u_xlat14 = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1001.x, x_1001.y)) + vec2<f32>(x_1004.x, x_1004.w));
        let x_1007 : vec4<f32> = u_xlat8;
        let x_1008 : vec3<f32> = vec3<f32>(x_1007.x, x_1007.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1008.x, x_1009.y, x_1008.y, x_1008.z);
        let x_1011 : vec3<f32> = u_xlat21;
        let x_1014 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_1017 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1011.x, x_1011.y, x_1011.x, x_1011.y) * vec4<f32>(x_1014.x, x_1014.y, x_1014.x, x_1014.y)) + vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1017.y));
        let x_1021 : vec3<f32> = u_xlat21;
        let x_1024 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_1027 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1021.x, x_1021.y) * vec2<f32>(x_1024.x, x_1024.y)) + vec2<f32>(x_1027.w, x_1027.y));
        let x_1031 : f32 = u_xlat5.x;
        u_xlat7.x = x_1031;
        let x_1033 : vec3<f32> = u_xlat21;
        let x_1036 : vec4<f32> = x_157.x_MainLightShadowmapSize;
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1041 : vec2<f32> = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1036.x, x_1036.y)) + vec2<f32>(x_1039.x, x_1039.y));
        let x_1042 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1041.x, x_1041.y, x_1042.z);
        let x_1045 : vec4<f32> = u_xlat4;
        let x_1047 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1045.x, x_1045.x, x_1045.x, x_1045.x) * x_1047);
        let x_1050 : vec4<f32> = u_xlat4;
        let x_1052 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1050.y, x_1050.y, x_1050.y, x_1050.y) * x_1052);
        let x_1055 : vec4<f32> = u_xlat4;
        let x_1057 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1055.z, x_1055.z, x_1055.z, x_1055.z) * x_1057);
        let x_1059 : vec4<f32> = u_xlat4;
        let x_1061 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1059.w, x_1059.w, x_1059.w, x_1059.w) * x_1061);
        let x_1064 : vec4<f32> = u_xlat9;
        let x_1065 : vec2<f32> = vec2<f32>(x_1064.x, x_1064.y);
        let x_1067 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1065.x, x_1065.y, x_1067);
        let x_1074 : vec3<f32> = txVec13;
        let x_1076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1074.xy, x_1074.z);
        u_xlat57 = x_1076;
        let x_1078 : vec4<f32> = u_xlat9;
        let x_1079 : vec2<f32> = vec2<f32>(x_1078.z, x_1078.w);
        let x_1081 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
        let x_1088 : vec3<f32> = txVec14;
        let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1088.xy, x_1088.z);
        u_xlat5.x = x_1090;
        let x_1093 : f32 = u_xlat5.x;
        let x_1095 : f32 = u_xlat15.y;
        u_xlat5.x = (x_1093 * x_1095);
        let x_1099 : f32 = u_xlat15.x;
        let x_1100 : f32 = u_xlat57;
        let x_1103 : f32 = u_xlat5.x;
        u_xlat57 = ((x_1099 * x_1100) + x_1103);
        let x_1106 : vec4<f32> = u_xlat10;
        let x_1107 : vec2<f32> = vec2<f32>(x_1106.x, x_1106.y);
        let x_1109 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1107.x, x_1107.y, x_1109);
        let x_1116 : vec3<f32> = txVec15;
        let x_1118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1116.xy, x_1116.z);
        u_xlat5.x = x_1118;
        let x_1121 : f32 = u_xlat15.z;
        let x_1123 : f32 = u_xlat5.x;
        let x_1125 : f32 = u_xlat57;
        u_xlat57 = ((x_1121 * x_1123) + x_1125);
        let x_1128 : vec4<f32> = u_xlat12;
        let x_1129 : vec2<f32> = vec2<f32>(x_1128.x, x_1128.y);
        let x_1131 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1129.x, x_1129.y, x_1131);
        let x_1138 : vec3<f32> = txVec16;
        let x_1140 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1138.xy, x_1138.z);
        u_xlat5.x = x_1140;
        let x_1143 : f32 = u_xlat15.w;
        let x_1145 : f32 = u_xlat5.x;
        let x_1147 : f32 = u_xlat57;
        u_xlat57 = ((x_1143 * x_1145) + x_1147);
        let x_1150 : vec4<f32> = u_xlat11;
        let x_1151 : vec2<f32> = vec2<f32>(x_1150.x, x_1150.y);
        let x_1153 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1151.x, x_1151.y, x_1153);
        let x_1160 : vec3<f32> = txVec17;
        let x_1162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1160.xy, x_1160.z);
        u_xlat5.x = x_1162;
        let x_1165 : f32 = u_xlat16.x;
        let x_1167 : f32 = u_xlat5.x;
        let x_1169 : f32 = u_xlat57;
        u_xlat57 = ((x_1165 * x_1167) + x_1169);
        let x_1172 : vec4<f32> = u_xlat11;
        let x_1173 : vec2<f32> = vec2<f32>(x_1172.z, x_1172.w);
        let x_1175 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1173.x, x_1173.y, x_1175);
        let x_1182 : vec3<f32> = txVec18;
        let x_1184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1182.xy, x_1182.z);
        u_xlat5.x = x_1184;
        let x_1187 : f32 = u_xlat16.y;
        let x_1189 : f32 = u_xlat5.x;
        let x_1191 : f32 = u_xlat57;
        u_xlat57 = ((x_1187 * x_1189) + x_1191);
        let x_1194 : vec2<f32> = u_xlat46;
        let x_1196 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1194.x, x_1194.y, x_1196);
        let x_1203 : vec3<f32> = txVec19;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1203.xy, x_1203.z);
        u_xlat5.x = x_1205;
        let x_1208 : f32 = u_xlat16.z;
        let x_1210 : f32 = u_xlat5.x;
        let x_1212 : f32 = u_xlat57;
        u_xlat57 = ((x_1208 * x_1210) + x_1212);
        let x_1215 : vec4<f32> = u_xlat12;
        let x_1216 : vec2<f32> = vec2<f32>(x_1215.z, x_1215.w);
        let x_1218 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
        let x_1225 : vec3<f32> = txVec20;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1225.xy, x_1225.z);
        u_xlat5.x = x_1227;
        let x_1230 : f32 = u_xlat16.w;
        let x_1232 : f32 = u_xlat5.x;
        let x_1234 : f32 = u_xlat57;
        u_xlat57 = ((x_1230 * x_1232) + x_1234);
        let x_1237 : vec4<f32> = u_xlat13;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.x, x_1237.y);
        let x_1240 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec21;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1247.xy, x_1247.z);
        u_xlat5.x = x_1249;
        let x_1252 : f32 = u_xlat17.x;
        let x_1254 : f32 = u_xlat5.x;
        let x_1256 : f32 = u_xlat57;
        u_xlat57 = ((x_1252 * x_1254) + x_1256);
        let x_1259 : vec4<f32> = u_xlat13;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.z, x_1259.w);
        let x_1262 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec22;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1269.xy, x_1269.z);
        u_xlat5.x = x_1271;
        let x_1274 : f32 = u_xlat17.y;
        let x_1276 : f32 = u_xlat5.x;
        let x_1278 : f32 = u_xlat57;
        u_xlat57 = ((x_1274 * x_1276) + x_1278);
        let x_1281 : vec2<f32> = u_xlat23;
        let x_1283 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec23;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1290.xy, x_1290.z);
        u_xlat5.x = x_1292;
        let x_1295 : f32 = u_xlat17.z;
        let x_1297 : f32 = u_xlat5.x;
        let x_1299 : f32 = u_xlat57;
        u_xlat57 = ((x_1295 * x_1297) + x_1299);
        let x_1302 : vec2<f32> = u_xlat14;
        let x_1304 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec24;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1311.xy, x_1311.z);
        u_xlat5.x = x_1313;
        let x_1316 : f32 = u_xlat17.w;
        let x_1318 : f32 = u_xlat5.x;
        let x_1320 : f32 = u_xlat57;
        u_xlat57 = ((x_1316 * x_1318) + x_1320);
        let x_1323 : vec4<f32> = u_xlat8;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.x, x_1323.y);
        let x_1326 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec25;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1333.xy, x_1333.z);
        u_xlat5.x = x_1335;
        let x_1338 : f32 = u_xlat4.x;
        let x_1340 : f32 = u_xlat5.x;
        let x_1342 : f32 = u_xlat57;
        u_xlat57 = ((x_1338 * x_1340) + x_1342);
        let x_1345 : vec4<f32> = u_xlat8;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.z, x_1345.w);
        let x_1348 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec26;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1355.xy, x_1355.z);
        u_xlat4.x = x_1357;
        let x_1360 : f32 = u_xlat4.y;
        let x_1362 : f32 = u_xlat4.x;
        let x_1364 : f32 = u_xlat57;
        u_xlat57 = ((x_1360 * x_1362) + x_1364);
        let x_1367 : vec2<f32> = u_xlat43;
        let x_1369 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1367.x, x_1367.y, x_1369);
        let x_1376 : vec3<f32> = txVec27;
        let x_1378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1376.xy, x_1376.z);
        u_xlat4.x = x_1378;
        let x_1381 : f32 = u_xlat4.z;
        let x_1383 : f32 = u_xlat4.x;
        let x_1385 : f32 = u_xlat57;
        u_xlat57 = ((x_1381 * x_1383) + x_1385);
        let x_1388 : vec3<f32> = u_xlat21;
        let x_1389 : vec2<f32> = vec2<f32>(x_1388.x, x_1388.y);
        let x_1391 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1389.x, x_1389.y, x_1391);
        let x_1398 : vec3<f32> = txVec28;
        let x_1400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1398.xy, x_1398.z);
        u_xlat21.x = x_1400;
        let x_1403 : f32 = u_xlat4.w;
        let x_1405 : f32 = u_xlat21.x;
        let x_1407 : f32 = u_xlat57;
        u_xlat3.x = ((x_1403 * x_1405) + x_1407);
      }
    }
  } else {
    let x_1412 : vec4<f32> = vs_TEXCOORD6;
    let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
    let x_1415 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
    let x_1422 : vec3<f32> = txVec29;
    let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
    u_xlat3.x = x_1424;
  }
  let x_1427 : f32 = x_157.x_MainLightShadowParams.x;
  u_xlat21.x = (-(x_1427) + 1.0f);
  let x_1432 : f32 = u_xlat3.x;
  let x_1434 : f32 = x_157.x_MainLightShadowParams.x;
  let x_1437 : f32 = u_xlat21.x;
  u_xlat3.x = ((x_1432 * x_1434) + x_1437);
  let x_1441 : f32 = vs_TEXCOORD6.z;
  u_xlatb21 = (0.0f >= x_1441);
  let x_1445 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (x_1445 >= 1.0f);
  let x_1447 : bool = u_xlatb39;
  let x_1448 : bool = u_xlatb21;
  u_xlatb21 = (x_1447 | x_1448);
  let x_1450 : bool = u_xlatb21;
  if (x_1450) {
    x_1451 = 1.0f;
  } else {
    let x_1456 : f32 = u_xlat3.x;
    x_1451 = x_1456;
  }
  let x_1457 : f32 = x_1451;
  u_xlat3.x = x_1457;
  let x_1460 : vec3<f32> = vs_TEXCOORD1;
  let x_1463 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat21 = (x_1460 + -(x_1463));
  let x_1466 : vec3<f32> = u_xlat21;
  let x_1467 : vec3<f32> = u_xlat21;
  u_xlat21.x = dot(x_1466, x_1467);
  let x_1471 : f32 = u_xlat21.x;
  let x_1473 : f32 = x_157.x_MainLightShadowParams.z;
  let x_1476 : f32 = x_157.x_MainLightShadowParams.w;
  u_xlat21.x = ((x_1471 * x_1473) + x_1476);
  let x_1480 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_1480, 0.0f, 1.0f);
  let x_1484 : f32 = u_xlat3.x;
  u_xlat39 = (-(x_1484) + 1.0f);
  let x_1488 : f32 = u_xlat21.x;
  let x_1489 : f32 = u_xlat39;
  let x_1492 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1488 * x_1489) + x_1492);
  let x_1495 : f32 = u_xlat56;
  let x_1499 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat21 = (vec3<f32>(x_1495, x_1495, x_1495) * vec3<f32>(x_1499.x, x_1499.y, x_1499.z));
  let x_1502 : f32 = u_xlat55;
  let x_1504 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1502, x_1502, x_1502) * x_1504);
  let x_1507 : f32 = u_xlat3.x;
  let x_1514 : f32 = x_1511.unity_LightData.z;
  u_xlat55 = (x_1507 * x_1514);
  let x_1516 : f32 = u_xlat55;
  let x_1518 : vec3<f32> = u_xlat21;
  let x_1519 : vec3<f32> = (vec3<f32>(x_1516, x_1516, x_1516) * x_1518);
  let x_1520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1519.x, x_1519.y, x_1519.z, x_1520.w);
  let x_1522 : vec3<f32> = u_xlat1;
  let x_1525 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(x_1522, vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
  let x_1528 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1528, 0.0f, 1.0f);
  let x_1530 : f32 = u_xlat55;
  let x_1532 : vec4<f32> = u_xlat3;
  let x_1534 : vec3<f32> = (vec3<f32>(x_1530, x_1530, x_1530) * vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
  let x_1535 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1535.w);
  let x_1537 : vec4<f32> = u_xlat0;
  let x_1539 : vec4<f32> = u_xlat3;
  let x_1541 : vec3<f32> = (vec3<f32>(x_1537.y, x_1537.z, x_1537.w) * vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
  let x_1542 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
  let x_1545 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1547 : f32 = x_1511.unity_LightData.y;
  u_xlat55 = min(x_1545, x_1547);
  let x_1551 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1551));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1563 : u32 = u_xlatu_loop_1;
    let x_1564 : u32 = u_xlatu55;
    if ((x_1563 < x_1564)) {
    } else {
      break;
    }
    let x_1567 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_1567 >> 2u);
    let x_1571 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1571 & 3u));
    let x_1575 : u32 = u_xlatu58;
    let x_1578 : vec4<f32> = x_1511.unity_LightIndices[bitcast<i32>(x_1575)];
    let x_1588 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1593 : vec4<u32> = indexable[x_1588];
    u_xlat58 = dot(x_1578, bitcast<vec4<f32>>(x_1593));
    let x_1597 : f32 = u_xlat58;
    u_xlati58 = i32(x_1597);
    let x_1599 : vec3<f32> = vs_TEXCOORD1;
    let x_1611 : i32 = u_xlati58;
    let x_1613 : vec4<f32> = x_1610.x_AdditionalLightsPosition[x_1611];
    let x_1616 : i32 = u_xlati58;
    let x_1618 : vec4<f32> = x_1610.x_AdditionalLightsPosition[x_1616];
    let x_1620 : vec3<f32> = ((-(x_1599) * vec3<f32>(x_1613.w, x_1613.w, x_1613.w)) + vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
    let x_1621 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
    let x_1624 : vec4<f32> = u_xlat5;
    let x_1626 : vec4<f32> = u_xlat5;
    u_xlat59 = dot(vec3<f32>(x_1624.x, x_1624.y, x_1624.z), vec3<f32>(x_1626.x, x_1626.y, x_1626.z));
    let x_1629 : f32 = u_xlat59;
    u_xlat59 = max(x_1629, 6.10351562e-05f);
    let x_1632 : f32 = u_xlat59;
    u_xlat6.x = inverseSqrt(x_1632);
    let x_1635 : vec4<f32> = u_xlat5;
    let x_1637 : vec4<f32> = u_xlat6;
    let x_1639 : vec3<f32> = (vec3<f32>(x_1635.x, x_1635.y, x_1635.z) * vec3<f32>(x_1637.x, x_1637.x, x_1637.x));
    let x_1640 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1640.w);
    let x_1642 : f32 = u_xlat59;
    u_xlat6.x = (1.0f / x_1642);
    let x_1645 : f32 = u_xlat59;
    let x_1646 : i32 = u_xlati58;
    let x_1648 : f32 = x_1610.x_AdditionalLightsAttenuation[x_1646].x;
    u_xlat59 = (x_1645 * x_1648);
    let x_1650 : f32 = u_xlat59;
    let x_1652 : f32 = u_xlat59;
    u_xlat59 = ((-(x_1650) * x_1652) + 1.0f);
    let x_1655 : f32 = u_xlat59;
    u_xlat59 = max(x_1655, 0.0f);
    let x_1657 : f32 = u_xlat59;
    let x_1658 : f32 = u_xlat59;
    u_xlat59 = (x_1657 * x_1658);
    let x_1660 : f32 = u_xlat59;
    let x_1662 : f32 = u_xlat6.x;
    u_xlat59 = (x_1660 * x_1662);
    let x_1664 : i32 = u_xlati58;
    let x_1666 : vec4<f32> = x_1610.x_AdditionalLightsSpotDir[x_1664];
    let x_1668 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1666.x, x_1666.y, x_1666.z), vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
    let x_1673 : f32 = u_xlat6.x;
    let x_1674 : i32 = u_xlati58;
    let x_1676 : f32 = x_1610.x_AdditionalLightsAttenuation[x_1674].z;
    let x_1678 : i32 = u_xlati58;
    let x_1680 : f32 = x_1610.x_AdditionalLightsAttenuation[x_1678].w;
    u_xlat6.x = ((x_1673 * x_1676) + x_1680);
    let x_1684 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1684, 0.0f, 1.0f);
    let x_1688 : f32 = u_xlat6.x;
    let x_1690 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1688 * x_1690);
    let x_1693 : f32 = u_xlat59;
    let x_1695 : f32 = u_xlat6.x;
    u_xlat59 = (x_1693 * x_1695);
    let x_1697 : f32 = u_xlat56;
    let x_1699 : i32 = u_xlati58;
    let x_1701 : vec4<f32> = x_1610.x_AdditionalLightsColor[x_1699];
    let x_1703 : vec3<f32> = (vec3<f32>(x_1697, x_1697, x_1697) * vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
    let x_1704 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1703.x, x_1703.y, x_1703.z, x_1704.w);
    let x_1706 : f32 = u_xlat59;
    let x_1708 : vec4<f32> = u_xlat6;
    let x_1710 : vec3<f32> = (vec3<f32>(x_1706, x_1706, x_1706) * vec3<f32>(x_1708.x, x_1708.y, x_1708.z));
    let x_1711 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1711.w);
    let x_1713 : vec3<f32> = u_xlat1;
    let x_1714 : vec4<f32> = u_xlat5;
    u_xlat58 = dot(x_1713, vec3<f32>(x_1714.x, x_1714.y, x_1714.z));
    let x_1717 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1717, 0.0f, 1.0f);
    let x_1719 : f32 = u_xlat58;
    let x_1721 : vec4<f32> = u_xlat6;
    let x_1723 : vec3<f32> = (vec3<f32>(x_1719, x_1719, x_1719) * vec3<f32>(x_1721.x, x_1721.y, x_1721.z));
    let x_1724 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
    let x_1726 : vec4<f32> = u_xlat5;
    let x_1728 : vec4<f32> = u_xlat0;
    let x_1731 : vec4<f32> = u_xlat4;
    let x_1733 : vec3<f32> = ((vec3<f32>(x_1726.x, x_1726.y, x_1726.z) * vec3<f32>(x_1728.y, x_1728.z, x_1728.w)) + vec3<f32>(x_1731.x, x_1731.y, x_1731.z));
    let x_1734 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);

    continuing {
      let x_1736 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1736 + bitcast<u32>(1i));
    }
  }
  let x_1739 : vec3<f32> = u_xlat2;
  let x_1740 : vec4<f32> = u_xlat0;
  let x_1743 : vec4<f32> = u_xlat3;
  u_xlat18 = ((x_1739 * vec3<f32>(x_1740.y, x_1740.z, x_1740.w)) + vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
  let x_1748 : vec4<f32> = u_xlat4;
  let x_1750 : vec3<f32> = u_xlat18;
  let x_1751 : vec3<f32> = (vec3<f32>(x_1748.x, x_1748.y, x_1748.z) + x_1750);
  let x_1752 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
  let x_1756 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_1756 == 1.0f);
  let x_1758 : bool = u_xlatb18;
  if (x_1758) {
    let x_1763 : f32 = u_xlat0.x;
    x_1759 = x_1763;
  } else {
    x_1759 = 1.0f;
  }
  let x_1765 : f32 = x_1759;
  SV_Target0.w = x_1765;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

