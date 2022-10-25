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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_106 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_417 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2048 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlatb65 : bool;
  var x_112 : f32;
  var u_xlatb63 : bool;
  var u_xlat65 : f32;
  var u_xlat4 : vec3<f32>;
  var x_175 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlat48 : f32;
  var u_xlatb69 : bool;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat69 : f32;
  var u_xlatb7 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat28 : f32;
  var txVec5 : vec3<f32>;
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
  var u_xlat72 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat70 : f32;
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
  var u_xlatb28 : bool;
  var u_xlat71 : f32;
  var u_xlatu65 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu67 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati67 : i32;
  var u_xlatb0 : bool;
  var x_2275 : f32;
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
  let x_77 : vec4<f32> = hlslcc_FragCoord;
  let x_81 : f32 = x_44.x_DitheringTextureInvSize;
  let x_83 : vec2<f32> = (vec2<f32>(x_77.x, x_77.y) * vec2<f32>(x_81, x_81));
  let x_84 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_83.x, x_83.y, x_84.z);
  let x_93 : vec3<f32> = u_xlat3;
  let x_96 : f32 = x_44.x_GlobalMipBias.x;
  let x_97 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_93.x, x_93.y), x_96);
  u_xlat63 = x_97.w;
  let x_108 : f32 = x_106.unity_LODFade.x;
  u_xlatb65 = (x_108 >= 0.0f);
  let x_111 : bool = u_xlatb65;
  if (x_111) {
    let x_115 : f32 = u_xlat63;
    x_112 = abs(x_115);
  } else {
    let x_118 : f32 = u_xlat63;
    x_112 = -(abs(x_118));
  }
  let x_121 : f32 = x_112;
  u_xlat63 = x_121;
  let x_122 : f32 = u_xlat63;
  let x_125 : f32 = x_106.unity_LODFade.x;
  u_xlat63 = (-(x_122) + x_125);
  let x_128 : f32 = u_xlat63;
  u_xlatb63 = (x_128 < 0.0f);
  let x_130 : bool = u_xlatb63;
  if (((select(0i, 1i, x_130) * -1i) != 0i)) {
    discard;
  }
  let x_141 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_141 == 0.0f);
  let x_145 : vec3<f32> = vs_TEXCOORD1;
  let x_150 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_145) + x_150);
  let x_153 : vec3<f32> = u_xlat3;
  let x_154 : vec3<f32> = u_xlat3;
  u_xlat65 = dot(x_153, x_154);
  let x_156 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_156);
  let x_158 : f32 = u_xlat65;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_158, x_158, x_158) * x_160);
  let x_165 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_165;
  let x_168 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_168;
  let x_172 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_172;
  let x_174 : bool = u_xlatb63;
  if (x_174) {
    let x_178 : vec3<f32> = u_xlat3;
    x_175 = x_178;
  } else {
    let x_180 : vec3<f32> = u_xlat4;
    x_175 = x_180;
  }
  let x_181 : vec3<f32> = x_175;
  u_xlat3 = x_181;
  let x_183 : vec3<f32> = vs_TEXCOORD2;
  let x_184 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_183, x_184);
  let x_186 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_186);
  let x_188 : f32 = u_xlat63;
  let x_190 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_188, x_188, x_188) * x_190);
  let x_193 : f32 = vs_TEXCOORD1.y;
  let x_195 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_193 * x_195);
  let x_198 : f32 = x_44.unity_MatrixV[0i].z;
  let x_200 : f32 = vs_TEXCOORD1.x;
  let x_202 : f32 = u_xlat63;
  u_xlat63 = ((x_198 * x_200) + x_202);
  let x_205 : f32 = x_44.unity_MatrixV[2i].z;
  let x_207 : f32 = vs_TEXCOORD1.z;
  let x_209 : f32 = u_xlat63;
  u_xlat63 = ((x_205 * x_207) + x_209);
  let x_211 : f32 = u_xlat63;
  let x_214 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_211 + x_214);
  let x_216 : f32 = u_xlat63;
  let x_220 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_216) + -(x_220));
  let x_223 : f32 = u_xlat63;
  u_xlat63 = max(x_223, 0.0f);
  let x_225 : f32 = u_xlat63;
  let x_228 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_225 * x_228);
  let x_237 : vec2<f32> = vs_TEXCOORD8;
  let x_239 : f32 = x_44.x_GlobalMipBias.x;
  let x_240 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_237, x_239);
  u_xlat5 = x_240;
  let x_246 : vec2<f32> = vs_TEXCOORD8;
  let x_248 : f32 = x_44.x_GlobalMipBias.x;
  let x_249 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_246, x_248);
  u_xlat6 = vec3<f32>(x_249.x, x_249.y, x_249.z);
  let x_251 : vec4<f32> = u_xlat5;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_256 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec3<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat5;
  u_xlat65 = dot(x_258, vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_262 : f32 = u_xlat65;
  u_xlat65 = (x_262 + 0.5f);
  let x_265 : f32 = u_xlat65;
  let x_267 : vec3<f32> = u_xlat6;
  let x_268 : vec3<f32> = (vec3<f32>(x_265, x_265, x_265) * x_267);
  let x_269 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : f32 = u_xlat5.w;
  u_xlat65 = max(x_272, 0.0001f);
  let x_275 : vec4<f32> = u_xlat5;
  let x_277 : f32 = u_xlat65;
  let x_279 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) / vec3<f32>(x_277, x_277, x_277));
  let x_280 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_284 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_285 : vec2<f32> = vec2<f32>(x_284.x, x_284.y);
  let x_289 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_285.x, x_285.y));
  let x_290 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_289.x, x_289.y, x_290.z);
  let x_292 : vec3<f32> = u_xlat6;
  let x_294 : vec4<f32> = hlslcc_FragCoord;
  let x_296 : vec2<f32> = (vec2<f32>(x_292.x, x_292.y) * vec2<f32>(x_294.x, x_294.y));
  let x_297 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_296.x, x_296.y, x_297.z);
  let x_300 : f32 = u_xlat6.y;
  let x_303 : f32 = x_44.x_ScaleBiasRt.x;
  let x_306 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat65 = ((x_300 * x_303) + x_306);
  let x_308 : f32 = u_xlat65;
  u_xlat6.z = (-(x_308) + 1.0f);
  let x_313 : f32 = x_57.x_Metallic;
  u_xlat65 = ((-(x_313) * 0.959999979f) + 0.959999979f);
  let x_319 : f32 = u_xlat65;
  let x_322 : f32 = x_57.x_Smoothness;
  u_xlat66 = (-(x_319) + x_322);
  let x_325 : vec4<f32> = u_xlat1;
  let x_327 : f32 = u_xlat65;
  u_xlat22 = (vec3<f32>(x_325.y, x_325.z, x_325.w) * vec3<f32>(x_327, x_327, x_327));
  let x_330 : vec4<f32> = u_xlat0;
  let x_333 : vec4<f32> = x_57.x_BaseColor;
  let x_338 : vec3<f32> = ((vec3<f32>(x_330.x, x_330.y, x_330.z) * vec3<f32>(x_333.x, x_333.y, x_333.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_339 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_342 : f32 = x_57.x_Metallic;
  let x_344 : f32 = x_57.x_Metallic;
  let x_346 : f32 = x_57.x_Metallic;
  let x_347 : vec3<f32> = vec3<f32>(x_342, x_344, x_346);
  let x_352 : vec4<f32> = u_xlat0;
  let x_357 : vec3<f32> = ((vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_352.x, x_352.y, x_352.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_358 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_361) + 1.0f);
  let x_365 : f32 = u_xlat65;
  let x_366 : f32 = u_xlat65;
  u_xlat67 = (x_365 * x_366);
  let x_368 : f32 = u_xlat67;
  u_xlat67 = max(x_368, 0.0078125f);
  let x_372 : f32 = u_xlat67;
  let x_373 : f32 = u_xlat67;
  u_xlat68 = (x_372 * x_373);
  let x_375 : f32 = u_xlat66;
  u_xlat66 = (x_375 + 1.0f);
  let x_377 : f32 = u_xlat66;
  u_xlat66 = clamp(x_377, 0.0f, 1.0f);
  let x_380 : f32 = u_xlat67;
  u_xlat27 = ((x_380 * 4.0f) + 2.0f);
  let x_390 : vec3<f32> = u_xlat6;
  let x_393 : f32 = x_44.x_GlobalMipBias.x;
  let x_394 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_390.x, x_390.z), x_393);
  u_xlat6.x = x_394.x;
  let x_399 : f32 = u_xlat6.x;
  u_xlat48 = (x_399 + -1.0f);
  let x_404 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_405 : f32 = u_xlat48;
  u_xlat48 = ((x_404 * x_405) + 1.0f);
  let x_409 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_409, 1.0f);
  let x_419 : f32 = x_417.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_419);
  let x_421 : bool = u_xlatb69;
  if (x_421) {
    let x_425 : f32 = x_417.x_MainLightShadowParams.y;
    u_xlatb69 = (x_425 == 1.0f);
    let x_427 : bool = u_xlatb69;
    if (x_427) {
      let x_432 : vec4<f32> = vs_TEXCOORD6;
      let x_435 : vec4<f32> = x_417.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_432.x, x_432.y, x_432.x, x_432.y) + x_435);
      let x_438 : vec4<f32> = u_xlat7;
      let x_439 : vec2<f32> = vec2<f32>(x_438.x, x_438.y);
      let x_441 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_439.x, x_439.y, x_441);
      let x_454 : vec3<f32> = txVec0;
      let x_456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_454.xy, x_454.z);
      u_xlat8.x = x_456;
      let x_459 : vec4<f32> = u_xlat7;
      let x_460 : vec2<f32> = vec2<f32>(x_459.z, x_459.w);
      let x_462 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_460.x, x_460.y, x_462);
      let x_469 : vec3<f32> = txVec1;
      let x_471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_469.xy, x_469.z);
      u_xlat8.y = x_471;
      let x_473 : vec4<f32> = vs_TEXCOORD6;
      let x_476 : vec4<f32> = x_417.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_473.x, x_473.y, x_473.x, x_473.y) + x_476);
      let x_479 : vec4<f32> = u_xlat7;
      let x_480 : vec2<f32> = vec2<f32>(x_479.x, x_479.y);
      let x_482 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_480.x, x_480.y, x_482);
      let x_489 : vec3<f32> = txVec2;
      let x_491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_489.xy, x_489.z);
      u_xlat8.z = x_491;
      let x_494 : vec4<f32> = u_xlat7;
      let x_495 : vec2<f32> = vec2<f32>(x_494.z, x_494.w);
      let x_497 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_495.x, x_495.y, x_497);
      let x_504 : vec3<f32> = txVec3;
      let x_506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_504.xy, x_504.z);
      u_xlat8.w = x_506;
      let x_509 : vec4<f32> = u_xlat8;
      u_xlat69 = dot(x_509, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_516 : f32 = x_417.x_MainLightShadowParams.y;
      u_xlatb7 = (x_516 == 2.0f);
      let x_518 : bool = u_xlatb7;
      if (x_518) {
        let x_521 : vec4<f32> = vs_TEXCOORD6;
        let x_524 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_528 : vec2<f32> = ((vec2<f32>(x_521.x, x_521.y) * vec2<f32>(x_524.z, x_524.w)) + vec2<f32>(0.5f, 0.5f));
        let x_529 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_531 : vec4<f32> = u_xlat7;
        let x_533 : vec2<f32> = floor(vec2<f32>(x_531.x, x_531.y));
        let x_534 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
        let x_538 : vec4<f32> = vs_TEXCOORD6;
        let x_541 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_544 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_538.x, x_538.y) * vec2<f32>(x_541.z, x_541.w)) + -(vec2<f32>(x_544.x, x_544.y)));
        let x_548 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_548.x, x_548.x, x_548.y, x_548.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_553 : vec4<f32> = u_xlat8;
        let x_555 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_553.x, x_553.x, x_553.z, x_553.z) * vec4<f32>(x_555.x, x_555.x, x_555.z, x_555.z));
        let x_558 : vec4<f32> = u_xlat9;
        let x_562 : vec2<f32> = (vec2<f32>(x_558.y, x_558.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_563 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_562.x, x_563.y, x_562.y, x_563.w);
        let x_565 : vec4<f32> = u_xlat9;
        let x_568 : vec2<f32> = u_xlat49;
        let x_570 : vec2<f32> = ((vec2<f32>(x_565.x, x_565.z) * vec2<f32>(0.5f, 0.5f)) + -(x_568));
        let x_571 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
        let x_574 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_574) + vec2<f32>(1.0f, 1.0f));
        let x_578 : vec2<f32> = u_xlat49;
        let x_580 : vec2<f32> = min(x_578, vec2<f32>(0.0f, 0.0f));
        let x_581 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat10;
        let x_586 : vec4<f32> = u_xlat10;
        let x_589 : vec2<f32> = u_xlat51;
        let x_590 : vec2<f32> = ((-(vec2<f32>(x_583.x, x_583.y)) * vec2<f32>(x_586.x, x_586.y)) + x_589);
        let x_591 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
        let x_593 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_593, vec2<f32>(0.0f, 0.0f));
        let x_595 : vec2<f32> = u_xlat49;
        let x_597 : vec2<f32> = u_xlat49;
        let x_599 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_595) * x_597) + vec2<f32>(x_599.y, x_599.w));
        let x_602 : vec4<f32> = u_xlat10;
        let x_604 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) + vec2<f32>(1.0f, 1.0f));
        let x_605 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_605.w);
        let x_607 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_607 + vec2<f32>(1.0f, 1.0f));
        let x_610 : vec4<f32> = u_xlat9;
        let x_614 : vec2<f32> = (vec2<f32>(x_610.x, x_610.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_615 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_617 : vec2<f32> = u_xlat51;
        let x_618 : vec2<f32> = (x_617 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_619 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_621 : vec4<f32> = u_xlat10;
        let x_623 : vec2<f32> = (vec2<f32>(x_621.x, x_621.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_624 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_627 : vec2<f32> = u_xlat49;
        let x_628 : vec2<f32> = (x_627 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_629 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
        let x_631 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_631.y, x_631.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_635 : f32 = u_xlat10.x;
        u_xlat11.z = x_635;
        let x_638 : f32 = u_xlat49.x;
        u_xlat11.w = x_638;
        let x_641 : f32 = u_xlat12.x;
        u_xlat9.z = x_641;
        let x_644 : f32 = u_xlat8.x;
        u_xlat9.w = x_644;
        let x_647 : vec4<f32> = u_xlat9;
        let x_649 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_647.z, x_647.w, x_647.x, x_647.z) + vec4<f32>(x_649.z, x_649.w, x_649.x, x_649.z));
        let x_653 : f32 = u_xlat11.y;
        u_xlat10.z = x_653;
        let x_656 : f32 = u_xlat49.y;
        u_xlat10.w = x_656;
        let x_659 : f32 = u_xlat9.y;
        u_xlat12.z = x_659;
        let x_662 : f32 = u_xlat8.z;
        u_xlat12.w = x_662;
        let x_664 : vec4<f32> = u_xlat10;
        let x_666 : vec4<f32> = u_xlat12;
        let x_668 : vec3<f32> = (vec3<f32>(x_664.z, x_664.y, x_664.w) + vec3<f32>(x_666.z, x_666.y, x_666.w));
        let x_669 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat9;
        let x_673 : vec4<f32> = u_xlat13;
        let x_675 : vec3<f32> = (vec3<f32>(x_671.x, x_671.z, x_671.w) / vec3<f32>(x_673.z, x_673.w, x_673.y));
        let x_676 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat9;
        let x_683 : vec3<f32> = (vec3<f32>(x_678.x, x_678.y, x_678.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_684 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
        let x_686 : vec4<f32> = u_xlat12;
        let x_688 : vec4<f32> = u_xlat8;
        let x_690 : vec3<f32> = (vec3<f32>(x_686.z, x_686.y, x_686.w) / vec3<f32>(x_688.x, x_688.y, x_688.z));
        let x_691 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
        let x_693 : vec4<f32> = u_xlat10;
        let x_695 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_696 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
        let x_698 : vec4<f32> = u_xlat9;
        let x_701 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_703 : vec3<f32> = (vec3<f32>(x_698.y, x_698.x, x_698.z) * vec3<f32>(x_701.x, x_701.x, x_701.x));
        let x_704 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
        let x_706 : vec4<f32> = u_xlat10;
        let x_709 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_711 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(x_709.y, x_709.y, x_709.y));
        let x_712 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
        let x_715 : f32 = u_xlat10.x;
        u_xlat9.w = x_715;
        let x_717 : vec4<f32> = u_xlat7;
        let x_720 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_723 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_717.x, x_717.y, x_717.x, x_717.y) * vec4<f32>(x_720.x, x_720.y, x_720.x, x_720.y)) + vec4<f32>(x_723.y, x_723.w, x_723.x, x_723.w));
        let x_726 : vec4<f32> = u_xlat7;
        let x_729 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_732 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_726.x, x_726.y) * vec2<f32>(x_729.x, x_729.y)) + vec2<f32>(x_732.z, x_732.w));
        let x_736 : f32 = u_xlat9.y;
        u_xlat10.w = x_736;
        let x_738 : vec4<f32> = u_xlat10;
        let x_739 : vec2<f32> = vec2<f32>(x_738.y, x_738.z);
        let x_740 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_740.x, x_739.x, x_740.z, x_739.y);
        let x_742 : vec4<f32> = u_xlat7;
        let x_745 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_748 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y) * vec4<f32>(x_745.x, x_745.y, x_745.x, x_745.y)) + vec4<f32>(x_748.x, x_748.y, x_748.z, x_748.y));
        let x_751 : vec4<f32> = u_xlat7;
        let x_754 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_757 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_751.x, x_751.y, x_751.x, x_751.y) * vec4<f32>(x_754.x, x_754.y, x_754.x, x_754.y)) + vec4<f32>(x_757.w, x_757.y, x_757.w, x_757.z));
        let x_760 : vec4<f32> = u_xlat7;
        let x_763 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_766 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_760.x, x_760.y, x_760.x, x_760.y) * vec4<f32>(x_763.x, x_763.y, x_763.x, x_763.y)) + vec4<f32>(x_766.x, x_766.w, x_766.z, x_766.w));
        let x_770 : vec4<f32> = u_xlat8;
        let x_772 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_770.x, x_770.x, x_770.x, x_770.y) * vec4<f32>(x_772.z, x_772.w, x_772.y, x_772.z));
        let x_776 : vec4<f32> = u_xlat8;
        let x_778 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_776.y, x_776.y, x_776.z, x_776.z) * x_778);
        let x_781 : f32 = u_xlat8.z;
        let x_783 : f32 = u_xlat13.y;
        u_xlat7.x = (x_781 * x_783);
        let x_787 : vec4<f32> = u_xlat11;
        let x_788 : vec2<f32> = vec2<f32>(x_787.x, x_787.y);
        let x_790 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_788.x, x_788.y, x_790);
        let x_798 : vec3<f32> = txVec4;
        let x_800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_798.xy, x_798.z);
        u_xlat28 = x_800;
        let x_802 : vec4<f32> = u_xlat11;
        let x_803 : vec2<f32> = vec2<f32>(x_802.z, x_802.w);
        let x_805 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_803.x, x_803.y, x_805);
        let x_812 : vec3<f32> = txVec5;
        let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_812.xy, x_812.z);
        u_xlat8.x = x_814;
        let x_817 : f32 = u_xlat8.x;
        let x_819 : f32 = u_xlat14.y;
        u_xlat8.x = (x_817 * x_819);
        let x_823 : f32 = u_xlat14.x;
        let x_824 : f32 = u_xlat28;
        let x_827 : f32 = u_xlat8.x;
        u_xlat28 = ((x_823 * x_824) + x_827);
        let x_830 : vec2<f32> = u_xlat49;
        let x_832 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_830.x, x_830.y, x_832);
        let x_839 : vec3<f32> = txVec6;
        let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_839.xy, x_839.z);
        u_xlat49.x = x_841;
        let x_844 : f32 = u_xlat14.z;
        let x_846 : f32 = u_xlat49.x;
        let x_848 : f32 = u_xlat28;
        u_xlat28 = ((x_844 * x_846) + x_848);
        let x_851 : vec4<f32> = u_xlat10;
        let x_852 : vec2<f32> = vec2<f32>(x_851.x, x_851.y);
        let x_854 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_852.x, x_852.y, x_854);
        let x_861 : vec3<f32> = txVec7;
        let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_861.xy, x_861.z);
        u_xlat49.x = x_863;
        let x_866 : f32 = u_xlat14.w;
        let x_868 : f32 = u_xlat49.x;
        let x_870 : f32 = u_xlat28;
        u_xlat28 = ((x_866 * x_868) + x_870);
        let x_873 : vec4<f32> = u_xlat12;
        let x_874 : vec2<f32> = vec2<f32>(x_873.x, x_873.y);
        let x_876 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_874.x, x_874.y, x_876);
        let x_883 : vec3<f32> = txVec8;
        let x_885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_883.xy, x_883.z);
        u_xlat49.x = x_885;
        let x_888 : f32 = u_xlat15.x;
        let x_890 : f32 = u_xlat49.x;
        let x_892 : f32 = u_xlat28;
        u_xlat28 = ((x_888 * x_890) + x_892);
        let x_895 : vec4<f32> = u_xlat12;
        let x_896 : vec2<f32> = vec2<f32>(x_895.z, x_895.w);
        let x_898 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_896.x, x_896.y, x_898);
        let x_905 : vec3<f32> = txVec9;
        let x_907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_905.xy, x_905.z);
        u_xlat49.x = x_907;
        let x_910 : f32 = u_xlat15.y;
        let x_912 : f32 = u_xlat49.x;
        let x_914 : f32 = u_xlat28;
        u_xlat28 = ((x_910 * x_912) + x_914);
        let x_917 : vec4<f32> = u_xlat10;
        let x_918 : vec2<f32> = vec2<f32>(x_917.z, x_917.w);
        let x_920 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_918.x, x_918.y, x_920);
        let x_927 : vec3<f32> = txVec10;
        let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_927.xy, x_927.z);
        u_xlat49.x = x_929;
        let x_932 : f32 = u_xlat15.z;
        let x_934 : f32 = u_xlat49.x;
        let x_936 : f32 = u_xlat28;
        u_xlat28 = ((x_932 * x_934) + x_936);
        let x_939 : vec4<f32> = u_xlat9;
        let x_940 : vec2<f32> = vec2<f32>(x_939.x, x_939.y);
        let x_942 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_940.x, x_940.y, x_942);
        let x_949 : vec3<f32> = txVec11;
        let x_951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_949.xy, x_949.z);
        u_xlat49.x = x_951;
        let x_954 : f32 = u_xlat15.w;
        let x_956 : f32 = u_xlat49.x;
        let x_958 : f32 = u_xlat28;
        u_xlat28 = ((x_954 * x_956) + x_958);
        let x_961 : vec4<f32> = u_xlat9;
        let x_962 : vec2<f32> = vec2<f32>(x_961.z, x_961.w);
        let x_964 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_962.x, x_962.y, x_964);
        let x_971 : vec3<f32> = txVec12;
        let x_973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_971.xy, x_971.z);
        u_xlat49.x = x_973;
        let x_976 : f32 = u_xlat7.x;
        let x_978 : f32 = u_xlat49.x;
        let x_980 : f32 = u_xlat28;
        u_xlat69 = ((x_976 * x_978) + x_980);
      } else {
        let x_983 : vec4<f32> = vs_TEXCOORD6;
        let x_986 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_989 : vec2<f32> = ((vec2<f32>(x_983.x, x_983.y) * vec2<f32>(x_986.z, x_986.w)) + vec2<f32>(0.5f, 0.5f));
        let x_990 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec4<f32> = u_xlat7;
        let x_994 : vec2<f32> = floor(vec2<f32>(x_992.x, x_992.y));
        let x_995 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_997 : vec4<f32> = vs_TEXCOORD6;
        let x_1000 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1003 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_997.x, x_997.y) * vec2<f32>(x_1000.z, x_1000.w)) + -(vec2<f32>(x_1003.x, x_1003.y)));
        let x_1007 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1007.x, x_1007.x, x_1007.y, x_1007.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1012 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1010.x, x_1010.x, x_1010.z, x_1010.z) * vec4<f32>(x_1012.x, x_1012.x, x_1012.z, x_1012.z));
        let x_1015 : vec4<f32> = u_xlat9;
        let x_1019 : vec2<f32> = (vec2<f32>(x_1015.y, x_1015.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1020 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1020.x, x_1019.x, x_1020.z, x_1019.y);
        let x_1022 : vec4<f32> = u_xlat9;
        let x_1025 : vec2<f32> = u_xlat49;
        let x_1027 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1025));
        let x_1028 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1027.x, x_1028.y, x_1027.y, x_1028.w);
        let x_1030 : vec2<f32> = u_xlat49;
        let x_1032 : vec2<f32> = (-(x_1030) + vec2<f32>(1.0f, 1.0f));
        let x_1033 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1032.x, x_1032.y, x_1033.z, x_1033.w);
        let x_1035 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1035, vec2<f32>(0.0f, 0.0f));
        let x_1037 : vec2<f32> = u_xlat51;
        let x_1039 : vec2<f32> = u_xlat51;
        let x_1041 : vec4<f32> = u_xlat9;
        let x_1043 : vec2<f32> = ((-(x_1037) * x_1039) + vec2<f32>(x_1041.x, x_1041.y));
        let x_1044 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1046 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1046, vec2<f32>(0.0f, 0.0f));
        let x_1049 : vec2<f32> = u_xlat51;
        let x_1051 : vec2<f32> = u_xlat51;
        let x_1053 : vec4<f32> = u_xlat8;
        let x_1055 : vec2<f32> = ((-(x_1049) * x_1051) + vec2<f32>(x_1053.y, x_1053.w));
        let x_1056 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1055.x, x_1056.y, x_1055.y);
        let x_1058 : vec4<f32> = u_xlat9;
        let x_1061 : vec2<f32> = (vec2<f32>(x_1058.x, x_1058.y) + vec2<f32>(2.0f, 2.0f));
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1064 : vec3<f32> = u_xlat29;
        let x_1066 : vec2<f32> = (vec2<f32>(x_1064.x, x_1064.z) + vec2<f32>(2.0f, 2.0f));
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1067.x, x_1066.x, x_1067.z, x_1066.y);
        let x_1070 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1070 * 0.081632003f);
        let x_1074 : vec4<f32> = u_xlat8;
        let x_1077 : vec3<f32> = (vec3<f32>(x_1074.z, x_1074.x, x_1074.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1078 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
        let x_1080 : vec4<f32> = u_xlat9;
        let x_1083 : vec2<f32> = (vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1084 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1083.x, x_1083.y, x_1084.z, x_1084.w);
        let x_1087 : f32 = u_xlat12.y;
        u_xlat11.x = x_1087;
        let x_1089 : vec2<f32> = u_xlat49;
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1089.x, x_1089.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1097 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1097.x, x_1096.x, x_1097.z, x_1096.y);
        let x_1099 : vec2<f32> = u_xlat49;
        let x_1103 : vec2<f32> = ((vec2<f32>(x_1099.x, x_1099.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1104 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1107 : f32 = u_xlat8.x;
        u_xlat9.y = x_1107;
        let x_1110 : f32 = u_xlat10.y;
        u_xlat9.w = x_1110;
        let x_1112 : vec4<f32> = u_xlat9;
        let x_1113 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1112 + x_1113);
        let x_1115 : vec2<f32> = u_xlat49;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1115.y, x_1115.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1119 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1119.x, x_1118.x, x_1119.z, x_1118.y);
        let x_1121 : vec2<f32> = u_xlat49;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1121.y, x_1121.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1125 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1124.x, x_1125.y, x_1124.y, x_1125.w);
        let x_1128 : f32 = u_xlat8.y;
        u_xlat10.y = x_1128;
        let x_1130 : vec4<f32> = u_xlat10;
        let x_1131 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1130 + x_1131);
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1134 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1133 / x_1134);
        let x_1136 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1136 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1142 : vec4<f32> = u_xlat10;
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1142 / x_1143);
        let x_1145 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1145 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1147 : vec4<f32> = u_xlat9;
        let x_1150 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1147.w, x_1147.x, x_1147.y, x_1147.z) * vec4<f32>(x_1150.x, x_1150.x, x_1150.x, x_1150.x));
        let x_1153 : vec4<f32> = u_xlat10;
        let x_1156 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1153.x, x_1153.w, x_1153.y, x_1153.z) * vec4<f32>(x_1156.y, x_1156.y, x_1156.y, x_1156.y));
        let x_1159 : vec4<f32> = u_xlat9;
        let x_1160 : vec3<f32> = vec3<f32>(x_1159.y, x_1159.z, x_1159.w);
        let x_1161 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1160.x, x_1161.y, x_1160.y, x_1160.z);
        let x_1164 : f32 = u_xlat10.x;
        u_xlat12.y = x_1164;
        let x_1166 : vec4<f32> = u_xlat7;
        let x_1169 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1172 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1166.x, x_1166.y, x_1166.x, x_1166.y) * vec4<f32>(x_1169.x, x_1169.y, x_1169.x, x_1169.y)) + vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1172.y));
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1178 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1181 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1175.x, x_1175.y) * vec2<f32>(x_1178.x, x_1178.y)) + vec2<f32>(x_1181.w, x_1181.y));
        let x_1185 : f32 = u_xlat12.y;
        u_xlat9.y = x_1185;
        let x_1188 : f32 = u_xlat10.z;
        u_xlat12.y = x_1188;
        let x_1190 : vec4<f32> = u_xlat7;
        let x_1193 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y) * vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y)) + vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1196.y));
        let x_1199 : vec4<f32> = u_xlat7;
        let x_1202 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1205 : vec4<f32> = u_xlat12;
        let x_1207 : vec2<f32> = ((vec2<f32>(x_1199.x, x_1199.y) * vec2<f32>(x_1202.x, x_1202.y)) + vec2<f32>(x_1205.w, x_1205.y));
        let x_1208 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1207.x, x_1207.y, x_1208.z, x_1208.w);
        let x_1211 : f32 = u_xlat12.y;
        u_xlat9.z = x_1211;
        let x_1214 : vec4<f32> = u_xlat7;
        let x_1217 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y) * vec4<f32>(x_1217.x, x_1217.y, x_1217.x, x_1217.y)) + vec4<f32>(x_1220.x, x_1220.y, x_1220.x, x_1220.z));
        let x_1224 : f32 = u_xlat10.w;
        u_xlat12.y = x_1224;
        let x_1227 : vec4<f32> = u_xlat7;
        let x_1230 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1233 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y) * vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y)) + vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1233.y));
        let x_1237 : vec4<f32> = u_xlat7;
        let x_1240 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat12;
        let x_1245 : vec2<f32> = ((vec2<f32>(x_1237.x, x_1237.y) * vec2<f32>(x_1240.x, x_1240.y)) + vec2<f32>(x_1243.w, x_1243.y));
        let x_1246 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1245.x, x_1245.y, x_1246.z);
        let x_1249 : f32 = u_xlat12.y;
        u_xlat9.w = x_1249;
        let x_1252 : vec4<f32> = u_xlat7;
        let x_1255 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1255.x, x_1255.y)) + vec2<f32>(x_1258.x, x_1258.w));
        let x_1261 : vec4<f32> = u_xlat12;
        let x_1262 : vec3<f32> = vec3<f32>(x_1261.x, x_1261.z, x_1261.w);
        let x_1263 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1262.x, x_1263.y, x_1262.y, x_1262.z);
        let x_1265 : vec4<f32> = u_xlat7;
        let x_1268 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y) * vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y)) + vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1271.y));
        let x_1275 : vec4<f32> = u_xlat7;
        let x_1278 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1281.w, x_1281.y));
        let x_1285 : f32 = u_xlat9.x;
        u_xlat10.x = x_1285;
        let x_1287 : vec4<f32> = u_xlat7;
        let x_1290 : vec4<f32> = x_417.x_MainLightShadowmapSize;
        let x_1293 : vec4<f32> = u_xlat10;
        let x_1295 : vec2<f32> = ((vec2<f32>(x_1287.x, x_1287.y) * vec2<f32>(x_1290.x, x_1290.y)) + vec2<f32>(x_1293.x, x_1293.y));
        let x_1296 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1295.x, x_1295.y, x_1296.z, x_1296.w);
        let x_1299 : vec4<f32> = u_xlat8;
        let x_1301 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1299.x, x_1299.x, x_1299.x, x_1299.x) * x_1301);
        let x_1304 : vec4<f32> = u_xlat8;
        let x_1306 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1304.y, x_1304.y, x_1304.y, x_1304.y) * x_1306);
        let x_1309 : vec4<f32> = u_xlat8;
        let x_1311 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1309.z, x_1309.z, x_1309.z, x_1309.z) * x_1311);
        let x_1313 : vec4<f32> = u_xlat8;
        let x_1315 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1313.w, x_1313.w, x_1313.w, x_1313.w) * x_1315);
        let x_1318 : vec4<f32> = u_xlat13;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.x, x_1318.y);
        let x_1321 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1319.x, x_1319.y, x_1321);
        let x_1328 : vec3<f32> = txVec13;
        let x_1330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1328.xy, x_1328.z);
        u_xlat9.x = x_1330;
        let x_1333 : vec4<f32> = u_xlat13;
        let x_1334 : vec2<f32> = vec2<f32>(x_1333.z, x_1333.w);
        let x_1336 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1344 : vec3<f32> = txVec14;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1344.xy, x_1344.z);
        u_xlat72 = x_1346;
        let x_1347 : f32 = u_xlat72;
        let x_1349 : f32 = u_xlat18.y;
        u_xlat72 = (x_1347 * x_1349);
        let x_1352 : f32 = u_xlat18.x;
        let x_1354 : f32 = u_xlat9.x;
        let x_1356 : f32 = u_xlat72;
        u_xlat9.x = ((x_1352 * x_1354) + x_1356);
        let x_1360 : vec2<f32> = u_xlat49;
        let x_1362 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
        let x_1369 : vec3<f32> = txVec15;
        let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1369.xy, x_1369.z);
        u_xlat49.x = x_1371;
        let x_1374 : f32 = u_xlat18.z;
        let x_1376 : f32 = u_xlat49.x;
        let x_1379 : f32 = u_xlat9.x;
        u_xlat49.x = ((x_1374 * x_1376) + x_1379);
        let x_1383 : vec4<f32> = u_xlat16;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.x, x_1383.y);
        let x_1386 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1394 : vec3<f32> = txVec16;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1394.xy, x_1394.z);
        u_xlat70 = x_1396;
        let x_1398 : f32 = u_xlat18.w;
        let x_1399 : f32 = u_xlat70;
        let x_1402 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1398 * x_1399) + x_1402);
        let x_1406 : vec4<f32> = u_xlat14;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.x, x_1406.y);
        let x_1409 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec17;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1416.xy, x_1416.z);
        u_xlat70 = x_1418;
        let x_1420 : f32 = u_xlat19.x;
        let x_1421 : f32 = u_xlat70;
        let x_1424 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1420 * x_1421) + x_1424);
        let x_1428 : vec4<f32> = u_xlat14;
        let x_1429 : vec2<f32> = vec2<f32>(x_1428.z, x_1428.w);
        let x_1431 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec18;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1438.xy, x_1438.z);
        u_xlat70 = x_1440;
        let x_1442 : f32 = u_xlat19.y;
        let x_1443 : f32 = u_xlat70;
        let x_1446 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1442 * x_1443) + x_1446);
        let x_1450 : vec4<f32> = u_xlat15;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
        let x_1453 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec19;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat70 = x_1462;
        let x_1464 : f32 = u_xlat19.z;
        let x_1465 : f32 = u_xlat70;
        let x_1468 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1464 * x_1465) + x_1468);
        let x_1472 : vec4<f32> = u_xlat16;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.z, x_1472.w);
        let x_1475 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec20;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat70 = x_1484;
        let x_1486 : f32 = u_xlat19.w;
        let x_1487 : f32 = u_xlat70;
        let x_1490 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1486 * x_1487) + x_1490);
        let x_1494 : vec4<f32> = u_xlat17;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.x, x_1494.y);
        let x_1497 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec21;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat70 = x_1506;
        let x_1508 : f32 = u_xlat20.x;
        let x_1509 : f32 = u_xlat70;
        let x_1512 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1508 * x_1509) + x_1512);
        let x_1516 : vec4<f32> = u_xlat17;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.z, x_1516.w);
        let x_1519 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec22;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat70 = x_1528;
        let x_1530 : f32 = u_xlat20.y;
        let x_1531 : f32 = u_xlat70;
        let x_1534 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1530 * x_1531) + x_1534);
        let x_1538 : vec3<f32> = u_xlat30;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.x, x_1538.y);
        let x_1541 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec23;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1548.xy, x_1548.z);
        u_xlat70 = x_1550;
        let x_1552 : f32 = u_xlat20.z;
        let x_1553 : f32 = u_xlat70;
        let x_1556 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1552 * x_1553) + x_1556);
        let x_1560 : vec2<f32> = u_xlat57;
        let x_1562 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1560.x, x_1560.y, x_1562);
        let x_1569 : vec3<f32> = txVec24;
        let x_1571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1569.xy, x_1569.z);
        u_xlat70 = x_1571;
        let x_1573 : f32 = u_xlat20.w;
        let x_1574 : f32 = u_xlat70;
        let x_1577 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1573 * x_1574) + x_1577);
        let x_1581 : vec4<f32> = u_xlat12;
        let x_1582 : vec2<f32> = vec2<f32>(x_1581.x, x_1581.y);
        let x_1584 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
        let x_1591 : vec3<f32> = txVec25;
        let x_1593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1591.xy, x_1591.z);
        u_xlat70 = x_1593;
        let x_1595 : f32 = u_xlat8.x;
        let x_1596 : f32 = u_xlat70;
        let x_1599 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1595 * x_1596) + x_1599);
        let x_1603 : vec4<f32> = u_xlat12;
        let x_1604 : vec2<f32> = vec2<f32>(x_1603.z, x_1603.w);
        let x_1606 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec26;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1613.xy, x_1613.z);
        u_xlat70 = x_1615;
        let x_1617 : f32 = u_xlat8.y;
        let x_1618 : f32 = u_xlat70;
        let x_1621 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1617 * x_1618) + x_1621);
        let x_1625 : vec2<f32> = u_xlat52;
        let x_1627 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1625.x, x_1625.y, x_1627);
        let x_1634 : vec3<f32> = txVec27;
        let x_1636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1634.xy, x_1634.z);
        u_xlat70 = x_1636;
        let x_1638 : f32 = u_xlat8.z;
        let x_1639 : f32 = u_xlat70;
        let x_1642 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1638 * x_1639) + x_1642);
        let x_1646 : vec4<f32> = u_xlat7;
        let x_1647 : vec2<f32> = vec2<f32>(x_1646.x, x_1646.y);
        let x_1649 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec28;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1656.xy, x_1656.z);
        u_xlat7.x = x_1658;
        let x_1661 : f32 = u_xlat8.w;
        let x_1663 : f32 = u_xlat7.x;
        let x_1666 : f32 = u_xlat49.x;
        u_xlat69 = ((x_1661 * x_1663) + x_1666);
      }
    }
  } else {
    let x_1670 : vec4<f32> = vs_TEXCOORD6;
    let x_1671 : vec2<f32> = vec2<f32>(x_1670.x, x_1670.y);
    let x_1673 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
    let x_1680 : vec3<f32> = txVec29;
    let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1680.xy, x_1680.z);
    u_xlat69 = x_1682;
  }
  let x_1684 : f32 = x_417.x_MainLightShadowParams.x;
  u_xlat7.x = (-(x_1684) + 1.0f);
  let x_1688 : f32 = u_xlat69;
  let x_1690 : f32 = x_417.x_MainLightShadowParams.x;
  let x_1693 : f32 = u_xlat7.x;
  u_xlat69 = ((x_1688 * x_1690) + x_1693);
  let x_1696 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (0.0f >= x_1696);
  let x_1700 : f32 = vs_TEXCOORD6.z;
  u_xlatb28 = (x_1700 >= 1.0f);
  let x_1702 : bool = u_xlatb28;
  let x_1703 : bool = u_xlatb7;
  u_xlatb7 = (x_1702 | x_1703);
  let x_1705 : bool = u_xlatb7;
  let x_1706 : f32 = u_xlat69;
  u_xlat69 = select(x_1706, 1.0f, x_1705);
  let x_1708 : vec3<f32> = vs_TEXCOORD1;
  let x_1710 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1712 : vec3<f32> = (x_1708 + -(x_1710));
  let x_1713 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
  let x_1715 : vec4<f32> = u_xlat7;
  let x_1717 : vec4<f32> = u_xlat7;
  u_xlat7.x = dot(vec3<f32>(x_1715.x, x_1715.y, x_1715.z), vec3<f32>(x_1717.x, x_1717.y, x_1717.z));
  let x_1722 : f32 = u_xlat7.x;
  let x_1724 : f32 = x_417.x_MainLightShadowParams.z;
  let x_1727 : f32 = x_417.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_1722 * x_1724) + x_1727);
  let x_1731 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1731, 0.0f, 1.0f);
  let x_1734 : f32 = u_xlat69;
  u_xlat28 = (-(x_1734) + 1.0f);
  let x_1738 : f32 = u_xlat7.x;
  let x_1739 : f32 = u_xlat28;
  let x_1741 : f32 = u_xlat69;
  u_xlat69 = ((x_1738 * x_1739) + x_1741);
  let x_1743 : f32 = u_xlat48;
  let x_1746 : vec4<f32> = x_44.x_MainLightColor;
  let x_1748 : vec3<f32> = (vec3<f32>(x_1743, x_1743, x_1743) * vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
  let x_1749 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
  let x_1751 : vec3<f32> = u_xlat3;
  let x_1753 : vec3<f32> = u_xlat4;
  u_xlat70 = dot(-(x_1751), x_1753);
  let x_1755 : f32 = u_xlat70;
  let x_1756 : f32 = u_xlat70;
  u_xlat70 = (x_1755 + x_1756);
  let x_1758 : vec3<f32> = u_xlat4;
  let x_1759 : f32 = u_xlat70;
  let x_1763 : vec3<f32> = u_xlat3;
  let x_1765 : vec3<f32> = ((x_1758 * -(vec3<f32>(x_1759, x_1759, x_1759))) + -(x_1763));
  let x_1766 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1768 : vec3<f32> = u_xlat4;
  let x_1769 : vec3<f32> = u_xlat3;
  u_xlat70 = dot(x_1768, x_1769);
  let x_1771 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1771, 0.0f, 1.0f);
  let x_1773 : f32 = u_xlat70;
  u_xlat70 = (-(x_1773) + 1.0f);
  let x_1776 : f32 = u_xlat70;
  let x_1777 : f32 = u_xlat70;
  u_xlat70 = (x_1776 * x_1777);
  let x_1779 : f32 = u_xlat70;
  let x_1780 : f32 = u_xlat70;
  u_xlat70 = (x_1779 * x_1780);
  let x_1783 : f32 = u_xlat65;
  u_xlat71 = ((-(x_1783) * 0.699999988f) + 1.700000048f);
  let x_1789 : f32 = u_xlat65;
  let x_1790 : f32 = u_xlat71;
  u_xlat65 = (x_1789 * x_1790);
  let x_1792 : f32 = u_xlat65;
  u_xlat65 = (x_1792 * 6.0f);
  let x_1803 : vec4<f32> = u_xlat8;
  let x_1805 : f32 = u_xlat65;
  let x_1806 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1803.x, x_1803.y, x_1803.z), x_1805);
  u_xlat8 = x_1806;
  let x_1808 : f32 = u_xlat8.w;
  u_xlat65 = (x_1808 + -1.0f);
  let x_1811 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_1812 : f32 = u_xlat65;
  u_xlat65 = ((x_1811 * x_1812) + 1.0f);
  let x_1815 : f32 = u_xlat65;
  u_xlat65 = max(x_1815, 0.0f);
  let x_1817 : f32 = u_xlat65;
  u_xlat65 = log2(x_1817);
  let x_1819 : f32 = u_xlat65;
  let x_1821 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat65 = (x_1819 * x_1821);
  let x_1823 : f32 = u_xlat65;
  u_xlat65 = exp2(x_1823);
  let x_1825 : f32 = u_xlat65;
  let x_1827 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat65 = (x_1825 * x_1827);
  let x_1829 : vec4<f32> = u_xlat8;
  let x_1831 : f32 = u_xlat65;
  let x_1833 : vec3<f32> = (vec3<f32>(x_1829.x, x_1829.y, x_1829.z) * vec3<f32>(x_1831, x_1831, x_1831));
  let x_1834 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1833.x, x_1833.y, x_1833.z, x_1834.w);
  let x_1836 : f32 = u_xlat67;
  let x_1838 : f32 = u_xlat67;
  let x_1842 : vec2<f32> = ((vec2<f32>(x_1836, x_1836) * vec2<f32>(x_1838, x_1838)) + vec2<f32>(-1.0f, 1.0f));
  let x_1843 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1842.x, x_1842.y, x_1843.z, x_1843.w);
  let x_1846 : f32 = u_xlat9.y;
  u_xlat65 = (1.0f / x_1846);
  let x_1848 : vec4<f32> = u_xlat0;
  let x_1851 : f32 = u_xlat66;
  u_xlat30 = (-(vec3<f32>(x_1848.x, x_1848.y, x_1848.z)) + vec3<f32>(x_1851, x_1851, x_1851));
  let x_1854 : f32 = u_xlat70;
  let x_1856 : vec3<f32> = u_xlat30;
  let x_1858 : vec4<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_1854, x_1854, x_1854) * x_1856) + vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
  let x_1861 : f32 = u_xlat65;
  let x_1863 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1861, x_1861, x_1861) * x_1863);
  let x_1865 : vec4<f32> = u_xlat8;
  let x_1867 : vec3<f32> = u_xlat30;
  let x_1868 : vec3<f32> = (vec3<f32>(x_1865.x, x_1865.y, x_1865.z) * x_1867);
  let x_1869 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1868.x, x_1868.y, x_1868.z, x_1869.w);
  let x_1871 : vec4<f32> = u_xlat5;
  let x_1873 : vec3<f32> = u_xlat22;
  let x_1875 : vec4<f32> = u_xlat8;
  let x_1877 : vec3<f32> = ((vec3<f32>(x_1871.x, x_1871.y, x_1871.z) * x_1873) + vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1878.w);
  let x_1880 : f32 = u_xlat69;
  let x_1883 : f32 = x_106.unity_LightData.z;
  u_xlat65 = (x_1880 * x_1883);
  let x_1885 : vec3<f32> = u_xlat4;
  let x_1887 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(x_1885, vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
  let x_1890 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1890, 0.0f, 1.0f);
  let x_1892 : f32 = u_xlat65;
  let x_1893 : f32 = u_xlat66;
  u_xlat65 = (x_1892 * x_1893);
  let x_1895 : f32 = u_xlat65;
  let x_1897 : vec4<f32> = u_xlat7;
  let x_1899 : vec3<f32> = (vec3<f32>(x_1895, x_1895, x_1895) * vec3<f32>(x_1897.x, x_1897.y, x_1897.z));
  let x_1900 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);
  let x_1902 : vec3<f32> = u_xlat3;
  let x_1904 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1906 : vec3<f32> = (x_1902 + vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
  let x_1907 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
  let x_1909 : vec4<f32> = u_xlat8;
  let x_1911 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(vec3<f32>(x_1909.x, x_1909.y, x_1909.z), vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
  let x_1914 : f32 = u_xlat65;
  u_xlat65 = max(x_1914, 1.17549435e-37f);
  let x_1917 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_1917);
  let x_1919 : f32 = u_xlat65;
  let x_1921 : vec4<f32> = u_xlat8;
  let x_1923 : vec3<f32> = (vec3<f32>(x_1919, x_1919, x_1919) * vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
  let x_1924 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
  let x_1926 : vec3<f32> = u_xlat4;
  let x_1927 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(x_1926, vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
  let x_1930 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1930, 0.0f, 1.0f);
  let x_1933 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1935 : vec4<f32> = u_xlat8;
  u_xlat66 = dot(vec3<f32>(x_1933.x, x_1933.y, x_1933.z), vec3<f32>(x_1935.x, x_1935.y, x_1935.z));
  let x_1938 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1938, 0.0f, 1.0f);
  let x_1940 : f32 = u_xlat65;
  let x_1941 : f32 = u_xlat65;
  u_xlat65 = (x_1940 * x_1941);
  let x_1943 : f32 = u_xlat65;
  let x_1945 : f32 = u_xlat9.x;
  u_xlat65 = ((x_1943 * x_1945) + 1.000010014f);
  let x_1949 : f32 = u_xlat66;
  let x_1950 : f32 = u_xlat66;
  u_xlat66 = (x_1949 * x_1950);
  let x_1952 : f32 = u_xlat65;
  let x_1953 : f32 = u_xlat65;
  u_xlat65 = (x_1952 * x_1953);
  let x_1955 : f32 = u_xlat66;
  u_xlat66 = max(x_1955, 0.100000001f);
  let x_1958 : f32 = u_xlat65;
  let x_1959 : f32 = u_xlat66;
  u_xlat65 = (x_1958 * x_1959);
  let x_1961 : f32 = u_xlat27;
  let x_1962 : f32 = u_xlat65;
  u_xlat65 = (x_1961 * x_1962);
  let x_1964 : f32 = u_xlat68;
  let x_1965 : f32 = u_xlat65;
  u_xlat65 = (x_1964 / x_1965);
  let x_1967 : vec4<f32> = u_xlat0;
  let x_1969 : f32 = u_xlat65;
  let x_1972 : vec3<f32> = u_xlat22;
  let x_1973 : vec3<f32> = ((vec3<f32>(x_1967.x, x_1967.y, x_1967.z) * vec3<f32>(x_1969, x_1969, x_1969)) + x_1972);
  let x_1974 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : vec4<f32> = u_xlat7;
  let x_1978 : vec4<f32> = u_xlat8;
  let x_1980 : vec3<f32> = (vec3<f32>(x_1976.x, x_1976.y, x_1976.z) * vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1984 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1986 : f32 = x_106.unity_LightData.y;
  u_xlat65 = min(x_1984, x_1986);
  let x_1990 : f32 = u_xlat65;
  u_xlatu65 = bitcast<u32>(i32(x_1990));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2002 : u32 = u_xlatu_loop_1;
    let x_2003 : u32 = u_xlatu65;
    if ((x_2002 < x_2003)) {
    } else {
      break;
    }
    let x_2006 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2006 >> 2u);
    let x_2010 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2010 & 3u));
    let x_2013 : u32 = u_xlatu67;
    let x_2016 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_2013)];
    let x_2026 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2031 : vec4<u32> = indexable[x_2026];
    u_xlat67 = dot(x_2016, bitcast<vec4<f32>>(x_2031));
    let x_2035 : f32 = u_xlat67;
    u_xlati67 = i32(x_2035);
    let x_2037 : vec3<f32> = vs_TEXCOORD1;
    let x_2049 : i32 = u_xlati67;
    let x_2051 : vec4<f32> = x_2048.x_AdditionalLightsPosition[x_2049];
    let x_2054 : i32 = u_xlati67;
    let x_2056 : vec4<f32> = x_2048.x_AdditionalLightsPosition[x_2054];
    u_xlat30 = ((-(x_2037) * vec3<f32>(x_2051.w, x_2051.w, x_2051.w)) + vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
    let x_2059 : vec3<f32> = u_xlat30;
    let x_2060 : vec3<f32> = u_xlat30;
    u_xlat69 = dot(x_2059, x_2060);
    let x_2062 : f32 = u_xlat69;
    u_xlat69 = max(x_2062, 6.10351562e-05f);
    let x_2065 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2065);
    let x_2067 : f32 = u_xlat70;
    let x_2069 : vec3<f32> = u_xlat30;
    let x_2070 : vec3<f32> = (vec3<f32>(x_2067, x_2067, x_2067) * x_2069);
    let x_2071 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
    let x_2073 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2073);
    let x_2075 : f32 = u_xlat69;
    let x_2076 : i32 = u_xlati67;
    let x_2078 : f32 = x_2048.x_AdditionalLightsAttenuation[x_2076].x;
    u_xlat69 = (x_2075 * x_2078);
    let x_2080 : f32 = u_xlat69;
    let x_2082 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2080) * x_2082) + 1.0f);
    let x_2085 : f32 = u_xlat69;
    u_xlat69 = max(x_2085, 0.0f);
    let x_2087 : f32 = u_xlat69;
    let x_2088 : f32 = u_xlat69;
    u_xlat69 = (x_2087 * x_2088);
    let x_2090 : f32 = u_xlat69;
    let x_2091 : f32 = u_xlat71;
    u_xlat69 = (x_2090 * x_2091);
    let x_2093 : i32 = u_xlati67;
    let x_2095 : vec4<f32> = x_2048.x_AdditionalLightsSpotDir[x_2093];
    let x_2097 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(vec3<f32>(x_2095.x, x_2095.y, x_2095.z), vec3<f32>(x_2097.x, x_2097.y, x_2097.z));
    let x_2100 : f32 = u_xlat71;
    let x_2101 : i32 = u_xlati67;
    let x_2103 : f32 = x_2048.x_AdditionalLightsAttenuation[x_2101].z;
    let x_2105 : i32 = u_xlati67;
    let x_2107 : f32 = x_2048.x_AdditionalLightsAttenuation[x_2105].w;
    u_xlat71 = ((x_2100 * x_2103) + x_2107);
    let x_2109 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2109, 0.0f, 1.0f);
    let x_2111 : f32 = u_xlat71;
    let x_2112 : f32 = u_xlat71;
    u_xlat71 = (x_2111 * x_2112);
    let x_2114 : f32 = u_xlat69;
    let x_2115 : f32 = u_xlat71;
    u_xlat69 = (x_2114 * x_2115);
    let x_2117 : f32 = u_xlat48;
    let x_2119 : i32 = u_xlati67;
    let x_2121 : vec4<f32> = x_2048.x_AdditionalLightsColor[x_2119];
    let x_2123 : vec3<f32> = (vec3<f32>(x_2117, x_2117, x_2117) * vec3<f32>(x_2121.x, x_2121.y, x_2121.z));
    let x_2124 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
    let x_2126 : vec3<f32> = u_xlat4;
    let x_2127 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(x_2126, vec3<f32>(x_2127.x, x_2127.y, x_2127.z));
    let x_2130 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2130, 0.0f, 1.0f);
    let x_2132 : f32 = u_xlat67;
    let x_2133 : f32 = u_xlat69;
    u_xlat67 = (x_2132 * x_2133);
    let x_2135 : f32 = u_xlat67;
    let x_2137 : vec4<f32> = u_xlat11;
    let x_2139 : vec3<f32> = (vec3<f32>(x_2135, x_2135, x_2135) * vec3<f32>(x_2137.x, x_2137.y, x_2137.z));
    let x_2140 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2139.x, x_2139.y, x_2139.z, x_2140.w);
    let x_2142 : vec3<f32> = u_xlat30;
    let x_2143 : f32 = u_xlat70;
    let x_2146 : vec3<f32> = u_xlat3;
    u_xlat30 = ((x_2142 * vec3<f32>(x_2143, x_2143, x_2143)) + x_2146);
    let x_2148 : vec3<f32> = u_xlat30;
    let x_2149 : vec3<f32> = u_xlat30;
    u_xlat67 = dot(x_2148, x_2149);
    let x_2151 : f32 = u_xlat67;
    u_xlat67 = max(x_2151, 1.17549435e-37f);
    let x_2153 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2153);
    let x_2155 : f32 = u_xlat67;
    let x_2157 : vec3<f32> = u_xlat30;
    u_xlat30 = (vec3<f32>(x_2155, x_2155, x_2155) * x_2157);
    let x_2159 : vec3<f32> = u_xlat4;
    let x_2160 : vec3<f32> = u_xlat30;
    u_xlat67 = dot(x_2159, x_2160);
    let x_2162 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2162, 0.0f, 1.0f);
    let x_2164 : vec4<f32> = u_xlat10;
    let x_2166 : vec3<f32> = u_xlat30;
    u_xlat69 = dot(vec3<f32>(x_2164.x, x_2164.y, x_2164.z), x_2166);
    let x_2168 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2168, 0.0f, 1.0f);
    let x_2170 : f32 = u_xlat67;
    let x_2171 : f32 = u_xlat67;
    u_xlat67 = (x_2170 * x_2171);
    let x_2173 : f32 = u_xlat67;
    let x_2175 : f32 = u_xlat9.x;
    u_xlat67 = ((x_2173 * x_2175) + 1.000010014f);
    let x_2178 : f32 = u_xlat69;
    let x_2179 : f32 = u_xlat69;
    u_xlat69 = (x_2178 * x_2179);
    let x_2181 : f32 = u_xlat67;
    let x_2182 : f32 = u_xlat67;
    u_xlat67 = (x_2181 * x_2182);
    let x_2184 : f32 = u_xlat69;
    u_xlat69 = max(x_2184, 0.100000001f);
    let x_2186 : f32 = u_xlat67;
    let x_2187 : f32 = u_xlat69;
    u_xlat67 = (x_2186 * x_2187);
    let x_2189 : f32 = u_xlat27;
    let x_2190 : f32 = u_xlat67;
    u_xlat67 = (x_2189 * x_2190);
    let x_2192 : f32 = u_xlat68;
    let x_2193 : f32 = u_xlat67;
    u_xlat67 = (x_2192 / x_2193);
    let x_2195 : vec4<f32> = u_xlat0;
    let x_2197 : f32 = u_xlat67;
    let x_2200 : vec3<f32> = u_xlat22;
    u_xlat30 = ((vec3<f32>(x_2195.x, x_2195.y, x_2195.z) * vec3<f32>(x_2197, x_2197, x_2197)) + x_2200);
    let x_2202 : vec3<f32> = u_xlat30;
    let x_2203 : vec4<f32> = u_xlat11;
    let x_2206 : vec4<f32> = u_xlat8;
    let x_2208 : vec3<f32> = ((x_2202 * vec3<f32>(x_2203.x, x_2203.y, x_2203.z)) + vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
    let x_2209 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);

    continuing {
      let x_2211 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2211 + bitcast<u32>(1i));
    }
  }
  let x_2213 : vec4<f32> = u_xlat5;
  let x_2215 : vec3<f32> = u_xlat6;
  let x_2218 : vec4<f32> = u_xlat7;
  let x_2220 : vec3<f32> = ((vec3<f32>(x_2213.x, x_2213.y, x_2213.z) * vec3<f32>(x_2215.x, x_2215.x, x_2215.x)) + vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
  let x_2221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2220.x, x_2220.y, x_2220.z, x_2221.w);
  let x_2223 : vec4<f32> = u_xlat8;
  let x_2225 : vec4<f32> = u_xlat0;
  let x_2227 : vec3<f32> = (vec3<f32>(x_2223.x, x_2223.y, x_2223.z) + vec3<f32>(x_2225.x, x_2225.y, x_2225.z));
  let x_2228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2227.x, x_2227.y, x_2227.z, x_2228.w);
  let x_2230 : vec3<f32> = u_xlat2;
  let x_2232 : vec4<f32> = x_57.x_EmissionColor;
  let x_2235 : vec4<f32> = u_xlat0;
  let x_2237 : vec3<f32> = ((x_2230 * vec3<f32>(x_2232.x, x_2232.y, x_2232.z)) + vec3<f32>(x_2235.x, x_2235.y, x_2235.z));
  let x_2238 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2237.x, x_2237.y, x_2237.z, x_2238.w);
  let x_2240 : f32 = u_xlat63;
  let x_2241 : f32 = u_xlat63;
  u_xlat63 = (x_2240 * -(x_2241));
  let x_2244 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2244);
  let x_2246 : vec4<f32> = u_xlat0;
  let x_2250 : vec4<f32> = x_44.unity_FogColor;
  let x_2253 : vec3<f32> = (vec3<f32>(x_2246.x, x_2246.y, x_2246.z) + -(vec3<f32>(x_2250.x, x_2250.y, x_2250.z)));
  let x_2254 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
  let x_2258 : f32 = u_xlat63;
  let x_2260 : vec4<f32> = u_xlat0;
  let x_2264 : vec4<f32> = x_44.unity_FogColor;
  let x_2266 : vec3<f32> = ((vec3<f32>(x_2258, x_2258, x_2258) * vec3<f32>(x_2260.x, x_2260.y, x_2260.z)) + vec3<f32>(x_2264.x, x_2264.y, x_2264.z));
  let x_2267 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
  let x_2272 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2272 == 1.0f);
  let x_2274 : bool = u_xlatb0;
  if (x_2274) {
    let x_2279 : f32 = u_xlat1.x;
    x_2275 = x_2279;
  } else {
    x_2275 = 1.0f;
  }
  let x_2281 : f32 = x_2275;
  SV_Target0.w = x_2281;
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

