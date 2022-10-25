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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_342 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1663 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1849 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2105 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2210 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlatb48 : vec2<bool>;
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
  var u_xlatb8 : vec2<bool>;
  var x_1746 : f32;
  var x_1757 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlatu63 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat71 : f32;
  var u_xlat73 : f32;
  var u_xlatu73 : u32;
  var u_xlati11 : i32;
  var u_xlati73 : i32;
  var u_xlati32 : i32;
  var u_xlatb73 : bool;
  var u_xlatb32 : vec3<bool>;
  var u_xlat32 : vec3<f32>;
  var x_2525 : f32;
  var x_2538 : f32;
  var x_2600 : f32;
  var x_2611 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2765 : f32;
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
  let x_164 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_161, x_163);
  u_xlat5 = x_164;
  let x_170 : vec2<f32> = vs_TEXCOORD8;
  let x_172 : f32 = x_44.x_GlobalMipBias.x;
  let x_173 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_170, x_172);
  u_xlat6 = vec3<f32>(x_173.x, x_173.y, x_173.z);
  let x_175 : vec4<f32> = u_xlat5;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_180 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec3<f32> = u_xlat3;
  let x_183 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(x_182, vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : f32 = u_xlat63;
  u_xlat63 = (x_186 + 0.5f);
  let x_189 : f32 = u_xlat63;
  let x_191 : vec3<f32> = u_xlat6;
  let x_192 : vec3<f32> = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_193 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : f32 = u_xlat5.w;
  u_xlat63 = max(x_196, 0.0001f);
  let x_199 : vec4<f32> = u_xlat5;
  let x_201 : f32 = u_xlat63;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) / vec3<f32>(x_201, x_201, x_201));
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_208 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_209 : vec2<f32> = vec2<f32>(x_208.x, x_208.y);
  let x_213 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_209.x, x_209.y));
  let x_214 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_213.x, x_213.y, x_214.z);
  let x_216 : vec3<f32> = u_xlat6;
  let x_218 : vec4<f32> = hlslcc_FragCoord;
  let x_220 : vec2<f32> = (vec2<f32>(x_216.x, x_216.y) * vec2<f32>(x_218.x, x_218.y));
  let x_221 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_220.x, x_220.y, x_221.z);
  let x_224 : f32 = u_xlat6.y;
  let x_227 : f32 = x_44.x_ScaleBiasRt.x;
  let x_230 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_224 * x_227) + x_230);
  let x_232 : f32 = u_xlat63;
  u_xlat6.z = (-(x_232) + 1.0f);
  let x_237 : f32 = x_57.x_Metallic;
  u_xlat63 = ((-(x_237) * 0.959999979f) + 0.959999979f);
  let x_242 : f32 = u_xlat63;
  let x_245 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_242) + x_245);
  let x_248 : f32 = u_xlat63;
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat22 = (vec3<f32>(x_248, x_248, x_248) * vec3<f32>(x_250.y, x_250.z, x_250.w));
  let x_253 : vec4<f32> = u_xlat0;
  let x_256 : vec4<f32> = x_57.x_BaseColor;
  let x_261 : vec3<f32> = ((vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_256.x, x_256.y, x_256.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_265 : f32 = x_57.x_Metallic;
  let x_267 : f32 = x_57.x_Metallic;
  let x_269 : f32 = x_57.x_Metallic;
  let x_270 : vec3<f32> = vec3<f32>(x_265, x_267, x_269);
  let x_275 : vec4<f32> = u_xlat0;
  let x_280 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_275.x, x_275.y, x_275.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_281 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_284 : f32 = x_57.x_Smoothness;
  u_xlat63 = (-(x_284) + 1.0f);
  let x_288 : f32 = u_xlat63;
  let x_289 : f32 = u_xlat63;
  u_xlat66 = (x_288 * x_289);
  let x_291 : f32 = u_xlat66;
  u_xlat66 = max(x_291, 0.0078125f);
  let x_295 : f32 = u_xlat66;
  let x_296 : f32 = u_xlat66;
  u_xlat67 = (x_295 * x_296);
  let x_298 : f32 = u_xlat65;
  u_xlat65 = (x_298 + 1.0f);
  let x_300 : f32 = u_xlat65;
  u_xlat65 = clamp(x_300, 0.0f, 1.0f);
  let x_303 : f32 = u_xlat66;
  u_xlat68 = ((x_303 * 4.0f) + 2.0f);
  let x_313 : vec3<f32> = u_xlat6;
  let x_316 : f32 = x_44.x_GlobalMipBias.x;
  let x_317 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_313.x, x_313.z), x_316);
  u_xlat6.x = x_317.x;
  let x_322 : f32 = u_xlat6.x;
  u_xlat27 = (x_322 + -1.0f);
  let x_327 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_328 : f32 = u_xlat27;
  u_xlat27 = ((x_327 * x_328) + 1.0f);
  let x_332 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_332, 1.0f);
  let x_344 : f32 = x_342.x_MainLightShadowParams.y;
  u_xlatb48.x = (0.0f < x_344);
  let x_348 : bool = u_xlatb48.x;
  if (x_348) {
    let x_352 : f32 = x_342.x_MainLightShadowParams.y;
    u_xlatb48.x = (x_352 == 1.0f);
    let x_356 : bool = u_xlatb48.x;
    if (x_356) {
      let x_361 : vec4<f32> = vs_TEXCOORD6;
      let x_364 : vec4<f32> = x_342.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_361.x, x_361.y, x_361.x, x_361.y) + x_364);
      let x_367 : vec4<f32> = u_xlat7;
      let x_368 : vec2<f32> = vec2<f32>(x_367.x, x_367.y);
      let x_370 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_368.x, x_368.y, x_370);
      let x_383 : vec3<f32> = txVec0;
      let x_385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_383.xy, x_383.z);
      u_xlat8.x = x_385;
      let x_388 : vec4<f32> = u_xlat7;
      let x_389 : vec2<f32> = vec2<f32>(x_388.z, x_388.w);
      let x_391 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_389.x, x_389.y, x_391);
      let x_398 : vec3<f32> = txVec1;
      let x_400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_398.xy, x_398.z);
      u_xlat8.y = x_400;
      let x_402 : vec4<f32> = vs_TEXCOORD6;
      let x_405 : vec4<f32> = x_342.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_402.x, x_402.y, x_402.x, x_402.y) + x_405);
      let x_408 : vec4<f32> = u_xlat7;
      let x_409 : vec2<f32> = vec2<f32>(x_408.x, x_408.y);
      let x_411 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_409.x, x_409.y, x_411);
      let x_418 : vec3<f32> = txVec2;
      let x_420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_418.xy, x_418.z);
      u_xlat8.z = x_420;
      let x_423 : vec4<f32> = u_xlat7;
      let x_424 : vec2<f32> = vec2<f32>(x_423.z, x_423.w);
      let x_426 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_424.x, x_424.y, x_426);
      let x_433 : vec3<f32> = txVec3;
      let x_435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_433.xy, x_433.z);
      u_xlat8.w = x_435;
      let x_438 : vec4<f32> = u_xlat8;
      u_xlat48 = dot(x_438, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_445 : f32 = x_342.x_MainLightShadowParams.y;
      u_xlatb69 = (x_445 == 2.0f);
      let x_447 : bool = u_xlatb69;
      if (x_447) {
        let x_450 : vec4<f32> = vs_TEXCOORD6;
        let x_453 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_457 : vec2<f32> = ((vec2<f32>(x_450.x, x_450.y) * vec2<f32>(x_453.z, x_453.w)) + vec2<f32>(0.5f, 0.5f));
        let x_458 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_460 : vec4<f32> = u_xlat7;
        let x_462 : vec2<f32> = floor(vec2<f32>(x_460.x, x_460.y));
        let x_463 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
        let x_467 : vec4<f32> = vs_TEXCOORD6;
        let x_470 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_473 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_470.z, x_470.w)) + -(vec2<f32>(x_473.x, x_473.y)));
        let x_477 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_477.x, x_477.x, x_477.y, x_477.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_482 : vec4<f32> = u_xlat8;
        let x_484 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_482.x, x_482.x, x_482.z, x_482.z) * vec4<f32>(x_484.x, x_484.x, x_484.z, x_484.z));
        let x_487 : vec4<f32> = u_xlat9;
        let x_491 : vec2<f32> = (vec2<f32>(x_487.y, x_487.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_492 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_491.x, x_492.y, x_491.y, x_492.w);
        let x_494 : vec4<f32> = u_xlat9;
        let x_497 : vec2<f32> = u_xlat49;
        let x_499 : vec2<f32> = ((vec2<f32>(x_494.x, x_494.z) * vec2<f32>(0.5f, 0.5f)) + -(x_497));
        let x_500 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
        let x_503 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_503) + vec2<f32>(1.0f, 1.0f));
        let x_507 : vec2<f32> = u_xlat49;
        let x_509 : vec2<f32> = min(x_507, vec2<f32>(0.0f, 0.0f));
        let x_510 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
        let x_512 : vec4<f32> = u_xlat10;
        let x_515 : vec4<f32> = u_xlat10;
        let x_518 : vec2<f32> = u_xlat51;
        let x_519 : vec2<f32> = ((-(vec2<f32>(x_512.x, x_512.y)) * vec2<f32>(x_515.x, x_515.y)) + x_518);
        let x_520 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
        let x_522 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_522, vec2<f32>(0.0f, 0.0f));
        let x_524 : vec2<f32> = u_xlat49;
        let x_526 : vec2<f32> = u_xlat49;
        let x_528 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_524) * x_526) + vec2<f32>(x_528.y, x_528.w));
        let x_531 : vec4<f32> = u_xlat10;
        let x_533 : vec2<f32> = (vec2<f32>(x_531.x, x_531.y) + vec2<f32>(1.0f, 1.0f));
        let x_534 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
        let x_536 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_536 + vec2<f32>(1.0f, 1.0f));
        let x_539 : vec4<f32> = u_xlat9;
        let x_543 : vec2<f32> = (vec2<f32>(x_539.x, x_539.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_544 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
        let x_546 : vec2<f32> = u_xlat51;
        let x_547 : vec2<f32> = (x_546 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_548 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_547.x, x_547.y, x_548.z, x_548.w);
        let x_550 : vec4<f32> = u_xlat10;
        let x_552 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_553 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
        let x_556 : vec2<f32> = u_xlat49;
        let x_557 : vec2<f32> = (x_556 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_558 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
        let x_560 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_560.y, x_560.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_564 : f32 = u_xlat10.x;
        u_xlat11.z = x_564;
        let x_567 : f32 = u_xlat49.x;
        u_xlat11.w = x_567;
        let x_570 : f32 = u_xlat12.x;
        u_xlat9.z = x_570;
        let x_573 : f32 = u_xlat8.x;
        u_xlat9.w = x_573;
        let x_576 : vec4<f32> = u_xlat9;
        let x_578 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_576.z, x_576.w, x_576.x, x_576.z) + vec4<f32>(x_578.z, x_578.w, x_578.x, x_578.z));
        let x_582 : f32 = u_xlat11.y;
        u_xlat10.z = x_582;
        let x_585 : f32 = u_xlat49.y;
        u_xlat10.w = x_585;
        let x_588 : f32 = u_xlat9.y;
        u_xlat12.z = x_588;
        let x_591 : f32 = u_xlat8.z;
        u_xlat12.w = x_591;
        let x_593 : vec4<f32> = u_xlat10;
        let x_595 : vec4<f32> = u_xlat12;
        let x_597 : vec3<f32> = (vec3<f32>(x_593.z, x_593.y, x_593.w) + vec3<f32>(x_595.z, x_595.y, x_595.w));
        let x_598 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat9;
        let x_602 : vec4<f32> = u_xlat13;
        let x_604 : vec3<f32> = (vec3<f32>(x_600.x, x_600.z, x_600.w) / vec3<f32>(x_602.z, x_602.w, x_602.y));
        let x_605 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
        let x_607 : vec4<f32> = u_xlat9;
        let x_612 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_613 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
        let x_615 : vec4<f32> = u_xlat12;
        let x_617 : vec4<f32> = u_xlat8;
        let x_619 : vec3<f32> = (vec3<f32>(x_615.z, x_615.y, x_615.w) / vec3<f32>(x_617.x, x_617.y, x_617.z));
        let x_620 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
        let x_622 : vec4<f32> = u_xlat10;
        let x_624 : vec3<f32> = (vec3<f32>(x_622.x, x_622.y, x_622.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_625 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
        let x_627 : vec4<f32> = u_xlat9;
        let x_630 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_632 : vec3<f32> = (vec3<f32>(x_627.y, x_627.x, x_627.z) * vec3<f32>(x_630.x, x_630.x, x_630.x));
        let x_633 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat10;
        let x_638 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_640 : vec3<f32> = (vec3<f32>(x_635.x, x_635.y, x_635.z) * vec3<f32>(x_638.y, x_638.y, x_638.y));
        let x_641 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
        let x_644 : f32 = u_xlat10.x;
        u_xlat9.w = x_644;
        let x_646 : vec4<f32> = u_xlat7;
        let x_649 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_652 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y) * vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y)) + vec4<f32>(x_652.y, x_652.w, x_652.x, x_652.w));
        let x_655 : vec4<f32> = u_xlat7;
        let x_658 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_661 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_655.x, x_655.y) * vec2<f32>(x_658.x, x_658.y)) + vec2<f32>(x_661.z, x_661.w));
        let x_665 : f32 = u_xlat9.y;
        u_xlat10.w = x_665;
        let x_667 : vec4<f32> = u_xlat10;
        let x_668 : vec2<f32> = vec2<f32>(x_667.y, x_667.z);
        let x_669 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_669.x, x_668.x, x_669.z, x_668.y);
        let x_671 : vec4<f32> = u_xlat7;
        let x_674 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_677 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_671.x, x_671.y, x_671.x, x_671.y) * vec4<f32>(x_674.x, x_674.y, x_674.x, x_674.y)) + vec4<f32>(x_677.x, x_677.y, x_677.z, x_677.y));
        let x_680 : vec4<f32> = u_xlat7;
        let x_683 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_686 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_680.x, x_680.y, x_680.x, x_680.y) * vec4<f32>(x_683.x, x_683.y, x_683.x, x_683.y)) + vec4<f32>(x_686.w, x_686.y, x_686.w, x_686.z));
        let x_689 : vec4<f32> = u_xlat7;
        let x_692 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_695 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_689.x, x_689.y, x_689.x, x_689.y) * vec4<f32>(x_692.x, x_692.y, x_692.x, x_692.y)) + vec4<f32>(x_695.x, x_695.w, x_695.z, x_695.w));
        let x_699 : vec4<f32> = u_xlat8;
        let x_701 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_699.x, x_699.x, x_699.x, x_699.y) * vec4<f32>(x_701.z, x_701.w, x_701.y, x_701.z));
        let x_705 : vec4<f32> = u_xlat8;
        let x_707 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_705.y, x_705.y, x_705.z, x_705.z) * x_707);
        let x_711 : f32 = u_xlat8.z;
        let x_713 : f32 = u_xlat13.y;
        u_xlat69 = (x_711 * x_713);
        let x_716 : vec4<f32> = u_xlat11;
        let x_717 : vec2<f32> = vec2<f32>(x_716.x, x_716.y);
        let x_719 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_717.x, x_717.y, x_719);
        let x_726 : vec3<f32> = txVec4;
        let x_728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_726.xy, x_726.z);
        u_xlat7.x = x_728;
        let x_731 : vec4<f32> = u_xlat11;
        let x_732 : vec2<f32> = vec2<f32>(x_731.z, x_731.w);
        let x_734 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_732.x, x_732.y, x_734);
        let x_742 : vec3<f32> = txVec5;
        let x_744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_742.xy, x_742.z);
        u_xlat28 = x_744;
        let x_745 : f32 = u_xlat28;
        let x_747 : f32 = u_xlat14.y;
        u_xlat28 = (x_745 * x_747);
        let x_750 : f32 = u_xlat14.x;
        let x_752 : f32 = u_xlat7.x;
        let x_754 : f32 = u_xlat28;
        u_xlat7.x = ((x_750 * x_752) + x_754);
        let x_758 : vec2<f32> = u_xlat49;
        let x_760 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_758.x, x_758.y, x_760);
        let x_767 : vec3<f32> = txVec6;
        let x_769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_767.xy, x_767.z);
        u_xlat28 = x_769;
        let x_771 : f32 = u_xlat14.z;
        let x_772 : f32 = u_xlat28;
        let x_775 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_771 * x_772) + x_775);
        let x_779 : vec4<f32> = u_xlat10;
        let x_780 : vec2<f32> = vec2<f32>(x_779.x, x_779.y);
        let x_782 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_780.x, x_780.y, x_782);
        let x_789 : vec3<f32> = txVec7;
        let x_791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_789.xy, x_789.z);
        u_xlat28 = x_791;
        let x_793 : f32 = u_xlat14.w;
        let x_794 : f32 = u_xlat28;
        let x_797 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_793 * x_794) + x_797);
        let x_801 : vec4<f32> = u_xlat12;
        let x_802 : vec2<f32> = vec2<f32>(x_801.x, x_801.y);
        let x_804 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_802.x, x_802.y, x_804);
        let x_811 : vec3<f32> = txVec8;
        let x_813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_811.xy, x_811.z);
        u_xlat28 = x_813;
        let x_815 : f32 = u_xlat15.x;
        let x_816 : f32 = u_xlat28;
        let x_819 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_815 * x_816) + x_819);
        let x_823 : vec4<f32> = u_xlat12;
        let x_824 : vec2<f32> = vec2<f32>(x_823.z, x_823.w);
        let x_826 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_824.x, x_824.y, x_826);
        let x_833 : vec3<f32> = txVec9;
        let x_835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_833.xy, x_833.z);
        u_xlat28 = x_835;
        let x_837 : f32 = u_xlat15.y;
        let x_838 : f32 = u_xlat28;
        let x_841 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_837 * x_838) + x_841);
        let x_845 : vec4<f32> = u_xlat10;
        let x_846 : vec2<f32> = vec2<f32>(x_845.z, x_845.w);
        let x_848 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_855 : vec3<f32> = txVec10;
        let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_855.xy, x_855.z);
        u_xlat28 = x_857;
        let x_859 : f32 = u_xlat15.z;
        let x_860 : f32 = u_xlat28;
        let x_863 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_859 * x_860) + x_863);
        let x_867 : vec4<f32> = u_xlat9;
        let x_868 : vec2<f32> = vec2<f32>(x_867.x, x_867.y);
        let x_870 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_868.x, x_868.y, x_870);
        let x_877 : vec3<f32> = txVec11;
        let x_879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_877.xy, x_877.z);
        u_xlat28 = x_879;
        let x_881 : f32 = u_xlat15.w;
        let x_882 : f32 = u_xlat28;
        let x_885 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_881 * x_882) + x_885);
        let x_889 : vec4<f32> = u_xlat9;
        let x_890 : vec2<f32> = vec2<f32>(x_889.z, x_889.w);
        let x_892 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_890.x, x_890.y, x_892);
        let x_899 : vec3<f32> = txVec12;
        let x_901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_899.xy, x_899.z);
        u_xlat28 = x_901;
        let x_902 : f32 = u_xlat69;
        let x_903 : f32 = u_xlat28;
        let x_906 : f32 = u_xlat7.x;
        u_xlat48 = ((x_902 * x_903) + x_906);
      } else {
        let x_909 : vec4<f32> = vs_TEXCOORD6;
        let x_912 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_915 : vec2<f32> = ((vec2<f32>(x_909.x, x_909.y) * vec2<f32>(x_912.z, x_912.w)) + vec2<f32>(0.5f, 0.5f));
        let x_916 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec4<f32> = u_xlat7;
        let x_920 : vec2<f32> = floor(vec2<f32>(x_918.x, x_918.y));
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_920.x, x_920.y, x_921.z, x_921.w);
        let x_923 : vec4<f32> = vs_TEXCOORD6;
        let x_926 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_929 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_923.x, x_923.y) * vec2<f32>(x_926.z, x_926.w)) + -(vec2<f32>(x_929.x, x_929.y)));
        let x_933 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_933.x, x_933.x, x_933.y, x_933.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_936 : vec4<f32> = u_xlat8;
        let x_938 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_936.x, x_936.x, x_936.z, x_936.z) * vec4<f32>(x_938.x, x_938.x, x_938.z, x_938.z));
        let x_941 : vec4<f32> = u_xlat9;
        let x_945 : vec2<f32> = (vec2<f32>(x_941.y, x_941.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_946 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_946.x, x_945.x, x_946.z, x_945.y);
        let x_948 : vec4<f32> = u_xlat9;
        let x_951 : vec2<f32> = u_xlat49;
        let x_953 : vec2<f32> = ((vec2<f32>(x_948.x, x_948.z) * vec2<f32>(0.5f, 0.5f)) + -(x_951));
        let x_954 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_953.x, x_954.y, x_953.y, x_954.w);
        let x_956 : vec2<f32> = u_xlat49;
        let x_958 : vec2<f32> = (-(x_956) + vec2<f32>(1.0f, 1.0f));
        let x_959 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_961 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_961, vec2<f32>(0.0f, 0.0f));
        let x_963 : vec2<f32> = u_xlat51;
        let x_965 : vec2<f32> = u_xlat51;
        let x_967 : vec4<f32> = u_xlat9;
        let x_969 : vec2<f32> = ((-(x_963) * x_965) + vec2<f32>(x_967.x, x_967.y));
        let x_970 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_969.x, x_969.y, x_970.z, x_970.w);
        let x_972 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_972, vec2<f32>(0.0f, 0.0f));
        let x_975 : vec2<f32> = u_xlat51;
        let x_977 : vec2<f32> = u_xlat51;
        let x_979 : vec4<f32> = u_xlat8;
        let x_981 : vec2<f32> = ((-(x_975) * x_977) + vec2<f32>(x_979.y, x_979.w));
        let x_982 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_981.x, x_982.y, x_981.y);
        let x_984 : vec4<f32> = u_xlat9;
        let x_987 : vec2<f32> = (vec2<f32>(x_984.x, x_984.y) + vec2<f32>(2.0f, 2.0f));
        let x_988 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_988.w);
        let x_990 : vec3<f32> = u_xlat29;
        let x_992 : vec2<f32> = (vec2<f32>(x_990.x, x_990.z) + vec2<f32>(2.0f, 2.0f));
        let x_993 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_993.x, x_992.x, x_993.z, x_992.y);
        let x_996 : f32 = u_xlat8.y;
        u_xlat11.z = (x_996 * 0.081632003f);
        let x_1000 : vec4<f32> = u_xlat8;
        let x_1003 : vec3<f32> = (vec3<f32>(x_1000.z, x_1000.x, x_1000.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1004 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
        let x_1006 : vec4<f32> = u_xlat9;
        let x_1009 : vec2<f32> = (vec2<f32>(x_1006.x, x_1006.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1010 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1009.x, x_1009.y, x_1010.z, x_1010.w);
        let x_1013 : f32 = u_xlat12.y;
        u_xlat11.x = x_1013;
        let x_1015 : vec2<f32> = u_xlat49;
        let x_1022 : vec2<f32> = ((vec2<f32>(x_1015.x, x_1015.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1023 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1023.x, x_1022.x, x_1023.z, x_1022.y);
        let x_1025 : vec2<f32> = u_xlat49;
        let x_1029 : vec2<f32> = ((vec2<f32>(x_1025.x, x_1025.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1029.x, x_1030.y, x_1029.y, x_1030.w);
        let x_1033 : f32 = u_xlat8.x;
        u_xlat9.y = x_1033;
        let x_1036 : f32 = u_xlat10.y;
        u_xlat9.w = x_1036;
        let x_1038 : vec4<f32> = u_xlat9;
        let x_1039 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1038 + x_1039);
        let x_1041 : vec2<f32> = u_xlat49;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1041.y, x_1041.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1045 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1045.x, x_1044.x, x_1045.z, x_1044.y);
        let x_1047 : vec2<f32> = u_xlat49;
        let x_1050 : vec2<f32> = ((vec2<f32>(x_1047.y, x_1047.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1051 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1050.x, x_1051.y, x_1050.y, x_1051.w);
        let x_1054 : f32 = u_xlat8.y;
        u_xlat10.y = x_1054;
        let x_1056 : vec4<f32> = u_xlat10;
        let x_1057 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1056 + x_1057);
        let x_1059 : vec4<f32> = u_xlat9;
        let x_1060 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1059 / x_1060);
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1062 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1068 : vec4<f32> = u_xlat10;
        let x_1069 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1068 / x_1069);
        let x_1071 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1071 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1073 : vec4<f32> = u_xlat9;
        let x_1076 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1073.w, x_1073.x, x_1073.y, x_1073.z) * vec4<f32>(x_1076.x, x_1076.x, x_1076.x, x_1076.x));
        let x_1079 : vec4<f32> = u_xlat10;
        let x_1082 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1079.x, x_1079.w, x_1079.y, x_1079.z) * vec4<f32>(x_1082.y, x_1082.y, x_1082.y, x_1082.y));
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1086 : vec3<f32> = vec3<f32>(x_1085.y, x_1085.z, x_1085.w);
        let x_1087 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1086.x, x_1087.y, x_1086.y, x_1086.z);
        let x_1090 : f32 = u_xlat10.x;
        u_xlat12.y = x_1090;
        let x_1092 : vec4<f32> = u_xlat7;
        let x_1095 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_1098 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y) * vec4<f32>(x_1095.x, x_1095.y, x_1095.x, x_1095.y)) + vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1098.y));
        let x_1101 : vec4<f32> = u_xlat7;
        let x_1104 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_1107 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(x_1104.x, x_1104.y)) + vec2<f32>(x_1107.w, x_1107.y));
        let x_1111 : f32 = u_xlat12.y;
        u_xlat9.y = x_1111;
        let x_1114 : f32 = u_xlat10.z;
        u_xlat12.y = x_1114;
        let x_1116 : vec4<f32> = u_xlat7;
        let x_1119 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.y) * vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y)) + vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1122.y));
        let x_1125 : vec4<f32> = u_xlat7;
        let x_1128 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat12;
        let x_1133 : vec2<f32> = ((vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(x_1128.x, x_1128.y)) + vec2<f32>(x_1131.w, x_1131.y));
        let x_1134 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1133.x, x_1133.y, x_1134.z, x_1134.w);
        let x_1137 : f32 = u_xlat12.y;
        u_xlat9.z = x_1137;
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1143 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1140.x, x_1140.y, x_1140.x, x_1140.y) * vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.y)) + vec4<f32>(x_1146.x, x_1146.y, x_1146.x, x_1146.z));
        let x_1150 : f32 = u_xlat10.w;
        u_xlat12.y = x_1150;
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1156 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1153.x, x_1153.y, x_1153.x, x_1153.y) * vec4<f32>(x_1156.x, x_1156.y, x_1156.x, x_1156.y)) + vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1159.y));
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1166 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_1169 : vec4<f32> = u_xlat12;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1163.x, x_1163.y) * vec2<f32>(x_1166.x, x_1166.y)) + vec2<f32>(x_1169.w, x_1169.y));
        let x_1172 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1171.x, x_1171.y, x_1172.z);
        let x_1175 : f32 = u_xlat12.y;
        u_xlat9.w = x_1175;
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1181 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.x, x_1184.w));
        let x_1187 : vec4<f32> = u_xlat12;
        let x_1188 : vec3<f32> = vec3<f32>(x_1187.x, x_1187.z, x_1187.w);
        let x_1189 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1188.x, x_1189.y, x_1188.y, x_1188.z);
        let x_1191 : vec4<f32> = u_xlat7;
        let x_1194 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1201 : vec4<f32> = u_xlat7;
        let x_1204 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_1207 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1201.x, x_1201.y) * vec2<f32>(x_1204.x, x_1204.y)) + vec2<f32>(x_1207.w, x_1207.y));
        let x_1211 : f32 = u_xlat9.x;
        u_xlat10.x = x_1211;
        let x_1213 : vec4<f32> = u_xlat7;
        let x_1216 : vec4<f32> = x_342.x_MainLightShadowmapSize;
        let x_1219 : vec4<f32> = u_xlat10;
        let x_1221 : vec2<f32> = ((vec2<f32>(x_1213.x, x_1213.y) * vec2<f32>(x_1216.x, x_1216.y)) + vec2<f32>(x_1219.x, x_1219.y));
        let x_1222 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1221.x, x_1221.y, x_1222.z, x_1222.w);
        let x_1225 : vec4<f32> = u_xlat8;
        let x_1227 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1225.x, x_1225.x, x_1225.x, x_1225.x) * x_1227);
        let x_1230 : vec4<f32> = u_xlat8;
        let x_1232 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1230.y, x_1230.y, x_1230.y, x_1230.y) * x_1232);
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1237 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1235.z, x_1235.z, x_1235.z, x_1235.z) * x_1237);
        let x_1239 : vec4<f32> = u_xlat8;
        let x_1241 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1239.w, x_1239.w, x_1239.w, x_1239.w) * x_1241);
        let x_1244 : vec4<f32> = u_xlat13;
        let x_1245 : vec2<f32> = vec2<f32>(x_1244.x, x_1244.y);
        let x_1247 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
        let x_1254 : vec3<f32> = txVec13;
        let x_1256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1254.xy, x_1254.z);
        u_xlat69 = x_1256;
        let x_1258 : vec4<f32> = u_xlat13;
        let x_1259 : vec2<f32> = vec2<f32>(x_1258.z, x_1258.w);
        let x_1261 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1268 : vec3<f32> = txVec14;
        let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1268.xy, x_1268.z);
        u_xlat9.x = x_1270;
        let x_1273 : f32 = u_xlat9.x;
        let x_1275 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1273 * x_1275);
        let x_1279 : f32 = u_xlat18.x;
        let x_1280 : f32 = u_xlat69;
        let x_1283 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1279 * x_1280) + x_1283);
        let x_1286 : vec2<f32> = u_xlat49;
        let x_1288 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec15;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1295.xy, x_1295.z);
        u_xlat49.x = x_1297;
        let x_1300 : f32 = u_xlat18.z;
        let x_1302 : f32 = u_xlat49.x;
        let x_1304 : f32 = u_xlat69;
        u_xlat69 = ((x_1300 * x_1302) + x_1304);
        let x_1307 : vec4<f32> = u_xlat16;
        let x_1308 : vec2<f32> = vec2<f32>(x_1307.x, x_1307.y);
        let x_1310 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec16;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1317.xy, x_1317.z);
        u_xlat49.x = x_1319;
        let x_1322 : f32 = u_xlat18.w;
        let x_1324 : f32 = u_xlat49.x;
        let x_1326 : f32 = u_xlat69;
        u_xlat69 = ((x_1322 * x_1324) + x_1326);
        let x_1329 : vec4<f32> = u_xlat14;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec17;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1339.xy, x_1339.z);
        u_xlat49.x = x_1341;
        let x_1344 : f32 = u_xlat19.x;
        let x_1346 : f32 = u_xlat49.x;
        let x_1348 : f32 = u_xlat69;
        u_xlat69 = ((x_1344 * x_1346) + x_1348);
        let x_1351 : vec4<f32> = u_xlat14;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.z, x_1351.w);
        let x_1354 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec18;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1361.xy, x_1361.z);
        u_xlat49.x = x_1363;
        let x_1366 : f32 = u_xlat19.y;
        let x_1368 : f32 = u_xlat49.x;
        let x_1370 : f32 = u_xlat69;
        u_xlat69 = ((x_1366 * x_1368) + x_1370);
        let x_1373 : vec4<f32> = u_xlat15;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.x, x_1373.y);
        let x_1376 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec19;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1383.xy, x_1383.z);
        u_xlat49.x = x_1385;
        let x_1388 : f32 = u_xlat19.z;
        let x_1390 : f32 = u_xlat49.x;
        let x_1392 : f32 = u_xlat69;
        u_xlat69 = ((x_1388 * x_1390) + x_1392);
        let x_1395 : vec4<f32> = u_xlat16;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.z, x_1395.w);
        let x_1398 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec20;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1405.xy, x_1405.z);
        u_xlat49.x = x_1407;
        let x_1410 : f32 = u_xlat19.w;
        let x_1412 : f32 = u_xlat49.x;
        let x_1414 : f32 = u_xlat69;
        u_xlat69 = ((x_1410 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat17;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec21;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1427.xy, x_1427.z);
        u_xlat49.x = x_1429;
        let x_1432 : f32 = u_xlat20.x;
        let x_1434 : f32 = u_xlat49.x;
        let x_1436 : f32 = u_xlat69;
        u_xlat69 = ((x_1432 * x_1434) + x_1436);
        let x_1439 : vec4<f32> = u_xlat17;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.z, x_1439.w);
        let x_1442 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec22;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1449.xy, x_1449.z);
        u_xlat49.x = x_1451;
        let x_1454 : f32 = u_xlat20.y;
        let x_1456 : f32 = u_xlat49.x;
        let x_1458 : f32 = u_xlat69;
        u_xlat69 = ((x_1454 * x_1456) + x_1458);
        let x_1461 : vec3<f32> = u_xlat30;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
        let x_1464 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec23;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1471.xy, x_1471.z);
        u_xlat49.x = x_1473;
        let x_1476 : f32 = u_xlat20.z;
        let x_1478 : f32 = u_xlat49.x;
        let x_1480 : f32 = u_xlat69;
        u_xlat69 = ((x_1476 * x_1478) + x_1480);
        let x_1483 : vec2<f32> = u_xlat57;
        let x_1485 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec24;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1492.xy, x_1492.z);
        u_xlat49.x = x_1494;
        let x_1497 : f32 = u_xlat20.w;
        let x_1499 : f32 = u_xlat49.x;
        let x_1501 : f32 = u_xlat69;
        u_xlat69 = ((x_1497 * x_1499) + x_1501);
        let x_1504 : vec4<f32> = u_xlat12;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.x, x_1504.y);
        let x_1507 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec25;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1514.xy, x_1514.z);
        u_xlat49.x = x_1516;
        let x_1519 : f32 = u_xlat8.x;
        let x_1521 : f32 = u_xlat49.x;
        let x_1523 : f32 = u_xlat69;
        u_xlat69 = ((x_1519 * x_1521) + x_1523);
        let x_1526 : vec4<f32> = u_xlat12;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.z, x_1526.w);
        let x_1529 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec26;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1536.xy, x_1536.z);
        u_xlat49.x = x_1538;
        let x_1541 : f32 = u_xlat8.y;
        let x_1543 : f32 = u_xlat49.x;
        let x_1545 : f32 = u_xlat69;
        u_xlat69 = ((x_1541 * x_1543) + x_1545);
        let x_1548 : vec2<f32> = u_xlat52;
        let x_1550 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1548.x, x_1548.y, x_1550);
        let x_1557 : vec3<f32> = txVec27;
        let x_1559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1557.xy, x_1557.z);
        u_xlat49.x = x_1559;
        let x_1562 : f32 = u_xlat8.z;
        let x_1564 : f32 = u_xlat49.x;
        let x_1566 : f32 = u_xlat69;
        u_xlat69 = ((x_1562 * x_1564) + x_1566);
        let x_1569 : vec4<f32> = u_xlat7;
        let x_1570 : vec2<f32> = vec2<f32>(x_1569.x, x_1569.y);
        let x_1572 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec28;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1579.xy, x_1579.z);
        u_xlat7.x = x_1581;
        let x_1584 : f32 = u_xlat8.w;
        let x_1586 : f32 = u_xlat7.x;
        let x_1588 : f32 = u_xlat69;
        u_xlat48 = ((x_1584 * x_1586) + x_1588);
      }
    }
  } else {
    let x_1592 : vec4<f32> = vs_TEXCOORD6;
    let x_1593 : vec2<f32> = vec2<f32>(x_1592.x, x_1592.y);
    let x_1595 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
    let x_1602 : vec3<f32> = txVec29;
    let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1602.xy, x_1602.z);
    u_xlat48 = x_1604;
  }
  let x_1606 : f32 = x_342.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1606) + 1.0f);
  let x_1609 : f32 = u_xlat48;
  let x_1611 : f32 = x_342.x_MainLightShadowParams.x;
  let x_1613 : f32 = u_xlat69;
  u_xlat48 = ((x_1609 * x_1611) + x_1613);
  let x_1616 : f32 = vs_TEXCOORD6.z;
  u_xlatb69 = (0.0f >= x_1616);
  let x_1620 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (x_1620 >= 1.0f);
  let x_1622 : bool = u_xlatb69;
  let x_1623 : bool = u_xlatb7;
  u_xlatb69 = (x_1622 | x_1623);
  let x_1625 : bool = u_xlatb69;
  let x_1626 : f32 = u_xlat48;
  u_xlat48 = select(x_1626, 1.0f, x_1625);
  let x_1628 : vec3<f32> = vs_TEXCOORD1;
  let x_1630 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1632 : vec3<f32> = (x_1628 + -(x_1630));
  let x_1633 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
  let x_1635 : vec4<f32> = u_xlat7;
  let x_1637 : vec4<f32> = u_xlat7;
  u_xlat69 = dot(vec3<f32>(x_1635.x, x_1635.y, x_1635.z), vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
  let x_1640 : f32 = u_xlat69;
  let x_1642 : f32 = x_342.x_MainLightShadowParams.z;
  let x_1645 : f32 = x_342.x_MainLightShadowParams.w;
  u_xlat69 = ((x_1640 * x_1642) + x_1645);
  let x_1647 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1647, 0.0f, 1.0f);
  let x_1649 : f32 = u_xlat48;
  u_xlat7.x = (-(x_1649) + 1.0f);
  let x_1653 : f32 = u_xlat69;
  let x_1655 : f32 = u_xlat7.x;
  let x_1657 : f32 = u_xlat48;
  u_xlat48 = ((x_1653 * x_1655) + x_1657);
  let x_1665 : f32 = x_1663.x_MainLightCookieTextureFormat;
  u_xlatb69 = !((x_1665 == -1.0f));
  let x_1667 : bool = u_xlatb69;
  if (x_1667) {
    let x_1670 : vec3<f32> = vs_TEXCOORD1;
    let x_1673 : vec4<f32> = x_1663.x_MainLightWorldToLight[1i];
    let x_1675 : vec2<f32> = (vec2<f32>(x_1670.y, x_1670.y) * vec2<f32>(x_1673.x, x_1673.y));
    let x_1676 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1675.x, x_1675.y, x_1676.z, x_1676.w);
    let x_1679 : vec4<f32> = x_1663.x_MainLightWorldToLight[0i];
    let x_1681 : vec3<f32> = vs_TEXCOORD1;
    let x_1684 : vec4<f32> = u_xlat7;
    let x_1686 : vec2<f32> = ((vec2<f32>(x_1679.x, x_1679.y) * vec2<f32>(x_1681.x, x_1681.x)) + vec2<f32>(x_1684.x, x_1684.y));
    let x_1687 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1686.x, x_1686.y, x_1687.z, x_1687.w);
    let x_1690 : vec4<f32> = x_1663.x_MainLightWorldToLight[2i];
    let x_1692 : vec3<f32> = vs_TEXCOORD1;
    let x_1695 : vec4<f32> = u_xlat7;
    let x_1697 : vec2<f32> = ((vec2<f32>(x_1690.x, x_1690.y) * vec2<f32>(x_1692.z, x_1692.z)) + vec2<f32>(x_1695.x, x_1695.y));
    let x_1698 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1697.x, x_1697.y, x_1698.z, x_1698.w);
    let x_1700 : vec4<f32> = u_xlat7;
    let x_1704 : vec4<f32> = x_1663.x_MainLightWorldToLight[3i];
    let x_1706 : vec2<f32> = (vec2<f32>(x_1700.x, x_1700.y) + vec2<f32>(x_1704.x, x_1704.y));
    let x_1707 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1706.x, x_1706.y, x_1707.z, x_1707.w);
    let x_1709 : vec4<f32> = u_xlat7;
    let x_1712 : vec2<f32> = ((vec2<f32>(x_1709.x, x_1709.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1713 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1712.x, x_1712.y, x_1713.z, x_1713.w);
    let x_1720 : vec4<f32> = u_xlat7;
    let x_1723 : f32 = x_44.x_GlobalMipBias.x;
    let x_1724 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1720.x, x_1720.y), x_1723);
    u_xlat7 = x_1724;
    let x_1727 : f32 = x_1663.x_MainLightCookieTextureFormat;
    let x_1729 : f32 = x_1663.x_MainLightCookieTextureFormat;
    let x_1731 : f32 = x_1663.x_MainLightCookieTextureFormat;
    let x_1733 : f32 = x_1663.x_MainLightCookieTextureFormat;
    let x_1734 : vec4<f32> = vec4<f32>(x_1727, x_1729, x_1731, x_1733);
    let x_1742 : vec4<bool> = (vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1734.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1742.x, x_1742.y);
    let x_1745 : bool = u_xlatb8.y;
    if (x_1745) {
      let x_1750 : f32 = u_xlat7.w;
      x_1746 = x_1750;
    } else {
      let x_1753 : f32 = u_xlat7.x;
      x_1746 = x_1753;
    }
    let x_1754 : f32 = x_1746;
    u_xlat69 = x_1754;
    let x_1756 : bool = u_xlatb8.x;
    if (x_1756) {
      let x_1760 : vec4<f32> = u_xlat7;
      x_1757 = vec3<f32>(x_1760.x, x_1760.y, x_1760.z);
    } else {
      let x_1763 : f32 = u_xlat69;
      x_1757 = vec3<f32>(x_1763, x_1763, x_1763);
    }
    let x_1765 : vec3<f32> = x_1757;
    let x_1766 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1772 : vec4<f32> = u_xlat7;
  let x_1775 : vec4<f32> = x_44.x_MainLightColor;
  let x_1777 : vec3<f32> = (vec3<f32>(x_1772.x, x_1772.y, x_1772.z) * vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
  let x_1778 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
  let x_1780 : f32 = u_xlat27;
  let x_1782 : vec4<f32> = u_xlat7;
  let x_1784 : vec3<f32> = (vec3<f32>(x_1780, x_1780, x_1780) * vec3<f32>(x_1782.x, x_1782.y, x_1782.z));
  let x_1785 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1784.x, x_1784.y, x_1784.z, x_1785.w);
  let x_1787 : vec3<f32> = u_xlat4;
  let x_1789 : vec3<f32> = u_xlat3;
  u_xlat69 = dot(-(x_1787), x_1789);
  let x_1791 : f32 = u_xlat69;
  let x_1792 : f32 = u_xlat69;
  u_xlat69 = (x_1791 + x_1792);
  let x_1794 : vec3<f32> = u_xlat3;
  let x_1795 : f32 = u_xlat69;
  let x_1799 : vec3<f32> = u_xlat4;
  let x_1801 : vec3<f32> = ((x_1794 * -(vec3<f32>(x_1795, x_1795, x_1795))) + -(x_1799));
  let x_1802 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1802.w);
  let x_1804 : vec3<f32> = u_xlat3;
  let x_1805 : vec3<f32> = u_xlat4;
  u_xlat69 = dot(x_1804, x_1805);
  let x_1807 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1807, 0.0f, 1.0f);
  let x_1809 : f32 = u_xlat69;
  u_xlat69 = (-(x_1809) + 1.0f);
  let x_1812 : f32 = u_xlat69;
  let x_1813 : f32 = u_xlat69;
  u_xlat69 = (x_1812 * x_1813);
  let x_1815 : f32 = u_xlat69;
  let x_1816 : f32 = u_xlat69;
  u_xlat69 = (x_1815 * x_1816);
  let x_1819 : f32 = u_xlat63;
  u_xlat70 = ((-(x_1819) * 0.699999988f) + 1.700000048f);
  let x_1825 : f32 = u_xlat63;
  let x_1826 : f32 = u_xlat70;
  u_xlat63 = (x_1825 * x_1826);
  let x_1828 : f32 = u_xlat63;
  u_xlat63 = (x_1828 * 6.0f);
  let x_1839 : vec4<f32> = u_xlat8;
  let x_1841 : f32 = u_xlat63;
  let x_1842 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1839.x, x_1839.y, x_1839.z), x_1841);
  u_xlat8 = x_1842;
  let x_1844 : f32 = u_xlat8.w;
  u_xlat63 = (x_1844 + -1.0f);
  let x_1851 : f32 = x_1849.unity_SpecCube0_HDR.w;
  let x_1852 : f32 = u_xlat63;
  u_xlat63 = ((x_1851 * x_1852) + 1.0f);
  let x_1855 : f32 = u_xlat63;
  u_xlat63 = max(x_1855, 0.0f);
  let x_1857 : f32 = u_xlat63;
  u_xlat63 = log2(x_1857);
  let x_1859 : f32 = u_xlat63;
  let x_1861 : f32 = x_1849.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_1859 * x_1861);
  let x_1863 : f32 = u_xlat63;
  u_xlat63 = exp2(x_1863);
  let x_1865 : f32 = u_xlat63;
  let x_1867 : f32 = x_1849.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_1865 * x_1867);
  let x_1869 : vec4<f32> = u_xlat8;
  let x_1871 : f32 = u_xlat63;
  let x_1873 : vec3<f32> = (vec3<f32>(x_1869.x, x_1869.y, x_1869.z) * vec3<f32>(x_1871, x_1871, x_1871));
  let x_1874 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
  let x_1876 : f32 = u_xlat66;
  let x_1878 : f32 = u_xlat66;
  let x_1882 : vec2<f32> = ((vec2<f32>(x_1876, x_1876) * vec2<f32>(x_1878, x_1878)) + vec2<f32>(-1.0f, 1.0f));
  let x_1883 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1882.x, x_1882.y, x_1883.z, x_1883.w);
  let x_1886 : f32 = u_xlat9.y;
  u_xlat63 = (1.0f / x_1886);
  let x_1888 : vec4<f32> = u_xlat0;
  let x_1891 : f32 = u_xlat65;
  u_xlat30 = (-(vec3<f32>(x_1888.x, x_1888.y, x_1888.z)) + vec3<f32>(x_1891, x_1891, x_1891));
  let x_1894 : f32 = u_xlat69;
  let x_1896 : vec3<f32> = u_xlat30;
  let x_1898 : vec4<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_1894, x_1894, x_1894) * x_1896) + vec3<f32>(x_1898.x, x_1898.y, x_1898.z));
  let x_1901 : f32 = u_xlat63;
  let x_1903 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1901, x_1901, x_1901) * x_1903);
  let x_1905 : vec4<f32> = u_xlat8;
  let x_1907 : vec3<f32> = u_xlat30;
  let x_1908 : vec3<f32> = (vec3<f32>(x_1905.x, x_1905.y, x_1905.z) * x_1907);
  let x_1909 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1908.x, x_1908.y, x_1908.z, x_1909.w);
  let x_1911 : vec4<f32> = u_xlat5;
  let x_1913 : vec3<f32> = u_xlat22;
  let x_1915 : vec4<f32> = u_xlat8;
  let x_1917 : vec3<f32> = ((vec3<f32>(x_1911.x, x_1911.y, x_1911.z) * x_1913) + vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
  let x_1918 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
  let x_1920 : f32 = u_xlat48;
  let x_1923 : f32 = x_1849.unity_LightData.z;
  u_xlat63 = (x_1920 * x_1923);
  let x_1925 : vec3<f32> = u_xlat3;
  let x_1927 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_1925, vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
  let x_1930 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1930, 0.0f, 1.0f);
  let x_1932 : f32 = u_xlat63;
  let x_1933 : f32 = u_xlat65;
  u_xlat63 = (x_1932 * x_1933);
  let x_1935 : f32 = u_xlat63;
  let x_1937 : vec4<f32> = u_xlat7;
  let x_1939 : vec3<f32> = (vec3<f32>(x_1935, x_1935, x_1935) * vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
  let x_1940 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1939.x, x_1939.y, x_1939.z, x_1940.w);
  let x_1942 : vec3<f32> = u_xlat4;
  let x_1944 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1946 : vec3<f32> = (x_1942 + vec3<f32>(x_1944.x, x_1944.y, x_1944.z));
  let x_1947 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
  let x_1949 : vec4<f32> = u_xlat8;
  let x_1951 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_1949.x, x_1949.y, x_1949.z), vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
  let x_1954 : f32 = u_xlat63;
  u_xlat63 = max(x_1954, 1.17549435e-37f);
  let x_1957 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_1957);
  let x_1959 : f32 = u_xlat63;
  let x_1961 : vec4<f32> = u_xlat8;
  let x_1963 : vec3<f32> = (vec3<f32>(x_1959, x_1959, x_1959) * vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1963.x, x_1963.y, x_1963.z, x_1964.w);
  let x_1966 : vec3<f32> = u_xlat3;
  let x_1967 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(x_1966, vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
  let x_1970 : f32 = u_xlat63;
  u_xlat63 = clamp(x_1970, 0.0f, 1.0f);
  let x_1973 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1975 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(vec3<f32>(x_1973.x, x_1973.y, x_1973.z), vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1978, 0.0f, 1.0f);
  let x_1980 : f32 = u_xlat63;
  let x_1981 : f32 = u_xlat63;
  u_xlat63 = (x_1980 * x_1981);
  let x_1983 : f32 = u_xlat63;
  let x_1985 : f32 = u_xlat9.x;
  u_xlat63 = ((x_1983 * x_1985) + 1.000010014f);
  let x_1989 : f32 = u_xlat65;
  let x_1990 : f32 = u_xlat65;
  u_xlat65 = (x_1989 * x_1990);
  let x_1992 : f32 = u_xlat63;
  let x_1993 : f32 = u_xlat63;
  u_xlat63 = (x_1992 * x_1993);
  let x_1995 : f32 = u_xlat65;
  u_xlat65 = max(x_1995, 0.100000001f);
  let x_1998 : f32 = u_xlat63;
  let x_1999 : f32 = u_xlat65;
  u_xlat63 = (x_1998 * x_1999);
  let x_2001 : f32 = u_xlat68;
  let x_2002 : f32 = u_xlat63;
  u_xlat63 = (x_2001 * x_2002);
  let x_2004 : f32 = u_xlat67;
  let x_2005 : f32 = u_xlat63;
  u_xlat63 = (x_2004 / x_2005);
  let x_2007 : vec4<f32> = u_xlat0;
  let x_2009 : f32 = u_xlat63;
  let x_2012 : vec3<f32> = u_xlat22;
  let x_2013 : vec3<f32> = ((vec3<f32>(x_2007.x, x_2007.y, x_2007.z) * vec3<f32>(x_2009, x_2009, x_2009)) + x_2012);
  let x_2014 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
  let x_2016 : vec4<f32> = u_xlat7;
  let x_2018 : vec4<f32> = u_xlat8;
  let x_2020 : vec3<f32> = (vec3<f32>(x_2016.x, x_2016.y, x_2016.z) * vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
  let x_2021 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2020.x, x_2020.y, x_2020.z, x_2021.w);
  let x_2024 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2026 : f32 = x_1849.unity_LightData.y;
  u_xlat63 = min(x_2024, x_2026);
  let x_2030 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2030));
  let x_2034 : f32 = x_1663.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2036 : f32 = x_1663.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2038 : f32 = x_1663.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2040 : f32 = x_1663.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2041 : vec4<f32> = vec4<f32>(x_2034, x_2036, x_2038, x_2040);
  let x_2048 : vec4<bool> = (vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2041.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb48 = vec2<bool>(x_2048.x, x_2048.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2059 : u32 = u_xlatu_loop_1;
    let x_2060 : u32 = u_xlatu63;
    if ((x_2059 < x_2060)) {
    } else {
      break;
    }
    let x_2063 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2063 >> 2u);
    let x_2067 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2067 & 3u));
    let x_2070 : u32 = u_xlatu66;
    let x_2073 : vec4<f32> = x_1849.unity_LightIndices[bitcast<i32>(x_2070)];
    let x_2083 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2088 : vec4<u32> = indexable[x_2083];
    u_xlat66 = dot(x_2073, bitcast<vec4<f32>>(x_2088));
    let x_2091 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2091));
    let x_2094 : vec3<f32> = vs_TEXCOORD1;
    let x_2106 : u32 = u_xlatu66;
    let x_2109 : vec4<f32> = x_2105.x_AdditionalLightsPosition[bitcast<i32>(x_2106)];
    let x_2112 : u32 = u_xlatu66;
    let x_2115 : vec4<f32> = x_2105.x_AdditionalLightsPosition[bitcast<i32>(x_2112)];
    u_xlat30 = ((-(x_2094) * vec3<f32>(x_2109.w, x_2109.w, x_2109.w)) + vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
    let x_2118 : vec3<f32> = u_xlat30;
    let x_2119 : vec3<f32> = u_xlat30;
    u_xlat70 = dot(x_2118, x_2119);
    let x_2121 : f32 = u_xlat70;
    u_xlat70 = max(x_2121, 6.10351562e-05f);
    let x_2125 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2125);
    let x_2127 : f32 = u_xlat71;
    let x_2129 : vec3<f32> = u_xlat30;
    let x_2130 : vec3<f32> = (vec3<f32>(x_2127, x_2127, x_2127) * x_2129);
    let x_2131 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2130.x, x_2130.y, x_2130.z, x_2131.w);
    let x_2134 : f32 = u_xlat70;
    u_xlat73 = (1.0f / x_2134);
    let x_2136 : f32 = u_xlat70;
    let x_2137 : u32 = u_xlatu66;
    let x_2140 : f32 = x_2105.x_AdditionalLightsAttenuation[bitcast<i32>(x_2137)].x;
    u_xlat70 = (x_2136 * x_2140);
    let x_2142 : f32 = u_xlat70;
    let x_2144 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2142) * x_2144) + 1.0f);
    let x_2147 : f32 = u_xlat70;
    u_xlat70 = max(x_2147, 0.0f);
    let x_2149 : f32 = u_xlat70;
    let x_2150 : f32 = u_xlat70;
    u_xlat70 = (x_2149 * x_2150);
    let x_2152 : f32 = u_xlat70;
    let x_2153 : f32 = u_xlat73;
    u_xlat70 = (x_2152 * x_2153);
    let x_2155 : u32 = u_xlatu66;
    let x_2158 : vec4<f32> = x_2105.x_AdditionalLightsSpotDir[bitcast<i32>(x_2155)];
    let x_2160 : vec4<f32> = u_xlat10;
    u_xlat73 = dot(vec3<f32>(x_2158.x, x_2158.y, x_2158.z), vec3<f32>(x_2160.x, x_2160.y, x_2160.z));
    let x_2163 : f32 = u_xlat73;
    let x_2164 : u32 = u_xlatu66;
    let x_2167 : f32 = x_2105.x_AdditionalLightsAttenuation[bitcast<i32>(x_2164)].z;
    let x_2169 : u32 = u_xlatu66;
    let x_2172 : f32 = x_2105.x_AdditionalLightsAttenuation[bitcast<i32>(x_2169)].w;
    u_xlat73 = ((x_2163 * x_2167) + x_2172);
    let x_2174 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2174, 0.0f, 1.0f);
    let x_2176 : f32 = u_xlat73;
    let x_2177 : f32 = u_xlat73;
    u_xlat73 = (x_2176 * x_2177);
    let x_2179 : f32 = u_xlat70;
    let x_2180 : f32 = u_xlat73;
    u_xlat70 = (x_2179 * x_2180);
    let x_2183 : u32 = u_xlatu66;
    u_xlatu73 = (x_2183 >> 5u);
    let x_2186 : u32 = u_xlatu66;
    u_xlati11 = (1i << bitcast<u32>((bitcast<i32>(x_2186) & 31i)));
    let x_2192 : i32 = u_xlati11;
    let x_2194 : u32 = u_xlatu73;
    let x_2197 : f32 = x_1663.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2194)].el;
    u_xlati73 = bitcast<i32>((bitcast<u32>(x_2192) & bitcast<u32>(x_2197)));
    let x_2201 : i32 = u_xlati73;
    if ((x_2201 != 0i)) {
      let x_2211 : u32 = u_xlatu66;
      let x_2214 : f32 = x_2210.x_AdditionalLightsLightTypes[bitcast<i32>(x_2211)].el;
      u_xlati73 = i32(x_2214);
      let x_2216 : i32 = u_xlati73;
      u_xlati11 = select(1i, 0i, (x_2216 != 0i));
      let x_2220 : u32 = u_xlatu66;
      u_xlati32 = (bitcast<i32>(x_2220) << bitcast<u32>(2i));
      let x_2223 : i32 = u_xlati11;
      if ((x_2223 != 0i)) {
        let x_2227 : vec3<f32> = vs_TEXCOORD1;
        let x_2229 : i32 = u_xlati32;
        let x_2232 : i32 = u_xlati32;
        let x_2236 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[((x_2229 + 1i) / 4i)][((x_2232 + 1i) % 4i)];
        let x_2238 : vec3<f32> = (vec3<f32>(x_2227.y, x_2227.y, x_2227.y) * vec3<f32>(x_2236.x, x_2236.y, x_2236.w));
        let x_2239 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2238.x, x_2239.y, x_2238.y, x_2238.z);
        let x_2241 : i32 = u_xlati32;
        let x_2243 : i32 = u_xlati32;
        let x_2246 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[(x_2241 / 4i)][(x_2243 % 4i)];
        let x_2248 : vec3<f32> = vs_TEXCOORD1;
        let x_2251 : vec4<f32> = u_xlat11;
        let x_2253 : vec3<f32> = ((vec3<f32>(x_2246.x, x_2246.y, x_2246.w) * vec3<f32>(x_2248.x, x_2248.x, x_2248.x)) + vec3<f32>(x_2251.x, x_2251.z, x_2251.w));
        let x_2254 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2253.x, x_2254.y, x_2253.y, x_2253.z);
        let x_2256 : i32 = u_xlati32;
        let x_2259 : i32 = u_xlati32;
        let x_2263 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[((x_2256 + 2i) / 4i)][((x_2259 + 2i) % 4i)];
        let x_2265 : vec3<f32> = vs_TEXCOORD1;
        let x_2268 : vec4<f32> = u_xlat11;
        let x_2270 : vec3<f32> = ((vec3<f32>(x_2263.x, x_2263.y, x_2263.w) * vec3<f32>(x_2265.z, x_2265.z, x_2265.z)) + vec3<f32>(x_2268.x, x_2268.z, x_2268.w));
        let x_2271 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2270.x, x_2271.y, x_2270.y, x_2270.z);
        let x_2273 : vec4<f32> = u_xlat11;
        let x_2275 : i32 = u_xlati32;
        let x_2278 : i32 = u_xlati32;
        let x_2282 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[((x_2275 + 3i) / 4i)][((x_2278 + 3i) % 4i)];
        let x_2284 : vec3<f32> = (vec3<f32>(x_2273.x, x_2273.z, x_2273.w) + vec3<f32>(x_2282.x, x_2282.y, x_2282.w));
        let x_2285 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2284.x, x_2285.y, x_2284.y, x_2284.z);
        let x_2287 : vec4<f32> = u_xlat11;
        let x_2289 : vec4<f32> = u_xlat11;
        let x_2291 : vec2<f32> = (vec2<f32>(x_2287.x, x_2287.z) / vec2<f32>(x_2289.w, x_2289.w));
        let x_2292 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2291.x, x_2292.y, x_2291.y, x_2292.w);
        let x_2294 : vec4<f32> = u_xlat11;
        let x_2297 : vec2<f32> = ((vec2<f32>(x_2294.x, x_2294.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2298 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2297.x, x_2298.y, x_2297.y, x_2298.w);
        let x_2300 : vec4<f32> = u_xlat11;
        let x_2304 : vec2<f32> = clamp(vec2<f32>(x_2300.x, x_2300.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2305 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2304.x, x_2305.y, x_2304.y, x_2305.w);
        let x_2307 : u32 = u_xlatu66;
        let x_2310 : vec4<f32> = x_2210.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2307)];
        let x_2312 : vec4<f32> = u_xlat11;
        let x_2315 : u32 = u_xlatu66;
        let x_2318 : vec4<f32> = x_2210.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2315)];
        let x_2320 : vec2<f32> = ((vec2<f32>(x_2310.x, x_2310.y) * vec2<f32>(x_2312.x, x_2312.z)) + vec2<f32>(x_2318.z, x_2318.w));
        let x_2321 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2320.x, x_2321.y, x_2320.y, x_2321.w);
      } else {
        let x_2325 : i32 = u_xlati73;
        u_xlatb73 = (x_2325 == 1i);
        let x_2327 : bool = u_xlatb73;
        u_xlati73 = select(0i, 1i, x_2327);
        let x_2329 : i32 = u_xlati73;
        if ((x_2329 != 0i)) {
          let x_2333 : vec3<f32> = vs_TEXCOORD1;
          let x_2335 : i32 = u_xlati32;
          let x_2338 : i32 = u_xlati32;
          let x_2342 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[((x_2335 + 1i) / 4i)][((x_2338 + 1i) % 4i)];
          let x_2344 : vec2<f32> = (vec2<f32>(x_2333.y, x_2333.y) * vec2<f32>(x_2342.x, x_2342.y));
          let x_2345 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2344.x, x_2344.y, x_2345.z, x_2345.w);
          let x_2347 : i32 = u_xlati32;
          let x_2349 : i32 = u_xlati32;
          let x_2352 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[(x_2347 / 4i)][(x_2349 % 4i)];
          let x_2354 : vec3<f32> = vs_TEXCOORD1;
          let x_2357 : vec4<f32> = u_xlat12;
          let x_2359 : vec2<f32> = ((vec2<f32>(x_2352.x, x_2352.y) * vec2<f32>(x_2354.x, x_2354.x)) + vec2<f32>(x_2357.x, x_2357.y));
          let x_2360 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2359.x, x_2359.y, x_2360.z, x_2360.w);
          let x_2362 : i32 = u_xlati32;
          let x_2365 : i32 = u_xlati32;
          let x_2369 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[((x_2362 + 2i) / 4i)][((x_2365 + 2i) % 4i)];
          let x_2371 : vec3<f32> = vs_TEXCOORD1;
          let x_2374 : vec4<f32> = u_xlat12;
          let x_2376 : vec2<f32> = ((vec2<f32>(x_2369.x, x_2369.y) * vec2<f32>(x_2371.z, x_2371.z)) + vec2<f32>(x_2374.x, x_2374.y));
          let x_2377 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2376.x, x_2376.y, x_2377.z, x_2377.w);
          let x_2379 : vec4<f32> = u_xlat12;
          let x_2381 : i32 = u_xlati32;
          let x_2384 : i32 = u_xlati32;
          let x_2388 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[((x_2381 + 3i) / 4i)][((x_2384 + 3i) % 4i)];
          let x_2390 : vec2<f32> = (vec2<f32>(x_2379.x, x_2379.y) + vec2<f32>(x_2388.x, x_2388.y));
          let x_2391 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2390.x, x_2390.y, x_2391.z, x_2391.w);
          let x_2393 : vec4<f32> = u_xlat12;
          let x_2396 : vec2<f32> = ((vec2<f32>(x_2393.x, x_2393.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2397 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2396.x, x_2396.y, x_2397.z, x_2397.w);
          let x_2399 : vec4<f32> = u_xlat12;
          let x_2401 : vec2<f32> = fract(vec2<f32>(x_2399.x, x_2399.y));
          let x_2402 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2401.x, x_2401.y, x_2402.z, x_2402.w);
          let x_2404 : u32 = u_xlatu66;
          let x_2407 : vec4<f32> = x_2210.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2404)];
          let x_2409 : vec4<f32> = u_xlat12;
          let x_2412 : u32 = u_xlatu66;
          let x_2415 : vec4<f32> = x_2210.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2412)];
          let x_2417 : vec2<f32> = ((vec2<f32>(x_2407.x, x_2407.y) * vec2<f32>(x_2409.x, x_2409.y)) + vec2<f32>(x_2415.z, x_2415.w));
          let x_2418 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2417.x, x_2418.y, x_2417.y, x_2418.w);
        } else {
          let x_2421 : vec3<f32> = vs_TEXCOORD1;
          let x_2423 : i32 = u_xlati32;
          let x_2426 : i32 = u_xlati32;
          let x_2430 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[((x_2423 + 1i) / 4i)][((x_2426 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2421.y, x_2421.y, x_2421.y, x_2421.y) * x_2430);
          let x_2432 : i32 = u_xlati32;
          let x_2434 : i32 = u_xlati32;
          let x_2437 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[(x_2432 / 4i)][(x_2434 % 4i)];
          let x_2438 : vec3<f32> = vs_TEXCOORD1;
          let x_2441 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2437 * vec4<f32>(x_2438.x, x_2438.x, x_2438.x, x_2438.x)) + x_2441);
          let x_2443 : i32 = u_xlati32;
          let x_2446 : i32 = u_xlati32;
          let x_2450 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[((x_2443 + 2i) / 4i)][((x_2446 + 2i) % 4i)];
          let x_2451 : vec3<f32> = vs_TEXCOORD1;
          let x_2454 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2450 * vec4<f32>(x_2451.z, x_2451.z, x_2451.z, x_2451.z)) + x_2454);
          let x_2456 : vec4<f32> = u_xlat12;
          let x_2457 : i32 = u_xlati32;
          let x_2460 : i32 = u_xlati32;
          let x_2464 : vec4<f32> = x_2210.x_AdditionalLightsWorldToLights[((x_2457 + 3i) / 4i)][((x_2460 + 3i) % 4i)];
          u_xlat12 = (x_2456 + x_2464);
          let x_2466 : vec4<f32> = u_xlat12;
          let x_2468 : vec4<f32> = u_xlat12;
          let x_2470 : vec3<f32> = (vec3<f32>(x_2466.x, x_2466.y, x_2466.z) / vec3<f32>(x_2468.w, x_2468.w, x_2468.w));
          let x_2471 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2470.x, x_2470.y, x_2470.z, x_2471.w);
          let x_2473 : vec4<f32> = u_xlat12;
          let x_2475 : vec4<f32> = u_xlat12;
          u_xlat73 = dot(vec3<f32>(x_2473.x, x_2473.y, x_2473.z), vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
          let x_2478 : f32 = u_xlat73;
          u_xlat73 = inverseSqrt(x_2478);
          let x_2480 : f32 = u_xlat73;
          let x_2482 : vec4<f32> = u_xlat12;
          let x_2484 : vec3<f32> = (vec3<f32>(x_2480, x_2480, x_2480) * vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
          let x_2485 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
          let x_2487 : vec4<f32> = u_xlat12;
          u_xlat73 = dot(abs(vec3<f32>(x_2487.x, x_2487.y, x_2487.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2492 : f32 = u_xlat73;
          u_xlat73 = max(x_2492, 0.000001f);
          let x_2495 : f32 = u_xlat73;
          u_xlat73 = (1.0f / x_2495);
          let x_2497 : f32 = u_xlat73;
          let x_2499 : vec4<f32> = u_xlat12;
          let x_2501 : vec3<f32> = (vec3<f32>(x_2497, x_2497, x_2497) * vec3<f32>(x_2499.z, x_2499.x, x_2499.y));
          let x_2502 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2501.x, x_2501.y, x_2501.z, x_2502.w);
          let x_2505 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2505);
          let x_2509 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2509, 0.0f, 1.0f);
          let x_2515 : vec4<f32> = u_xlat13;
          let x_2518 : vec4<bool> = (vec4<f32>(x_2515.y, x_2515.y, x_2515.z, x_2515.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2519 : vec2<bool> = vec2<bool>(x_2518.x, x_2518.z);
          let x_2520 : vec3<bool> = u_xlatb32;
          u_xlatb32 = vec3<bool>(x_2519.x, x_2520.y, x_2519.y);
          let x_2524 : bool = u_xlatb32.x;
          if (x_2524) {
            let x_2529 : f32 = u_xlat13.x;
            x_2525 = x_2529;
          } else {
            let x_2532 : f32 = u_xlat13.x;
            x_2525 = -(x_2532);
          }
          let x_2534 : f32 = x_2525;
          u_xlat32.x = x_2534;
          let x_2537 : bool = u_xlatb32.z;
          if (x_2537) {
            let x_2542 : f32 = u_xlat13.x;
            x_2538 = x_2542;
          } else {
            let x_2545 : f32 = u_xlat13.x;
            x_2538 = -(x_2545);
          }
          let x_2547 : f32 = x_2538;
          u_xlat32.z = x_2547;
          let x_2549 : vec4<f32> = u_xlat12;
          let x_2551 : f32 = u_xlat73;
          let x_2554 : vec3<f32> = u_xlat32;
          let x_2556 : vec2<f32> = ((vec2<f32>(x_2549.x, x_2549.y) * vec2<f32>(x_2551, x_2551)) + vec2<f32>(x_2554.x, x_2554.z));
          let x_2557 : vec3<f32> = u_xlat32;
          u_xlat32 = vec3<f32>(x_2556.x, x_2557.y, x_2556.y);
          let x_2559 : vec3<f32> = u_xlat32;
          let x_2562 : vec2<f32> = ((vec2<f32>(x_2559.x, x_2559.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2563 : vec3<f32> = u_xlat32;
          u_xlat32 = vec3<f32>(x_2562.x, x_2563.y, x_2562.y);
          let x_2565 : vec3<f32> = u_xlat32;
          let x_2569 : vec2<f32> = clamp(vec2<f32>(x_2565.x, x_2565.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2570 : vec3<f32> = u_xlat32;
          u_xlat32 = vec3<f32>(x_2569.x, x_2570.y, x_2569.y);
          let x_2572 : u32 = u_xlatu66;
          let x_2575 : vec4<f32> = x_2210.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2572)];
          let x_2577 : vec3<f32> = u_xlat32;
          let x_2580 : u32 = u_xlatu66;
          let x_2583 : vec4<f32> = x_2210.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2580)];
          let x_2585 : vec2<f32> = ((vec2<f32>(x_2575.x, x_2575.y) * vec2<f32>(x_2577.x, x_2577.z)) + vec2<f32>(x_2583.z, x_2583.w));
          let x_2586 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2585.x, x_2586.y, x_2585.y, x_2586.w);
        }
      }
      let x_2593 : vec4<f32> = u_xlat11;
      let x_2596 : f32 = x_44.x_GlobalMipBias.x;
      let x_2597 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2593.x, x_2593.z), x_2596);
      u_xlat11 = x_2597;
      let x_2599 : bool = u_xlatb48.y;
      if (x_2599) {
        let x_2604 : f32 = u_xlat11.w;
        x_2600 = x_2604;
      } else {
        let x_2607 : f32 = u_xlat11.x;
        x_2600 = x_2607;
      }
      let x_2608 : f32 = x_2600;
      u_xlat73 = x_2608;
      let x_2610 : bool = u_xlatb48.x;
      if (x_2610) {
        let x_2614 : vec4<f32> = u_xlat11;
        x_2611 = vec3<f32>(x_2614.x, x_2614.y, x_2614.z);
      } else {
        let x_2617 : f32 = u_xlat73;
        x_2611 = vec3<f32>(x_2617, x_2617, x_2617);
      }
      let x_2619 : vec3<f32> = x_2611;
      let x_2620 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2626 : vec4<f32> = u_xlat11;
    let x_2628 : u32 = u_xlatu66;
    let x_2631 : vec4<f32> = x_2105.x_AdditionalLightsColor[bitcast<i32>(x_2628)];
    let x_2633 : vec3<f32> = (vec3<f32>(x_2626.x, x_2626.y, x_2626.z) * vec3<f32>(x_2631.x, x_2631.y, x_2631.z));
    let x_2634 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2633.x, x_2633.y, x_2633.z, x_2634.w);
    let x_2636 : f32 = u_xlat27;
    let x_2638 : vec4<f32> = u_xlat11;
    let x_2640 : vec3<f32> = (vec3<f32>(x_2636, x_2636, x_2636) * vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
    let x_2641 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2641.w);
    let x_2643 : vec3<f32> = u_xlat3;
    let x_2644 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_2643, vec3<f32>(x_2644.x, x_2644.y, x_2644.z));
    let x_2647 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2647, 0.0f, 1.0f);
    let x_2649 : f32 = u_xlat66;
    let x_2650 : f32 = u_xlat70;
    u_xlat66 = (x_2649 * x_2650);
    let x_2652 : f32 = u_xlat66;
    let x_2654 : vec4<f32> = u_xlat11;
    let x_2656 : vec3<f32> = (vec3<f32>(x_2652, x_2652, x_2652) * vec3<f32>(x_2654.x, x_2654.y, x_2654.z));
    let x_2657 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2657.w);
    let x_2659 : vec3<f32> = u_xlat30;
    let x_2660 : f32 = u_xlat71;
    let x_2663 : vec3<f32> = u_xlat4;
    u_xlat30 = ((x_2659 * vec3<f32>(x_2660, x_2660, x_2660)) + x_2663);
    let x_2665 : vec3<f32> = u_xlat30;
    let x_2666 : vec3<f32> = u_xlat30;
    u_xlat66 = dot(x_2665, x_2666);
    let x_2668 : f32 = u_xlat66;
    u_xlat66 = max(x_2668, 1.17549435e-37f);
    let x_2670 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_2670);
    let x_2672 : f32 = u_xlat66;
    let x_2674 : vec3<f32> = u_xlat30;
    u_xlat30 = (vec3<f32>(x_2672, x_2672, x_2672) * x_2674);
    let x_2676 : vec3<f32> = u_xlat3;
    let x_2677 : vec3<f32> = u_xlat30;
    u_xlat66 = dot(x_2676, x_2677);
    let x_2679 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2679, 0.0f, 1.0f);
    let x_2681 : vec4<f32> = u_xlat10;
    let x_2683 : vec3<f32> = u_xlat30;
    u_xlat70 = dot(vec3<f32>(x_2681.x, x_2681.y, x_2681.z), x_2683);
    let x_2685 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2685, 0.0f, 1.0f);
    let x_2687 : f32 = u_xlat66;
    let x_2688 : f32 = u_xlat66;
    u_xlat66 = (x_2687 * x_2688);
    let x_2690 : f32 = u_xlat66;
    let x_2692 : f32 = u_xlat9.x;
    u_xlat66 = ((x_2690 * x_2692) + 1.000010014f);
    let x_2695 : f32 = u_xlat70;
    let x_2696 : f32 = u_xlat70;
    u_xlat70 = (x_2695 * x_2696);
    let x_2698 : f32 = u_xlat66;
    let x_2699 : f32 = u_xlat66;
    u_xlat66 = (x_2698 * x_2699);
    let x_2701 : f32 = u_xlat70;
    u_xlat70 = max(x_2701, 0.100000001f);
    let x_2703 : f32 = u_xlat66;
    let x_2704 : f32 = u_xlat70;
    u_xlat66 = (x_2703 * x_2704);
    let x_2706 : f32 = u_xlat68;
    let x_2707 : f32 = u_xlat66;
    u_xlat66 = (x_2706 * x_2707);
    let x_2709 : f32 = u_xlat67;
    let x_2710 : f32 = u_xlat66;
    u_xlat66 = (x_2709 / x_2710);
    let x_2712 : vec4<f32> = u_xlat0;
    let x_2714 : f32 = u_xlat66;
    let x_2717 : vec3<f32> = u_xlat22;
    u_xlat30 = ((vec3<f32>(x_2712.x, x_2712.y, x_2712.z) * vec3<f32>(x_2714, x_2714, x_2714)) + x_2717);
    let x_2719 : vec3<f32> = u_xlat30;
    let x_2720 : vec4<f32> = u_xlat11;
    let x_2723 : vec4<f32> = u_xlat8;
    let x_2725 : vec3<f32> = ((x_2719 * vec3<f32>(x_2720.x, x_2720.y, x_2720.z)) + vec3<f32>(x_2723.x, x_2723.y, x_2723.z));
    let x_2726 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2725.x, x_2725.y, x_2725.z, x_2726.w);

    continuing {
      let x_2728 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2728 + bitcast<u32>(1i));
    }
  }
  let x_2730 : vec4<f32> = u_xlat5;
  let x_2732 : vec3<f32> = u_xlat6;
  let x_2735 : vec4<f32> = u_xlat7;
  let x_2737 : vec3<f32> = ((vec3<f32>(x_2730.x, x_2730.y, x_2730.z) * vec3<f32>(x_2732.x, x_2732.x, x_2732.x)) + vec3<f32>(x_2735.x, x_2735.y, x_2735.z));
  let x_2738 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2737.x, x_2737.y, x_2737.z, x_2738.w);
  let x_2740 : vec4<f32> = u_xlat8;
  let x_2742 : vec4<f32> = u_xlat0;
  let x_2744 : vec3<f32> = (vec3<f32>(x_2740.x, x_2740.y, x_2740.z) + vec3<f32>(x_2742.x, x_2742.y, x_2742.z));
  let x_2745 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2744.x, x_2744.y, x_2744.z, x_2745.w);
  let x_2749 : vec3<f32> = u_xlat2;
  let x_2751 : vec4<f32> = x_57.x_EmissionColor;
  let x_2754 : vec4<f32> = u_xlat0;
  let x_2756 : vec3<f32> = ((x_2749 * vec3<f32>(x_2751.x, x_2751.y, x_2751.z)) + vec3<f32>(x_2754.x, x_2754.y, x_2754.z));
  let x_2757 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2756.x, x_2756.y, x_2756.z, x_2757.w);
  let x_2762 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2762 == 1.0f);
  let x_2764 : bool = u_xlatb0;
  if (x_2764) {
    let x_2769 : f32 = u_xlat1.x;
    x_2765 = x_2769;
  } else {
    x_2765 = 1.0f;
  }
  let x_2771 : f32 = x_2765;
  SV_Target0.w = x_2771;
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

