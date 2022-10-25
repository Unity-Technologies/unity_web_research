struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  Texture2D_25A083BC_TexelSize : vec4<f32>,
  Texture2D_6EEDD32E_TexelSize : vec4<f32>,
  Texture2D_E9EC22CC_TexelSize : vec4<f32>,
  x_Hue : f32,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

@group(0) @binding(6) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(6) var<uniform> x_190 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_E9EC22CC : sampler;

@group(0) @binding(7) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_6EEDD32E : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_359 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_706 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_773 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1224 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1338 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb13 : bool;
  var u_xlat13 : f32;
  var u_xlat26 : f32;
  var x_146 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlatb39 : bool;
  var x_211 : f32;
  var x_220 : f32;
  var u_xlat39 : f32;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var u_xlat40 : f32;
  var u_xlat4 : vec3<f32>;
  var x_487 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat42 : f32;
  var u_xlat43 : f32;
  var u_xlat28 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : vec2<bool>;
  var u_xlatb31 : bool;
  var u_xlat31 : f32;
  var u_xlat7 : vec4<f32>;
  var x_859 : f32;
  var x_870 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu40 : u32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatu10 : u32;
  var u_xlati23 : i32;
  var u_xlati10 : i32;
  var u_xlati36 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlatb37 : vec2<bool>;
  var u_xlat37 : vec2<f32>;
  var x_1657 : f32;
  var x_1670 : f32;
  var u_xlat49 : f32;
  var x_1732 : f32;
  var x_1743 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_INTERP3;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(Texture2D_25A083BC, samplerTexture2D_25A083BC, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_58 : f32 = u_xlat0.y;
  let x_61 : f32 = u_xlat0.z;
  u_xlatb1 = (x_58 >= x_61);
  let x_64 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_64);
  let x_69 : vec4<f32> = u_xlat0;
  let x_70 : vec2<f32> = vec2<f32>(x_69.z, x_69.y);
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_70.x, x_70.y, x_71.z, x_71.w);
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.666666687f;
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec4<f32> = u_xlat2;
  let x_83 : vec2<f32> = (vec2<f32>(x_78.y, x_78.z) + -(vec2<f32>(x_80.x, x_80.y)));
  let x_84 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  u_xlat3.z = 1.0f;
  u_xlat3.w = -1.0f;
  let x_88 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = u_xlat3;
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_88.x, x_88.x, x_88.x, x_88.x) * x_90) + x_92);
  let x_96 : f32 = u_xlat0.x;
  let x_98 : f32 = u_xlat1.x;
  u_xlatb13 = (x_96 >= x_98);
  let x_101 : bool = u_xlatb13;
  u_xlat13 = select(0.0f, 1.0f, x_101);
  let x_103 : vec4<f32> = u_xlat1;
  let x_104 : vec3<f32> = vec3<f32>(x_103.x, x_103.y, x_103.w);
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_108 : f32 = u_xlat0.x;
  u_xlat2.w = x_108;
  let x_110 : vec4<f32> = u_xlat2;
  let x_111 : vec3<f32> = vec3<f32>(x_110.w, x_110.y, x_110.x);
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_111.z);
  let x_114 : vec4<f32> = u_xlat2;
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_114) + x_116);
  let x_118 : f32 = u_xlat13;
  let x_120 : vec4<f32> = u_xlat1;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_118, x_118, x_118, x_118) * x_120) + x_122);
  let x_125 : f32 = u_xlat1.y;
  let x_127 : f32 = u_xlat1.w;
  u_xlat0.x = min(x_125, x_127);
  let x_131 : f32 = u_xlat0.x;
  let x_134 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_131) + x_134);
  let x_138 : f32 = u_xlat0.x;
  u_xlatb13 = (x_138 == 0.0f);
  let x_142 : f32 = u_xlat1.x;
  u_xlat26 = (x_142 + 1.00000001e-10f);
  let x_145 : bool = u_xlatb13;
  if (x_145) {
    let x_150 : f32 = u_xlat1.x;
    x_146 = x_150;
  } else {
    let x_152 : f32 = u_xlat26;
    x_146 = x_152;
  }
  let x_153 : f32 = x_146;
  u_xlat13 = x_153;
  let x_155 : f32 = u_xlat1.y;
  let x_158 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_155) + x_158);
  let x_164 : f32 = u_xlat0.x;
  u_xlat14.x = ((x_164 * 6.0f) + 1.00000001e-10f);
  let x_170 : f32 = u_xlat1.x;
  let x_172 : f32 = u_xlat14.x;
  u_xlat1.x = (x_170 / x_172);
  let x_176 : f32 = u_xlat1.x;
  let x_178 : f32 = u_xlat1.z;
  u_xlat1.x = (x_176 + x_178);
  let x_182 : f32 = u_xlat0.x;
  let x_183 : f32 = u_xlat26;
  u_xlat0.x = (x_182 / x_183);
  let x_187 : f32 = u_xlat0.w;
  let x_193 : f32 = x_190.x_Hue;
  let x_196 : f32 = u_xlat1.x;
  u_xlat26 = ((x_187 * x_193) + abs(x_196));
  let x_200 : f32 = u_xlat26;
  u_xlatb39 = (x_200 < 0.0f);
  let x_202 : f32 = u_xlat26;
  u_xlatb1 = (1.0f < x_202);
  let x_204 : f32 = u_xlat26;
  let x_207 : vec2<f32> = (vec2<f32>(x_204, x_204) + vec2<f32>(1.0f, -1.0f));
  let x_208 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_207.x, x_207.y, x_208.z);
  let x_210 : bool = u_xlatb1;
  if (x_210) {
    let x_215 : f32 = u_xlat14.y;
    x_211 = x_215;
  } else {
    let x_217 : f32 = u_xlat26;
    x_211 = x_217;
  }
  let x_218 : f32 = x_211;
  u_xlat26 = x_218;
  let x_219 : bool = u_xlatb39;
  if (x_219) {
    let x_224 : f32 = u_xlat14.x;
    x_220 = x_224;
  } else {
    let x_226 : f32 = u_xlat26;
    x_220 = x_226;
  }
  let x_227 : f32 = x_220;
  u_xlat26 = x_227;
  let x_228 : f32 = u_xlat26;
  let x_232 : vec3<f32> = (vec3<f32>(x_228, x_228, x_228) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
  let x_233 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec3<f32> = fract(vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat1;
  let x_246 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat1;
  let x_253 : vec3<f32> = (abs(vec3<f32>(x_249.x, x_249.y, x_249.z)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_254 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat1;
  let x_260 : vec3<f32> = clamp(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat0;
  let x_270 : vec4<f32> = u_xlat1;
  let x_274 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.x, x_268.x) * vec3<f32>(x_270.x, x_270.y, x_270.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_275 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_274.x, x_275.y, x_274.y, x_274.z);
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : f32 = u_xlat13;
  let x_281 : vec3<f32> = (vec3<f32>(x_277.x, x_277.z, x_277.w) * vec3<f32>(x_279, x_279, x_279));
  let x_282 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec3<f32> = clamp(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_296 : vec4<f32> = vs_INTERP3;
  let x_299 : f32 = x_44.x_GlobalMipBias.x;
  let x_300 : vec4<f32> = textureSampleBias(Texture2D_E9EC22CC, samplerTexture2D_E9EC22CC, vec2<f32>(x_296.x, x_296.y), x_299);
  let x_301 : vec3<f32> = vec3<f32>(x_300.x, x_300.y, x_300.w);
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : f32 = u_xlat1.x;
  let x_307 : f32 = u_xlat1.z;
  u_xlat1.x = (x_305 * x_307);
  let x_310 : vec4<f32> = u_xlat1;
  let x_316 : vec2<f32> = ((vec2<f32>(x_310.x, x_310.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_316.x, x_316.y, x_317.z, x_317.w);
  let x_320 : vec4<f32> = u_xlat1;
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(vec2<f32>(x_320.x, x_320.y), vec2<f32>(x_322.x, x_322.y));
  let x_325 : f32 = u_xlat39;
  u_xlat39 = min(x_325, 1.0f);
  let x_327 : f32 = u_xlat39;
  u_xlat39 = (-(x_327) + 1.0f);
  let x_330 : f32 = u_xlat39;
  u_xlat39 = sqrt(x_330);
  let x_332 : f32 = u_xlat39;
  u_xlat39 = max(x_332, 1.00000002e-16f);
  let x_340 : vec4<f32> = vs_INTERP3;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_340.x, x_340.y), x_343);
  let x_345 : vec3<f32> = vec3<f32>(x_344.x, x_344.w, x_344.y);
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_353 : f32 = vs_INTERP2.w;
  u_xlatb27.x = (0.0f < x_353);
  let x_361 : f32 = x_359.unity_WorldTransformParams.w;
  u_xlatb27.y = (x_361 >= 0.0f);
  let x_367 : bool = u_xlatb27.x;
  u_xlat27.x = select(-1.0f, 1.0f, x_367);
  let x_371 : bool = u_xlatb27.y;
  u_xlat27.y = select(-1.0f, 1.0f, x_371);
  let x_375 : f32 = u_xlat27.y;
  let x_377 : f32 = u_xlat27.x;
  u_xlat27.x = (x_375 * x_377);
  let x_382 : vec3<f32> = vs_INTERP1;
  let x_384 : vec4<f32> = vs_INTERP2;
  let x_386 : vec3<f32> = (vec3<f32>(x_382.z, x_382.x, x_382.y) * vec3<f32>(x_384.y, x_384.z, x_384.x));
  let x_387 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_389 : vec3<f32> = vs_INTERP1;
  let x_391 : vec4<f32> = vs_INTERP2;
  let x_394 : vec4<f32> = u_xlat3;
  let x_397 : vec3<f32> = ((vec3<f32>(x_389.y, x_389.z, x_389.x) * vec3<f32>(x_391.z, x_391.x, x_391.y)) + -(vec3<f32>(x_394.x, x_394.y, x_394.z)));
  let x_398 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec2<f32> = u_xlat27;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.x, x_400.x) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec3<f32>(x_407.y, x_407.y, x_407.y) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = vs_INTERP2;
  let x_417 : vec3<f32> = u_xlat14;
  let x_418 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.x, x_412.x) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + x_417);
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : f32 = u_xlat39;
  let x_423 : vec3<f32> = vs_INTERP1;
  let x_425 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = ((vec3<f32>(x_421, x_421, x_421) * x_423) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat39;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb39 = (x_446 == 0.0f);
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_454 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_455 : vec3<f32> = (-(x_449) + x_454);
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : vec4<f32> = u_xlat3;
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat40;
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec3<f32> = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_477 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_477;
  let x_480 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_480;
  let x_484 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_484;
  let x_486 : bool = u_xlatb39;
  if (x_486) {
    let x_490 : vec4<f32> = u_xlat3;
    x_487 = vec3<f32>(x_490.x, x_490.y, x_490.z);
  } else {
    let x_493 : vec3<f32> = u_xlat4;
    x_487 = x_493;
  }
  let x_494 : vec3<f32> = x_487;
  let x_495 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_498 : f32 = vs_INTERP0.y;
  let x_500 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat39 = (x_498 * x_500);
  let x_503 : f32 = x_44.unity_MatrixV[0i].z;
  let x_505 : f32 = vs_INTERP0.x;
  let x_507 : f32 = u_xlat39;
  u_xlat39 = ((x_503 * x_505) + x_507);
  let x_510 : f32 = x_44.unity_MatrixV[2i].z;
  let x_512 : f32 = vs_INTERP0.z;
  let x_514 : f32 = u_xlat39;
  u_xlat39 = ((x_510 * x_512) + x_514);
  let x_516 : f32 = u_xlat39;
  let x_518 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat39 = (x_516 + x_518);
  let x_520 : f32 = u_xlat39;
  let x_524 : f32 = x_44.x_ProjectionParams.y;
  u_xlat39 = (-(x_520) + -(x_524));
  let x_527 : f32 = u_xlat39;
  u_xlat39 = max(x_527, 0.0f);
  let x_529 : f32 = u_xlat39;
  let x_532 : f32 = x_44.unity_FogParams.x;
  u_xlat39 = (x_529 * x_532);
  let x_541 : vec2<f32> = vs_INTERP4;
  let x_543 : f32 = x_44.x_GlobalMipBias.x;
  let x_544 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_541, x_543);
  u_xlat4 = vec3<f32>(x_544.x, x_544.y, x_544.z);
  let x_550 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
  let x_555 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_551.x, x_551.y));
  let x_556 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_555.x, x_555.y, x_556.z);
  let x_558 : vec3<f32> = u_xlat5;
  let x_560 : vec4<f32> = hlslcc_FragCoord;
  let x_562 : vec2<f32> = (vec2<f32>(x_558.x, x_558.y) * vec2<f32>(x_560.x, x_560.y));
  let x_563 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_562.x, x_562.y, x_563.z);
  let x_566 : f32 = u_xlat5.y;
  let x_569 : f32 = x_44.x_ScaleBiasRt.x;
  let x_572 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat40 = ((x_566 * x_569) + x_572);
  let x_574 : f32 = u_xlat40;
  u_xlat5.z = (-(x_574) + 1.0f);
  let x_578 : vec4<f32> = u_xlat2;
  let x_579 : vec2<f32> = vec2<f32>(x_578.x, x_578.y);
  let x_580 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_579.x, x_579.y, x_580.z, x_580.w);
  let x_582 : vec4<f32> = u_xlat2;
  let x_586 : vec2<f32> = clamp(vec2<f32>(x_582.x, x_582.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_587 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
  let x_590 : f32 = u_xlat2.x;
  u_xlat40 = ((-(x_590) * 0.959999979f) + 0.959999979f);
  let x_596 : f32 = u_xlat40;
  let x_599 : f32 = u_xlat2.y;
  u_xlat41 = (-(x_596) + x_599);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : f32 = u_xlat40;
  u_xlat6 = (vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(x_604, x_604, x_604));
  let x_607 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat2;
  let x_616 : vec4<f32> = u_xlat0;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.x, x_614.x) * vec3<f32>(x_616.x, x_616.y, x_616.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : f32 = u_xlat2.y;
  u_xlat40 = (-(x_625) + 1.0f);
  let x_628 : f32 = u_xlat40;
  let x_629 : f32 = u_xlat40;
  u_xlat2.x = (x_628 * x_629);
  let x_633 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_633, 0.0078125f);
  let x_639 : f32 = u_xlat2.x;
  let x_641 : f32 = u_xlat2.x;
  u_xlat15 = (x_639 * x_641);
  let x_643 : f32 = u_xlat41;
  u_xlat41 = (x_643 + 1.0f);
  let x_645 : f32 = u_xlat41;
  u_xlat41 = min(x_645, 1.0f);
  let x_649 : f32 = u_xlat2.x;
  u_xlat42 = ((x_649 * 4.0f) + 2.0f);
  let x_659 : vec3<f32> = u_xlat5;
  let x_662 : f32 = x_44.x_GlobalMipBias.x;
  let x_663 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_659.x, x_659.z), x_662);
  u_xlat43 = x_663.x;
  let x_665 : f32 = u_xlat43;
  u_xlat5.x = (x_665 + -1.0f);
  let x_670 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_672 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_670 * x_672) + 1.0f);
  let x_678 : f32 = u_xlat2.z;
  let x_679 : f32 = u_xlat43;
  u_xlat28 = min(x_678, x_679);
  let x_683 : vec4<f32> = vs_INTERP8;
  let x_684 : vec2<f32> = vec2<f32>(x_683.x, x_683.y);
  let x_686 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_684.x, x_684.y, x_686);
  let x_698 : vec3<f32> = txVec0;
  let x_700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_698.xy, x_698.z);
  u_xlat43 = x_700;
  let x_708 : f32 = x_706.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_708) + 1.0f);
  let x_712 : f32 = u_xlat43;
  let x_714 : f32 = x_706.x_MainLightShadowParams.x;
  let x_717 : f32 = u_xlat18.x;
  u_xlat43 = ((x_712 * x_714) + x_717);
  let x_721 : f32 = vs_INTERP8.z;
  u_xlatb18.x = (0.0f >= x_721);
  let x_726 : f32 = vs_INTERP8.z;
  u_xlatb31 = (x_726 >= 1.0f);
  let x_728 : bool = u_xlatb31;
  let x_730 : bool = u_xlatb18.x;
  u_xlatb18.x = (x_728 | x_730);
  let x_734 : bool = u_xlatb18.x;
  let x_735 : f32 = u_xlat43;
  u_xlat43 = select(x_735, 1.0f, x_734);
  let x_737 : vec3<f32> = vs_INTERP0;
  let x_739 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat18 = (x_737 + -(x_739));
  let x_742 : vec3<f32> = u_xlat18;
  let x_743 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_742, x_743);
  let x_747 : f32 = u_xlat18.x;
  let x_749 : f32 = x_706.x_MainLightShadowParams.z;
  let x_752 : f32 = x_706.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_747 * x_749) + x_752);
  let x_756 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_756, 0.0f, 1.0f);
  let x_760 : f32 = u_xlat43;
  u_xlat31 = (-(x_760) + 1.0f);
  let x_764 : f32 = u_xlat18.x;
  let x_765 : f32 = u_xlat31;
  let x_767 : f32 = u_xlat43;
  u_xlat43 = ((x_764 * x_765) + x_767);
  let x_775 : f32 = x_773.x_MainLightCookieTextureFormat;
  u_xlatb18.x = !((x_775 == -1.0f));
  let x_779 : bool = u_xlatb18.x;
  if (x_779) {
    let x_782 : vec3<f32> = vs_INTERP0;
    let x_785 : vec4<f32> = x_773.x_MainLightWorldToLight[1i];
    let x_787 : vec2<f32> = (vec2<f32>(x_782.y, x_782.y) * vec2<f32>(x_785.x, x_785.y));
    let x_788 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_787.x, x_787.y, x_788.z);
    let x_791 : vec4<f32> = x_773.x_MainLightWorldToLight[0i];
    let x_793 : vec3<f32> = vs_INTERP0;
    let x_796 : vec3<f32> = u_xlat18;
    let x_798 : vec2<f32> = ((vec2<f32>(x_791.x, x_791.y) * vec2<f32>(x_793.x, x_793.x)) + vec2<f32>(x_796.x, x_796.y));
    let x_799 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_798.x, x_798.y, x_799.z);
    let x_802 : vec4<f32> = x_773.x_MainLightWorldToLight[2i];
    let x_804 : vec3<f32> = vs_INTERP0;
    let x_807 : vec3<f32> = u_xlat18;
    let x_809 : vec2<f32> = ((vec2<f32>(x_802.x, x_802.y) * vec2<f32>(x_804.z, x_804.z)) + vec2<f32>(x_807.x, x_807.y));
    let x_810 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_809.x, x_809.y, x_810.z);
    let x_812 : vec3<f32> = u_xlat18;
    let x_815 : vec4<f32> = x_773.x_MainLightWorldToLight[3i];
    let x_817 : vec2<f32> = (vec2<f32>(x_812.x, x_812.y) + vec2<f32>(x_815.x, x_815.y));
    let x_818 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_817.x, x_817.y, x_818.z);
    let x_820 : vec3<f32> = u_xlat18;
    let x_825 : vec2<f32> = ((vec2<f32>(x_820.x, x_820.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_826 : vec3<f32> = u_xlat18;
    u_xlat18 = vec3<f32>(x_825.x, x_825.y, x_826.z);
    let x_834 : vec3<f32> = u_xlat18;
    let x_837 : f32 = x_44.x_GlobalMipBias.x;
    let x_838 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_834.x, x_834.y), x_837);
    u_xlat7 = x_838;
    let x_840 : f32 = x_773.x_MainLightCookieTextureFormat;
    let x_842 : f32 = x_773.x_MainLightCookieTextureFormat;
    let x_844 : f32 = x_773.x_MainLightCookieTextureFormat;
    let x_846 : f32 = x_773.x_MainLightCookieTextureFormat;
    let x_847 : vec4<f32> = vec4<f32>(x_840, x_842, x_844, x_846);
    let x_855 : vec4<bool> = (vec4<f32>(x_847.x, x_847.y, x_847.z, x_847.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb18 = vec2<bool>(x_855.x, x_855.y);
    let x_858 : bool = u_xlatb18.y;
    if (x_858) {
      let x_863 : f32 = u_xlat7.w;
      x_859 = x_863;
    } else {
      let x_866 : f32 = u_xlat7.x;
      x_859 = x_866;
    }
    let x_867 : f32 = x_859;
    u_xlat31 = x_867;
    let x_869 : bool = u_xlatb18.x;
    if (x_869) {
      let x_873 : vec4<f32> = u_xlat7;
      x_870 = vec3<f32>(x_873.x, x_873.y, x_873.z);
    } else {
      let x_876 : f32 = u_xlat31;
      x_870 = vec3<f32>(x_876, x_876, x_876);
    }
    let x_878 : vec3<f32> = x_870;
    u_xlat18 = x_878;
  } else {
    u_xlat18.x = 1.0f;
    u_xlat18.y = 1.0f;
    u_xlat18.z = 1.0f;
  }
  let x_883 : vec3<f32> = u_xlat18;
  let x_885 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat18 = (x_883 * vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec3<f32> = u_xlat5;
  let x_890 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_888.x, x_888.x, x_888.x) * x_890);
  let x_893 : vec4<f32> = u_xlat3;
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(-(vec3<f32>(x_893.x, x_893.y, x_893.z)), vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : f32 = u_xlat45;
  let x_900 : f32 = u_xlat45;
  u_xlat45 = (x_899 + x_900);
  let x_902 : vec4<f32> = u_xlat1;
  let x_904 : f32 = u_xlat45;
  let x_908 : vec4<f32> = u_xlat3;
  let x_911 : vec3<f32> = ((vec3<f32>(x_902.x, x_902.y, x_902.z) * -(vec3<f32>(x_904, x_904, x_904))) + -(vec3<f32>(x_908.x, x_908.y, x_908.z)));
  let x_912 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : vec4<f32> = u_xlat1;
  let x_916 : vec4<f32> = u_xlat3;
  u_xlat45 = dot(vec3<f32>(x_914.x, x_914.y, x_914.z), vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : f32 = u_xlat45;
  u_xlat45 = clamp(x_919, 0.0f, 1.0f);
  let x_921 : f32 = u_xlat45;
  u_xlat45 = (-(x_921) + 1.0f);
  let x_924 : f32 = u_xlat45;
  let x_925 : f32 = u_xlat45;
  u_xlat45 = (x_924 * x_925);
  let x_927 : f32 = u_xlat45;
  let x_928 : f32 = u_xlat45;
  u_xlat45 = (x_927 * x_928);
  let x_931 : f32 = u_xlat40;
  u_xlat46 = ((-(x_931) * 0.699999988f) + 1.700000048f);
  let x_937 : f32 = u_xlat40;
  let x_938 : f32 = u_xlat46;
  u_xlat40 = (x_937 * x_938);
  let x_940 : f32 = u_xlat40;
  u_xlat40 = (x_940 * 6.0f);
  let x_950 : vec4<f32> = u_xlat7;
  let x_952 : f32 = u_xlat40;
  let x_953 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_950.x, x_950.y, x_950.z), x_952);
  u_xlat7 = x_953;
  let x_955 : f32 = u_xlat7.w;
  u_xlat40 = (x_955 + -1.0f);
  let x_958 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_959 : f32 = u_xlat40;
  u_xlat40 = ((x_958 * x_959) + 1.0f);
  let x_962 : f32 = u_xlat40;
  u_xlat40 = max(x_962, 0.0f);
  let x_964 : f32 = u_xlat40;
  u_xlat40 = log2(x_964);
  let x_966 : f32 = u_xlat40;
  let x_968 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_966 * x_968);
  let x_970 : f32 = u_xlat40;
  u_xlat40 = exp2(x_970);
  let x_972 : f32 = u_xlat40;
  let x_974 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_972 * x_974);
  let x_976 : vec4<f32> = u_xlat7;
  let x_978 : f32 = u_xlat40;
  let x_980 : vec3<f32> = (vec3<f32>(x_976.x, x_976.y, x_976.z) * vec3<f32>(x_978, x_978, x_978));
  let x_981 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
  let x_984 : vec4<f32> = u_xlat2;
  let x_986 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_984.x, x_984.x) * vec2<f32>(x_986.x, x_986.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_992 : f32 = u_xlat8.y;
  u_xlat40 = (1.0f / x_992);
  let x_995 : vec4<f32> = u_xlat0;
  let x_998 : f32 = u_xlat41;
  u_xlat21 = (-(vec3<f32>(x_995.x, x_995.y, x_995.z)) + vec3<f32>(x_998, x_998, x_998));
  let x_1001 : f32 = u_xlat45;
  let x_1003 : vec3<f32> = u_xlat21;
  let x_1005 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_1001, x_1001, x_1001) * x_1003) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : f32 = u_xlat40;
  let x_1010 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1008, x_1008, x_1008) * x_1010);
  let x_1012 : vec4<f32> = u_xlat7;
  let x_1014 : vec3<f32> = u_xlat21;
  let x_1015 : vec3<f32> = (vec3<f32>(x_1012.x, x_1012.y, x_1012.z) * x_1014);
  let x_1016 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec3<f32> = u_xlat4;
  let x_1019 : vec3<f32> = u_xlat6;
  let x_1021 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1018 * x_1019) + vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
  let x_1024 : f32 = u_xlat43;
  let x_1027 : f32 = x_359.unity_LightData.z;
  u_xlat40 = (x_1024 * x_1027);
  let x_1029 : vec4<f32> = u_xlat1;
  let x_1032 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1037 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1037, 0.0f, 1.0f);
  let x_1040 : f32 = u_xlat40;
  let x_1042 : f32 = u_xlat2.x;
  u_xlat40 = (x_1040 * x_1042);
  let x_1044 : f32 = u_xlat40;
  let x_1046 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_1044, x_1044, x_1044) * x_1046);
  let x_1048 : vec4<f32> = u_xlat3;
  let x_1051 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1053 : vec3<f32> = (vec3<f32>(x_1048.x, x_1048.y, x_1048.z) + vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1054 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
  let x_1056 : vec4<f32> = u_xlat7;
  let x_1058 : vec4<f32> = u_xlat7;
  u_xlat40 = dot(vec3<f32>(x_1056.x, x_1056.y, x_1056.z), vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : f32 = u_xlat40;
  u_xlat40 = max(x_1061, 1.17549435e-37f);
  let x_1064 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_1064);
  let x_1066 : f32 = u_xlat40;
  let x_1068 : vec4<f32> = u_xlat7;
  let x_1070 : vec3<f32> = (vec3<f32>(x_1066, x_1066, x_1066) * vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec4<f32> = u_xlat1;
  let x_1075 : vec4<f32> = u_xlat7;
  u_xlat40 = dot(vec3<f32>(x_1073.x, x_1073.y, x_1073.z), vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1078 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1078, 0.0f, 1.0f);
  let x_1081 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1083 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1088 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1088, 0.0f, 1.0f);
  let x_1091 : f32 = u_xlat40;
  let x_1092 : f32 = u_xlat40;
  u_xlat40 = (x_1091 * x_1092);
  let x_1094 : f32 = u_xlat40;
  let x_1096 : f32 = u_xlat8.x;
  u_xlat40 = ((x_1094 * x_1096) + 1.000010014f);
  let x_1101 : f32 = u_xlat2.x;
  let x_1103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1101 * x_1103);
  let x_1106 : f32 = u_xlat40;
  let x_1107 : f32 = u_xlat40;
  u_xlat40 = (x_1106 * x_1107);
  let x_1110 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1110, 0.100000001f);
  let x_1114 : f32 = u_xlat40;
  let x_1116 : f32 = u_xlat2.x;
  u_xlat40 = (x_1114 * x_1116);
  let x_1118 : f32 = u_xlat42;
  let x_1119 : f32 = u_xlat40;
  u_xlat40 = (x_1118 * x_1119);
  let x_1121 : f32 = u_xlat15;
  let x_1122 : f32 = u_xlat40;
  u_xlat40 = (x_1121 / x_1122);
  let x_1124 : vec4<f32> = u_xlat0;
  let x_1126 : f32 = u_xlat40;
  let x_1129 : vec3<f32> = u_xlat6;
  let x_1130 : vec3<f32> = ((vec3<f32>(x_1124.x, x_1124.y, x_1124.z) * vec3<f32>(x_1126, x_1126, x_1126)) + x_1129);
  let x_1131 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : vec3<f32> = u_xlat18;
  let x_1134 : vec4<f32> = u_xlat7;
  u_xlat18 = (x_1133 * vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
  let x_1138 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1140 : f32 = x_359.unity_LightData.y;
  u_xlat40 = min(x_1138, x_1140);
  let x_1144 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_1144));
  let x_1150 : f32 = x_773.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1152 : f32 = x_773.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1154 : f32 = x_773.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1156 : f32 = x_773.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1157 : vec4<f32> = vec4<f32>(x_1150, x_1152, x_1154, x_1156);
  let x_1164 : vec4<bool> = (vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1157.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1165 : vec2<bool> = vec2<bool>(x_1164.x, x_1164.w);
  let x_1166 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_1165.x, x_1166.y, x_1166.z, x_1165.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1177 : u32 = u_xlatu_loop_1;
    let x_1178 : u32 = u_xlatu40;
    if ((x_1177 < x_1178)) {
    } else {
      break;
    }
    let x_1181 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1181 >> 2u);
    let x_1185 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1185 & 3u));
    let x_1189 : u32 = u_xlatu45;
    let x_1192 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1189)];
    let x_1202 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1207 : vec4<u32> = indexable[x_1202];
    u_xlat45 = dot(x_1192, bitcast<vec4<f32>>(x_1207));
    let x_1210 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1210));
    let x_1213 : vec3<f32> = vs_INTERP0;
    let x_1225 : u32 = u_xlatu45;
    let x_1228 : vec4<f32> = x_1224.x_AdditionalLightsPosition[bitcast<i32>(x_1225)];
    let x_1231 : u32 = u_xlatu45;
    let x_1234 : vec4<f32> = x_1224.x_AdditionalLightsPosition[bitcast<i32>(x_1231)];
    u_xlat21 = ((-(x_1213) * vec3<f32>(x_1228.w, x_1228.w, x_1228.w)) + vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
    let x_1237 : vec3<f32> = u_xlat21;
    let x_1238 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1237, x_1238);
    let x_1240 : f32 = u_xlat46;
    u_xlat46 = max(x_1240, 6.10351562e-05f);
    let x_1244 : f32 = u_xlat46;
    u_xlat9 = inverseSqrt(x_1244);
    let x_1247 : vec3<f32> = u_xlat21;
    let x_1248 : f32 = u_xlat9;
    u_xlat22 = (x_1247 * vec3<f32>(x_1248, x_1248, x_1248));
    let x_1252 : f32 = u_xlat46;
    u_xlat10.x = (1.0f / x_1252);
    let x_1255 : f32 = u_xlat46;
    let x_1256 : u32 = u_xlatu45;
    let x_1259 : f32 = x_1224.x_AdditionalLightsAttenuation[bitcast<i32>(x_1256)].x;
    u_xlat46 = (x_1255 * x_1259);
    let x_1261 : f32 = u_xlat46;
    let x_1263 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1261) * x_1263) + 1.0f);
    let x_1266 : f32 = u_xlat46;
    u_xlat46 = max(x_1266, 0.0f);
    let x_1268 : f32 = u_xlat46;
    let x_1269 : f32 = u_xlat46;
    u_xlat46 = (x_1268 * x_1269);
    let x_1271 : f32 = u_xlat46;
    let x_1273 : f32 = u_xlat10.x;
    u_xlat46 = (x_1271 * x_1273);
    let x_1275 : u32 = u_xlatu45;
    let x_1278 : vec4<f32> = x_1224.x_AdditionalLightsSpotDir[bitcast<i32>(x_1275)];
    let x_1280 : vec3<f32> = u_xlat22;
    u_xlat10.x = dot(vec3<f32>(x_1278.x, x_1278.y, x_1278.z), x_1280);
    let x_1284 : f32 = u_xlat10.x;
    let x_1285 : u32 = u_xlatu45;
    let x_1288 : f32 = x_1224.x_AdditionalLightsAttenuation[bitcast<i32>(x_1285)].z;
    let x_1290 : u32 = u_xlatu45;
    let x_1293 : f32 = x_1224.x_AdditionalLightsAttenuation[bitcast<i32>(x_1290)].w;
    u_xlat10.x = ((x_1284 * x_1288) + x_1293);
    let x_1297 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1297, 0.0f, 1.0f);
    let x_1301 : f32 = u_xlat10.x;
    let x_1303 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1301 * x_1303);
    let x_1306 : f32 = u_xlat46;
    let x_1308 : f32 = u_xlat10.x;
    u_xlat46 = (x_1306 * x_1308);
    let x_1311 : u32 = u_xlatu45;
    u_xlatu10 = (x_1311 >> 5u);
    let x_1314 : u32 = u_xlatu45;
    u_xlati23 = (1i << bitcast<u32>((bitcast<i32>(x_1314) & 31i)));
    let x_1320 : i32 = u_xlati23;
    let x_1322 : u32 = u_xlatu10;
    let x_1325 : f32 = x_773.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1322)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_1320) & bitcast<u32>(x_1325)));
    let x_1329 : i32 = u_xlati10;
    if ((x_1329 != 0i)) {
      let x_1339 : u32 = u_xlatu45;
      let x_1342 : f32 = x_1338.x_AdditionalLightsLightTypes[bitcast<i32>(x_1339)].el;
      u_xlati10 = i32(x_1342);
      let x_1344 : i32 = u_xlati10;
      u_xlati23 = select(1i, 0i, (x_1344 != 0i));
      let x_1348 : u32 = u_xlatu45;
      u_xlati36 = (bitcast<i32>(x_1348) << bitcast<u32>(2i));
      let x_1351 : i32 = u_xlati23;
      if ((x_1351 != 0i)) {
        let x_1356 : vec3<f32> = vs_INTERP0;
        let x_1358 : i32 = u_xlati36;
        let x_1361 : i32 = u_xlati36;
        let x_1365 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[((x_1358 + 1i) / 4i)][((x_1361 + 1i) % 4i)];
        let x_1367 : vec3<f32> = (vec3<f32>(x_1356.y, x_1356.y, x_1356.y) * vec3<f32>(x_1365.x, x_1365.y, x_1365.w));
        let x_1368 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
        let x_1370 : i32 = u_xlati36;
        let x_1372 : i32 = u_xlati36;
        let x_1375 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[(x_1370 / 4i)][(x_1372 % 4i)];
        let x_1377 : vec3<f32> = vs_INTERP0;
        let x_1380 : vec4<f32> = u_xlat11;
        let x_1382 : vec3<f32> = ((vec3<f32>(x_1375.x, x_1375.y, x_1375.w) * vec3<f32>(x_1377.x, x_1377.x, x_1377.x)) + vec3<f32>(x_1380.x, x_1380.y, x_1380.z));
        let x_1383 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1383.w);
        let x_1385 : i32 = u_xlati36;
        let x_1388 : i32 = u_xlati36;
        let x_1392 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[((x_1385 + 2i) / 4i)][((x_1388 + 2i) % 4i)];
        let x_1394 : vec3<f32> = vs_INTERP0;
        let x_1397 : vec4<f32> = u_xlat11;
        let x_1399 : vec3<f32> = ((vec3<f32>(x_1392.x, x_1392.y, x_1392.w) * vec3<f32>(x_1394.z, x_1394.z, x_1394.z)) + vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
        let x_1400 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
        let x_1402 : vec4<f32> = u_xlat11;
        let x_1404 : i32 = u_xlati36;
        let x_1407 : i32 = u_xlati36;
        let x_1411 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[((x_1404 + 3i) / 4i)][((x_1407 + 3i) % 4i)];
        let x_1413 : vec3<f32> = (vec3<f32>(x_1402.x, x_1402.y, x_1402.z) + vec3<f32>(x_1411.x, x_1411.y, x_1411.w));
        let x_1414 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
        let x_1417 : vec4<f32> = u_xlat11;
        let x_1419 : vec4<f32> = u_xlat11;
        let x_1421 : vec2<f32> = (vec2<f32>(x_1417.x, x_1417.y) / vec2<f32>(x_1419.z, x_1419.z));
        let x_1422 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1421.x, x_1422.y, x_1421.y);
        let x_1424 : vec3<f32> = u_xlat23;
        let x_1427 : vec2<f32> = ((vec2<f32>(x_1424.x, x_1424.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1428 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1427.x, x_1428.y, x_1427.y);
        let x_1430 : vec3<f32> = u_xlat23;
        let x_1434 : vec2<f32> = clamp(vec2<f32>(x_1430.x, x_1430.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1435 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1434.x, x_1435.y, x_1434.y);
        let x_1437 : u32 = u_xlatu45;
        let x_1440 : vec4<f32> = x_1338.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1437)];
        let x_1442 : vec3<f32> = u_xlat23;
        let x_1445 : u32 = u_xlatu45;
        let x_1448 : vec4<f32> = x_1338.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1445)];
        let x_1450 : vec2<f32> = ((vec2<f32>(x_1440.x, x_1440.y) * vec2<f32>(x_1442.x, x_1442.z)) + vec2<f32>(x_1448.z, x_1448.w));
        let x_1451 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1450.x, x_1451.y, x_1450.y);
      } else {
        let x_1455 : i32 = u_xlati10;
        u_xlatb10 = (x_1455 == 1i);
        let x_1457 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_1457);
        let x_1459 : i32 = u_xlati10;
        if ((x_1459 != 0i)) {
          let x_1463 : vec3<f32> = vs_INTERP0;
          let x_1465 : i32 = u_xlati36;
          let x_1468 : i32 = u_xlati36;
          let x_1472 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[((x_1465 + 1i) / 4i)][((x_1468 + 1i) % 4i)];
          let x_1474 : vec2<f32> = (vec2<f32>(x_1463.y, x_1463.y) * vec2<f32>(x_1472.x, x_1472.y));
          let x_1475 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1474.x, x_1474.y, x_1475.z, x_1475.w);
          let x_1477 : i32 = u_xlati36;
          let x_1479 : i32 = u_xlati36;
          let x_1482 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[(x_1477 / 4i)][(x_1479 % 4i)];
          let x_1484 : vec3<f32> = vs_INTERP0;
          let x_1487 : vec4<f32> = u_xlat11;
          let x_1489 : vec2<f32> = ((vec2<f32>(x_1482.x, x_1482.y) * vec2<f32>(x_1484.x, x_1484.x)) + vec2<f32>(x_1487.x, x_1487.y));
          let x_1490 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1489.x, x_1489.y, x_1490.z, x_1490.w);
          let x_1492 : i32 = u_xlati36;
          let x_1495 : i32 = u_xlati36;
          let x_1499 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[((x_1492 + 2i) / 4i)][((x_1495 + 2i) % 4i)];
          let x_1501 : vec3<f32> = vs_INTERP0;
          let x_1504 : vec4<f32> = u_xlat11;
          let x_1506 : vec2<f32> = ((vec2<f32>(x_1499.x, x_1499.y) * vec2<f32>(x_1501.z, x_1501.z)) + vec2<f32>(x_1504.x, x_1504.y));
          let x_1507 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1506.x, x_1506.y, x_1507.z, x_1507.w);
          let x_1509 : vec4<f32> = u_xlat11;
          let x_1511 : i32 = u_xlati36;
          let x_1514 : i32 = u_xlati36;
          let x_1518 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[((x_1511 + 3i) / 4i)][((x_1514 + 3i) % 4i)];
          let x_1520 : vec2<f32> = (vec2<f32>(x_1509.x, x_1509.y) + vec2<f32>(x_1518.x, x_1518.y));
          let x_1521 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1520.x, x_1520.y, x_1521.z, x_1521.w);
          let x_1523 : vec4<f32> = u_xlat11;
          let x_1526 : vec2<f32> = ((vec2<f32>(x_1523.x, x_1523.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1527 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1526.x, x_1526.y, x_1527.z, x_1527.w);
          let x_1529 : vec4<f32> = u_xlat11;
          let x_1531 : vec2<f32> = fract(vec2<f32>(x_1529.x, x_1529.y));
          let x_1532 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1531.x, x_1531.y, x_1532.z, x_1532.w);
          let x_1534 : u32 = u_xlatu45;
          let x_1537 : vec4<f32> = x_1338.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1534)];
          let x_1539 : vec4<f32> = u_xlat11;
          let x_1542 : u32 = u_xlatu45;
          let x_1545 : vec4<f32> = x_1338.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1542)];
          let x_1547 : vec2<f32> = ((vec2<f32>(x_1537.x, x_1537.y) * vec2<f32>(x_1539.x, x_1539.y)) + vec2<f32>(x_1545.z, x_1545.w));
          let x_1548 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1547.x, x_1548.y, x_1547.y);
        } else {
          let x_1551 : vec3<f32> = vs_INTERP0;
          let x_1553 : i32 = u_xlati36;
          let x_1556 : i32 = u_xlati36;
          let x_1560 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[((x_1553 + 1i) / 4i)][((x_1556 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1551.y, x_1551.y, x_1551.y, x_1551.y) * x_1560);
          let x_1562 : i32 = u_xlati36;
          let x_1564 : i32 = u_xlati36;
          let x_1567 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[(x_1562 / 4i)][(x_1564 % 4i)];
          let x_1568 : vec3<f32> = vs_INTERP0;
          let x_1571 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1567 * vec4<f32>(x_1568.x, x_1568.x, x_1568.x, x_1568.x)) + x_1571);
          let x_1573 : i32 = u_xlati36;
          let x_1576 : i32 = u_xlati36;
          let x_1580 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[((x_1573 + 2i) / 4i)][((x_1576 + 2i) % 4i)];
          let x_1581 : vec3<f32> = vs_INTERP0;
          let x_1584 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1580 * vec4<f32>(x_1581.z, x_1581.z, x_1581.z, x_1581.z)) + x_1584);
          let x_1586 : vec4<f32> = u_xlat11;
          let x_1587 : i32 = u_xlati36;
          let x_1590 : i32 = u_xlati36;
          let x_1594 : vec4<f32> = x_1338.x_AdditionalLightsWorldToLights[((x_1587 + 3i) / 4i)][((x_1590 + 3i) % 4i)];
          u_xlat11 = (x_1586 + x_1594);
          let x_1596 : vec4<f32> = u_xlat11;
          let x_1598 : vec4<f32> = u_xlat11;
          let x_1600 : vec3<f32> = (vec3<f32>(x_1596.x, x_1596.y, x_1596.z) / vec3<f32>(x_1598.w, x_1598.w, x_1598.w));
          let x_1601 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
          let x_1603 : vec4<f32> = u_xlat11;
          let x_1605 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_1603.x, x_1603.y, x_1603.z), vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
          let x_1610 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_1610);
          let x_1613 : vec4<f32> = u_xlat10;
          let x_1615 : vec4<f32> = u_xlat11;
          let x_1617 : vec3<f32> = (vec3<f32>(x_1613.x, x_1613.x, x_1613.x) * vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
          let x_1618 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
          let x_1620 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_1620.x, x_1620.y, x_1620.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1626 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_1626, 0.000001f);
          let x_1631 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_1631);
          let x_1635 : vec4<f32> = u_xlat10;
          let x_1637 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_1635.x, x_1635.x, x_1635.x) * vec3<f32>(x_1637.z, x_1637.x, x_1637.y));
          let x_1641 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_1641);
          let x_1645 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_1645, 0.0f, 1.0f);
          let x_1649 : vec3<f32> = u_xlat12;
          let x_1652 : vec4<bool> = (vec4<f32>(x_1649.y, x_1649.z, x_1649.y, x_1649.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_1652.x, x_1652.y);
          let x_1656 : bool = u_xlatb37.x;
          if (x_1656) {
            let x_1661 : f32 = u_xlat12.x;
            x_1657 = x_1661;
          } else {
            let x_1664 : f32 = u_xlat12.x;
            x_1657 = -(x_1664);
          }
          let x_1666 : f32 = x_1657;
          u_xlat37.x = x_1666;
          let x_1669 : bool = u_xlatb37.y;
          if (x_1669) {
            let x_1674 : f32 = u_xlat12.x;
            x_1670 = x_1674;
          } else {
            let x_1677 : f32 = u_xlat12.x;
            x_1670 = -(x_1677);
          }
          let x_1679 : f32 = x_1670;
          u_xlat37.y = x_1679;
          let x_1681 : vec4<f32> = u_xlat11;
          let x_1683 : vec4<f32> = u_xlat10;
          let x_1686 : vec2<f32> = u_xlat37;
          let x_1687 : vec2<f32> = ((vec2<f32>(x_1681.x, x_1681.y) * vec2<f32>(x_1683.x, x_1683.x)) + x_1686);
          let x_1688 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1687.x, x_1688.y, x_1687.y, x_1688.w);
          let x_1690 : vec4<f32> = u_xlat10;
          let x_1693 : vec2<f32> = ((vec2<f32>(x_1690.x, x_1690.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1694 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1693.x, x_1694.y, x_1693.y, x_1694.w);
          let x_1696 : vec4<f32> = u_xlat10;
          let x_1700 : vec2<f32> = clamp(vec2<f32>(x_1696.x, x_1696.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1701 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1700.x, x_1701.y, x_1700.y, x_1701.w);
          let x_1703 : u32 = u_xlatu45;
          let x_1706 : vec4<f32> = x_1338.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1703)];
          let x_1708 : vec4<f32> = u_xlat10;
          let x_1711 : u32 = u_xlatu45;
          let x_1714 : vec4<f32> = x_1338.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1711)];
          let x_1716 : vec2<f32> = ((vec2<f32>(x_1706.x, x_1706.y) * vec2<f32>(x_1708.x, x_1708.z)) + vec2<f32>(x_1714.z, x_1714.w));
          let x_1717 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1716.x, x_1717.y, x_1716.y);
        }
      }
      let x_1724 : vec3<f32> = u_xlat23;
      let x_1727 : f32 = x_44.x_GlobalMipBias.x;
      let x_1728 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1724.x, x_1724.z), x_1727);
      u_xlat10 = x_1728;
      let x_1731 : bool = u_xlatb2.w;
      if (x_1731) {
        let x_1736 : f32 = u_xlat10.w;
        x_1732 = x_1736;
      } else {
        let x_1739 : f32 = u_xlat10.x;
        x_1732 = x_1739;
      }
      let x_1740 : f32 = x_1732;
      u_xlat49 = x_1740;
      let x_1742 : bool = u_xlatb2.x;
      if (x_1742) {
        let x_1746 : vec4<f32> = u_xlat10;
        x_1743 = vec3<f32>(x_1746.x, x_1746.y, x_1746.z);
      } else {
        let x_1749 : f32 = u_xlat49;
        x_1743 = vec3<f32>(x_1749, x_1749, x_1749);
      }
      let x_1751 : vec3<f32> = x_1743;
      let x_1752 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_1758 : vec4<f32> = u_xlat10;
    let x_1760 : u32 = u_xlatu45;
    let x_1763 : vec4<f32> = x_1224.x_AdditionalLightsColor[bitcast<i32>(x_1760)];
    let x_1765 : vec3<f32> = (vec3<f32>(x_1758.x, x_1758.y, x_1758.z) * vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
    let x_1766 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
    let x_1768 : vec3<f32> = u_xlat5;
    let x_1770 : vec4<f32> = u_xlat10;
    let x_1772 : vec3<f32> = (vec3<f32>(x_1768.x, x_1768.x, x_1768.x) * vec3<f32>(x_1770.x, x_1770.y, x_1770.z));
    let x_1773 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
    let x_1775 : vec4<f32> = u_xlat1;
    let x_1777 : vec3<f32> = u_xlat22;
    u_xlat45 = dot(vec3<f32>(x_1775.x, x_1775.y, x_1775.z), x_1777);
    let x_1779 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1779, 0.0f, 1.0f);
    let x_1781 : f32 = u_xlat45;
    let x_1782 : f32 = u_xlat46;
    u_xlat45 = (x_1781 * x_1782);
    let x_1784 : f32 = u_xlat45;
    let x_1786 : vec4<f32> = u_xlat10;
    let x_1788 : vec3<f32> = (vec3<f32>(x_1784, x_1784, x_1784) * vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
    let x_1789 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
    let x_1791 : vec3<f32> = u_xlat21;
    let x_1792 : f32 = u_xlat9;
    let x_1795 : vec4<f32> = u_xlat3;
    u_xlat21 = ((x_1791 * vec3<f32>(x_1792, x_1792, x_1792)) + vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
    let x_1798 : vec3<f32> = u_xlat21;
    let x_1799 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1798, x_1799);
    let x_1801 : f32 = u_xlat45;
    u_xlat45 = max(x_1801, 1.17549435e-37f);
    let x_1803 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1803);
    let x_1805 : f32 = u_xlat45;
    let x_1807 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1805, x_1805, x_1805) * x_1807);
    let x_1809 : vec4<f32> = u_xlat1;
    let x_1811 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(vec3<f32>(x_1809.x, x_1809.y, x_1809.z), x_1811);
    let x_1813 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1813, 0.0f, 1.0f);
    let x_1815 : vec3<f32> = u_xlat22;
    let x_1816 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1815, x_1816);
    let x_1818 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1818, 0.0f, 1.0f);
    let x_1820 : f32 = u_xlat45;
    let x_1821 : f32 = u_xlat45;
    u_xlat45 = (x_1820 * x_1821);
    let x_1823 : f32 = u_xlat45;
    let x_1825 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1823 * x_1825) + 1.000010014f);
    let x_1828 : f32 = u_xlat46;
    let x_1829 : f32 = u_xlat46;
    u_xlat46 = (x_1828 * x_1829);
    let x_1831 : f32 = u_xlat45;
    let x_1832 : f32 = u_xlat45;
    u_xlat45 = (x_1831 * x_1832);
    let x_1834 : f32 = u_xlat46;
    u_xlat46 = max(x_1834, 0.100000001f);
    let x_1836 : f32 = u_xlat45;
    let x_1837 : f32 = u_xlat46;
    u_xlat45 = (x_1836 * x_1837);
    let x_1839 : f32 = u_xlat42;
    let x_1840 : f32 = u_xlat45;
    u_xlat45 = (x_1839 * x_1840);
    let x_1842 : f32 = u_xlat15;
    let x_1843 : f32 = u_xlat45;
    u_xlat45 = (x_1842 / x_1843);
    let x_1845 : vec4<f32> = u_xlat0;
    let x_1847 : f32 = u_xlat45;
    let x_1850 : vec3<f32> = u_xlat6;
    u_xlat21 = ((vec3<f32>(x_1845.x, x_1845.y, x_1845.z) * vec3<f32>(x_1847, x_1847, x_1847)) + x_1850);
    let x_1852 : vec3<f32> = u_xlat21;
    let x_1853 : vec4<f32> = u_xlat10;
    let x_1856 : vec4<f32> = u_xlat7;
    let x_1858 : vec3<f32> = ((x_1852 * vec3<f32>(x_1853.x, x_1853.y, x_1853.z)) + vec3<f32>(x_1856.x, x_1856.y, x_1856.z));
    let x_1859 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);

    continuing {
      let x_1861 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1861 + bitcast<u32>(1i));
    }
  }
  let x_1863 : vec3<f32> = u_xlat4;
  let x_1864 : f32 = u_xlat28;
  let x_1867 : vec3<f32> = u_xlat18;
  let x_1868 : vec3<f32> = ((x_1863 * vec3<f32>(x_1864, x_1864, x_1864)) + x_1867);
  let x_1869 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1868.x, x_1868.y, x_1868.z, x_1869.w);
  let x_1871 : vec4<f32> = u_xlat7;
  let x_1873 : vec4<f32> = u_xlat0;
  let x_1875 : vec3<f32> = (vec3<f32>(x_1871.x, x_1871.y, x_1871.z) + vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
  let x_1876 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
  let x_1878 : f32 = u_xlat39;
  let x_1879 : f32 = u_xlat39;
  u_xlat39 = (x_1878 * -(x_1879));
  let x_1882 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1882);
  let x_1884 : vec4<f32> = u_xlat0;
  let x_1888 : vec4<f32> = x_44.unity_FogColor;
  let x_1891 : vec3<f32> = (vec3<f32>(x_1884.x, x_1884.y, x_1884.z) + -(vec3<f32>(x_1888.x, x_1888.y, x_1888.z)));
  let x_1892 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1891.x, x_1891.y, x_1891.z, x_1892.w);
  let x_1896 : f32 = u_xlat39;
  let x_1898 : vec4<f32> = u_xlat0;
  let x_1902 : vec4<f32> = x_44.unity_FogColor;
  let x_1904 : vec3<f32> = ((vec3<f32>(x_1896, x_1896, x_1896) * vec3<f32>(x_1898.x, x_1898.y, x_1898.z)) + vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
  let x_1905 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
  let x_1910 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1912 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_1910 & bitcast<u32>(x_1912));
  let x_1915 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1915);
  let x_1920 : f32 = u_xlat0.x;
  let x_1923 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1920 * x_1923);
  let x_1928 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1928, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1933 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1933.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

