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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_301 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1687 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1923 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb63 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat4 : vec3<f32>;
  var x_107 : f32;
  var x_121 : f32;
  var x_133 : f32;
  var u_xlat63 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlatb48 : bool;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlatb69 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat69 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat28 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec3<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
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
  var u_xlatb7 : bool;
  var u_xlat70 : f32;
  var u_xlatu63 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati66 : i32;
  var u_xlatb0 : bool;
  var x_2122 : f32;
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
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat65 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat65;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_106 : bool = u_xlatb63;
  if (x_106) {
    let x_111 : f32 = u_xlat3.x;
    x_107 = x_111;
  } else {
    let x_117 : f32 = x_44.unity_MatrixV[0i].z;
    x_107 = x_117;
  }
  let x_118 : f32 = x_107;
  u_xlat4.x = x_118;
  let x_120 : bool = u_xlatb63;
  if (x_120) {
    let x_126 : f32 = u_xlat3.y;
    x_121 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[1i].z;
    x_121 = x_129;
  }
  let x_130 : f32 = x_121;
  u_xlat4.y = x_130;
  let x_132 : bool = u_xlatb63;
  if (x_132) {
    let x_137 : f32 = u_xlat3.z;
    x_133 = x_137;
  } else {
    let x_140 : f32 = x_44.unity_MatrixV[2i].z;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat4.z = x_141;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_145, x_146);
  let x_148 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_148);
  let x_150 : f32 = u_xlat63;
  let x_152 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_150, x_150, x_150) * x_152);
  let x_161 : vec2<f32> = vs_TEXCOORD8;
  let x_163 : f32 = x_44.x_GlobalMipBias.x;
  let x_164 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_161, x_163);
  u_xlat5 = vec3<f32>(x_164.x, x_164.y, x_164.z);
  let x_169 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_170 : vec2<f32> = vec2<f32>(x_169.x, x_169.y);
  let x_174 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_170.x, x_170.y));
  let x_175 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_174.x, x_174.y, x_175.z);
  let x_177 : vec3<f32> = u_xlat6;
  let x_179 : vec4<f32> = hlslcc_FragCoord;
  let x_181 : vec2<f32> = (vec2<f32>(x_177.x, x_177.y) * vec2<f32>(x_179.x, x_179.y));
  let x_182 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_181.x, x_181.y, x_182.z);
  let x_185 : f32 = u_xlat6.y;
  let x_188 : f32 = x_44.x_ScaleBiasRt.x;
  let x_191 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_185 * x_188) + x_191);
  let x_193 : f32 = u_xlat63;
  u_xlat6.z = (-(x_193) + 1.0f);
  let x_198 : f32 = x_57.x_Metallic;
  u_xlat63 = ((-(x_198) * 0.959999979f) + 0.959999979f);
  let x_203 : f32 = u_xlat63;
  let x_206 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_203) + x_206);
  let x_209 : f32 = u_xlat63;
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat22 = (vec3<f32>(x_209, x_209, x_209) * vec3<f32>(x_211.y, x_211.z, x_211.w));
  let x_214 : vec4<f32> = u_xlat0;
  let x_217 : vec4<f32> = x_57.x_BaseColor;
  let x_222 : vec3<f32> = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_217.x, x_217.y, x_217.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : f32 = x_57.x_Metallic;
  let x_228 : f32 = x_57.x_Metallic;
  let x_230 : f32 = x_57.x_Metallic;
  let x_231 : vec3<f32> = vec3<f32>(x_226, x_228, x_230);
  let x_236 : vec4<f32> = u_xlat0;
  let x_241 : vec3<f32> = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_236.x, x_236.y, x_236.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : f32 = x_57.x_Smoothness;
  u_xlat63 = (-(x_245) + 1.0f);
  let x_249 : f32 = u_xlat63;
  let x_250 : f32 = u_xlat63;
  u_xlat66 = (x_249 * x_250);
  let x_252 : f32 = u_xlat66;
  u_xlat66 = max(x_252, 0.0078125f);
  let x_256 : f32 = u_xlat66;
  let x_257 : f32 = u_xlat66;
  u_xlat67 = (x_256 * x_257);
  let x_259 : f32 = u_xlat65;
  u_xlat65 = (x_259 + 1.0f);
  let x_261 : f32 = u_xlat65;
  u_xlat65 = clamp(x_261, 0.0f, 1.0f);
  let x_264 : f32 = u_xlat66;
  u_xlat68 = ((x_264 * 4.0f) + 2.0f);
  let x_274 : vec3<f32> = u_xlat6;
  let x_277 : f32 = x_44.x_GlobalMipBias.x;
  let x_278 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_274.x, x_274.z), x_277);
  u_xlat6.x = x_278.x;
  let x_283 : f32 = u_xlat6.x;
  u_xlat27 = (x_283 + -1.0f);
  let x_288 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_289 : f32 = u_xlat27;
  u_xlat27 = ((x_288 * x_289) + 1.0f);
  let x_293 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_293, 1.0f);
  let x_303 : f32 = x_301.x_MainLightShadowParams.y;
  u_xlatb48 = (0.0f < x_303);
  let x_305 : bool = u_xlatb48;
  if (x_305) {
    let x_309 : f32 = x_301.x_MainLightShadowParams.y;
    u_xlatb48 = (x_309 == 1.0f);
    let x_311 : bool = u_xlatb48;
    if (x_311) {
      let x_316 : vec4<f32> = vs_TEXCOORD6;
      let x_319 : vec4<f32> = x_301.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_316.x, x_316.y, x_316.x, x_316.y) + x_319);
      let x_322 : vec4<f32> = u_xlat7;
      let x_323 : vec2<f32> = vec2<f32>(x_322.x, x_322.y);
      let x_325 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_323.x, x_323.y, x_325);
      let x_338 : vec3<f32> = txVec0;
      let x_340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_338.xy, x_338.z);
      u_xlat8.x = x_340;
      let x_343 : vec4<f32> = u_xlat7;
      let x_344 : vec2<f32> = vec2<f32>(x_343.z, x_343.w);
      let x_346 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_344.x, x_344.y, x_346);
      let x_353 : vec3<f32> = txVec1;
      let x_355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_353.xy, x_353.z);
      u_xlat8.y = x_355;
      let x_357 : vec4<f32> = vs_TEXCOORD6;
      let x_360 : vec4<f32> = x_301.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_357.x, x_357.y, x_357.x, x_357.y) + x_360);
      let x_363 : vec4<f32> = u_xlat7;
      let x_364 : vec2<f32> = vec2<f32>(x_363.x, x_363.y);
      let x_366 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_364.x, x_364.y, x_366);
      let x_373 : vec3<f32> = txVec2;
      let x_375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_373.xy, x_373.z);
      u_xlat8.z = x_375;
      let x_378 : vec4<f32> = u_xlat7;
      let x_379 : vec2<f32> = vec2<f32>(x_378.z, x_378.w);
      let x_381 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_379.x, x_379.y, x_381);
      let x_388 : vec3<f32> = txVec3;
      let x_390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_388.xy, x_388.z);
      u_xlat8.w = x_390;
      let x_393 : vec4<f32> = u_xlat8;
      u_xlat48 = dot(x_393, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_400 : f32 = x_301.x_MainLightShadowParams.y;
      u_xlatb69 = (x_400 == 2.0f);
      let x_402 : bool = u_xlatb69;
      if (x_402) {
        let x_405 : vec4<f32> = vs_TEXCOORD6;
        let x_408 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_413 : vec2<f32> = ((vec2<f32>(x_405.x, x_405.y) * vec2<f32>(x_408.z, x_408.w)) + vec2<f32>(0.5f, 0.5f));
        let x_414 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
        let x_416 : vec4<f32> = u_xlat7;
        let x_418 : vec2<f32> = floor(vec2<f32>(x_416.x, x_416.y));
        let x_419 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
        let x_423 : vec4<f32> = vs_TEXCOORD6;
        let x_426 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_429 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_426.z, x_426.w)) + -(vec2<f32>(x_429.x, x_429.y)));
        let x_433 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_433.x, x_433.x, x_433.y, x_433.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_438 : vec4<f32> = u_xlat8;
        let x_440 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_438.x, x_438.x, x_438.z, x_438.z) * vec4<f32>(x_440.x, x_440.x, x_440.z, x_440.z));
        let x_443 : vec4<f32> = u_xlat9;
        let x_447 : vec2<f32> = (vec2<f32>(x_443.y, x_443.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_448 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_447.x, x_448.y, x_447.y, x_448.w);
        let x_450 : vec4<f32> = u_xlat9;
        let x_453 : vec2<f32> = u_xlat49;
        let x_455 : vec2<f32> = ((vec2<f32>(x_450.x, x_450.z) * vec2<f32>(0.5f, 0.5f)) + -(x_453));
        let x_456 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_459 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_459) + vec2<f32>(1.0f, 1.0f));
        let x_463 : vec2<f32> = u_xlat49;
        let x_465 : vec2<f32> = min(x_463, vec2<f32>(0.0f, 0.0f));
        let x_466 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
        let x_468 : vec4<f32> = u_xlat10;
        let x_471 : vec4<f32> = u_xlat10;
        let x_474 : vec2<f32> = u_xlat51;
        let x_475 : vec2<f32> = ((-(vec2<f32>(x_468.x, x_468.y)) * vec2<f32>(x_471.x, x_471.y)) + x_474);
        let x_476 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
        let x_478 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_478, vec2<f32>(0.0f, 0.0f));
        let x_480 : vec2<f32> = u_xlat49;
        let x_482 : vec2<f32> = u_xlat49;
        let x_484 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_480) * x_482) + vec2<f32>(x_484.y, x_484.w));
        let x_487 : vec4<f32> = u_xlat10;
        let x_489 : vec2<f32> = (vec2<f32>(x_487.x, x_487.y) + vec2<f32>(1.0f, 1.0f));
        let x_490 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
        let x_492 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_492 + vec2<f32>(1.0f, 1.0f));
        let x_495 : vec4<f32> = u_xlat9;
        let x_499 : vec2<f32> = (vec2<f32>(x_495.x, x_495.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_500 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
        let x_502 : vec2<f32> = u_xlat51;
        let x_503 : vec2<f32> = (x_502 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_504 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_506 : vec4<f32> = u_xlat10;
        let x_508 : vec2<f32> = (vec2<f32>(x_506.x, x_506.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_509 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
        let x_512 : vec2<f32> = u_xlat49;
        let x_513 : vec2<f32> = (x_512 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_514 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
        let x_516 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_516.y, x_516.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_520 : f32 = u_xlat10.x;
        u_xlat11.z = x_520;
        let x_523 : f32 = u_xlat49.x;
        u_xlat11.w = x_523;
        let x_526 : f32 = u_xlat12.x;
        u_xlat9.z = x_526;
        let x_529 : f32 = u_xlat8.x;
        u_xlat9.w = x_529;
        let x_532 : vec4<f32> = u_xlat9;
        let x_534 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_532.z, x_532.w, x_532.x, x_532.z) + vec4<f32>(x_534.z, x_534.w, x_534.x, x_534.z));
        let x_538 : f32 = u_xlat11.y;
        u_xlat10.z = x_538;
        let x_541 : f32 = u_xlat49.y;
        u_xlat10.w = x_541;
        let x_544 : f32 = u_xlat9.y;
        u_xlat12.z = x_544;
        let x_547 : f32 = u_xlat8.z;
        u_xlat12.w = x_547;
        let x_549 : vec4<f32> = u_xlat10;
        let x_551 : vec4<f32> = u_xlat12;
        let x_553 : vec3<f32> = (vec3<f32>(x_549.z, x_549.y, x_549.w) + vec3<f32>(x_551.z, x_551.y, x_551.w));
        let x_554 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
        let x_556 : vec4<f32> = u_xlat9;
        let x_558 : vec4<f32> = u_xlat13;
        let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.z, x_556.w) / vec3<f32>(x_558.z, x_558.w, x_558.y));
        let x_561 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
        let x_563 : vec4<f32> = u_xlat9;
        let x_569 : vec3<f32> = (vec3<f32>(x_563.x, x_563.y, x_563.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_570 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat12;
        let x_574 : vec4<f32> = u_xlat8;
        let x_576 : vec3<f32> = (vec3<f32>(x_572.z, x_572.y, x_572.w) / vec3<f32>(x_574.x, x_574.y, x_574.z));
        let x_577 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat10;
        let x_581 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_582 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
        let x_584 : vec4<f32> = u_xlat9;
        let x_587 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_589 : vec3<f32> = (vec3<f32>(x_584.y, x_584.x, x_584.z) * vec3<f32>(x_587.x, x_587.x, x_587.x));
        let x_590 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
        let x_592 : vec4<f32> = u_xlat10;
        let x_595 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_597 : vec3<f32> = (vec3<f32>(x_592.x, x_592.y, x_592.z) * vec3<f32>(x_595.y, x_595.y, x_595.y));
        let x_598 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
        let x_601 : f32 = u_xlat10.x;
        u_xlat9.w = x_601;
        let x_603 : vec4<f32> = u_xlat7;
        let x_606 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_609 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_603.x, x_603.y, x_603.x, x_603.y) * vec4<f32>(x_606.x, x_606.y, x_606.x, x_606.y)) + vec4<f32>(x_609.y, x_609.w, x_609.x, x_609.w));
        let x_612 : vec4<f32> = u_xlat7;
        let x_615 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_618 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_612.x, x_612.y) * vec2<f32>(x_615.x, x_615.y)) + vec2<f32>(x_618.z, x_618.w));
        let x_622 : f32 = u_xlat9.y;
        u_xlat10.w = x_622;
        let x_624 : vec4<f32> = u_xlat10;
        let x_625 : vec2<f32> = vec2<f32>(x_624.y, x_624.z);
        let x_626 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_626.x, x_625.x, x_626.z, x_625.y);
        let x_628 : vec4<f32> = u_xlat7;
        let x_631 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_634 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y) * vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y)) + vec4<f32>(x_634.x, x_634.y, x_634.z, x_634.y));
        let x_637 : vec4<f32> = u_xlat7;
        let x_640 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_643 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y) * vec4<f32>(x_640.x, x_640.y, x_640.x, x_640.y)) + vec4<f32>(x_643.w, x_643.y, x_643.w, x_643.z));
        let x_646 : vec4<f32> = u_xlat7;
        let x_649 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_652 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y) * vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y)) + vec4<f32>(x_652.x, x_652.w, x_652.z, x_652.w));
        let x_656 : vec4<f32> = u_xlat8;
        let x_658 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_656.x, x_656.x, x_656.x, x_656.y) * vec4<f32>(x_658.z, x_658.w, x_658.y, x_658.z));
        let x_662 : vec4<f32> = u_xlat8;
        let x_664 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_662.y, x_662.y, x_662.z, x_662.z) * x_664);
        let x_668 : f32 = u_xlat8.z;
        let x_670 : f32 = u_xlat13.y;
        u_xlat69 = (x_668 * x_670);
        let x_673 : vec4<f32> = u_xlat11;
        let x_674 : vec2<f32> = vec2<f32>(x_673.x, x_673.y);
        let x_676 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_674.x, x_674.y, x_676);
        let x_683 : vec3<f32> = txVec4;
        let x_685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_683.xy, x_683.z);
        u_xlat7.x = x_685;
        let x_688 : vec4<f32> = u_xlat11;
        let x_689 : vec2<f32> = vec2<f32>(x_688.z, x_688.w);
        let x_691 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_689.x, x_689.y, x_691);
        let x_699 : vec3<f32> = txVec5;
        let x_701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_699.xy, x_699.z);
        u_xlat28 = x_701;
        let x_702 : f32 = u_xlat28;
        let x_704 : f32 = u_xlat14.y;
        u_xlat28 = (x_702 * x_704);
        let x_707 : f32 = u_xlat14.x;
        let x_709 : f32 = u_xlat7.x;
        let x_711 : f32 = u_xlat28;
        u_xlat7.x = ((x_707 * x_709) + x_711);
        let x_715 : vec2<f32> = u_xlat49;
        let x_717 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_715.x, x_715.y, x_717);
        let x_724 : vec3<f32> = txVec6;
        let x_726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_724.xy, x_724.z);
        u_xlat28 = x_726;
        let x_728 : f32 = u_xlat14.z;
        let x_729 : f32 = u_xlat28;
        let x_732 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_728 * x_729) + x_732);
        let x_736 : vec4<f32> = u_xlat10;
        let x_737 : vec2<f32> = vec2<f32>(x_736.x, x_736.y);
        let x_739 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_737.x, x_737.y, x_739);
        let x_746 : vec3<f32> = txVec7;
        let x_748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_746.xy, x_746.z);
        u_xlat28 = x_748;
        let x_750 : f32 = u_xlat14.w;
        let x_751 : f32 = u_xlat28;
        let x_754 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_750 * x_751) + x_754);
        let x_758 : vec4<f32> = u_xlat12;
        let x_759 : vec2<f32> = vec2<f32>(x_758.x, x_758.y);
        let x_761 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_759.x, x_759.y, x_761);
        let x_768 : vec3<f32> = txVec8;
        let x_770 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_768.xy, x_768.z);
        u_xlat28 = x_770;
        let x_772 : f32 = u_xlat15.x;
        let x_773 : f32 = u_xlat28;
        let x_776 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_772 * x_773) + x_776);
        let x_780 : vec4<f32> = u_xlat12;
        let x_781 : vec2<f32> = vec2<f32>(x_780.z, x_780.w);
        let x_783 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_781.x, x_781.y, x_783);
        let x_790 : vec3<f32> = txVec9;
        let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_790.xy, x_790.z);
        u_xlat28 = x_792;
        let x_794 : f32 = u_xlat15.y;
        let x_795 : f32 = u_xlat28;
        let x_798 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_794 * x_795) + x_798);
        let x_802 : vec4<f32> = u_xlat10;
        let x_803 : vec2<f32> = vec2<f32>(x_802.z, x_802.w);
        let x_805 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_803.x, x_803.y, x_805);
        let x_812 : vec3<f32> = txVec10;
        let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_812.xy, x_812.z);
        u_xlat28 = x_814;
        let x_816 : f32 = u_xlat15.z;
        let x_817 : f32 = u_xlat28;
        let x_820 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_816 * x_817) + x_820);
        let x_824 : vec4<f32> = u_xlat9;
        let x_825 : vec2<f32> = vec2<f32>(x_824.x, x_824.y);
        let x_827 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_834 : vec3<f32> = txVec11;
        let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_834.xy, x_834.z);
        u_xlat28 = x_836;
        let x_838 : f32 = u_xlat15.w;
        let x_839 : f32 = u_xlat28;
        let x_842 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_838 * x_839) + x_842);
        let x_846 : vec4<f32> = u_xlat9;
        let x_847 : vec2<f32> = vec2<f32>(x_846.z, x_846.w);
        let x_849 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_847.x, x_847.y, x_849);
        let x_856 : vec3<f32> = txVec12;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_856.xy, x_856.z);
        u_xlat28 = x_858;
        let x_859 : f32 = u_xlat69;
        let x_860 : f32 = u_xlat28;
        let x_863 : f32 = u_xlat7.x;
        u_xlat48 = ((x_859 * x_860) + x_863);
      } else {
        let x_866 : vec4<f32> = vs_TEXCOORD6;
        let x_869 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_872 : vec2<f32> = ((vec2<f32>(x_866.x, x_866.y) * vec2<f32>(x_869.z, x_869.w)) + vec2<f32>(0.5f, 0.5f));
        let x_873 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
        let x_875 : vec4<f32> = u_xlat7;
        let x_877 : vec2<f32> = floor(vec2<f32>(x_875.x, x_875.y));
        let x_878 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_877.x, x_877.y, x_878.z, x_878.w);
        let x_880 : vec4<f32> = vs_TEXCOORD6;
        let x_883 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_886 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_880.x, x_880.y) * vec2<f32>(x_883.z, x_883.w)) + -(vec2<f32>(x_886.x, x_886.y)));
        let x_890 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_890.x, x_890.x, x_890.y, x_890.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_893 : vec4<f32> = u_xlat8;
        let x_895 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_893.x, x_893.x, x_893.z, x_893.z) * vec4<f32>(x_895.x, x_895.x, x_895.z, x_895.z));
        let x_898 : vec4<f32> = u_xlat9;
        let x_902 : vec2<f32> = (vec2<f32>(x_898.y, x_898.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_903 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_903.x, x_902.x, x_903.z, x_902.y);
        let x_905 : vec4<f32> = u_xlat9;
        let x_908 : vec2<f32> = u_xlat49;
        let x_910 : vec2<f32> = ((vec2<f32>(x_905.x, x_905.z) * vec2<f32>(0.5f, 0.5f)) + -(x_908));
        let x_911 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_910.x, x_911.y, x_910.y, x_911.w);
        let x_913 : vec2<f32> = u_xlat49;
        let x_915 : vec2<f32> = (-(x_913) + vec2<f32>(1.0f, 1.0f));
        let x_916 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_918, vec2<f32>(0.0f, 0.0f));
        let x_920 : vec2<f32> = u_xlat51;
        let x_922 : vec2<f32> = u_xlat51;
        let x_924 : vec4<f32> = u_xlat9;
        let x_926 : vec2<f32> = ((-(x_920) * x_922) + vec2<f32>(x_924.x, x_924.y));
        let x_927 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_929, vec2<f32>(0.0f, 0.0f));
        let x_932 : vec2<f32> = u_xlat51;
        let x_934 : vec2<f32> = u_xlat51;
        let x_936 : vec4<f32> = u_xlat8;
        let x_938 : vec2<f32> = ((-(x_932) * x_934) + vec2<f32>(x_936.y, x_936.w));
        let x_939 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_938.x, x_939.y, x_938.y);
        let x_941 : vec4<f32> = u_xlat9;
        let x_944 : vec2<f32> = (vec2<f32>(x_941.x, x_941.y) + vec2<f32>(2.0f, 2.0f));
        let x_945 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
        let x_947 : vec3<f32> = u_xlat29;
        let x_949 : vec2<f32> = (vec2<f32>(x_947.x, x_947.z) + vec2<f32>(2.0f, 2.0f));
        let x_950 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_950.x, x_949.x, x_950.z, x_949.y);
        let x_953 : f32 = u_xlat8.y;
        u_xlat11.z = (x_953 * 0.081632003f);
        let x_957 : vec4<f32> = u_xlat8;
        let x_960 : vec3<f32> = (vec3<f32>(x_957.z, x_957.x, x_957.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_961 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
        let x_963 : vec4<f32> = u_xlat9;
        let x_966 : vec2<f32> = (vec2<f32>(x_963.x, x_963.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_967 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        let x_970 : f32 = u_xlat12.y;
        u_xlat11.x = x_970;
        let x_972 : vec2<f32> = u_xlat49;
        let x_979 : vec2<f32> = ((vec2<f32>(x_972.x, x_972.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_980 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_980.x, x_979.x, x_980.z, x_979.y);
        let x_982 : vec2<f32> = u_xlat49;
        let x_986 : vec2<f32> = ((vec2<f32>(x_982.x, x_982.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_987 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_986.x, x_987.y, x_986.y, x_987.w);
        let x_990 : f32 = u_xlat8.x;
        u_xlat9.y = x_990;
        let x_993 : f32 = u_xlat10.y;
        u_xlat9.w = x_993;
        let x_995 : vec4<f32> = u_xlat9;
        let x_996 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_995 + x_996);
        let x_998 : vec2<f32> = u_xlat49;
        let x_1001 : vec2<f32> = ((vec2<f32>(x_998.y, x_998.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1002 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1002.x, x_1001.x, x_1002.z, x_1001.y);
        let x_1004 : vec2<f32> = u_xlat49;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1004.y, x_1004.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1008 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1007.x, x_1008.y, x_1007.y, x_1008.w);
        let x_1011 : f32 = u_xlat8.y;
        u_xlat10.y = x_1011;
        let x_1013 : vec4<f32> = u_xlat10;
        let x_1014 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1013 + x_1014);
        let x_1016 : vec4<f32> = u_xlat9;
        let x_1017 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1016 / x_1017);
        let x_1019 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1019 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1025 : vec4<f32> = u_xlat10;
        let x_1026 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1025 / x_1026);
        let x_1028 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1028 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1030 : vec4<f32> = u_xlat9;
        let x_1033 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1030.w, x_1030.x, x_1030.y, x_1030.z) * vec4<f32>(x_1033.x, x_1033.x, x_1033.x, x_1033.x));
        let x_1036 : vec4<f32> = u_xlat10;
        let x_1039 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1036.x, x_1036.w, x_1036.y, x_1036.z) * vec4<f32>(x_1039.y, x_1039.y, x_1039.y, x_1039.y));
        let x_1042 : vec4<f32> = u_xlat9;
        let x_1043 : vec3<f32> = vec3<f32>(x_1042.y, x_1042.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1043.x, x_1044.y, x_1043.y, x_1043.z);
        let x_1047 : f32 = u_xlat10.x;
        u_xlat12.y = x_1047;
        let x_1049 : vec4<f32> = u_xlat7;
        let x_1052 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1055 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1049.x, x_1049.y, x_1049.x, x_1049.y) * vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y)) + vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1055.y));
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1061 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1064 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(x_1061.x, x_1061.y)) + vec2<f32>(x_1064.w, x_1064.y));
        let x_1068 : f32 = u_xlat12.y;
        u_xlat9.y = x_1068;
        let x_1071 : f32 = u_xlat10.z;
        u_xlat12.y = x_1071;
        let x_1073 : vec4<f32> = u_xlat7;
        let x_1076 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y) * vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y)) + vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1079.y));
        let x_1082 : vec4<f32> = u_xlat7;
        let x_1085 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat12;
        let x_1090 : vec2<f32> = ((vec2<f32>(x_1082.x, x_1082.y) * vec2<f32>(x_1085.x, x_1085.y)) + vec2<f32>(x_1088.w, x_1088.y));
        let x_1091 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1094 : f32 = u_xlat12.y;
        u_xlat9.z = x_1094;
        let x_1097 : vec4<f32> = u_xlat7;
        let x_1100 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y) * vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.y)) + vec4<f32>(x_1103.x, x_1103.y, x_1103.x, x_1103.z));
        let x_1107 : f32 = u_xlat10.w;
        u_xlat12.y = x_1107;
        let x_1110 : vec4<f32> = u_xlat7;
        let x_1113 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y) * vec4<f32>(x_1113.x, x_1113.y, x_1113.x, x_1113.y)) + vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1116.y));
        let x_1120 : vec4<f32> = u_xlat7;
        let x_1123 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1126 : vec4<f32> = u_xlat12;
        let x_1128 : vec2<f32> = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1123.x, x_1123.y)) + vec2<f32>(x_1126.w, x_1126.y));
        let x_1129 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1128.x, x_1128.y, x_1129.z);
        let x_1132 : f32 = u_xlat12.y;
        u_xlat9.w = x_1132;
        let x_1135 : vec4<f32> = u_xlat7;
        let x_1138 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.x, x_1138.y)) + vec2<f32>(x_1141.x, x_1141.w));
        let x_1144 : vec4<f32> = u_xlat12;
        let x_1145 : vec3<f32> = vec3<f32>(x_1144.x, x_1144.z, x_1144.w);
        let x_1146 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1145.x, x_1146.y, x_1145.y, x_1145.z);
        let x_1148 : vec4<f32> = u_xlat7;
        let x_1151 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y) * vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.y)) + vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1154.y));
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1161 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1164 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1158.x, x_1158.y) * vec2<f32>(x_1161.x, x_1161.y)) + vec2<f32>(x_1164.w, x_1164.y));
        let x_1168 : f32 = u_xlat9.x;
        u_xlat10.x = x_1168;
        let x_1170 : vec4<f32> = u_xlat7;
        let x_1173 : vec4<f32> = x_301.x_MainLightShadowmapSize;
        let x_1176 : vec4<f32> = u_xlat10;
        let x_1178 : vec2<f32> = ((vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(x_1173.x, x_1173.y)) + vec2<f32>(x_1176.x, x_1176.y));
        let x_1179 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1184 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1182.x, x_1182.x, x_1182.x, x_1182.x) * x_1184);
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1189 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1187.y, x_1187.y, x_1187.y, x_1187.y) * x_1189);
        let x_1192 : vec4<f32> = u_xlat8;
        let x_1194 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1192.z, x_1192.z, x_1192.z, x_1192.z) * x_1194);
        let x_1196 : vec4<f32> = u_xlat8;
        let x_1198 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1196.w, x_1196.w, x_1196.w, x_1196.w) * x_1198);
        let x_1201 : vec4<f32> = u_xlat13;
        let x_1202 : vec2<f32> = vec2<f32>(x_1201.x, x_1201.y);
        let x_1204 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
        let x_1211 : vec3<f32> = txVec13;
        let x_1213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1211.xy, x_1211.z);
        u_xlat69 = x_1213;
        let x_1215 : vec4<f32> = u_xlat13;
        let x_1216 : vec2<f32> = vec2<f32>(x_1215.z, x_1215.w);
        let x_1218 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
        let x_1225 : vec3<f32> = txVec14;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1225.xy, x_1225.z);
        u_xlat9.x = x_1227;
        let x_1230 : f32 = u_xlat9.x;
        let x_1232 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1230 * x_1232);
        let x_1236 : f32 = u_xlat18.x;
        let x_1237 : f32 = u_xlat69;
        let x_1240 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1236 * x_1237) + x_1240);
        let x_1243 : vec2<f32> = u_xlat49;
        let x_1245 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1243.x, x_1243.y, x_1245);
        let x_1252 : vec3<f32> = txVec15;
        let x_1254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1252.xy, x_1252.z);
        u_xlat49.x = x_1254;
        let x_1257 : f32 = u_xlat18.z;
        let x_1259 : f32 = u_xlat49.x;
        let x_1261 : f32 = u_xlat69;
        u_xlat69 = ((x_1257 * x_1259) + x_1261);
        let x_1264 : vec4<f32> = u_xlat16;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.x, x_1264.y);
        let x_1267 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec16;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1274.xy, x_1274.z);
        u_xlat49.x = x_1276;
        let x_1279 : f32 = u_xlat18.w;
        let x_1281 : f32 = u_xlat49.x;
        let x_1283 : f32 = u_xlat69;
        u_xlat69 = ((x_1279 * x_1281) + x_1283);
        let x_1286 : vec4<f32> = u_xlat14;
        let x_1287 : vec2<f32> = vec2<f32>(x_1286.x, x_1286.y);
        let x_1289 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1287.x, x_1287.y, x_1289);
        let x_1296 : vec3<f32> = txVec17;
        let x_1298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1296.xy, x_1296.z);
        u_xlat49.x = x_1298;
        let x_1301 : f32 = u_xlat19.x;
        let x_1303 : f32 = u_xlat49.x;
        let x_1305 : f32 = u_xlat69;
        u_xlat69 = ((x_1301 * x_1303) + x_1305);
        let x_1308 : vec4<f32> = u_xlat14;
        let x_1309 : vec2<f32> = vec2<f32>(x_1308.z, x_1308.w);
        let x_1311 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1309.x, x_1309.y, x_1311);
        let x_1318 : vec3<f32> = txVec18;
        let x_1320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1318.xy, x_1318.z);
        u_xlat49.x = x_1320;
        let x_1323 : f32 = u_xlat19.y;
        let x_1325 : f32 = u_xlat49.x;
        let x_1327 : f32 = u_xlat69;
        u_xlat69 = ((x_1323 * x_1325) + x_1327);
        let x_1330 : vec4<f32> = u_xlat15;
        let x_1331 : vec2<f32> = vec2<f32>(x_1330.x, x_1330.y);
        let x_1333 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec19;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1340.xy, x_1340.z);
        u_xlat49.x = x_1342;
        let x_1345 : f32 = u_xlat19.z;
        let x_1347 : f32 = u_xlat49.x;
        let x_1349 : f32 = u_xlat69;
        u_xlat69 = ((x_1345 * x_1347) + x_1349);
        let x_1352 : vec4<f32> = u_xlat16;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.z, x_1352.w);
        let x_1355 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec20;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1362.xy, x_1362.z);
        u_xlat49.x = x_1364;
        let x_1367 : f32 = u_xlat19.w;
        let x_1369 : f32 = u_xlat49.x;
        let x_1371 : f32 = u_xlat69;
        u_xlat69 = ((x_1367 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat17;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec21;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1384.xy, x_1384.z);
        u_xlat49.x = x_1386;
        let x_1389 : f32 = u_xlat20.x;
        let x_1391 : f32 = u_xlat49.x;
        let x_1393 : f32 = u_xlat69;
        u_xlat69 = ((x_1389 * x_1391) + x_1393);
        let x_1396 : vec4<f32> = u_xlat17;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.z, x_1396.w);
        let x_1399 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec22;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1406.xy, x_1406.z);
        u_xlat49.x = x_1408;
        let x_1411 : f32 = u_xlat20.y;
        let x_1413 : f32 = u_xlat49.x;
        let x_1415 : f32 = u_xlat69;
        u_xlat69 = ((x_1411 * x_1413) + x_1415);
        let x_1418 : vec3<f32> = u_xlat30;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec23;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1428.xy, x_1428.z);
        u_xlat49.x = x_1430;
        let x_1433 : f32 = u_xlat20.z;
        let x_1435 : f32 = u_xlat49.x;
        let x_1437 : f32 = u_xlat69;
        u_xlat69 = ((x_1433 * x_1435) + x_1437);
        let x_1440 : vec2<f32> = u_xlat57;
        let x_1442 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec24;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1449.xy, x_1449.z);
        u_xlat49.x = x_1451;
        let x_1454 : f32 = u_xlat20.w;
        let x_1456 : f32 = u_xlat49.x;
        let x_1458 : f32 = u_xlat69;
        u_xlat69 = ((x_1454 * x_1456) + x_1458);
        let x_1461 : vec4<f32> = u_xlat12;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
        let x_1464 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec25;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1471.xy, x_1471.z);
        u_xlat49.x = x_1473;
        let x_1476 : f32 = u_xlat8.x;
        let x_1478 : f32 = u_xlat49.x;
        let x_1480 : f32 = u_xlat69;
        u_xlat69 = ((x_1476 * x_1478) + x_1480);
        let x_1483 : vec4<f32> = u_xlat12;
        let x_1484 : vec2<f32> = vec2<f32>(x_1483.z, x_1483.w);
        let x_1486 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec26;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1493.xy, x_1493.z);
        u_xlat49.x = x_1495;
        let x_1498 : f32 = u_xlat8.y;
        let x_1500 : f32 = u_xlat49.x;
        let x_1502 : f32 = u_xlat69;
        u_xlat69 = ((x_1498 * x_1500) + x_1502);
        let x_1505 : vec2<f32> = u_xlat52;
        let x_1507 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec27;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1514.xy, x_1514.z);
        u_xlat49.x = x_1516;
        let x_1519 : f32 = u_xlat8.z;
        let x_1521 : f32 = u_xlat49.x;
        let x_1523 : f32 = u_xlat69;
        u_xlat69 = ((x_1519 * x_1521) + x_1523);
        let x_1526 : vec4<f32> = u_xlat7;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
        let x_1529 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec28;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1536.xy, x_1536.z);
        u_xlat7.x = x_1538;
        let x_1541 : f32 = u_xlat8.w;
        let x_1543 : f32 = u_xlat7.x;
        let x_1545 : f32 = u_xlat69;
        u_xlat48 = ((x_1541 * x_1543) + x_1545);
      }
    }
  } else {
    let x_1549 : vec4<f32> = vs_TEXCOORD6;
    let x_1550 : vec2<f32> = vec2<f32>(x_1549.x, x_1549.y);
    let x_1552 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
    let x_1559 : vec3<f32> = txVec29;
    let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1559.xy, x_1559.z);
    u_xlat48 = x_1561;
  }
  let x_1563 : f32 = x_301.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1563) + 1.0f);
  let x_1566 : f32 = u_xlat48;
  let x_1568 : f32 = x_301.x_MainLightShadowParams.x;
  let x_1570 : f32 = u_xlat69;
  u_xlat48 = ((x_1566 * x_1568) + x_1570);
  let x_1573 : f32 = vs_TEXCOORD6.z;
  u_xlatb69 = (0.0f >= x_1573);
  let x_1577 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (x_1577 >= 1.0f);
  let x_1579 : bool = u_xlatb69;
  let x_1580 : bool = u_xlatb7;
  u_xlatb69 = (x_1579 | x_1580);
  let x_1582 : bool = u_xlatb69;
  let x_1583 : f32 = u_xlat48;
  u_xlat48 = select(x_1583, 1.0f, x_1582);
  let x_1585 : vec3<f32> = vs_TEXCOORD1;
  let x_1587 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1589 : vec3<f32> = (x_1585 + -(x_1587));
  let x_1590 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
  let x_1592 : vec4<f32> = u_xlat7;
  let x_1594 : vec4<f32> = u_xlat7;
  u_xlat69 = dot(vec3<f32>(x_1592.x, x_1592.y, x_1592.z), vec3<f32>(x_1594.x, x_1594.y, x_1594.z));
  let x_1597 : f32 = u_xlat69;
  let x_1599 : f32 = x_301.x_MainLightShadowParams.z;
  let x_1602 : f32 = x_301.x_MainLightShadowParams.w;
  u_xlat69 = ((x_1597 * x_1599) + x_1602);
  let x_1604 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1604, 0.0f, 1.0f);
  let x_1606 : f32 = u_xlat48;
  u_xlat7.x = (-(x_1606) + 1.0f);
  let x_1610 : f32 = u_xlat69;
  let x_1612 : f32 = u_xlat7.x;
  let x_1614 : f32 = u_xlat48;
  u_xlat48 = ((x_1610 * x_1612) + x_1614);
  let x_1616 : f32 = u_xlat27;
  let x_1620 : vec4<f32> = x_44.x_MainLightColor;
  let x_1622 : vec3<f32> = (vec3<f32>(x_1616, x_1616, x_1616) * vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
  let x_1623 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1622.x, x_1622.y, x_1622.z, x_1623.w);
  let x_1625 : vec3<f32> = u_xlat4;
  let x_1627 : vec3<f32> = u_xlat3;
  u_xlat69 = dot(-(x_1625), x_1627);
  let x_1629 : f32 = u_xlat69;
  let x_1630 : f32 = u_xlat69;
  u_xlat69 = (x_1629 + x_1630);
  let x_1632 : vec3<f32> = u_xlat3;
  let x_1633 : f32 = u_xlat69;
  let x_1637 : vec3<f32> = u_xlat4;
  let x_1639 : vec3<f32> = ((x_1632 * -(vec3<f32>(x_1633, x_1633, x_1633))) + -(x_1637));
  let x_1640 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1640.w);
  let x_1642 : vec3<f32> = u_xlat3;
  let x_1643 : vec3<f32> = u_xlat4;
  u_xlat69 = dot(x_1642, x_1643);
  let x_1645 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1645, 0.0f, 1.0f);
  let x_1647 : f32 = u_xlat69;
  u_xlat69 = (-(x_1647) + 1.0f);
  let x_1650 : f32 = u_xlat69;
  let x_1651 : f32 = u_xlat69;
  u_xlat69 = (x_1650 * x_1651);
  let x_1653 : f32 = u_xlat69;
  let x_1654 : f32 = u_xlat69;
  u_xlat69 = (x_1653 * x_1654);
  let x_1657 : f32 = u_xlat63;
  u_xlat70 = ((-(x_1657) * 0.699999988f) + 1.700000048f);
  let x_1663 : f32 = u_xlat63;
  let x_1664 : f32 = u_xlat70;
  u_xlat63 = (x_1663 * x_1664);
  let x_1666 : f32 = u_xlat63;
  u_xlat63 = (x_1666 * 6.0f);
  let x_1677 : vec4<f32> = u_xlat8;
  let x_1679 : f32 = u_xlat63;
  let x_1680 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1677.x, x_1677.y, x_1677.z), x_1679);
  u_xlat8 = x_1680;
  let x_1682 : f32 = u_xlat8.w;
  u_xlat63 = (x_1682 + -1.0f);
  let x_1689 : f32 = x_1687.unity_SpecCube0_HDR.w;
  let x_1690 : f32 = u_xlat63;
  u_xlat63 = ((x_1689 * x_1690) + 1.0f);
  let x_1693 : f32 = u_xlat63;
  u_xlat63 = max(x_1693, 0.0f);
  let x_1695 : f32 = u_xlat63;
  u_xlat63 = log2(x_1695);
  let x_1697 : f32 = u_xlat63;
  let x_1699 : f32 = x_1687.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_1697 * x_1699);
  let x_1701 : f32 = u_xlat63;
  u_xlat63 = exp2(x_1701);
  let x_1703 : f32 = u_xlat63;
  let x_1705 : f32 = x_1687.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_1703 * x_1705);
  let x_1707 : vec4<f32> = u_xlat8;
  let x_1709 : f32 = u_xlat63;
  let x_1711 : vec3<f32> = (vec3<f32>(x_1707.x, x_1707.y, x_1707.z) * vec3<f32>(x_1709, x_1709, x_1709));
  let x_1712 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
  let x_1714 : f32 = u_xlat66;
  let x_1716 : f32 = u_xlat66;
  let x_1720 : vec2<f32> = ((vec2<f32>(x_1714, x_1714) * vec2<f32>(x_1716, x_1716)) + vec2<f32>(-1.0f, 1.0f));
  let x_1721 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1720.x, x_1720.y, x_1721.z, x_1721.w);
  let x_1724 : f32 = u_xlat9.y;
  u_xlat63 = (1.0f / x_1724);
  let x_1726 : vec4<f32> = u_xlat0;
  let x_1729 : f32 = u_xlat65;
  u_xlat30 = (-(vec3<f32>(x_1726.x, x_1726.y, x_1726.z)) + vec3<f32>(x_1729, x_1729, x_1729));
  let x_1732 : f32 = u_xlat69;
  let x_1734 : vec3<f32> = u_xlat30;
  let x_1736 : vec4<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_1732, x_1732, x_1732) * x_1734) + vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
  let x_1739 : f32 = u_xlat63;
  let x_1741 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1739, x_1739, x_1739) * x_1741);
  let x_1743 : vec4<f32> = u_xlat8;
  let x_1745 : vec3<f32> = u_xlat30;
  let x_1746 : vec3<f32> = (vec3<f32>(x_1743.x, x_1743.y, x_1743.z) * x_1745);
  let x_1747 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1747.w);
  let x_1749 : vec3<f32> = u_xlat5;
  let x_1750 : vec3<f32> = u_xlat22;
  let x_1752 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_1749 * x_1750) + vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
  let x_1755 : f32 = u_xlat48;
  let x_1758 : f32 = x_1687.unity_LightData.z;
  u_xlat63 = (x_1755 * x_1758);
  let x_1760 : vec3<f32> = u_xlat3;
  let x_1762 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_1760, vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
  let x_1765 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1765, 0.0f, 1.0f);
  let x_1767 : f32 = u_xlat63;
  let x_1768 : f32 = u_xlat65;
  u_xlat63 = (x_1767 * x_1768);
  let x_1770 : f32 = u_xlat63;
  let x_1772 : vec4<f32> = u_xlat7;
  let x_1774 : vec3<f32> = (vec3<f32>(x_1770, x_1770, x_1770) * vec3<f32>(x_1772.x, x_1772.y, x_1772.z));
  let x_1775 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1775.w);
  let x_1777 : vec3<f32> = u_xlat4;
  let x_1779 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1781 : vec3<f32> = (x_1777 + vec3<f32>(x_1779.x, x_1779.y, x_1779.z));
  let x_1782 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  let x_1784 : vec4<f32> = u_xlat8;
  let x_1786 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_1784.x, x_1784.y, x_1784.z), vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
  let x_1789 : f32 = u_xlat63;
  u_xlat63 = max(x_1789, 1.17549435e-37f);
  let x_1792 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_1792);
  let x_1794 : f32 = u_xlat63;
  let x_1796 : vec4<f32> = u_xlat8;
  let x_1798 : vec3<f32> = (vec3<f32>(x_1794, x_1794, x_1794) * vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
  let x_1799 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1798.x, x_1798.y, x_1798.z, x_1799.w);
  let x_1801 : vec3<f32> = u_xlat3;
  let x_1802 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(x_1801, vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
  let x_1805 : f32 = u_xlat63;
  u_xlat63 = clamp(x_1805, 0.0f, 1.0f);
  let x_1808 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1810 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(vec3<f32>(x_1808.x, x_1808.y, x_1808.z), vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
  let x_1813 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1813, 0.0f, 1.0f);
  let x_1815 : f32 = u_xlat63;
  let x_1816 : f32 = u_xlat63;
  u_xlat63 = (x_1815 * x_1816);
  let x_1818 : f32 = u_xlat63;
  let x_1820 : f32 = u_xlat9.x;
  u_xlat63 = ((x_1818 * x_1820) + 1.000010014f);
  let x_1824 : f32 = u_xlat65;
  let x_1825 : f32 = u_xlat65;
  u_xlat65 = (x_1824 * x_1825);
  let x_1827 : f32 = u_xlat63;
  let x_1828 : f32 = u_xlat63;
  u_xlat63 = (x_1827 * x_1828);
  let x_1830 : f32 = u_xlat65;
  u_xlat65 = max(x_1830, 0.100000001f);
  let x_1833 : f32 = u_xlat63;
  let x_1834 : f32 = u_xlat65;
  u_xlat63 = (x_1833 * x_1834);
  let x_1836 : f32 = u_xlat68;
  let x_1837 : f32 = u_xlat63;
  u_xlat63 = (x_1836 * x_1837);
  let x_1839 : f32 = u_xlat67;
  let x_1840 : f32 = u_xlat63;
  u_xlat63 = (x_1839 / x_1840);
  let x_1842 : vec4<f32> = u_xlat0;
  let x_1844 : f32 = u_xlat63;
  let x_1847 : vec3<f32> = u_xlat22;
  let x_1848 : vec3<f32> = ((vec3<f32>(x_1842.x, x_1842.y, x_1842.z) * vec3<f32>(x_1844, x_1844, x_1844)) + x_1847);
  let x_1849 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
  let x_1851 : vec4<f32> = u_xlat7;
  let x_1853 : vec4<f32> = u_xlat8;
  let x_1855 : vec3<f32> = (vec3<f32>(x_1851.x, x_1851.y, x_1851.z) * vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
  let x_1856 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
  let x_1859 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1861 : f32 = x_1687.unity_LightData.y;
  u_xlat63 = min(x_1859, x_1861);
  let x_1865 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_1865));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1877 : u32 = u_xlatu_loop_1;
    let x_1878 : u32 = u_xlatu63;
    if ((x_1877 < x_1878)) {
    } else {
      break;
    }
    let x_1881 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_1881 >> 2u);
    let x_1885 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1885 & 3u));
    let x_1888 : u32 = u_xlatu66;
    let x_1891 : vec4<f32> = x_1687.unity_LightIndices[bitcast<i32>(x_1888)];
    let x_1901 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1906 : vec4<u32> = indexable[x_1901];
    u_xlat66 = dot(x_1891, bitcast<vec4<f32>>(x_1906));
    let x_1910 : f32 = u_xlat66;
    u_xlati66 = i32(x_1910);
    let x_1912 : vec3<f32> = vs_TEXCOORD1;
    let x_1924 : i32 = u_xlati66;
    let x_1926 : vec4<f32> = x_1923.x_AdditionalLightsPosition[x_1924];
    let x_1929 : i32 = u_xlati66;
    let x_1931 : vec4<f32> = x_1923.x_AdditionalLightsPosition[x_1929];
    u_xlat30 = ((-(x_1912) * vec3<f32>(x_1926.w, x_1926.w, x_1926.w)) + vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
    let x_1934 : vec3<f32> = u_xlat30;
    let x_1935 : vec3<f32> = u_xlat30;
    u_xlat48 = dot(x_1934, x_1935);
    let x_1937 : f32 = u_xlat48;
    u_xlat48 = max(x_1937, 6.10351562e-05f);
    let x_1940 : f32 = u_xlat48;
    u_xlat69 = inverseSqrt(x_1940);
    let x_1942 : f32 = u_xlat69;
    let x_1944 : vec3<f32> = u_xlat30;
    let x_1945 : vec3<f32> = (vec3<f32>(x_1942, x_1942, x_1942) * x_1944);
    let x_1946 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1946.w);
    let x_1948 : f32 = u_xlat48;
    u_xlat70 = (1.0f / x_1948);
    let x_1950 : f32 = u_xlat48;
    let x_1951 : i32 = u_xlati66;
    let x_1953 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1951].x;
    u_xlat48 = (x_1950 * x_1953);
    let x_1955 : f32 = u_xlat48;
    let x_1957 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1955) * x_1957) + 1.0f);
    let x_1960 : f32 = u_xlat48;
    u_xlat48 = max(x_1960, 0.0f);
    let x_1962 : f32 = u_xlat48;
    let x_1963 : f32 = u_xlat48;
    u_xlat48 = (x_1962 * x_1963);
    let x_1965 : f32 = u_xlat48;
    let x_1966 : f32 = u_xlat70;
    u_xlat48 = (x_1965 * x_1966);
    let x_1968 : i32 = u_xlati66;
    let x_1970 : vec4<f32> = x_1923.x_AdditionalLightsSpotDir[x_1968];
    let x_1972 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_1970.x, x_1970.y, x_1970.z), vec3<f32>(x_1972.x, x_1972.y, x_1972.z));
    let x_1975 : f32 = u_xlat70;
    let x_1976 : i32 = u_xlati66;
    let x_1978 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1976].z;
    let x_1980 : i32 = u_xlati66;
    let x_1982 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1980].w;
    u_xlat70 = ((x_1975 * x_1978) + x_1982);
    let x_1984 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1984, 0.0f, 1.0f);
    let x_1986 : f32 = u_xlat70;
    let x_1987 : f32 = u_xlat70;
    u_xlat70 = (x_1986 * x_1987);
    let x_1989 : f32 = u_xlat48;
    let x_1990 : f32 = u_xlat70;
    u_xlat48 = (x_1989 * x_1990);
    let x_1992 : f32 = u_xlat27;
    let x_1994 : i32 = u_xlati66;
    let x_1996 : vec4<f32> = x_1923.x_AdditionalLightsColor[x_1994];
    let x_1998 : vec3<f32> = (vec3<f32>(x_1992, x_1992, x_1992) * vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
    let x_1999 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
    let x_2001 : vec3<f32> = u_xlat3;
    let x_2002 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_2001, vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
    let x_2005 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2005, 0.0f, 1.0f);
    let x_2007 : f32 = u_xlat66;
    let x_2008 : f32 = u_xlat48;
    u_xlat66 = (x_2007 * x_2008);
    let x_2010 : f32 = u_xlat66;
    let x_2012 : vec4<f32> = u_xlat11;
    let x_2014 : vec3<f32> = (vec3<f32>(x_2010, x_2010, x_2010) * vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
    let x_2015 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2015.w);
    let x_2017 : vec3<f32> = u_xlat30;
    let x_2018 : f32 = u_xlat69;
    let x_2021 : vec3<f32> = u_xlat4;
    u_xlat30 = ((x_2017 * vec3<f32>(x_2018, x_2018, x_2018)) + x_2021);
    let x_2023 : vec3<f32> = u_xlat30;
    let x_2024 : vec3<f32> = u_xlat30;
    u_xlat66 = dot(x_2023, x_2024);
    let x_2026 : f32 = u_xlat66;
    u_xlat66 = max(x_2026, 1.17549435e-37f);
    let x_2028 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_2028);
    let x_2030 : f32 = u_xlat66;
    let x_2032 : vec3<f32> = u_xlat30;
    u_xlat30 = (vec3<f32>(x_2030, x_2030, x_2030) * x_2032);
    let x_2034 : vec3<f32> = u_xlat3;
    let x_2035 : vec3<f32> = u_xlat30;
    u_xlat66 = dot(x_2034, x_2035);
    let x_2037 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2037, 0.0f, 1.0f);
    let x_2039 : vec4<f32> = u_xlat10;
    let x_2041 : vec3<f32> = u_xlat30;
    u_xlat48 = dot(vec3<f32>(x_2039.x, x_2039.y, x_2039.z), x_2041);
    let x_2043 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2043, 0.0f, 1.0f);
    let x_2045 : f32 = u_xlat66;
    let x_2046 : f32 = u_xlat66;
    u_xlat66 = (x_2045 * x_2046);
    let x_2048 : f32 = u_xlat66;
    let x_2050 : f32 = u_xlat9.x;
    u_xlat66 = ((x_2048 * x_2050) + 1.000010014f);
    let x_2053 : f32 = u_xlat48;
    let x_2054 : f32 = u_xlat48;
    u_xlat48 = (x_2053 * x_2054);
    let x_2056 : f32 = u_xlat66;
    let x_2057 : f32 = u_xlat66;
    u_xlat66 = (x_2056 * x_2057);
    let x_2059 : f32 = u_xlat48;
    u_xlat48 = max(x_2059, 0.100000001f);
    let x_2061 : f32 = u_xlat66;
    let x_2062 : f32 = u_xlat48;
    u_xlat66 = (x_2061 * x_2062);
    let x_2064 : f32 = u_xlat68;
    let x_2065 : f32 = u_xlat66;
    u_xlat66 = (x_2064 * x_2065);
    let x_2067 : f32 = u_xlat67;
    let x_2068 : f32 = u_xlat66;
    u_xlat66 = (x_2067 / x_2068);
    let x_2070 : vec4<f32> = u_xlat0;
    let x_2072 : f32 = u_xlat66;
    let x_2075 : vec3<f32> = u_xlat22;
    u_xlat30 = ((vec3<f32>(x_2070.x, x_2070.y, x_2070.z) * vec3<f32>(x_2072, x_2072, x_2072)) + x_2075);
    let x_2077 : vec3<f32> = u_xlat30;
    let x_2078 : vec4<f32> = u_xlat11;
    let x_2081 : vec4<f32> = u_xlat8;
    let x_2083 : vec3<f32> = ((x_2077 * vec3<f32>(x_2078.x, x_2078.y, x_2078.z)) + vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
    let x_2084 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);

    continuing {
      let x_2086 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2086 + bitcast<u32>(1i));
    }
  }
  let x_2088 : vec3<f32> = u_xlat5;
  let x_2089 : vec3<f32> = u_xlat6;
  let x_2092 : vec4<f32> = u_xlat7;
  let x_2094 : vec3<f32> = ((x_2088 * vec3<f32>(x_2089.x, x_2089.x, x_2089.x)) + vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
  let x_2095 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
  let x_2097 : vec4<f32> = u_xlat8;
  let x_2099 : vec4<f32> = u_xlat0;
  let x_2101 : vec3<f32> = (vec3<f32>(x_2097.x, x_2097.y, x_2097.z) + vec3<f32>(x_2099.x, x_2099.y, x_2099.z));
  let x_2102 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2101.x, x_2101.y, x_2101.z, x_2102.w);
  let x_2106 : vec3<f32> = u_xlat2;
  let x_2108 : vec4<f32> = x_57.x_EmissionColor;
  let x_2111 : vec4<f32> = u_xlat0;
  let x_2113 : vec3<f32> = ((x_2106 * vec3<f32>(x_2108.x, x_2108.y, x_2108.z)) + vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
  let x_2114 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
  let x_2119 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2119 == 1.0f);
  let x_2121 : bool = u_xlatb0;
  if (x_2121) {
    let x_2126 : f32 = u_xlat1.x;
    x_2122 = x_2126;
  } else {
    x_2122 = 1.0f;
  }
  let x_2128 : f32 = x_2122;
  SV_Target0.w = x_2128;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

