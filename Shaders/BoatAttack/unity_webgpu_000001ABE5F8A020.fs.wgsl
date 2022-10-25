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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_220 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1667 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
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
  var x_1513 : f32;
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
  var x_1816 : f32;
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
  let x_63 : vec4<f32> = hlslcc_FragCoord;
  let x_67 : f32 = x_43.x_DitheringTextureInvSize;
  let x_69 : vec2<f32> = (vec2<f32>(x_63.x, x_63.y) * vec2<f32>(x_67, x_67));
  let x_70 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_69.x, x_69.y, x_70.z);
  let x_77 : vec3<f32> = u_xlat1;
  let x_80 : f32 = x_43.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_77.x, x_77.y), x_80);
  u_xlat1.x = x_81.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb19 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb19;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_154 : vec2<f32> = vs_TEXCOORD7;
  let x_156 : f32 = x_43.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_154, x_156);
  u_xlat2 = vec3<f32>(x_157.x, x_157.y, x_157.z);
  let x_162 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_163 : vec2<f32> = vec2<f32>(x_162.x, x_162.y);
  let x_167 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_163.x, x_163.y));
  let x_168 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat3;
  let x_172 : vec4<f32> = hlslcc_FragCoord;
  let x_174 : vec2<f32> = (vec2<f32>(x_170.x, x_170.y) * vec2<f32>(x_172.x, x_172.y));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
  let x_180 : f32 = u_xlat3.y;
  let x_183 : f32 = x_43.x_ScaleBiasRt.x;
  let x_186 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_180 * x_183) + x_186);
  let x_188 : f32 = u_xlat55;
  u_xlat3.z = (-(x_188) + 1.0f);
  let x_197 : vec4<f32> = u_xlat3;
  let x_200 : f32 = x_43.x_GlobalMipBias.x;
  let x_201 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_197.x, x_197.z), x_200);
  u_xlat55 = x_201.x;
  let x_204 : f32 = u_xlat55;
  u_xlat56 = (x_204 + -1.0f);
  let x_209 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_210 : f32 = u_xlat56;
  u_xlat56 = ((x_209 * x_210) + 1.0f);
  let x_213 : f32 = u_xlat55;
  u_xlat55 = min(x_213, 1.0f);
  let x_222 : f32 = x_220.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_222);
  let x_224 : bool = u_xlatb3;
  if (x_224) {
    let x_228 : f32 = x_220.x_MainLightShadowParams.y;
    u_xlatb3 = (x_228 == 1.0f);
    let x_230 : bool = u_xlatb3;
    if (x_230) {
      let x_234 : vec4<f32> = vs_TEXCOORD6;
      let x_238 : vec4<f32> = x_220.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_234.x, x_234.y, x_234.x, x_234.y) + x_238);
      let x_241 : vec4<f32> = u_xlat3;
      let x_242 : vec2<f32> = vec2<f32>(x_241.x, x_241.y);
      let x_244 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_242.x, x_242.y, x_244);
      let x_257 : vec3<f32> = txVec0;
      let x_259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_257.xy, x_257.z);
      u_xlat4.x = x_259;
      let x_262 : vec4<f32> = u_xlat3;
      let x_263 : vec2<f32> = vec2<f32>(x_262.z, x_262.w);
      let x_265 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_263.x, x_263.y, x_265);
      let x_272 : vec3<f32> = txVec1;
      let x_274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_272.xy, x_272.z);
      u_xlat4.y = x_274;
      let x_276 : vec4<f32> = vs_TEXCOORD6;
      let x_279 : vec4<f32> = x_220.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_276.x, x_276.y, x_276.x, x_276.y) + x_279);
      let x_282 : vec4<f32> = u_xlat3;
      let x_283 : vec2<f32> = vec2<f32>(x_282.x, x_282.y);
      let x_285 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_283.x, x_283.y, x_285);
      let x_292 : vec3<f32> = txVec2;
      let x_294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_292.xy, x_292.z);
      u_xlat4.z = x_294;
      let x_297 : vec4<f32> = u_xlat3;
      let x_298 : vec2<f32> = vec2<f32>(x_297.z, x_297.w);
      let x_300 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_298.x, x_298.y, x_300);
      let x_307 : vec3<f32> = txVec3;
      let x_309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_307.xy, x_307.z);
      u_xlat4.w = x_309;
      let x_311 : vec4<f32> = u_xlat4;
      u_xlat3.x = dot(x_311, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_319 : f32 = x_220.x_MainLightShadowParams.y;
      u_xlatb21 = (x_319 == 2.0f);
      let x_322 : bool = u_xlatb21;
      if (x_322) {
        let x_326 : vec4<f32> = vs_TEXCOORD6;
        let x_330 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_335 : vec2<f32> = ((vec2<f32>(x_326.x, x_326.y) * vec2<f32>(x_330.z, x_330.w)) + vec2<f32>(0.5f, 0.5f));
        let x_336 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_335.x, x_335.y, x_336.z);
        let x_338 : vec3<f32> = u_xlat21;
        let x_340 : vec2<f32> = floor(vec2<f32>(x_338.x, x_338.y));
        let x_341 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_340.x, x_340.y, x_341.z);
        let x_343 : vec4<f32> = vs_TEXCOORD6;
        let x_346 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_349 : vec3<f32> = u_xlat21;
        let x_352 : vec2<f32> = ((vec2<f32>(x_343.x, x_343.y) * vec2<f32>(x_346.z, x_346.w)) + -(vec2<f32>(x_349.x, x_349.y)));
        let x_353 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
        let x_356 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_356.x, x_356.x, x_356.y, x_356.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_361 : vec4<f32> = u_xlat5;
        let x_363 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_361.x, x_361.x, x_361.z, x_361.z) * vec4<f32>(x_363.x, x_363.x, x_363.z, x_363.z));
        let x_368 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_368.y, x_368.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_373 : vec4<f32> = u_xlat6;
        let x_376 : vec4<f32> = u_xlat4;
        let x_379 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_376.x, x_376.y)));
        let x_380 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_379.x, x_380.y, x_379.y, x_380.w);
        let x_382 : vec4<f32> = u_xlat4;
        let x_385 : vec2<f32> = (-(vec2<f32>(x_382.x, x_382.y)) + vec2<f32>(1.0f, 1.0f));
        let x_386 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_386.w);
        let x_389 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_389.x, x_389.y), vec2<f32>(0.0f, 0.0f));
        let x_393 : vec2<f32> = u_xlat42;
        let x_395 : vec2<f32> = u_xlat42;
        let x_397 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_393) * x_395) + vec2<f32>(x_397.x, x_397.y));
        let x_400 : vec4<f32> = u_xlat4;
        let x_402 : vec2<f32> = max(vec2<f32>(x_400.x, x_400.y), vec2<f32>(0.0f, 0.0f));
        let x_403 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
        let x_405 : vec4<f32> = u_xlat4;
        let x_408 : vec4<f32> = u_xlat4;
        let x_411 : vec4<f32> = u_xlat5;
        let x_413 : vec2<f32> = ((-(vec2<f32>(x_405.x, x_405.y)) * vec2<f32>(x_408.x, x_408.y)) + vec2<f32>(x_411.y, x_411.w));
        let x_414 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
        let x_416 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_416 + vec2<f32>(1.0f, 1.0f));
        let x_418 : vec4<f32> = u_xlat4;
        let x_420 : vec2<f32> = (vec2<f32>(x_418.x, x_418.y) + vec2<f32>(1.0f, 1.0f));
        let x_421 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
        let x_424 : vec4<f32> = u_xlat5;
        let x_428 : vec2<f32> = (vec2<f32>(x_424.x, x_424.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_429 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
        let x_432 : vec4<f32> = u_xlat6;
        let x_434 : vec2<f32> = (vec2<f32>(x_432.x, x_432.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_435 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_434.x, x_434.y, x_435.z, x_435.w);
        let x_437 : vec2<f32> = u_xlat42;
        let x_438 : vec2<f32> = (x_437 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_439 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_442 : vec4<f32> = u_xlat4;
        let x_444 : vec2<f32> = (vec2<f32>(x_442.x, x_442.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_445 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
        let x_447 : vec4<f32> = u_xlat5;
        let x_449 : vec2<f32> = (vec2<f32>(x_447.y, x_447.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_450 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
        let x_453 : f32 = u_xlat6.x;
        u_xlat7.z = x_453;
        let x_456 : f32 = u_xlat4.x;
        u_xlat7.w = x_456;
        let x_459 : f32 = u_xlat9.x;
        u_xlat8.z = x_459;
        let x_462 : f32 = u_xlat40.x;
        u_xlat8.w = x_462;
        let x_464 : vec4<f32> = u_xlat7;
        let x_466 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_464.z, x_464.w, x_464.x, x_464.z) + vec4<f32>(x_466.z, x_466.w, x_466.x, x_466.z));
        let x_470 : f32 = u_xlat7.y;
        u_xlat6.z = x_470;
        let x_473 : f32 = u_xlat4.y;
        u_xlat6.w = x_473;
        let x_476 : f32 = u_xlat8.y;
        u_xlat9.z = x_476;
        let x_479 : f32 = u_xlat40.y;
        u_xlat9.w = x_479;
        let x_481 : vec4<f32> = u_xlat6;
        let x_483 : vec4<f32> = u_xlat9;
        let x_485 : vec3<f32> = (vec3<f32>(x_481.z, x_481.y, x_481.w) + vec3<f32>(x_483.z, x_483.y, x_483.w));
        let x_486 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
        let x_488 : vec4<f32> = u_xlat8;
        let x_490 : vec4<f32> = u_xlat5;
        let x_492 : vec3<f32> = (vec3<f32>(x_488.x, x_488.z, x_488.w) / vec3<f32>(x_490.z, x_490.w, x_490.y));
        let x_493 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat6;
        let x_501 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_502 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
        let x_504 : vec4<f32> = u_xlat9;
        let x_506 : vec4<f32> = u_xlat4;
        let x_508 : vec3<f32> = (vec3<f32>(x_504.z, x_504.y, x_504.w) / vec3<f32>(x_506.x, x_506.y, x_506.z));
        let x_509 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
        let x_511 : vec4<f32> = u_xlat7;
        let x_513 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_514 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
        let x_516 : vec4<f32> = u_xlat6;
        let x_519 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_521 : vec3<f32> = (vec3<f32>(x_516.y, x_516.x, x_516.z) * vec3<f32>(x_519.x, x_519.x, x_519.x));
        let x_522 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
        let x_524 : vec4<f32> = u_xlat7;
        let x_527 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_529 : vec3<f32> = (vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(x_527.y, x_527.y, x_527.y));
        let x_530 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
        let x_533 : f32 = u_xlat7.x;
        u_xlat6.w = x_533;
        let x_535 : vec3<f32> = u_xlat21;
        let x_538 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_541 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_535.x, x_535.y, x_535.x, x_535.y) * vec4<f32>(x_538.x, x_538.y, x_538.x, x_538.y)) + vec4<f32>(x_541.y, x_541.w, x_541.x, x_541.w));
        let x_544 : vec3<f32> = u_xlat21;
        let x_547 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_550 : vec4<f32> = u_xlat6;
        let x_552 : vec2<f32> = ((vec2<f32>(x_544.x, x_544.y) * vec2<f32>(x_547.x, x_547.y)) + vec2<f32>(x_550.z, x_550.w));
        let x_553 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
        let x_556 : f32 = u_xlat6.y;
        u_xlat7.w = x_556;
        let x_558 : vec4<f32> = u_xlat7;
        let x_559 : vec2<f32> = vec2<f32>(x_558.y, x_558.z);
        let x_560 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_560.x, x_559.x, x_560.z, x_559.y);
        let x_563 : vec3<f32> = u_xlat21;
        let x_566 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_569 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_563.x, x_563.y, x_563.x, x_563.y) * vec4<f32>(x_566.x, x_566.y, x_566.x, x_566.y)) + vec4<f32>(x_569.x, x_569.y, x_569.z, x_569.y));
        let x_572 : vec3<f32> = u_xlat21;
        let x_575 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_578 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_572.x, x_572.y, x_572.x, x_572.y) * vec4<f32>(x_575.x, x_575.y, x_575.x, x_575.y)) + vec4<f32>(x_578.w, x_578.y, x_578.w, x_578.z));
        let x_581 : vec3<f32> = u_xlat21;
        let x_584 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_587 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y) * vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.y)) + vec4<f32>(x_587.x, x_587.w, x_587.z, x_587.w));
        let x_591 : vec4<f32> = u_xlat4;
        let x_593 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_591.x, x_591.x, x_591.x, x_591.y) * vec4<f32>(x_593.z, x_593.w, x_593.y, x_593.z));
        let x_597 : vec4<f32> = u_xlat4;
        let x_599 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_597.y, x_597.y, x_597.z, x_597.z) * x_599);
        let x_602 : f32 = u_xlat4.z;
        let x_604 : f32 = u_xlat5.y;
        u_xlat21.x = (x_602 * x_604);
        let x_608 : vec4<f32> = u_xlat8;
        let x_609 : vec2<f32> = vec2<f32>(x_608.x, x_608.y);
        let x_611 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_609.x, x_609.y, x_611);
        let x_619 : vec3<f32> = txVec4;
        let x_621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_619.xy, x_619.z);
        u_xlat39 = x_621;
        let x_623 : vec4<f32> = u_xlat8;
        let x_624 : vec2<f32> = vec2<f32>(x_623.z, x_623.w);
        let x_626 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_624.x, x_624.y, x_626);
        let x_634 : vec3<f32> = txVec5;
        let x_636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_634.xy, x_634.z);
        u_xlat57 = x_636;
        let x_637 : f32 = u_xlat57;
        let x_639 : f32 = u_xlat11.y;
        u_xlat57 = (x_637 * x_639);
        let x_642 : f32 = u_xlat11.x;
        let x_643 : f32 = u_xlat39;
        let x_645 : f32 = u_xlat57;
        u_xlat39 = ((x_642 * x_643) + x_645);
        let x_648 : vec4<f32> = u_xlat9;
        let x_649 : vec2<f32> = vec2<f32>(x_648.x, x_648.y);
        let x_651 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_649.x, x_649.y, x_651);
        let x_658 : vec3<f32> = txVec6;
        let x_660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_658.xy, x_658.z);
        u_xlat57 = x_660;
        let x_662 : f32 = u_xlat11.z;
        let x_663 : f32 = u_xlat57;
        let x_665 : f32 = u_xlat39;
        u_xlat39 = ((x_662 * x_663) + x_665);
        let x_668 : vec4<f32> = u_xlat7;
        let x_669 : vec2<f32> = vec2<f32>(x_668.x, x_668.y);
        let x_671 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_669.x, x_669.y, x_671);
        let x_678 : vec3<f32> = txVec7;
        let x_680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_678.xy, x_678.z);
        u_xlat57 = x_680;
        let x_682 : f32 = u_xlat11.w;
        let x_683 : f32 = u_xlat57;
        let x_685 : f32 = u_xlat39;
        u_xlat39 = ((x_682 * x_683) + x_685);
        let x_688 : vec4<f32> = u_xlat10;
        let x_689 : vec2<f32> = vec2<f32>(x_688.x, x_688.y);
        let x_691 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_689.x, x_689.y, x_691);
        let x_698 : vec3<f32> = txVec8;
        let x_700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_698.xy, x_698.z);
        u_xlat57 = x_700;
        let x_702 : f32 = u_xlat12.x;
        let x_703 : f32 = u_xlat57;
        let x_705 : f32 = u_xlat39;
        u_xlat39 = ((x_702 * x_703) + x_705);
        let x_708 : vec4<f32> = u_xlat10;
        let x_709 : vec2<f32> = vec2<f32>(x_708.z, x_708.w);
        let x_711 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_709.x, x_709.y, x_711);
        let x_718 : vec3<f32> = txVec9;
        let x_720 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_718.xy, x_718.z);
        u_xlat57 = x_720;
        let x_722 : f32 = u_xlat12.y;
        let x_723 : f32 = u_xlat57;
        let x_725 : f32 = u_xlat39;
        u_xlat39 = ((x_722 * x_723) + x_725);
        let x_728 : vec4<f32> = u_xlat7;
        let x_729 : vec2<f32> = vec2<f32>(x_728.z, x_728.w);
        let x_731 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_729.x, x_729.y, x_731);
        let x_738 : vec3<f32> = txVec10;
        let x_740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_738.xy, x_738.z);
        u_xlat57 = x_740;
        let x_742 : f32 = u_xlat12.z;
        let x_743 : f32 = u_xlat57;
        let x_745 : f32 = u_xlat39;
        u_xlat39 = ((x_742 * x_743) + x_745);
        let x_748 : vec4<f32> = u_xlat6;
        let x_749 : vec2<f32> = vec2<f32>(x_748.x, x_748.y);
        let x_751 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_749.x, x_749.y, x_751);
        let x_758 : vec3<f32> = txVec11;
        let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_758.xy, x_758.z);
        u_xlat57 = x_760;
        let x_762 : f32 = u_xlat12.w;
        let x_763 : f32 = u_xlat57;
        let x_765 : f32 = u_xlat39;
        u_xlat39 = ((x_762 * x_763) + x_765);
        let x_768 : vec4<f32> = u_xlat6;
        let x_769 : vec2<f32> = vec2<f32>(x_768.z, x_768.w);
        let x_771 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_769.x, x_769.y, x_771);
        let x_778 : vec3<f32> = txVec12;
        let x_780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_778.xy, x_778.z);
        u_xlat57 = x_780;
        let x_782 : f32 = u_xlat21.x;
        let x_783 : f32 = u_xlat57;
        let x_785 : f32 = u_xlat39;
        u_xlat3.x = ((x_782 * x_783) + x_785);
      } else {
        let x_789 : vec4<f32> = vs_TEXCOORD6;
        let x_792 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_795 : vec2<f32> = ((vec2<f32>(x_789.x, x_789.y) * vec2<f32>(x_792.z, x_792.w)) + vec2<f32>(0.5f, 0.5f));
        let x_796 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_795.x, x_795.y, x_796.z);
        let x_798 : vec3<f32> = u_xlat21;
        let x_800 : vec2<f32> = floor(vec2<f32>(x_798.x, x_798.y));
        let x_801 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_800.x, x_800.y, x_801.z);
        let x_803 : vec4<f32> = vs_TEXCOORD6;
        let x_806 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_809 : vec3<f32> = u_xlat21;
        let x_812 : vec2<f32> = ((vec2<f32>(x_803.x, x_803.y) * vec2<f32>(x_806.z, x_806.w)) + -(vec2<f32>(x_809.x, x_809.y)));
        let x_813 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
        let x_815 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_815.x, x_815.x, x_815.y, x_815.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_818 : vec4<f32> = u_xlat5;
        let x_820 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_818.x, x_818.x, x_818.z, x_818.z) * vec4<f32>(x_820.x, x_820.x, x_820.z, x_820.z));
        let x_823 : vec4<f32> = u_xlat6;
        let x_827 : vec2<f32> = (vec2<f32>(x_823.y, x_823.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_828 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_828.x, x_827.x, x_828.z, x_827.y);
        let x_830 : vec4<f32> = u_xlat6;
        let x_833 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_830.x, x_830.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_833.x, x_833.y)));
        let x_837 : vec4<f32> = u_xlat4;
        let x_840 : vec2<f32> = (-(vec2<f32>(x_837.x, x_837.y)) + vec2<f32>(1.0f, 1.0f));
        let x_841 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_840.x, x_841.y, x_840.y, x_841.w);
        let x_843 : vec4<f32> = u_xlat4;
        let x_845 : vec2<f32> = min(vec2<f32>(x_843.x, x_843.y), vec2<f32>(0.0f, 0.0f));
        let x_846 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
        let x_848 : vec4<f32> = u_xlat6;
        let x_851 : vec4<f32> = u_xlat6;
        let x_854 : vec4<f32> = u_xlat5;
        let x_856 : vec2<f32> = ((-(vec2<f32>(x_848.x, x_848.y)) * vec2<f32>(x_851.x, x_851.y)) + vec2<f32>(x_854.x, x_854.z));
        let x_857 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_856.x, x_857.y, x_856.y, x_857.w);
        let x_859 : vec4<f32> = u_xlat4;
        let x_861 : vec2<f32> = max(vec2<f32>(x_859.x, x_859.y), vec2<f32>(0.0f, 0.0f));
        let x_862 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec4<f32> = u_xlat6;
        let x_867 : vec4<f32> = u_xlat6;
        let x_870 : vec4<f32> = u_xlat5;
        let x_872 : vec2<f32> = ((-(vec2<f32>(x_864.x, x_864.y)) * vec2<f32>(x_867.x, x_867.y)) + vec2<f32>(x_870.y, x_870.w));
        let x_873 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_873.x, x_872.x, x_873.z, x_872.y);
        let x_875 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_875 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_879 : f32 = u_xlat5.y;
        u_xlat6.z = (x_879 * 0.081632003f);
        let x_883 : vec2<f32> = u_xlat40;
        let x_886 : vec2<f32> = (vec2<f32>(x_883.y, x_883.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_887 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_886.x, x_886.y, x_887.z, x_887.w);
        let x_889 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_889.x, x_889.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_893 : f32 = u_xlat5.w;
        u_xlat8.z = (x_893 * 0.081632003f);
        let x_897 : f32 = u_xlat8.y;
        u_xlat6.x = x_897;
        let x_899 : vec4<f32> = u_xlat4;
        let x_906 : vec2<f32> = ((vec2<f32>(x_899.x, x_899.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_907 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_907.x, x_906.x, x_907.z, x_906.y);
        let x_909 : vec4<f32> = u_xlat4;
        let x_913 : vec2<f32> = ((vec2<f32>(x_909.x, x_909.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_914 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_913.x, x_914.y, x_913.y, x_914.w);
        let x_917 : f32 = u_xlat40.x;
        u_xlat5.y = x_917;
        let x_920 : f32 = u_xlat7.y;
        u_xlat5.w = x_920;
        let x_922 : vec4<f32> = u_xlat5;
        let x_923 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_922 + x_923);
        let x_925 : vec4<f32> = u_xlat4;
        let x_928 : vec2<f32> = ((vec2<f32>(x_925.y, x_925.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_929 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_929.x, x_928.x, x_929.z, x_928.y);
        let x_931 : vec4<f32> = u_xlat4;
        let x_934 : vec2<f32> = ((vec2<f32>(x_931.y, x_931.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_935 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_934.x, x_935.y, x_934.y, x_935.w);
        let x_938 : f32 = u_xlat40.y;
        u_xlat7.y = x_938;
        let x_940 : vec4<f32> = u_xlat7;
        let x_941 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_940 + x_941);
        let x_943 : vec4<f32> = u_xlat5;
        let x_944 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_943 / x_944);
        let x_946 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_946 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_952 : vec4<f32> = u_xlat7;
        let x_953 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_952 / x_953);
        let x_955 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_955 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_957 : vec4<f32> = u_xlat5;
        let x_960 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_957.w, x_957.x, x_957.y, x_957.z) * vec4<f32>(x_960.x, x_960.x, x_960.x, x_960.x));
        let x_963 : vec4<f32> = u_xlat7;
        let x_966 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_963.x, x_963.w, x_963.y, x_963.z) * vec4<f32>(x_966.y, x_966.y, x_966.y, x_966.y));
        let x_969 : vec4<f32> = u_xlat5;
        let x_970 : vec3<f32> = vec3<f32>(x_969.y, x_969.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_970.x, x_971.y, x_970.y, x_970.z);
        let x_974 : f32 = u_xlat7.x;
        u_xlat8.y = x_974;
        let x_976 : vec3<f32> = u_xlat21;
        let x_979 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_982 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_976.x, x_976.y, x_976.x, x_976.y) * vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y)) + vec4<f32>(x_982.x, x_982.y, x_982.z, x_982.y));
        let x_985 : vec3<f32> = u_xlat21;
        let x_988 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_991 : vec4<f32> = u_xlat8;
        let x_993 : vec2<f32> = ((vec2<f32>(x_985.x, x_985.y) * vec2<f32>(x_988.x, x_988.y)) + vec2<f32>(x_991.w, x_991.y));
        let x_994 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_997 : f32 = u_xlat8.y;
        u_xlat5.y = x_997;
        let x_1000 : f32 = u_xlat7.z;
        u_xlat8.y = x_1000;
        let x_1002 : vec3<f32> = u_xlat21;
        let x_1005 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y) * vec4<f32>(x_1005.x, x_1005.y, x_1005.x, x_1005.y)) + vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1008.y));
        let x_1012 : vec3<f32> = u_xlat21;
        let x_1015 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_1018 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1012.x, x_1012.y) * vec2<f32>(x_1015.x, x_1015.y)) + vec2<f32>(x_1018.w, x_1018.y));
        let x_1022 : f32 = u_xlat8.y;
        u_xlat5.z = x_1022;
        let x_1024 : vec3<f32> = u_xlat21;
        let x_1027 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y) * vec4<f32>(x_1027.x, x_1027.y, x_1027.x, x_1027.y)) + vec4<f32>(x_1030.x, x_1030.y, x_1030.x, x_1030.z));
        let x_1034 : f32 = u_xlat7.w;
        u_xlat8.y = x_1034;
        let x_1037 : vec3<f32> = u_xlat21;
        let x_1040 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_1043 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1037.x, x_1037.y, x_1037.x, x_1037.y) * vec4<f32>(x_1040.x, x_1040.y, x_1040.x, x_1040.y)) + vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1043.y));
        let x_1047 : vec3<f32> = u_xlat21;
        let x_1050 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_1053 : vec4<f32> = u_xlat8;
        u_xlat23 = ((vec2<f32>(x_1047.x, x_1047.y) * vec2<f32>(x_1050.x, x_1050.y)) + vec2<f32>(x_1053.w, x_1053.y));
        let x_1057 : f32 = u_xlat8.y;
        u_xlat5.w = x_1057;
        let x_1060 : vec3<f32> = u_xlat21;
        let x_1063 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_1066 : vec4<f32> = u_xlat5;
        u_xlat14 = ((vec2<f32>(x_1060.x, x_1060.y) * vec2<f32>(x_1063.x, x_1063.y)) + vec2<f32>(x_1066.x, x_1066.w));
        let x_1069 : vec4<f32> = u_xlat8;
        let x_1070 : vec3<f32> = vec3<f32>(x_1069.x, x_1069.z, x_1069.w);
        let x_1071 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1070.x, x_1071.y, x_1070.y, x_1070.z);
        let x_1073 : vec3<f32> = u_xlat21;
        let x_1076 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y) * vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y)) + vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1079.y));
        let x_1083 : vec3<f32> = u_xlat21;
        let x_1086 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(x_1086.x, x_1086.y)) + vec2<f32>(x_1089.w, x_1089.y));
        let x_1093 : f32 = u_xlat5.x;
        u_xlat7.x = x_1093;
        let x_1095 : vec3<f32> = u_xlat21;
        let x_1098 : vec4<f32> = x_220.x_MainLightShadowmapSize;
        let x_1101 : vec4<f32> = u_xlat7;
        let x_1103 : vec2<f32> = ((vec2<f32>(x_1095.x, x_1095.y) * vec2<f32>(x_1098.x, x_1098.y)) + vec2<f32>(x_1101.x, x_1101.y));
        let x_1104 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1103.x, x_1103.y, x_1104.z);
        let x_1107 : vec4<f32> = u_xlat4;
        let x_1109 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1107.x, x_1107.x, x_1107.x, x_1107.x) * x_1109);
        let x_1112 : vec4<f32> = u_xlat4;
        let x_1114 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1112.y, x_1112.y, x_1112.y, x_1112.y) * x_1114);
        let x_1117 : vec4<f32> = u_xlat4;
        let x_1119 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1117.z, x_1117.z, x_1117.z, x_1117.z) * x_1119);
        let x_1121 : vec4<f32> = u_xlat4;
        let x_1123 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1121.w, x_1121.w, x_1121.w, x_1121.w) * x_1123);
        let x_1126 : vec4<f32> = u_xlat9;
        let x_1127 : vec2<f32> = vec2<f32>(x_1126.x, x_1126.y);
        let x_1129 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1136 : vec3<f32> = txVec13;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1136.xy, x_1136.z);
        u_xlat57 = x_1138;
        let x_1140 : vec4<f32> = u_xlat9;
        let x_1141 : vec2<f32> = vec2<f32>(x_1140.z, x_1140.w);
        let x_1143 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1141.x, x_1141.y, x_1143);
        let x_1150 : vec3<f32> = txVec14;
        let x_1152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1150.xy, x_1150.z);
        u_xlat5.x = x_1152;
        let x_1155 : f32 = u_xlat5.x;
        let x_1157 : f32 = u_xlat15.y;
        u_xlat5.x = (x_1155 * x_1157);
        let x_1161 : f32 = u_xlat15.x;
        let x_1162 : f32 = u_xlat57;
        let x_1165 : f32 = u_xlat5.x;
        u_xlat57 = ((x_1161 * x_1162) + x_1165);
        let x_1168 : vec4<f32> = u_xlat10;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.x, x_1168.y);
        let x_1171 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1178 : vec3<f32> = txVec15;
        let x_1180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1178.xy, x_1178.z);
        u_xlat5.x = x_1180;
        let x_1183 : f32 = u_xlat15.z;
        let x_1185 : f32 = u_xlat5.x;
        let x_1187 : f32 = u_xlat57;
        u_xlat57 = ((x_1183 * x_1185) + x_1187);
        let x_1190 : vec4<f32> = u_xlat12;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.x, x_1190.y);
        let x_1193 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1200 : vec3<f32> = txVec16;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1200.xy, x_1200.z);
        u_xlat5.x = x_1202;
        let x_1205 : f32 = u_xlat15.w;
        let x_1207 : f32 = u_xlat5.x;
        let x_1209 : f32 = u_xlat57;
        u_xlat57 = ((x_1205 * x_1207) + x_1209);
        let x_1212 : vec4<f32> = u_xlat11;
        let x_1213 : vec2<f32> = vec2<f32>(x_1212.x, x_1212.y);
        let x_1215 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1213.x, x_1213.y, x_1215);
        let x_1222 : vec3<f32> = txVec17;
        let x_1224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1222.xy, x_1222.z);
        u_xlat5.x = x_1224;
        let x_1227 : f32 = u_xlat16.x;
        let x_1229 : f32 = u_xlat5.x;
        let x_1231 : f32 = u_xlat57;
        u_xlat57 = ((x_1227 * x_1229) + x_1231);
        let x_1234 : vec4<f32> = u_xlat11;
        let x_1235 : vec2<f32> = vec2<f32>(x_1234.z, x_1234.w);
        let x_1237 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1244 : vec3<f32> = txVec18;
        let x_1246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1244.xy, x_1244.z);
        u_xlat5.x = x_1246;
        let x_1249 : f32 = u_xlat16.y;
        let x_1251 : f32 = u_xlat5.x;
        let x_1253 : f32 = u_xlat57;
        u_xlat57 = ((x_1249 * x_1251) + x_1253);
        let x_1256 : vec2<f32> = u_xlat46;
        let x_1258 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec19;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1265.xy, x_1265.z);
        u_xlat5.x = x_1267;
        let x_1270 : f32 = u_xlat16.z;
        let x_1272 : f32 = u_xlat5.x;
        let x_1274 : f32 = u_xlat57;
        u_xlat57 = ((x_1270 * x_1272) + x_1274);
        let x_1277 : vec4<f32> = u_xlat12;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.z, x_1277.w);
        let x_1280 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec20;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1287.xy, x_1287.z);
        u_xlat5.x = x_1289;
        let x_1292 : f32 = u_xlat16.w;
        let x_1294 : f32 = u_xlat5.x;
        let x_1296 : f32 = u_xlat57;
        u_xlat57 = ((x_1292 * x_1294) + x_1296);
        let x_1299 : vec4<f32> = u_xlat13;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.x, x_1299.y);
        let x_1302 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec21;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1309.xy, x_1309.z);
        u_xlat5.x = x_1311;
        let x_1314 : f32 = u_xlat17.x;
        let x_1316 : f32 = u_xlat5.x;
        let x_1318 : f32 = u_xlat57;
        u_xlat57 = ((x_1314 * x_1316) + x_1318);
        let x_1321 : vec4<f32> = u_xlat13;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.z, x_1321.w);
        let x_1324 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec22;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1331.xy, x_1331.z);
        u_xlat5.x = x_1333;
        let x_1336 : f32 = u_xlat17.y;
        let x_1338 : f32 = u_xlat5.x;
        let x_1340 : f32 = u_xlat57;
        u_xlat57 = ((x_1336 * x_1338) + x_1340);
        let x_1343 : vec2<f32> = u_xlat23;
        let x_1345 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec23;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1352.xy, x_1352.z);
        u_xlat5.x = x_1354;
        let x_1357 : f32 = u_xlat17.z;
        let x_1359 : f32 = u_xlat5.x;
        let x_1361 : f32 = u_xlat57;
        u_xlat57 = ((x_1357 * x_1359) + x_1361);
        let x_1364 : vec2<f32> = u_xlat14;
        let x_1366 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec24;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1373.xy, x_1373.z);
        u_xlat5.x = x_1375;
        let x_1378 : f32 = u_xlat17.w;
        let x_1380 : f32 = u_xlat5.x;
        let x_1382 : f32 = u_xlat57;
        u_xlat57 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat8;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.x, x_1385.y);
        let x_1388 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec25;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat5.x = x_1397;
        let x_1400 : f32 = u_xlat4.x;
        let x_1402 : f32 = u_xlat5.x;
        let x_1404 : f32 = u_xlat57;
        u_xlat57 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat8;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.z, x_1407.w);
        let x_1410 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec26;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat4.x = x_1419;
        let x_1422 : f32 = u_xlat4.y;
        let x_1424 : f32 = u_xlat4.x;
        let x_1426 : f32 = u_xlat57;
        u_xlat57 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec2<f32> = u_xlat43;
        let x_1431 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec27;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1438.xy, x_1438.z);
        u_xlat4.x = x_1440;
        let x_1443 : f32 = u_xlat4.z;
        let x_1445 : f32 = u_xlat4.x;
        let x_1447 : f32 = u_xlat57;
        u_xlat57 = ((x_1443 * x_1445) + x_1447);
        let x_1450 : vec3<f32> = u_xlat21;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
        let x_1453 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec28;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat21.x = x_1462;
        let x_1465 : f32 = u_xlat4.w;
        let x_1467 : f32 = u_xlat21.x;
        let x_1469 : f32 = u_xlat57;
        u_xlat3.x = ((x_1465 * x_1467) + x_1469);
      }
    }
  } else {
    let x_1474 : vec4<f32> = vs_TEXCOORD6;
    let x_1475 : vec2<f32> = vec2<f32>(x_1474.x, x_1474.y);
    let x_1477 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
    let x_1484 : vec3<f32> = txVec29;
    let x_1486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1484.xy, x_1484.z);
    u_xlat3.x = x_1486;
  }
  let x_1489 : f32 = x_220.x_MainLightShadowParams.x;
  u_xlat21.x = (-(x_1489) + 1.0f);
  let x_1494 : f32 = u_xlat3.x;
  let x_1496 : f32 = x_220.x_MainLightShadowParams.x;
  let x_1499 : f32 = u_xlat21.x;
  u_xlat3.x = ((x_1494 * x_1496) + x_1499);
  let x_1503 : f32 = vs_TEXCOORD6.z;
  u_xlatb21 = (0.0f >= x_1503);
  let x_1507 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (x_1507 >= 1.0f);
  let x_1509 : bool = u_xlatb39;
  let x_1510 : bool = u_xlatb21;
  u_xlatb21 = (x_1509 | x_1510);
  let x_1512 : bool = u_xlatb21;
  if (x_1512) {
    x_1513 = 1.0f;
  } else {
    let x_1518 : f32 = u_xlat3.x;
    x_1513 = x_1518;
  }
  let x_1519 : f32 = x_1513;
  u_xlat3.x = x_1519;
  let x_1522 : vec3<f32> = vs_TEXCOORD1;
  let x_1525 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat21 = (x_1522 + -(x_1525));
  let x_1528 : vec3<f32> = u_xlat21;
  let x_1529 : vec3<f32> = u_xlat21;
  u_xlat21.x = dot(x_1528, x_1529);
  let x_1533 : f32 = u_xlat21.x;
  let x_1535 : f32 = x_220.x_MainLightShadowParams.z;
  let x_1538 : f32 = x_220.x_MainLightShadowParams.w;
  u_xlat21.x = ((x_1533 * x_1535) + x_1538);
  let x_1542 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_1542, 0.0f, 1.0f);
  let x_1546 : f32 = u_xlat3.x;
  u_xlat39 = (-(x_1546) + 1.0f);
  let x_1550 : f32 = u_xlat21.x;
  let x_1551 : f32 = u_xlat39;
  let x_1554 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1550 * x_1551) + x_1554);
  let x_1557 : f32 = u_xlat56;
  let x_1561 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat21 = (vec3<f32>(x_1557, x_1557, x_1557) * vec3<f32>(x_1561.x, x_1561.y, x_1561.z));
  let x_1564 : f32 = u_xlat55;
  let x_1566 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1564, x_1564, x_1564) * x_1566);
  let x_1569 : f32 = u_xlat3.x;
  let x_1572 : f32 = x_93.unity_LightData.z;
  u_xlat55 = (x_1569 * x_1572);
  let x_1574 : f32 = u_xlat55;
  let x_1576 : vec3<f32> = u_xlat21;
  let x_1577 : vec3<f32> = (vec3<f32>(x_1574, x_1574, x_1574) * x_1576);
  let x_1578 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
  let x_1580 : vec3<f32> = u_xlat1;
  let x_1582 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(x_1580, vec3<f32>(x_1582.x, x_1582.y, x_1582.z));
  let x_1585 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1585, 0.0f, 1.0f);
  let x_1587 : f32 = u_xlat55;
  let x_1589 : vec4<f32> = u_xlat3;
  let x_1591 : vec3<f32> = (vec3<f32>(x_1587, x_1587, x_1587) * vec3<f32>(x_1589.x, x_1589.y, x_1589.z));
  let x_1592 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1591.x, x_1591.y, x_1591.z, x_1592.w);
  let x_1594 : vec4<f32> = u_xlat0;
  let x_1596 : vec4<f32> = u_xlat3;
  let x_1598 : vec3<f32> = (vec3<f32>(x_1594.y, x_1594.z, x_1594.w) * vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
  let x_1599 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
  let x_1602 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1604 : f32 = x_93.unity_LightData.y;
  u_xlat55 = min(x_1602, x_1604);
  let x_1608 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1608));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1620 : u32 = u_xlatu_loop_1;
    let x_1621 : u32 = u_xlatu55;
    if ((x_1620 < x_1621)) {
    } else {
      break;
    }
    let x_1624 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_1624 >> 2u);
    let x_1628 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1628 & 3u));
    let x_1632 : u32 = u_xlatu58;
    let x_1635 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_1632)];
    let x_1645 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1650 : vec4<u32> = indexable[x_1645];
    u_xlat58 = dot(x_1635, bitcast<vec4<f32>>(x_1650));
    let x_1654 : f32 = u_xlat58;
    u_xlati58 = i32(x_1654);
    let x_1656 : vec3<f32> = vs_TEXCOORD1;
    let x_1668 : i32 = u_xlati58;
    let x_1670 : vec4<f32> = x_1667.x_AdditionalLightsPosition[x_1668];
    let x_1673 : i32 = u_xlati58;
    let x_1675 : vec4<f32> = x_1667.x_AdditionalLightsPosition[x_1673];
    let x_1677 : vec3<f32> = ((-(x_1656) * vec3<f32>(x_1670.w, x_1670.w, x_1670.w)) + vec3<f32>(x_1675.x, x_1675.y, x_1675.z));
    let x_1678 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
    let x_1681 : vec4<f32> = u_xlat5;
    let x_1683 : vec4<f32> = u_xlat5;
    u_xlat59 = dot(vec3<f32>(x_1681.x, x_1681.y, x_1681.z), vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
    let x_1686 : f32 = u_xlat59;
    u_xlat59 = max(x_1686, 6.10351562e-05f);
    let x_1689 : f32 = u_xlat59;
    u_xlat6.x = inverseSqrt(x_1689);
    let x_1692 : vec4<f32> = u_xlat5;
    let x_1694 : vec4<f32> = u_xlat6;
    let x_1696 : vec3<f32> = (vec3<f32>(x_1692.x, x_1692.y, x_1692.z) * vec3<f32>(x_1694.x, x_1694.x, x_1694.x));
    let x_1697 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1697.w);
    let x_1699 : f32 = u_xlat59;
    u_xlat6.x = (1.0f / x_1699);
    let x_1702 : f32 = u_xlat59;
    let x_1703 : i32 = u_xlati58;
    let x_1705 : f32 = x_1667.x_AdditionalLightsAttenuation[x_1703].x;
    u_xlat59 = (x_1702 * x_1705);
    let x_1707 : f32 = u_xlat59;
    let x_1709 : f32 = u_xlat59;
    u_xlat59 = ((-(x_1707) * x_1709) + 1.0f);
    let x_1712 : f32 = u_xlat59;
    u_xlat59 = max(x_1712, 0.0f);
    let x_1714 : f32 = u_xlat59;
    let x_1715 : f32 = u_xlat59;
    u_xlat59 = (x_1714 * x_1715);
    let x_1717 : f32 = u_xlat59;
    let x_1719 : f32 = u_xlat6.x;
    u_xlat59 = (x_1717 * x_1719);
    let x_1721 : i32 = u_xlati58;
    let x_1723 : vec4<f32> = x_1667.x_AdditionalLightsSpotDir[x_1721];
    let x_1725 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1723.x, x_1723.y, x_1723.z), vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
    let x_1730 : f32 = u_xlat6.x;
    let x_1731 : i32 = u_xlati58;
    let x_1733 : f32 = x_1667.x_AdditionalLightsAttenuation[x_1731].z;
    let x_1735 : i32 = u_xlati58;
    let x_1737 : f32 = x_1667.x_AdditionalLightsAttenuation[x_1735].w;
    u_xlat6.x = ((x_1730 * x_1733) + x_1737);
    let x_1741 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1741, 0.0f, 1.0f);
    let x_1745 : f32 = u_xlat6.x;
    let x_1747 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1745 * x_1747);
    let x_1750 : f32 = u_xlat59;
    let x_1752 : f32 = u_xlat6.x;
    u_xlat59 = (x_1750 * x_1752);
    let x_1754 : f32 = u_xlat56;
    let x_1756 : i32 = u_xlati58;
    let x_1758 : vec4<f32> = x_1667.x_AdditionalLightsColor[x_1756];
    let x_1760 : vec3<f32> = (vec3<f32>(x_1754, x_1754, x_1754) * vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
    let x_1761 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1761.w);
    let x_1763 : f32 = u_xlat59;
    let x_1765 : vec4<f32> = u_xlat6;
    let x_1767 : vec3<f32> = (vec3<f32>(x_1763, x_1763, x_1763) * vec3<f32>(x_1765.x, x_1765.y, x_1765.z));
    let x_1768 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1767.x, x_1767.y, x_1767.z, x_1768.w);
    let x_1770 : vec3<f32> = u_xlat1;
    let x_1771 : vec4<f32> = u_xlat5;
    u_xlat58 = dot(x_1770, vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
    let x_1774 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1774, 0.0f, 1.0f);
    let x_1776 : f32 = u_xlat58;
    let x_1778 : vec4<f32> = u_xlat6;
    let x_1780 : vec3<f32> = (vec3<f32>(x_1776, x_1776, x_1776) * vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
    let x_1781 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
    let x_1783 : vec4<f32> = u_xlat5;
    let x_1785 : vec4<f32> = u_xlat0;
    let x_1788 : vec4<f32> = u_xlat4;
    let x_1790 : vec3<f32> = ((vec3<f32>(x_1783.x, x_1783.y, x_1783.z) * vec3<f32>(x_1785.y, x_1785.z, x_1785.w)) + vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
    let x_1791 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);

    continuing {
      let x_1793 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1793 + bitcast<u32>(1i));
    }
  }
  let x_1796 : vec3<f32> = u_xlat2;
  let x_1797 : vec4<f32> = u_xlat0;
  let x_1800 : vec4<f32> = u_xlat3;
  u_xlat18 = ((x_1796 * vec3<f32>(x_1797.y, x_1797.z, x_1797.w)) + vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
  let x_1805 : vec4<f32> = u_xlat4;
  let x_1807 : vec3<f32> = u_xlat18;
  let x_1808 : vec3<f32> = (vec3<f32>(x_1805.x, x_1805.y, x_1805.z) + x_1807);
  let x_1809 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
  let x_1813 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_1813 == 1.0f);
  let x_1815 : bool = u_xlatb18;
  if (x_1815) {
    let x_1820 : f32 = u_xlat0.x;
    x_1816 = x_1820;
  } else {
    x_1816 = 1.0f;
  }
  let x_1822 : f32 = x_1816;
  SV_Target0.w = x_1822;
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

