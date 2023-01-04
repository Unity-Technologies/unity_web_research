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

@group(1) @binding(3) var<uniform> x_503 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_964 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1423 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1537 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var u_xlat4 : vec4<f32>;
  var x_487 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu39 : u32;
  var u_xlati39 : i32;
  var u_xlat41 : f32;
  var u_xlat15 : f32;
  var u_xlat42 : f32;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var u_xlat28 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : vec2<bool>;
  var u_xlatb30 : bool;
  var x_917 : f32;
  var u_xlat30 : f32;
  var x_1048 : f32;
  var x_1059 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat8 : vec4<f32>;
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
  var x_1856 : f32;
  var x_1869 : f32;
  var u_xlat49 : f32;
  var x_1931 : f32;
  var x_1942 : vec3<f32>;
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
    let x_493 : vec4<f32> = u_xlat4;
    x_487 = vec3<f32>(x_493.x, x_493.y, x_493.z);
  }
  let x_495 : vec3<f32> = x_487;
  let x_496 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec3<f32> = vs_INTERP0;
  let x_506 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres0;
  let x_509 : vec3<f32> = (x_498 + -(vec3<f32>(x_506.x, x_506.y, x_506.z)));
  let x_510 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : vec3<f32> = vs_INTERP0;
  let x_515 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres1;
  let x_518 : vec3<f32> = (x_513 + -(vec3<f32>(x_515.x, x_515.y, x_515.z)));
  let x_519 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_522 : vec3<f32> = vs_INTERP0;
  let x_524 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres2;
  let x_527 : vec3<f32> = (x_522 + -(vec3<f32>(x_524.x, x_524.y, x_524.z)));
  let x_528 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_531 : vec3<f32> = vs_INTERP0;
  let x_534 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_531 + -(vec3<f32>(x_534.x, x_534.y, x_534.z)));
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_538.x, x_538.y, x_538.z), vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_544 : vec4<f32> = u_xlat5;
  let x_546 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_550 : vec4<f32> = u_xlat6;
  let x_552 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_556 : vec3<f32> = u_xlat7;
  let x_557 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_556, x_557);
  let x_563 : vec4<f32> = u_xlat4;
  let x_566 : vec4<f32> = x_503.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_563 < x_566);
  let x_569 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_569);
  let x_573 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_573);
  let x_577 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_577);
  let x_581 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_581);
  let x_585 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_585);
  let x_590 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_590);
  let x_594 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_594);
  let x_597 : vec4<f32> = u_xlat4;
  let x_599 : vec4<f32> = u_xlat5;
  let x_601 : vec3<f32> = (vec3<f32>(x_597.x, x_597.y, x_597.z) + vec3<f32>(x_599.y, x_599.z, x_599.w));
  let x_602 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_607 : vec3<f32> = max(vec3<f32>(x_604.x, x_604.y, x_604.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_608 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_608.x, x_607.x, x_607.y, x_607.z);
  let x_610 : vec4<f32> = u_xlat5;
  u_xlat39 = dot(x_610, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_615 : f32 = u_xlat39;
  u_xlat39 = (-(x_615) + 4.0f);
  let x_620 : f32 = u_xlat39;
  u_xlatu39 = u32(x_620);
  let x_624 : u32 = u_xlatu39;
  u_xlati39 = (bitcast<i32>(x_624) << bitcast<u32>(2i));
  let x_627 : vec3<f32> = vs_INTERP0;
  let x_629 : i32 = u_xlati39;
  let x_632 : i32 = u_xlati39;
  let x_636 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_629 + 1i) / 4i)][((x_632 + 1i) % 4i)];
  let x_638 : vec3<f32> = (vec3<f32>(x_627.y, x_627.y, x_627.y) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : i32 = u_xlati39;
  let x_643 : i32 = u_xlati39;
  let x_646 : vec4<f32> = x_503.x_MainLightWorldToShadow[(x_641 / 4i)][(x_643 % 4i)];
  let x_648 : vec3<f32> = vs_INTERP0;
  let x_651 : vec4<f32> = u_xlat4;
  let x_653 : vec3<f32> = ((vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_648.x, x_648.x, x_648.x)) + vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : i32 = u_xlati39;
  let x_659 : i32 = u_xlati39;
  let x_663 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_656 + 2i) / 4i)][((x_659 + 2i) % 4i)];
  let x_665 : vec3<f32> = vs_INTERP0;
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec3<f32> = ((vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665.z, x_665.z, x_665.z)) + vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat4;
  let x_675 : i32 = u_xlati39;
  let x_678 : i32 = u_xlati39;
  let x_682 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_675 + 3i) / 4i)][((x_678 + 3i) % 4i)];
  let x_684 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : f32 = vs_INTERP0.y;
  let x_690 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat39 = (x_688 * x_690);
  let x_693 : f32 = x_44.unity_MatrixV[0i].z;
  let x_695 : f32 = vs_INTERP0.x;
  let x_697 : f32 = u_xlat39;
  u_xlat39 = ((x_693 * x_695) + x_697);
  let x_700 : f32 = x_44.unity_MatrixV[2i].z;
  let x_702 : f32 = vs_INTERP0.z;
  let x_704 : f32 = u_xlat39;
  u_xlat39 = ((x_700 * x_702) + x_704);
  let x_706 : f32 = u_xlat39;
  let x_708 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat39 = (x_706 + x_708);
  let x_710 : f32 = u_xlat39;
  let x_714 : f32 = x_44.x_ProjectionParams.y;
  u_xlat39 = (-(x_710) + -(x_714));
  let x_717 : f32 = u_xlat39;
  u_xlat39 = max(x_717, 0.0f);
  let x_719 : f32 = u_xlat39;
  let x_722 : f32 = x_44.unity_FogParams.x;
  u_xlat39 = (x_719 * x_722);
  let x_731 : vec2<f32> = vs_INTERP4;
  let x_733 : f32 = x_44.x_GlobalMipBias.x;
  let x_734 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_731, x_733);
  let x_735 : vec3<f32> = vec3<f32>(x_734.x, x_734.y, x_734.z);
  let x_736 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_740 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_741 : vec2<f32> = vec2<f32>(x_740.x, x_740.y);
  let x_745 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_741.x, x_741.y));
  let x_746 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat6;
  let x_750 : vec4<f32> = hlslcc_FragCoord;
  let x_752 : vec2<f32> = (vec2<f32>(x_748.x, x_748.y) * vec2<f32>(x_750.x, x_750.y));
  let x_753 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
  let x_756 : f32 = u_xlat6.y;
  let x_759 : f32 = x_44.x_ScaleBiasRt.x;
  let x_762 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat40 = ((x_756 * x_759) + x_762);
  let x_764 : f32 = u_xlat40;
  u_xlat6.z = (-(x_764) + 1.0f);
  let x_768 : vec4<f32> = u_xlat2;
  let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat2;
  let x_776 : vec2<f32> = clamp(vec2<f32>(x_772.x, x_772.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_777 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
  let x_780 : f32 = u_xlat2.x;
  u_xlat40 = ((-(x_780) * 0.959999979f) + 0.959999979f);
  let x_786 : f32 = u_xlat40;
  let x_789 : f32 = u_xlat2.y;
  u_xlat41 = (-(x_786) + x_789);
  let x_791 : vec4<f32> = u_xlat0;
  let x_793 : f32 = u_xlat40;
  u_xlat7 = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_793, x_793, x_793));
  let x_796 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat2;
  let x_805 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.x, x_803.x) * vec3<f32>(x_805.x, x_805.y, x_805.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_814 : f32 = u_xlat2.y;
  u_xlat40 = (-(x_814) + 1.0f);
  let x_817 : f32 = u_xlat40;
  let x_818 : f32 = u_xlat40;
  u_xlat2.x = (x_817 * x_818);
  let x_822 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_822, 0.0078125f);
  let x_828 : f32 = u_xlat2.x;
  let x_830 : f32 = u_xlat2.x;
  u_xlat15 = (x_828 * x_830);
  let x_832 : f32 = u_xlat41;
  u_xlat41 = (x_832 + 1.0f);
  let x_834 : f32 = u_xlat41;
  u_xlat41 = min(x_834, 1.0f);
  let x_838 : f32 = u_xlat2.x;
  u_xlat42 = ((x_838 * 4.0f) + 2.0f);
  let x_847 : vec4<f32> = u_xlat6;
  let x_850 : f32 = x_44.x_GlobalMipBias.x;
  let x_851 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_847.x, x_847.z), x_850);
  u_xlat43 = x_851.x;
  let x_854 : f32 = u_xlat43;
  u_xlat44 = (x_854 + -1.0f);
  let x_857 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_858 : f32 = u_xlat44;
  u_xlat44 = ((x_857 * x_858) + 1.0f);
  let x_863 : f32 = u_xlat2.z;
  let x_864 : f32 = u_xlat43;
  u_xlat28 = min(x_863, x_864);
  let x_867 : vec4<f32> = u_xlat4;
  let x_868 : vec2<f32> = vec2<f32>(x_867.x, x_867.y);
  let x_870 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_868.x, x_868.y, x_870);
  let x_882 : vec3<f32> = txVec0;
  let x_884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_882.xy, x_882.z);
  u_xlat4.x = x_884;
  let x_888 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_888) + 1.0f);
  let x_893 : f32 = u_xlat4.x;
  let x_895 : f32 = x_503.x_MainLightShadowParams.x;
  let x_898 : f32 = u_xlat17.x;
  u_xlat4.x = ((x_893 * x_895) + x_898);
  let x_903 : f32 = u_xlat4.z;
  u_xlatb17.x = (0.0f >= x_903);
  let x_908 : f32 = u_xlat4.z;
  u_xlatb30 = (x_908 >= 1.0f);
  let x_910 : bool = u_xlatb30;
  let x_912 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_910 | x_912);
  let x_916 : bool = u_xlatb17.x;
  if (x_916) {
    x_917 = 1.0f;
  } else {
    let x_922 : f32 = u_xlat4.x;
    x_917 = x_922;
  }
  let x_923 : f32 = x_917;
  u_xlat4.x = x_923;
  let x_925 : vec3<f32> = vs_INTERP0;
  let x_927 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_925 + -(x_927));
  let x_930 : vec3<f32> = u_xlat17;
  let x_931 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_930, x_931);
  let x_935 : f32 = u_xlat17.x;
  let x_937 : f32 = x_503.x_MainLightShadowParams.z;
  let x_940 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_935 * x_937) + x_940);
  let x_944 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_944, 0.0f, 1.0f);
  let x_949 : f32 = u_xlat4.x;
  u_xlat30 = (-(x_949) + 1.0f);
  let x_953 : f32 = u_xlat17.x;
  let x_954 : f32 = u_xlat30;
  let x_957 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_953 * x_954) + x_957);
  let x_966 : f32 = x_964.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_966 == -1.0f));
  let x_970 : bool = u_xlatb17.x;
  if (x_970) {
    let x_973 : vec3<f32> = vs_INTERP0;
    let x_976 : vec4<f32> = x_964.x_MainLightWorldToLight[1i];
    let x_978 : vec2<f32> = (vec2<f32>(x_973.y, x_973.y) * vec2<f32>(x_976.x, x_976.y));
    let x_979 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_978.x, x_978.y, x_979.z);
    let x_982 : vec4<f32> = x_964.x_MainLightWorldToLight[0i];
    let x_984 : vec3<f32> = vs_INTERP0;
    let x_987 : vec3<f32> = u_xlat17;
    let x_989 : vec2<f32> = ((vec2<f32>(x_982.x, x_982.y) * vec2<f32>(x_984.x, x_984.x)) + vec2<f32>(x_987.x, x_987.y));
    let x_990 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_989.x, x_989.y, x_990.z);
    let x_993 : vec4<f32> = x_964.x_MainLightWorldToLight[2i];
    let x_995 : vec3<f32> = vs_INTERP0;
    let x_998 : vec3<f32> = u_xlat17;
    let x_1000 : vec2<f32> = ((vec2<f32>(x_993.x, x_993.y) * vec2<f32>(x_995.z, x_995.z)) + vec2<f32>(x_998.x, x_998.y));
    let x_1001 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1000.x, x_1000.y, x_1001.z);
    let x_1003 : vec3<f32> = u_xlat17;
    let x_1006 : vec4<f32> = x_964.x_MainLightWorldToLight[3i];
    let x_1008 : vec2<f32> = (vec2<f32>(x_1003.x, x_1003.y) + vec2<f32>(x_1006.x, x_1006.y));
    let x_1009 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1008.x, x_1008.y, x_1009.z);
    let x_1011 : vec3<f32> = u_xlat17;
    let x_1016 : vec2<f32> = ((vec2<f32>(x_1011.x, x_1011.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1017 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_1016.x, x_1016.y, x_1017.z);
    let x_1024 : vec3<f32> = u_xlat17;
    let x_1027 : f32 = x_44.x_GlobalMipBias.x;
    let x_1028 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1024.x, x_1024.y), x_1027);
    u_xlat6 = x_1028;
    let x_1030 : f32 = x_964.x_MainLightCookieTextureFormat;
    let x_1032 : f32 = x_964.x_MainLightCookieTextureFormat;
    let x_1034 : f32 = x_964.x_MainLightCookieTextureFormat;
    let x_1036 : f32 = x_964.x_MainLightCookieTextureFormat;
    let x_1037 : vec4<f32> = vec4<f32>(x_1030, x_1032, x_1034, x_1036);
    let x_1044 : vec4<bool> = (vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1037.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_1044.x, x_1044.y);
    let x_1047 : bool = u_xlatb17.y;
    if (x_1047) {
      let x_1052 : f32 = u_xlat6.w;
      x_1048 = x_1052;
    } else {
      let x_1055 : f32 = u_xlat6.x;
      x_1048 = x_1055;
    }
    let x_1056 : f32 = x_1048;
    u_xlat30 = x_1056;
    let x_1058 : bool = u_xlatb17.x;
    if (x_1058) {
      let x_1062 : vec4<f32> = u_xlat6;
      x_1059 = vec3<f32>(x_1062.x, x_1062.y, x_1062.z);
    } else {
      let x_1065 : f32 = u_xlat30;
      x_1059 = vec3<f32>(x_1065, x_1065, x_1065);
    }
    let x_1067 : vec3<f32> = x_1059;
    u_xlat17 = x_1067;
  } else {
    u_xlat17.x = 1.0f;
    u_xlat17.y = 1.0f;
    u_xlat17.z = 1.0f;
  }
  let x_1072 : vec3<f32> = u_xlat17;
  let x_1074 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (x_1072 * vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1077 : f32 = u_xlat44;
  let x_1079 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1077, x_1077, x_1077) * x_1079);
  let x_1081 : vec4<f32> = u_xlat3;
  let x_1084 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(vec3<f32>(x_1081.x, x_1081.y, x_1081.z)), vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
  let x_1089 : f32 = u_xlat6.x;
  let x_1091 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1089 + x_1091);
  let x_1094 : vec4<f32> = u_xlat1;
  let x_1096 : vec4<f32> = u_xlat6;
  let x_1100 : vec4<f32> = u_xlat3;
  let x_1103 : vec3<f32> = ((vec3<f32>(x_1094.x, x_1094.y, x_1094.z) * -(vec3<f32>(x_1096.x, x_1096.x, x_1096.x))) + -(vec3<f32>(x_1100.x, x_1100.y, x_1100.z)));
  let x_1104 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1107 : vec4<f32> = u_xlat1;
  let x_1109 : vec4<f32> = u_xlat3;
  u_xlat45 = dot(vec3<f32>(x_1107.x, x_1107.y, x_1107.z), vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1112 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1112, 0.0f, 1.0f);
  let x_1114 : f32 = u_xlat45;
  u_xlat45 = (-(x_1114) + 1.0f);
  let x_1117 : f32 = u_xlat45;
  let x_1118 : f32 = u_xlat45;
  u_xlat45 = (x_1117 * x_1118);
  let x_1120 : f32 = u_xlat45;
  let x_1121 : f32 = u_xlat45;
  u_xlat45 = (x_1120 * x_1121);
  let x_1124 : f32 = u_xlat40;
  u_xlat46 = ((-(x_1124) * 0.699999988f) + 1.700000048f);
  let x_1130 : f32 = u_xlat40;
  let x_1131 : f32 = u_xlat46;
  u_xlat40 = (x_1130 * x_1131);
  let x_1133 : f32 = u_xlat40;
  u_xlat40 = (x_1133 * 6.0f);
  let x_1144 : vec4<f32> = u_xlat6;
  let x_1146 : f32 = u_xlat40;
  let x_1147 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1144.x, x_1144.y, x_1144.z), x_1146);
  u_xlat8 = x_1147;
  let x_1149 : f32 = u_xlat8.w;
  u_xlat40 = (x_1149 + -1.0f);
  let x_1152 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_1153 : f32 = u_xlat40;
  u_xlat40 = ((x_1152 * x_1153) + 1.0f);
  let x_1156 : f32 = u_xlat40;
  u_xlat40 = max(x_1156, 0.0f);
  let x_1158 : f32 = u_xlat40;
  u_xlat40 = log2(x_1158);
  let x_1160 : f32 = u_xlat40;
  let x_1162 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_1160 * x_1162);
  let x_1164 : f32 = u_xlat40;
  u_xlat40 = exp2(x_1164);
  let x_1166 : f32 = u_xlat40;
  let x_1168 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_1166 * x_1168);
  let x_1170 : vec4<f32> = u_xlat8;
  let x_1172 : f32 = u_xlat40;
  let x_1174 : vec3<f32> = (vec3<f32>(x_1170.x, x_1170.y, x_1170.z) * vec3<f32>(x_1172, x_1172, x_1172));
  let x_1175 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
  let x_1177 : vec4<f32> = u_xlat2;
  let x_1179 : vec4<f32> = u_xlat2;
  let x_1183 : vec2<f32> = ((vec2<f32>(x_1177.x, x_1177.x) * vec2<f32>(x_1179.x, x_1179.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1184 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1183.x, x_1183.y, x_1184.z, x_1184.w);
  let x_1187 : f32 = u_xlat8.y;
  u_xlat40 = (1.0f / x_1187);
  let x_1190 : vec4<f32> = u_xlat0;
  let x_1193 : f32 = u_xlat41;
  u_xlat21 = (-(vec3<f32>(x_1190.x, x_1190.y, x_1190.z)) + vec3<f32>(x_1193, x_1193, x_1193));
  let x_1196 : f32 = u_xlat45;
  let x_1198 : vec3<f32> = u_xlat21;
  let x_1200 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_1196, x_1196, x_1196) * x_1198) + vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1203 : f32 = u_xlat40;
  let x_1205 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1203, x_1203, x_1203) * x_1205);
  let x_1207 : vec4<f32> = u_xlat6;
  let x_1209 : vec3<f32> = u_xlat21;
  let x_1210 : vec3<f32> = (vec3<f32>(x_1207.x, x_1207.y, x_1207.z) * x_1209);
  let x_1211 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec4<f32> = u_xlat5;
  let x_1215 : vec3<f32> = u_xlat7;
  let x_1217 : vec4<f32> = u_xlat6;
  let x_1219 : vec3<f32> = ((vec3<f32>(x_1213.x, x_1213.y, x_1213.z) * x_1215) + vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
  let x_1220 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  let x_1223 : f32 = u_xlat4.x;
  let x_1225 : f32 = x_359.unity_LightData.z;
  u_xlat40 = (x_1223 * x_1225);
  let x_1227 : vec4<f32> = u_xlat1;
  let x_1230 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1227.x, x_1227.y, x_1227.z), vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
  let x_1235 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1235, 0.0f, 1.0f);
  let x_1238 : f32 = u_xlat40;
  let x_1240 : f32 = u_xlat2.x;
  u_xlat40 = (x_1238 * x_1240);
  let x_1242 : f32 = u_xlat40;
  let x_1244 : vec3<f32> = u_xlat17;
  let x_1245 : vec3<f32> = (vec3<f32>(x_1242, x_1242, x_1242) * x_1244);
  let x_1246 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1248 : vec4<f32> = u_xlat3;
  let x_1251 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1253 : vec3<f32> = (vec3<f32>(x_1248.x, x_1248.y, x_1248.z) + vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
  let x_1254 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
  let x_1256 : vec4<f32> = u_xlat6;
  let x_1258 : vec4<f32> = u_xlat6;
  u_xlat40 = dot(vec3<f32>(x_1256.x, x_1256.y, x_1256.z), vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : f32 = u_xlat40;
  u_xlat40 = max(x_1261, 1.17549435e-37f);
  let x_1264 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_1264);
  let x_1266 : f32 = u_xlat40;
  let x_1268 : vec4<f32> = u_xlat6;
  let x_1270 : vec3<f32> = (vec3<f32>(x_1266, x_1266, x_1266) * vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
  let x_1271 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
  let x_1273 : vec4<f32> = u_xlat1;
  let x_1275 : vec4<f32> = u_xlat6;
  u_xlat40 = dot(vec3<f32>(x_1273.x, x_1273.y, x_1273.z), vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
  let x_1278 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1278, 0.0f, 1.0f);
  let x_1281 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1283 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_1281.x, x_1281.y, x_1281.z), vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1288 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1288, 0.0f, 1.0f);
  let x_1291 : f32 = u_xlat40;
  let x_1292 : f32 = u_xlat40;
  u_xlat40 = (x_1291 * x_1292);
  let x_1294 : f32 = u_xlat40;
  let x_1296 : f32 = u_xlat8.x;
  u_xlat40 = ((x_1294 * x_1296) + 1.000010014f);
  let x_1301 : f32 = u_xlat2.x;
  let x_1303 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1301 * x_1303);
  let x_1306 : f32 = u_xlat40;
  let x_1307 : f32 = u_xlat40;
  u_xlat40 = (x_1306 * x_1307);
  let x_1310 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1310, 0.100000001f);
  let x_1314 : f32 = u_xlat40;
  let x_1316 : f32 = u_xlat2.x;
  u_xlat40 = (x_1314 * x_1316);
  let x_1318 : f32 = u_xlat42;
  let x_1319 : f32 = u_xlat40;
  u_xlat40 = (x_1318 * x_1319);
  let x_1321 : f32 = u_xlat15;
  let x_1322 : f32 = u_xlat40;
  u_xlat40 = (x_1321 / x_1322);
  let x_1324 : vec4<f32> = u_xlat0;
  let x_1326 : f32 = u_xlat40;
  let x_1329 : vec3<f32> = u_xlat7;
  let x_1330 : vec3<f32> = ((vec3<f32>(x_1324.x, x_1324.y, x_1324.z) * vec3<f32>(x_1326, x_1326, x_1326)) + x_1329);
  let x_1331 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1331.w);
  let x_1333 : vec4<f32> = u_xlat4;
  let x_1335 : vec4<f32> = u_xlat6;
  let x_1337 : vec3<f32> = (vec3<f32>(x_1333.x, x_1333.y, x_1333.z) * vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
  let x_1338 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1341 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1343 : f32 = x_359.unity_LightData.y;
  u_xlat40 = min(x_1341, x_1343);
  let x_1346 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_1346));
  let x_1351 : f32 = x_964.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1353 : f32 = x_964.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1355 : f32 = x_964.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1357 : f32 = x_964.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1358 : vec4<f32> = vec4<f32>(x_1351, x_1353, x_1355, x_1357);
  let x_1365 : vec4<bool> = (vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1358.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1366 : vec2<bool> = vec2<bool>(x_1365.x, x_1365.w);
  let x_1367 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_1366.x, x_1367.y, x_1367.z, x_1366.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1378 : u32 = u_xlatu_loop_1;
    let x_1379 : u32 = u_xlatu40;
    if ((x_1378 < x_1379)) {
    } else {
      break;
    }
    let x_1382 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1382 >> 2u);
    let x_1385 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1385 & 3u));
    let x_1388 : u32 = u_xlatu45;
    let x_1391 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_1388)];
    let x_1401 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1406 : vec4<u32> = indexable[x_1401];
    u_xlat45 = dot(x_1391, bitcast<vec4<f32>>(x_1406));
    let x_1409 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1409));
    let x_1412 : vec3<f32> = vs_INTERP0;
    let x_1424 : u32 = u_xlatu45;
    let x_1427 : vec4<f32> = x_1423.x_AdditionalLightsPosition[bitcast<i32>(x_1424)];
    let x_1430 : u32 = u_xlatu45;
    let x_1433 : vec4<f32> = x_1423.x_AdditionalLightsPosition[bitcast<i32>(x_1430)];
    u_xlat21 = ((-(x_1412) * vec3<f32>(x_1427.w, x_1427.w, x_1427.w)) + vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
    let x_1436 : vec3<f32> = u_xlat21;
    let x_1437 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1436, x_1437);
    let x_1439 : f32 = u_xlat46;
    u_xlat46 = max(x_1439, 6.10351562e-05f);
    let x_1443 : f32 = u_xlat46;
    u_xlat9 = inverseSqrt(x_1443);
    let x_1446 : vec3<f32> = u_xlat21;
    let x_1447 : f32 = u_xlat9;
    u_xlat22 = (x_1446 * vec3<f32>(x_1447, x_1447, x_1447));
    let x_1451 : f32 = u_xlat46;
    u_xlat10.x = (1.0f / x_1451);
    let x_1454 : f32 = u_xlat46;
    let x_1455 : u32 = u_xlatu45;
    let x_1458 : f32 = x_1423.x_AdditionalLightsAttenuation[bitcast<i32>(x_1455)].x;
    u_xlat46 = (x_1454 * x_1458);
    let x_1460 : f32 = u_xlat46;
    let x_1462 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1460) * x_1462) + 1.0f);
    let x_1465 : f32 = u_xlat46;
    u_xlat46 = max(x_1465, 0.0f);
    let x_1467 : f32 = u_xlat46;
    let x_1468 : f32 = u_xlat46;
    u_xlat46 = (x_1467 * x_1468);
    let x_1470 : f32 = u_xlat46;
    let x_1472 : f32 = u_xlat10.x;
    u_xlat46 = (x_1470 * x_1472);
    let x_1474 : u32 = u_xlatu45;
    let x_1477 : vec4<f32> = x_1423.x_AdditionalLightsSpotDir[bitcast<i32>(x_1474)];
    let x_1479 : vec3<f32> = u_xlat22;
    u_xlat10.x = dot(vec3<f32>(x_1477.x, x_1477.y, x_1477.z), x_1479);
    let x_1483 : f32 = u_xlat10.x;
    let x_1484 : u32 = u_xlatu45;
    let x_1487 : f32 = x_1423.x_AdditionalLightsAttenuation[bitcast<i32>(x_1484)].z;
    let x_1489 : u32 = u_xlatu45;
    let x_1492 : f32 = x_1423.x_AdditionalLightsAttenuation[bitcast<i32>(x_1489)].w;
    u_xlat10.x = ((x_1483 * x_1487) + x_1492);
    let x_1496 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1496, 0.0f, 1.0f);
    let x_1500 : f32 = u_xlat10.x;
    let x_1502 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1500 * x_1502);
    let x_1505 : f32 = u_xlat46;
    let x_1507 : f32 = u_xlat10.x;
    u_xlat46 = (x_1505 * x_1507);
    let x_1510 : u32 = u_xlatu45;
    u_xlatu10 = (x_1510 >> 5u);
    let x_1513 : u32 = u_xlatu45;
    u_xlati23 = (1i << bitcast<u32>((bitcast<i32>(x_1513) & 31i)));
    let x_1519 : i32 = u_xlati23;
    let x_1521 : u32 = u_xlatu10;
    let x_1524 : f32 = x_964.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1521)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_1519) & bitcast<u32>(x_1524)));
    let x_1528 : i32 = u_xlati10;
    if ((x_1528 != 0i)) {
      let x_1538 : u32 = u_xlatu45;
      let x_1541 : f32 = x_1537.x_AdditionalLightsLightTypes[bitcast<i32>(x_1538)].el;
      u_xlati10 = i32(x_1541);
      let x_1543 : i32 = u_xlati10;
      u_xlati23 = select(1i, 0i, (x_1543 != 0i));
      let x_1547 : u32 = u_xlatu45;
      u_xlati36 = (bitcast<i32>(x_1547) << bitcast<u32>(2i));
      let x_1550 : i32 = u_xlati23;
      if ((x_1550 != 0i)) {
        let x_1555 : vec3<f32> = vs_INTERP0;
        let x_1557 : i32 = u_xlati36;
        let x_1560 : i32 = u_xlati36;
        let x_1564 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[((x_1557 + 1i) / 4i)][((x_1560 + 1i) % 4i)];
        let x_1566 : vec3<f32> = (vec3<f32>(x_1555.y, x_1555.y, x_1555.y) * vec3<f32>(x_1564.x, x_1564.y, x_1564.w));
        let x_1567 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
        let x_1569 : i32 = u_xlati36;
        let x_1571 : i32 = u_xlati36;
        let x_1574 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[(x_1569 / 4i)][(x_1571 % 4i)];
        let x_1576 : vec3<f32> = vs_INTERP0;
        let x_1579 : vec4<f32> = u_xlat11;
        let x_1581 : vec3<f32> = ((vec3<f32>(x_1574.x, x_1574.y, x_1574.w) * vec3<f32>(x_1576.x, x_1576.x, x_1576.x)) + vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
        let x_1582 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1581.x, x_1581.y, x_1581.z, x_1582.w);
        let x_1584 : i32 = u_xlati36;
        let x_1587 : i32 = u_xlati36;
        let x_1591 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[((x_1584 + 2i) / 4i)][((x_1587 + 2i) % 4i)];
        let x_1593 : vec3<f32> = vs_INTERP0;
        let x_1596 : vec4<f32> = u_xlat11;
        let x_1598 : vec3<f32> = ((vec3<f32>(x_1591.x, x_1591.y, x_1591.w) * vec3<f32>(x_1593.z, x_1593.z, x_1593.z)) + vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
        let x_1599 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
        let x_1601 : vec4<f32> = u_xlat11;
        let x_1603 : i32 = u_xlati36;
        let x_1606 : i32 = u_xlati36;
        let x_1610 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[((x_1603 + 3i) / 4i)][((x_1606 + 3i) % 4i)];
        let x_1612 : vec3<f32> = (vec3<f32>(x_1601.x, x_1601.y, x_1601.z) + vec3<f32>(x_1610.x, x_1610.y, x_1610.w));
        let x_1613 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
        let x_1616 : vec4<f32> = u_xlat11;
        let x_1618 : vec4<f32> = u_xlat11;
        let x_1620 : vec2<f32> = (vec2<f32>(x_1616.x, x_1616.y) / vec2<f32>(x_1618.z, x_1618.z));
        let x_1621 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1620.x, x_1621.y, x_1620.y);
        let x_1623 : vec3<f32> = u_xlat23;
        let x_1626 : vec2<f32> = ((vec2<f32>(x_1623.x, x_1623.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1627 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1626.x, x_1627.y, x_1626.y);
        let x_1629 : vec3<f32> = u_xlat23;
        let x_1633 : vec2<f32> = clamp(vec2<f32>(x_1629.x, x_1629.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1634 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1633.x, x_1634.y, x_1633.y);
        let x_1636 : u32 = u_xlatu45;
        let x_1639 : vec4<f32> = x_1537.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1636)];
        let x_1641 : vec3<f32> = u_xlat23;
        let x_1644 : u32 = u_xlatu45;
        let x_1647 : vec4<f32> = x_1537.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1644)];
        let x_1649 : vec2<f32> = ((vec2<f32>(x_1639.x, x_1639.y) * vec2<f32>(x_1641.x, x_1641.z)) + vec2<f32>(x_1647.z, x_1647.w));
        let x_1650 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1649.x, x_1650.y, x_1649.y);
      } else {
        let x_1654 : i32 = u_xlati10;
        u_xlatb10 = (x_1654 == 1i);
        let x_1656 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_1656);
        let x_1658 : i32 = u_xlati10;
        if ((x_1658 != 0i)) {
          let x_1662 : vec3<f32> = vs_INTERP0;
          let x_1664 : i32 = u_xlati36;
          let x_1667 : i32 = u_xlati36;
          let x_1671 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[((x_1664 + 1i) / 4i)][((x_1667 + 1i) % 4i)];
          let x_1673 : vec2<f32> = (vec2<f32>(x_1662.y, x_1662.y) * vec2<f32>(x_1671.x, x_1671.y));
          let x_1674 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1673.x, x_1673.y, x_1674.z, x_1674.w);
          let x_1676 : i32 = u_xlati36;
          let x_1678 : i32 = u_xlati36;
          let x_1681 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[(x_1676 / 4i)][(x_1678 % 4i)];
          let x_1683 : vec3<f32> = vs_INTERP0;
          let x_1686 : vec4<f32> = u_xlat11;
          let x_1688 : vec2<f32> = ((vec2<f32>(x_1681.x, x_1681.y) * vec2<f32>(x_1683.x, x_1683.x)) + vec2<f32>(x_1686.x, x_1686.y));
          let x_1689 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1688.x, x_1688.y, x_1689.z, x_1689.w);
          let x_1691 : i32 = u_xlati36;
          let x_1694 : i32 = u_xlati36;
          let x_1698 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[((x_1691 + 2i) / 4i)][((x_1694 + 2i) % 4i)];
          let x_1700 : vec3<f32> = vs_INTERP0;
          let x_1703 : vec4<f32> = u_xlat11;
          let x_1705 : vec2<f32> = ((vec2<f32>(x_1698.x, x_1698.y) * vec2<f32>(x_1700.z, x_1700.z)) + vec2<f32>(x_1703.x, x_1703.y));
          let x_1706 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1705.x, x_1705.y, x_1706.z, x_1706.w);
          let x_1708 : vec4<f32> = u_xlat11;
          let x_1710 : i32 = u_xlati36;
          let x_1713 : i32 = u_xlati36;
          let x_1717 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[((x_1710 + 3i) / 4i)][((x_1713 + 3i) % 4i)];
          let x_1719 : vec2<f32> = (vec2<f32>(x_1708.x, x_1708.y) + vec2<f32>(x_1717.x, x_1717.y));
          let x_1720 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1719.x, x_1719.y, x_1720.z, x_1720.w);
          let x_1722 : vec4<f32> = u_xlat11;
          let x_1725 : vec2<f32> = ((vec2<f32>(x_1722.x, x_1722.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1726 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
          let x_1728 : vec4<f32> = u_xlat11;
          let x_1730 : vec2<f32> = fract(vec2<f32>(x_1728.x, x_1728.y));
          let x_1731 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1730.x, x_1730.y, x_1731.z, x_1731.w);
          let x_1733 : u32 = u_xlatu45;
          let x_1736 : vec4<f32> = x_1537.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1733)];
          let x_1738 : vec4<f32> = u_xlat11;
          let x_1741 : u32 = u_xlatu45;
          let x_1744 : vec4<f32> = x_1537.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1741)];
          let x_1746 : vec2<f32> = ((vec2<f32>(x_1736.x, x_1736.y) * vec2<f32>(x_1738.x, x_1738.y)) + vec2<f32>(x_1744.z, x_1744.w));
          let x_1747 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1746.x, x_1747.y, x_1746.y);
        } else {
          let x_1750 : vec3<f32> = vs_INTERP0;
          let x_1752 : i32 = u_xlati36;
          let x_1755 : i32 = u_xlati36;
          let x_1759 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[((x_1752 + 1i) / 4i)][((x_1755 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1750.y, x_1750.y, x_1750.y, x_1750.y) * x_1759);
          let x_1761 : i32 = u_xlati36;
          let x_1763 : i32 = u_xlati36;
          let x_1766 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[(x_1761 / 4i)][(x_1763 % 4i)];
          let x_1767 : vec3<f32> = vs_INTERP0;
          let x_1770 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1766 * vec4<f32>(x_1767.x, x_1767.x, x_1767.x, x_1767.x)) + x_1770);
          let x_1772 : i32 = u_xlati36;
          let x_1775 : i32 = u_xlati36;
          let x_1779 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[((x_1772 + 2i) / 4i)][((x_1775 + 2i) % 4i)];
          let x_1780 : vec3<f32> = vs_INTERP0;
          let x_1783 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1779 * vec4<f32>(x_1780.z, x_1780.z, x_1780.z, x_1780.z)) + x_1783);
          let x_1785 : vec4<f32> = u_xlat11;
          let x_1786 : i32 = u_xlati36;
          let x_1789 : i32 = u_xlati36;
          let x_1793 : vec4<f32> = x_1537.x_AdditionalLightsWorldToLights[((x_1786 + 3i) / 4i)][((x_1789 + 3i) % 4i)];
          u_xlat11 = (x_1785 + x_1793);
          let x_1795 : vec4<f32> = u_xlat11;
          let x_1797 : vec4<f32> = u_xlat11;
          let x_1799 : vec3<f32> = (vec3<f32>(x_1795.x, x_1795.y, x_1795.z) / vec3<f32>(x_1797.w, x_1797.w, x_1797.w));
          let x_1800 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
          let x_1802 : vec4<f32> = u_xlat11;
          let x_1804 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_1802.x, x_1802.y, x_1802.z), vec3<f32>(x_1804.x, x_1804.y, x_1804.z));
          let x_1809 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_1809);
          let x_1812 : vec4<f32> = u_xlat10;
          let x_1814 : vec4<f32> = u_xlat11;
          let x_1816 : vec3<f32> = (vec3<f32>(x_1812.x, x_1812.x, x_1812.x) * vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
          let x_1817 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
          let x_1819 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_1819.x, x_1819.y, x_1819.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1825 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_1825, 0.000001f);
          let x_1830 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_1830);
          let x_1834 : vec4<f32> = u_xlat10;
          let x_1836 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_1834.x, x_1834.x, x_1834.x) * vec3<f32>(x_1836.z, x_1836.x, x_1836.y));
          let x_1840 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_1840);
          let x_1844 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_1844, 0.0f, 1.0f);
          let x_1848 : vec3<f32> = u_xlat12;
          let x_1851 : vec4<bool> = (vec4<f32>(x_1848.y, x_1848.z, x_1848.y, x_1848.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_1851.x, x_1851.y);
          let x_1855 : bool = u_xlatb37.x;
          if (x_1855) {
            let x_1860 : f32 = u_xlat12.x;
            x_1856 = x_1860;
          } else {
            let x_1863 : f32 = u_xlat12.x;
            x_1856 = -(x_1863);
          }
          let x_1865 : f32 = x_1856;
          u_xlat37.x = x_1865;
          let x_1868 : bool = u_xlatb37.y;
          if (x_1868) {
            let x_1873 : f32 = u_xlat12.x;
            x_1869 = x_1873;
          } else {
            let x_1876 : f32 = u_xlat12.x;
            x_1869 = -(x_1876);
          }
          let x_1878 : f32 = x_1869;
          u_xlat37.y = x_1878;
          let x_1880 : vec4<f32> = u_xlat11;
          let x_1882 : vec4<f32> = u_xlat10;
          let x_1885 : vec2<f32> = u_xlat37;
          let x_1886 : vec2<f32> = ((vec2<f32>(x_1880.x, x_1880.y) * vec2<f32>(x_1882.x, x_1882.x)) + x_1885);
          let x_1887 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1886.x, x_1887.y, x_1886.y, x_1887.w);
          let x_1889 : vec4<f32> = u_xlat10;
          let x_1892 : vec2<f32> = ((vec2<f32>(x_1889.x, x_1889.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1893 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1892.x, x_1893.y, x_1892.y, x_1893.w);
          let x_1895 : vec4<f32> = u_xlat10;
          let x_1899 : vec2<f32> = clamp(vec2<f32>(x_1895.x, x_1895.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1900 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1899.x, x_1900.y, x_1899.y, x_1900.w);
          let x_1902 : u32 = u_xlatu45;
          let x_1905 : vec4<f32> = x_1537.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1902)];
          let x_1907 : vec4<f32> = u_xlat10;
          let x_1910 : u32 = u_xlatu45;
          let x_1913 : vec4<f32> = x_1537.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1910)];
          let x_1915 : vec2<f32> = ((vec2<f32>(x_1905.x, x_1905.y) * vec2<f32>(x_1907.x, x_1907.z)) + vec2<f32>(x_1913.z, x_1913.w));
          let x_1916 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1915.x, x_1916.y, x_1915.y);
        }
      }
      let x_1923 : vec3<f32> = u_xlat23;
      let x_1926 : f32 = x_44.x_GlobalMipBias.x;
      let x_1927 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1923.x, x_1923.z), x_1926);
      u_xlat10 = x_1927;
      let x_1930 : bool = u_xlatb2.w;
      if (x_1930) {
        let x_1935 : f32 = u_xlat10.w;
        x_1931 = x_1935;
      } else {
        let x_1938 : f32 = u_xlat10.x;
        x_1931 = x_1938;
      }
      let x_1939 : f32 = x_1931;
      u_xlat49 = x_1939;
      let x_1941 : bool = u_xlatb2.x;
      if (x_1941) {
        let x_1945 : vec4<f32> = u_xlat10;
        x_1942 = vec3<f32>(x_1945.x, x_1945.y, x_1945.z);
      } else {
        let x_1948 : f32 = u_xlat49;
        x_1942 = vec3<f32>(x_1948, x_1948, x_1948);
      }
      let x_1950 : vec3<f32> = x_1942;
      let x_1951 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_1957 : vec4<f32> = u_xlat10;
    let x_1959 : u32 = u_xlatu45;
    let x_1962 : vec4<f32> = x_1423.x_AdditionalLightsColor[bitcast<i32>(x_1959)];
    let x_1964 : vec3<f32> = (vec3<f32>(x_1957.x, x_1957.y, x_1957.z) * vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
    let x_1965 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
    let x_1967 : f32 = u_xlat44;
    let x_1969 : vec4<f32> = u_xlat10;
    let x_1971 : vec3<f32> = (vec3<f32>(x_1967, x_1967, x_1967) * vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
    let x_1972 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
    let x_1974 : vec4<f32> = u_xlat1;
    let x_1976 : vec3<f32> = u_xlat22;
    u_xlat45 = dot(vec3<f32>(x_1974.x, x_1974.y, x_1974.z), x_1976);
    let x_1978 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1978, 0.0f, 1.0f);
    let x_1980 : f32 = u_xlat45;
    let x_1981 : f32 = u_xlat46;
    u_xlat45 = (x_1980 * x_1981);
    let x_1983 : f32 = u_xlat45;
    let x_1985 : vec4<f32> = u_xlat10;
    let x_1987 : vec3<f32> = (vec3<f32>(x_1983, x_1983, x_1983) * vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
    let x_1988 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
    let x_1990 : vec3<f32> = u_xlat21;
    let x_1991 : f32 = u_xlat9;
    let x_1994 : vec4<f32> = u_xlat3;
    u_xlat21 = ((x_1990 * vec3<f32>(x_1991, x_1991, x_1991)) + vec3<f32>(x_1994.x, x_1994.y, x_1994.z));
    let x_1997 : vec3<f32> = u_xlat21;
    let x_1998 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1997, x_1998);
    let x_2000 : f32 = u_xlat45;
    u_xlat45 = max(x_2000, 1.17549435e-37f);
    let x_2002 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_2002);
    let x_2004 : f32 = u_xlat45;
    let x_2006 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_2004, x_2004, x_2004) * x_2006);
    let x_2008 : vec4<f32> = u_xlat1;
    let x_2010 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(vec3<f32>(x_2008.x, x_2008.y, x_2008.z), x_2010);
    let x_2012 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2012, 0.0f, 1.0f);
    let x_2014 : vec3<f32> = u_xlat22;
    let x_2015 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_2014, x_2015);
    let x_2017 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2017, 0.0f, 1.0f);
    let x_2019 : f32 = u_xlat45;
    let x_2020 : f32 = u_xlat45;
    u_xlat45 = (x_2019 * x_2020);
    let x_2022 : f32 = u_xlat45;
    let x_2024 : f32 = u_xlat8.x;
    u_xlat45 = ((x_2022 * x_2024) + 1.000010014f);
    let x_2027 : f32 = u_xlat46;
    let x_2028 : f32 = u_xlat46;
    u_xlat46 = (x_2027 * x_2028);
    let x_2030 : f32 = u_xlat45;
    let x_2031 : f32 = u_xlat45;
    u_xlat45 = (x_2030 * x_2031);
    let x_2033 : f32 = u_xlat46;
    u_xlat46 = max(x_2033, 0.100000001f);
    let x_2035 : f32 = u_xlat45;
    let x_2036 : f32 = u_xlat46;
    u_xlat45 = (x_2035 * x_2036);
    let x_2038 : f32 = u_xlat42;
    let x_2039 : f32 = u_xlat45;
    u_xlat45 = (x_2038 * x_2039);
    let x_2041 : f32 = u_xlat15;
    let x_2042 : f32 = u_xlat45;
    u_xlat45 = (x_2041 / x_2042);
    let x_2044 : vec4<f32> = u_xlat0;
    let x_2046 : f32 = u_xlat45;
    let x_2049 : vec3<f32> = u_xlat7;
    u_xlat21 = ((vec3<f32>(x_2044.x, x_2044.y, x_2044.z) * vec3<f32>(x_2046, x_2046, x_2046)) + x_2049);
    let x_2051 : vec3<f32> = u_xlat21;
    let x_2052 : vec4<f32> = u_xlat10;
    let x_2055 : vec4<f32> = u_xlat6;
    let x_2057 : vec3<f32> = ((x_2051 * vec3<f32>(x_2052.x, x_2052.y, x_2052.z)) + vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
    let x_2058 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);

    continuing {
      let x_2060 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2060 + bitcast<u32>(1i));
    }
  }
  let x_2062 : vec4<f32> = u_xlat5;
  let x_2064 : f32 = u_xlat28;
  let x_2067 : vec4<f32> = u_xlat4;
  let x_2069 : vec3<f32> = ((vec3<f32>(x_2062.x, x_2062.y, x_2062.z) * vec3<f32>(x_2064, x_2064, x_2064)) + vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2070 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2069.x, x_2069.y, x_2069.z, x_2070.w);
  let x_2072 : vec4<f32> = u_xlat6;
  let x_2074 : vec4<f32> = u_xlat0;
  let x_2076 : vec3<f32> = (vec3<f32>(x_2072.x, x_2072.y, x_2072.z) + vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
  let x_2077 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);
  let x_2079 : f32 = u_xlat39;
  let x_2080 : f32 = u_xlat39;
  u_xlat39 = (x_2079 * -(x_2080));
  let x_2083 : f32 = u_xlat39;
  u_xlat39 = exp2(x_2083);
  let x_2085 : vec4<f32> = u_xlat0;
  let x_2089 : vec4<f32> = x_44.unity_FogColor;
  let x_2092 : vec3<f32> = (vec3<f32>(x_2085.x, x_2085.y, x_2085.z) + -(vec3<f32>(x_2089.x, x_2089.y, x_2089.z)));
  let x_2093 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2092.x, x_2092.y, x_2092.z, x_2093.w);
  let x_2097 : f32 = u_xlat39;
  let x_2099 : vec4<f32> = u_xlat0;
  let x_2103 : vec4<f32> = x_44.unity_FogColor;
  let x_2105 : vec3<f32> = ((vec3<f32>(x_2097, x_2097, x_2097) * vec3<f32>(x_2099.x, x_2099.y, x_2099.z)) + vec3<f32>(x_2103.x, x_2103.y, x_2103.z));
  let x_2106 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2105.x, x_2105.y, x_2105.z, x_2106.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0);
}

