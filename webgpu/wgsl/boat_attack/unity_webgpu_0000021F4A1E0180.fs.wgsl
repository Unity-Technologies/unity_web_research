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

@group(0) @binding(5) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(6) var<uniform> x_190 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_E9EC22CC : sampler;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_6EEDD32E : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_359 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_726 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2050 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2491 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2599 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlat40 : f32;
  var x_146 : f32;
  var u_xlat21 : vec3<f32>;
  var u_xlatb60 : bool;
  var x_211 : f32;
  var x_220 : f32;
  var u_xlat60 : f32;
  var u_xlatb41 : vec2<bool>;
  var u_xlat41 : vec2<f32>;
  var u_xlat62 : f32;
  var u_xlat4 : vec3<f32>;
  var x_475 : f32;
  var x_488 : f32;
  var x_499 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat61 : f32;
  var u_xlat22 : f32;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlat42 : f32;
  var u_xlatb63 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat25 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat66 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec3<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat65 : f32;
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
  var u_xlatb25 : bool;
  var u_xlatb7 : vec2<bool>;
  var x_2132 : f32;
  var x_2143 : vec3<f32>;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu2 : u32;
  var u_xlati63 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu66 : u32;
  var u_xlati47 : i32;
  var u_xlati66 : i32;
  var u_xlati67 : i32;
  var u_xlatb66 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlatb47 : vec2<bool>;
  var u_xlat47 : vec2<f32>;
  var x_2892 : f32;
  var x_2905 : f32;
  var x_2957 : f32;
  var x_2968 : vec3<f32>;
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
  u_xlatb20 = (x_96 >= x_98);
  let x_101 : bool = u_xlatb20;
  u_xlat20 = select(0.0f, 1.0f, x_101);
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
  let x_118 : f32 = u_xlat20;
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
  u_xlatb20 = (x_138 == 0.0f);
  let x_142 : f32 = u_xlat1.x;
  u_xlat40 = (x_142 + 1.00000001e-10f);
  let x_145 : bool = u_xlatb20;
  if (x_145) {
    let x_150 : f32 = u_xlat1.x;
    x_146 = x_150;
  } else {
    let x_152 : f32 = u_xlat40;
    x_146 = x_152;
  }
  let x_153 : f32 = x_146;
  u_xlat20 = x_153;
  let x_155 : f32 = u_xlat1.y;
  let x_158 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_155) + x_158);
  let x_164 : f32 = u_xlat0.x;
  u_xlat21.x = ((x_164 * 6.0f) + 1.00000001e-10f);
  let x_170 : f32 = u_xlat1.x;
  let x_172 : f32 = u_xlat21.x;
  u_xlat1.x = (x_170 / x_172);
  let x_176 : f32 = u_xlat1.x;
  let x_178 : f32 = u_xlat1.z;
  u_xlat1.x = (x_176 + x_178);
  let x_182 : f32 = u_xlat0.x;
  let x_183 : f32 = u_xlat40;
  u_xlat0.x = (x_182 / x_183);
  let x_187 : f32 = u_xlat0.w;
  let x_193 : f32 = x_190.x_Hue;
  let x_196 : f32 = u_xlat1.x;
  u_xlat40 = ((x_187 * x_193) + abs(x_196));
  let x_200 : f32 = u_xlat40;
  u_xlatb60 = (x_200 < 0.0f);
  let x_202 : f32 = u_xlat40;
  u_xlatb1 = (1.0f < x_202);
  let x_204 : f32 = u_xlat40;
  let x_207 : vec2<f32> = (vec2<f32>(x_204, x_204) + vec2<f32>(1.0f, -1.0f));
  let x_208 : vec3<f32> = u_xlat21;
  u_xlat21 = vec3<f32>(x_207.x, x_207.y, x_208.z);
  let x_210 : bool = u_xlatb1;
  if (x_210) {
    let x_215 : f32 = u_xlat21.y;
    x_211 = x_215;
  } else {
    let x_217 : f32 = u_xlat40;
    x_211 = x_217;
  }
  let x_218 : f32 = x_211;
  u_xlat40 = x_218;
  let x_219 : bool = u_xlatb60;
  if (x_219) {
    let x_224 : f32 = u_xlat21.x;
    x_220 = x_224;
  } else {
    let x_226 : f32 = u_xlat40;
    x_220 = x_226;
  }
  let x_227 : f32 = x_220;
  u_xlat40 = x_227;
  let x_228 : f32 = u_xlat40;
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
  let x_279 : f32 = u_xlat20;
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
  u_xlat60 = dot(vec2<f32>(x_320.x, x_320.y), vec2<f32>(x_322.x, x_322.y));
  let x_325 : f32 = u_xlat60;
  u_xlat60 = min(x_325, 1.0f);
  let x_327 : f32 = u_xlat60;
  u_xlat60 = (-(x_327) + 1.0f);
  let x_330 : f32 = u_xlat60;
  u_xlat60 = sqrt(x_330);
  let x_332 : f32 = u_xlat60;
  u_xlat60 = max(x_332, 1.00000002e-16f);
  let x_340 : vec4<f32> = vs_INTERP3;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_340.x, x_340.y), x_343);
  let x_345 : vec3<f32> = vec3<f32>(x_344.x, x_344.w, x_344.y);
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_353 : f32 = vs_INTERP2.w;
  u_xlatb41.x = (0.0f < x_353);
  let x_361 : f32 = x_359.unity_WorldTransformParams.w;
  u_xlatb41.y = (x_361 >= 0.0f);
  let x_367 : bool = u_xlatb41.x;
  u_xlat41.x = select(-1.0f, 1.0f, x_367);
  let x_371 : bool = u_xlatb41.y;
  u_xlat41.y = select(-1.0f, 1.0f, x_371);
  let x_375 : f32 = u_xlat41.y;
  let x_377 : f32 = u_xlat41.x;
  u_xlat41.x = (x_375 * x_377);
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
  let x_400 : vec2<f32> = u_xlat41;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.x, x_400.x) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat21 = (vec3<f32>(x_407.y, x_407.y, x_407.y) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = vs_INTERP2;
  let x_417 : vec3<f32> = u_xlat21;
  let x_418 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.x, x_412.x) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + x_417);
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : f32 = u_xlat60;
  let x_423 : vec3<f32> = vs_INTERP1;
  let x_425 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = ((vec3<f32>(x_421, x_421, x_421) * x_423) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat60 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat60;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb60 = (x_446 == 0.0f);
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_454 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_455 : vec3<f32> = (-(x_449) + x_454);
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : vec4<f32> = u_xlat3;
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat62 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat62;
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec3<f32> = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : bool = u_xlatb60;
  if (x_474) {
    let x_479 : f32 = u_xlat3.x;
    x_475 = x_479;
  } else {
    let x_484 : f32 = x_44.unity_MatrixV[0i].z;
    x_475 = x_484;
  }
  let x_485 : f32 = x_475;
  u_xlat4.x = x_485;
  let x_487 : bool = u_xlatb60;
  if (x_487) {
    let x_492 : f32 = u_xlat3.y;
    x_488 = x_492;
  } else {
    let x_495 : f32 = x_44.unity_MatrixV[1i].z;
    x_488 = x_495;
  }
  let x_496 : f32 = x_488;
  u_xlat4.y = x_496;
  let x_498 : bool = u_xlatb60;
  if (x_498) {
    let x_503 : f32 = u_xlat3.z;
    x_499 = x_503;
  } else {
    let x_507 : f32 = x_44.unity_MatrixV[2i].z;
    x_499 = x_507;
  }
  let x_508 : f32 = x_499;
  u_xlat4.z = x_508;
  u_xlat1.w = 1.0f;
  let x_514 : vec4<f32> = x_359.unity_SHAr;
  let x_515 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_514, x_515);
  let x_520 : vec4<f32> = x_359.unity_SHAg;
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_520, x_521);
  let x_526 : vec4<f32> = x_359.unity_SHAb;
  let x_527 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_526, x_527);
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_531.y, x_531.z, x_531.z, x_531.x) * vec4<f32>(x_533.x, x_533.y, x_533.z, x_533.z));
  let x_539 : vec4<f32> = x_359.unity_SHBr;
  let x_540 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_539, x_540);
  let x_545 : vec4<f32> = x_359.unity_SHBg;
  let x_546 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_545, x_546);
  let x_551 : vec4<f32> = x_359.unity_SHBb;
  let x_552 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_551, x_552);
  let x_556 : f32 = u_xlat1.y;
  let x_558 : f32 = u_xlat1.y;
  u_xlat60 = (x_556 * x_558);
  let x_561 : f32 = u_xlat1.x;
  let x_563 : f32 = u_xlat1.x;
  let x_565 : f32 = u_xlat60;
  u_xlat60 = ((x_561 * x_563) + -(x_565));
  let x_570 : vec4<f32> = x_359.unity_SHC;
  let x_572 : f32 = u_xlat60;
  let x_575 : vec3<f32> = u_xlat6;
  let x_576 : vec3<f32> = ((vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_572, x_572, x_572)) + x_575);
  let x_577 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat3;
  let x_581 : vec4<f32> = u_xlat5;
  let x_583 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat3;
  let x_589 : vec3<f32> = max(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_590 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_594 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_595 : vec2<f32> = vec2<f32>(x_594.x, x_594.y);
  let x_599 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_595.x, x_595.y));
  let x_600 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat5;
  let x_604 : vec4<f32> = hlslcc_FragCoord;
  let x_606 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) * vec2<f32>(x_604.x, x_604.y));
  let x_607 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
  let x_610 : f32 = u_xlat5.y;
  let x_613 : f32 = x_44.x_ScaleBiasRt.x;
  let x_616 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_610 * x_613) + x_616);
  let x_618 : f32 = u_xlat60;
  u_xlat5.z = (-(x_618) + 1.0f);
  let x_622 : vec4<f32> = u_xlat2;
  let x_623 : vec2<f32> = vec2<f32>(x_622.x, x_622.y);
  let x_624 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat2;
  let x_630 : vec2<f32> = clamp(vec2<f32>(x_626.x, x_626.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
  let x_634 : f32 = u_xlat2.x;
  u_xlat60 = ((-(x_634) * 0.959999979f) + 0.959999979f);
  let x_640 : f32 = u_xlat60;
  let x_643 : f32 = u_xlat2.y;
  u_xlat61 = (-(x_640) + x_643);
  let x_645 : f32 = u_xlat60;
  let x_647 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_645, x_645, x_645) * vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat0;
  let x_654 : vec3<f32> = (vec3<f32>(x_650.x, x_650.y, x_650.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_655 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat2;
  let x_659 : vec4<f32> = u_xlat0;
  let x_664 : vec3<f32> = ((vec3<f32>(x_657.x, x_657.x, x_657.x) * vec3<f32>(x_659.x, x_659.y, x_659.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_665 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_668 : f32 = u_xlat2.y;
  u_xlat60 = (-(x_668) + 1.0f);
  let x_671 : f32 = u_xlat60;
  let x_672 : f32 = u_xlat60;
  u_xlat2.x = (x_671 * x_672);
  let x_676 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_676, 0.0078125f);
  let x_682 : f32 = u_xlat2.x;
  let x_684 : f32 = u_xlat2.x;
  u_xlat22 = (x_682 * x_684);
  let x_686 : f32 = u_xlat61;
  u_xlat61 = (x_686 + 1.0f);
  let x_688 : f32 = u_xlat61;
  u_xlat61 = min(x_688, 1.0f);
  let x_691 : f32 = u_xlat2.x;
  u_xlat62 = ((x_691 * 4.0f) + 2.0f);
  let x_701 : vec4<f32> = u_xlat5;
  let x_704 : f32 = x_44.x_GlobalMipBias.x;
  let x_705 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_701.x, x_701.z), x_704);
  u_xlat63 = x_705.x;
  let x_708 : f32 = u_xlat63;
  u_xlat64 = (x_708 + -1.0f);
  let x_712 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_713 : f32 = u_xlat64;
  u_xlat64 = ((x_712 * x_713) + 1.0f);
  let x_718 : f32 = u_xlat2.z;
  let x_719 : f32 = u_xlat63;
  u_xlat42 = min(x_718, x_719);
  let x_728 : f32 = x_726.x_MainLightShadowParams.y;
  u_xlatb63 = (0.0f < x_728);
  let x_730 : bool = u_xlatb63;
  if (x_730) {
    let x_734 : f32 = x_726.x_MainLightShadowParams.y;
    u_xlatb63 = (x_734 == 1.0f);
    let x_736 : bool = u_xlatb63;
    if (x_736) {
      let x_740 : vec4<f32> = vs_INTERP8;
      let x_743 : vec4<f32> = x_726.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_740.x, x_740.y, x_740.x, x_740.y) + x_743);
      let x_746 : vec4<f32> = u_xlat5;
      let x_747 : vec2<f32> = vec2<f32>(x_746.x, x_746.y);
      let x_749 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_747.x, x_747.y, x_749);
      let x_762 : vec3<f32> = txVec0;
      let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_762.xy, x_762.z);
      u_xlat7.x = x_764;
      let x_767 : vec4<f32> = u_xlat5;
      let x_768 : vec2<f32> = vec2<f32>(x_767.z, x_767.w);
      let x_770 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_768.x, x_768.y, x_770);
      let x_777 : vec3<f32> = txVec1;
      let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_777.xy, x_777.z);
      u_xlat7.y = x_779;
      let x_781 : vec4<f32> = vs_INTERP8;
      let x_784 : vec4<f32> = x_726.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_781.x, x_781.y, x_781.x, x_781.y) + x_784);
      let x_787 : vec4<f32> = u_xlat5;
      let x_788 : vec2<f32> = vec2<f32>(x_787.x, x_787.y);
      let x_790 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_788.x, x_788.y, x_790);
      let x_797 : vec3<f32> = txVec2;
      let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_797.xy, x_797.z);
      u_xlat7.z = x_799;
      let x_802 : vec4<f32> = u_xlat5;
      let x_803 : vec2<f32> = vec2<f32>(x_802.z, x_802.w);
      let x_805 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_803.x, x_803.y, x_805);
      let x_812 : vec3<f32> = txVec3;
      let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_812.xy, x_812.z);
      u_xlat7.w = x_814;
      let x_816 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_816, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_823 : f32 = x_726.x_MainLightShadowParams.y;
      u_xlatb5 = (x_823 == 2.0f);
      let x_825 : bool = u_xlatb5;
      if (x_825) {
        let x_828 : vec4<f32> = vs_INTERP8;
        let x_831 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_836 : vec2<f32> = ((vec2<f32>(x_828.x, x_828.y) * vec2<f32>(x_831.z, x_831.w)) + vec2<f32>(0.5f, 0.5f));
        let x_837 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_836.x, x_836.y, x_837.z, x_837.w);
        let x_839 : vec4<f32> = u_xlat5;
        let x_841 : vec2<f32> = floor(vec2<f32>(x_839.x, x_839.y));
        let x_842 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
        let x_845 : vec4<f32> = vs_INTERP8;
        let x_848 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_851 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_845.x, x_845.y) * vec2<f32>(x_848.z, x_848.w)) + -(vec2<f32>(x_851.x, x_851.y)));
        let x_855 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_855.x, x_855.x, x_855.y, x_855.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_860 : vec4<f32> = u_xlat7;
        let x_862 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_860.x, x_860.x, x_860.z, x_860.z) * vec4<f32>(x_862.x, x_862.x, x_862.z, x_862.z));
        let x_865 : vec4<f32> = u_xlat8;
        let x_869 : vec2<f32> = (vec2<f32>(x_865.y, x_865.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_870 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_869.x, x_870.y, x_869.y, x_870.w);
        let x_872 : vec4<f32> = u_xlat8;
        let x_875 : vec2<f32> = u_xlat45;
        let x_877 : vec2<f32> = ((vec2<f32>(x_872.x, x_872.z) * vec2<f32>(0.5f, 0.5f)) + -(x_875));
        let x_878 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_877.x, x_877.y, x_878.z, x_878.w);
        let x_881 : vec2<f32> = u_xlat45;
        u_xlat48 = (-(x_881) + vec2<f32>(1.0f, 1.0f));
        let x_885 : vec2<f32> = u_xlat45;
        let x_887 : vec2<f32> = min(x_885, vec2<f32>(0.0f, 0.0f));
        let x_888 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_887.x, x_887.y, x_888.z, x_888.w);
        let x_890 : vec4<f32> = u_xlat9;
        let x_893 : vec4<f32> = u_xlat9;
        let x_896 : vec2<f32> = u_xlat48;
        let x_897 : vec2<f32> = ((-(vec2<f32>(x_890.x, x_890.y)) * vec2<f32>(x_893.x, x_893.y)) + x_896);
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
        let x_900 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_900, vec2<f32>(0.0f, 0.0f));
        let x_902 : vec2<f32> = u_xlat45;
        let x_904 : vec2<f32> = u_xlat45;
        let x_906 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_902) * x_904) + vec2<f32>(x_906.y, x_906.w));
        let x_909 : vec4<f32> = u_xlat9;
        let x_911 : vec2<f32> = (vec2<f32>(x_909.x, x_909.y) + vec2<f32>(1.0f, 1.0f));
        let x_912 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_914 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_914 + vec2<f32>(1.0f, 1.0f));
        let x_917 : vec4<f32> = u_xlat8;
        let x_921 : vec2<f32> = (vec2<f32>(x_917.x, x_917.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_922 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec2<f32> = u_xlat48;
        let x_925 : vec2<f32> = (x_924 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_926 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_925.x, x_925.y, x_926.z, x_926.w);
        let x_928 : vec4<f32> = u_xlat9;
        let x_930 : vec2<f32> = (vec2<f32>(x_928.x, x_928.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_934 : vec2<f32> = u_xlat45;
        let x_935 : vec2<f32> = (x_934 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_936 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat7;
        u_xlat45 = (vec2<f32>(x_938.y, x_938.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_942 : f32 = u_xlat9.x;
        u_xlat10.z = x_942;
        let x_945 : f32 = u_xlat45.x;
        u_xlat10.w = x_945;
        let x_948 : f32 = u_xlat11.x;
        u_xlat8.z = x_948;
        let x_951 : f32 = u_xlat7.x;
        u_xlat8.w = x_951;
        let x_954 : vec4<f32> = u_xlat8;
        let x_956 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_954.z, x_954.w, x_954.x, x_954.z) + vec4<f32>(x_956.z, x_956.w, x_956.x, x_956.z));
        let x_960 : f32 = u_xlat10.y;
        u_xlat9.z = x_960;
        let x_963 : f32 = u_xlat45.y;
        u_xlat9.w = x_963;
        let x_966 : f32 = u_xlat8.y;
        u_xlat11.z = x_966;
        let x_969 : f32 = u_xlat7.z;
        u_xlat11.w = x_969;
        let x_971 : vec4<f32> = u_xlat9;
        let x_973 : vec4<f32> = u_xlat11;
        let x_975 : vec3<f32> = (vec3<f32>(x_971.z, x_971.y, x_971.w) + vec3<f32>(x_973.z, x_973.y, x_973.w));
        let x_976 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat8;
        let x_980 : vec4<f32> = u_xlat12;
        let x_982 : vec3<f32> = (vec3<f32>(x_978.x, x_978.z, x_978.w) / vec3<f32>(x_980.z, x_980.w, x_980.y));
        let x_983 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat8;
        let x_991 : vec3<f32> = (vec3<f32>(x_985.x, x_985.y, x_985.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_992 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat11;
        let x_996 : vec4<f32> = u_xlat7;
        let x_998 : vec3<f32> = (vec3<f32>(x_994.z, x_994.y, x_994.w) / vec3<f32>(x_996.x, x_996.y, x_996.z));
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat9;
        let x_1003 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1004 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
        let x_1006 : vec4<f32> = u_xlat8;
        let x_1009 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1011 : vec3<f32> = (vec3<f32>(x_1006.y, x_1006.x, x_1006.z) * vec3<f32>(x_1009.x, x_1009.x, x_1009.x));
        let x_1012 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
        let x_1014 : vec4<f32> = u_xlat9;
        let x_1017 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1019 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.y, x_1014.z) * vec3<f32>(x_1017.y, x_1017.y, x_1017.y));
        let x_1020 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
        let x_1023 : f32 = u_xlat9.x;
        u_xlat8.w = x_1023;
        let x_1025 : vec4<f32> = u_xlat5;
        let x_1028 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1025.x, x_1025.y, x_1025.x, x_1025.y) * vec4<f32>(x_1028.x, x_1028.y, x_1028.x, x_1028.y)) + vec4<f32>(x_1031.y, x_1031.w, x_1031.x, x_1031.w));
        let x_1034 : vec4<f32> = u_xlat5;
        let x_1037 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1040 : vec4<f32> = u_xlat8;
        u_xlat45 = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1037.x, x_1037.y)) + vec2<f32>(x_1040.z, x_1040.w));
        let x_1044 : f32 = u_xlat8.y;
        u_xlat9.w = x_1044;
        let x_1046 : vec4<f32> = u_xlat9;
        let x_1047 : vec2<f32> = vec2<f32>(x_1046.y, x_1046.z);
        let x_1048 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1048.x, x_1047.x, x_1048.z, x_1047.y);
        let x_1050 : vec4<f32> = u_xlat5;
        let x_1053 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y) * vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y)) + vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat5;
        let x_1062 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y) * vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y)) + vec4<f32>(x_1065.w, x_1065.y, x_1065.w, x_1065.z));
        let x_1068 : vec4<f32> = u_xlat5;
        let x_1071 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1074 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y) * vec4<f32>(x_1071.x, x_1071.y, x_1071.x, x_1071.y)) + vec4<f32>(x_1074.x, x_1074.w, x_1074.z, x_1074.w));
        let x_1078 : vec4<f32> = u_xlat7;
        let x_1080 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1078.x, x_1078.x, x_1078.x, x_1078.y) * vec4<f32>(x_1080.z, x_1080.w, x_1080.y, x_1080.z));
        let x_1084 : vec4<f32> = u_xlat7;
        let x_1086 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1084.y, x_1084.y, x_1084.z, x_1084.z) * x_1086);
        let x_1089 : f32 = u_xlat7.z;
        let x_1091 : f32 = u_xlat12.y;
        u_xlat5.x = (x_1089 * x_1091);
        let x_1095 : vec4<f32> = u_xlat10;
        let x_1096 : vec2<f32> = vec2<f32>(x_1095.x, x_1095.y);
        let x_1098 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1096.x, x_1096.y, x_1098);
        let x_1106 : vec3<f32> = txVec4;
        let x_1108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1106.xy, x_1106.z);
        u_xlat25 = x_1108;
        let x_1110 : vec4<f32> = u_xlat10;
        let x_1111 : vec2<f32> = vec2<f32>(x_1110.z, x_1110.w);
        let x_1113 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1111.x, x_1111.y, x_1113);
        let x_1121 : vec3<f32> = txVec5;
        let x_1123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1121.xy, x_1121.z);
        u_xlat66 = x_1123;
        let x_1124 : f32 = u_xlat66;
        let x_1126 : f32 = u_xlat13.y;
        u_xlat66 = (x_1124 * x_1126);
        let x_1129 : f32 = u_xlat13.x;
        let x_1130 : f32 = u_xlat25;
        let x_1132 : f32 = u_xlat66;
        u_xlat25 = ((x_1129 * x_1130) + x_1132);
        let x_1135 : vec2<f32> = u_xlat45;
        let x_1137 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1144 : vec3<f32> = txVec6;
        let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1144.xy, x_1144.z);
        u_xlat45.x = x_1146;
        let x_1149 : f32 = u_xlat13.z;
        let x_1151 : f32 = u_xlat45.x;
        let x_1153 : f32 = u_xlat25;
        u_xlat25 = ((x_1149 * x_1151) + x_1153);
        let x_1156 : vec4<f32> = u_xlat9;
        let x_1157 : vec2<f32> = vec2<f32>(x_1156.x, x_1156.y);
        let x_1159 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1157.x, x_1157.y, x_1159);
        let x_1166 : vec3<f32> = txVec7;
        let x_1168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1166.xy, x_1166.z);
        u_xlat45.x = x_1168;
        let x_1171 : f32 = u_xlat13.w;
        let x_1173 : f32 = u_xlat45.x;
        let x_1175 : f32 = u_xlat25;
        u_xlat25 = ((x_1171 * x_1173) + x_1175);
        let x_1178 : vec4<f32> = u_xlat11;
        let x_1179 : vec2<f32> = vec2<f32>(x_1178.x, x_1178.y);
        let x_1181 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1179.x, x_1179.y, x_1181);
        let x_1188 : vec3<f32> = txVec8;
        let x_1190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1188.xy, x_1188.z);
        u_xlat45.x = x_1190;
        let x_1193 : f32 = u_xlat14.x;
        let x_1195 : f32 = u_xlat45.x;
        let x_1197 : f32 = u_xlat25;
        u_xlat25 = ((x_1193 * x_1195) + x_1197);
        let x_1200 : vec4<f32> = u_xlat11;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.z, x_1200.w);
        let x_1203 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1201.x, x_1201.y, x_1203);
        let x_1210 : vec3<f32> = txVec9;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1210.xy, x_1210.z);
        u_xlat45.x = x_1212;
        let x_1215 : f32 = u_xlat14.y;
        let x_1217 : f32 = u_xlat45.x;
        let x_1219 : f32 = u_xlat25;
        u_xlat25 = ((x_1215 * x_1217) + x_1219);
        let x_1222 : vec4<f32> = u_xlat9;
        let x_1223 : vec2<f32> = vec2<f32>(x_1222.z, x_1222.w);
        let x_1225 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1223.x, x_1223.y, x_1225);
        let x_1232 : vec3<f32> = txVec10;
        let x_1234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1232.xy, x_1232.z);
        u_xlat45.x = x_1234;
        let x_1237 : f32 = u_xlat14.z;
        let x_1239 : f32 = u_xlat45.x;
        let x_1241 : f32 = u_xlat25;
        u_xlat25 = ((x_1237 * x_1239) + x_1241);
        let x_1244 : vec4<f32> = u_xlat8;
        let x_1245 : vec2<f32> = vec2<f32>(x_1244.x, x_1244.y);
        let x_1247 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
        let x_1254 : vec3<f32> = txVec11;
        let x_1256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1254.xy, x_1254.z);
        u_xlat45.x = x_1256;
        let x_1259 : f32 = u_xlat14.w;
        let x_1261 : f32 = u_xlat45.x;
        let x_1263 : f32 = u_xlat25;
        u_xlat25 = ((x_1259 * x_1261) + x_1263);
        let x_1266 : vec4<f32> = u_xlat8;
        let x_1267 : vec2<f32> = vec2<f32>(x_1266.z, x_1266.w);
        let x_1269 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1267.x, x_1267.y, x_1269);
        let x_1276 : vec3<f32> = txVec12;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1276.xy, x_1276.z);
        u_xlat45.x = x_1278;
        let x_1281 : f32 = u_xlat5.x;
        let x_1283 : f32 = u_xlat45.x;
        let x_1285 : f32 = u_xlat25;
        u_xlat63 = ((x_1281 * x_1283) + x_1285);
      } else {
        let x_1288 : vec4<f32> = vs_INTERP8;
        let x_1291 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1294 : vec2<f32> = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(x_1291.z, x_1291.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1295 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
        let x_1297 : vec4<f32> = u_xlat5;
        let x_1299 : vec2<f32> = floor(vec2<f32>(x_1297.x, x_1297.y));
        let x_1300 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1300.w);
        let x_1302 : vec4<f32> = vs_INTERP8;
        let x_1305 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1305.z, x_1305.w)) + -(vec2<f32>(x_1308.x, x_1308.y)));
        let x_1312 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_1312.x, x_1312.x, x_1312.y, x_1312.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1315 : vec4<f32> = u_xlat7;
        let x_1317 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1315.x, x_1315.x, x_1315.z, x_1315.z) * vec4<f32>(x_1317.x, x_1317.x, x_1317.z, x_1317.z));
        let x_1320 : vec4<f32> = u_xlat8;
        let x_1324 : vec2<f32> = (vec2<f32>(x_1320.y, x_1320.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1325 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1325.x, x_1324.x, x_1325.z, x_1324.y);
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1330 : vec2<f32> = u_xlat45;
        let x_1332 : vec2<f32> = ((vec2<f32>(x_1327.x, x_1327.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1330));
        let x_1333 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1332.x, x_1333.y, x_1332.y, x_1333.w);
        let x_1335 : vec2<f32> = u_xlat45;
        let x_1337 : vec2<f32> = (-(x_1335) + vec2<f32>(1.0f, 1.0f));
        let x_1338 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1340 : vec2<f32> = u_xlat45;
        u_xlat48 = min(x_1340, vec2<f32>(0.0f, 0.0f));
        let x_1342 : vec2<f32> = u_xlat48;
        let x_1344 : vec2<f32> = u_xlat48;
        let x_1346 : vec4<f32> = u_xlat8;
        let x_1348 : vec2<f32> = ((-(x_1342) * x_1344) + vec2<f32>(x_1346.x, x_1346.y));
        let x_1349 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
        let x_1351 : vec2<f32> = u_xlat45;
        u_xlat48 = max(x_1351, vec2<f32>(0.0f, 0.0f));
        let x_1354 : vec2<f32> = u_xlat48;
        let x_1356 : vec2<f32> = u_xlat48;
        let x_1358 : vec4<f32> = u_xlat7;
        let x_1360 : vec2<f32> = ((-(x_1354) * x_1356) + vec2<f32>(x_1358.y, x_1358.w));
        let x_1361 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1360.x, x_1361.y, x_1360.y);
        let x_1363 : vec4<f32> = u_xlat8;
        let x_1365 : vec2<f32> = (vec2<f32>(x_1363.x, x_1363.y) + vec2<f32>(2.0f, 2.0f));
        let x_1366 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1365.x, x_1365.y, x_1366.z, x_1366.w);
        let x_1368 : vec3<f32> = u_xlat27;
        let x_1370 : vec2<f32> = (vec2<f32>(x_1368.x, x_1368.z) + vec2<f32>(2.0f, 2.0f));
        let x_1371 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1371.x, x_1370.x, x_1371.z, x_1370.y);
        let x_1374 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1374 * 0.081632003f);
        let x_1378 : vec4<f32> = u_xlat7;
        let x_1381 : vec3<f32> = (vec3<f32>(x_1378.z, x_1378.x, x_1378.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1382 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
        let x_1384 : vec4<f32> = u_xlat8;
        let x_1387 : vec2<f32> = (vec2<f32>(x_1384.x, x_1384.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1388 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1387.x, x_1387.y, x_1388.z, x_1388.w);
        let x_1391 : f32 = u_xlat11.y;
        u_xlat10.x = x_1391;
        let x_1393 : vec2<f32> = u_xlat45;
        let x_1400 : vec2<f32> = ((vec2<f32>(x_1393.x, x_1393.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1401 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1401.x, x_1400.x, x_1401.z, x_1400.y);
        let x_1403 : vec2<f32> = u_xlat45;
        let x_1407 : vec2<f32> = ((vec2<f32>(x_1403.x, x_1403.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1408 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1407.x, x_1408.y, x_1407.y, x_1408.w);
        let x_1411 : f32 = u_xlat7.x;
        u_xlat8.y = x_1411;
        let x_1414 : f32 = u_xlat9.y;
        u_xlat8.w = x_1414;
        let x_1416 : vec4<f32> = u_xlat8;
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1416 + x_1417);
        let x_1419 : vec2<f32> = u_xlat45;
        let x_1422 : vec2<f32> = ((vec2<f32>(x_1419.y, x_1419.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1423 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1423.x, x_1422.x, x_1423.z, x_1422.y);
        let x_1425 : vec2<f32> = u_xlat45;
        let x_1428 : vec2<f32> = ((vec2<f32>(x_1425.y, x_1425.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1429 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1428.x, x_1429.y, x_1428.y, x_1429.w);
        let x_1432 : f32 = u_xlat7.y;
        u_xlat9.y = x_1432;
        let x_1434 : vec4<f32> = u_xlat9;
        let x_1435 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1434 + x_1435);
        let x_1437 : vec4<f32> = u_xlat8;
        let x_1438 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1437 / x_1438);
        let x_1440 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1440 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1446 : vec4<f32> = u_xlat9;
        let x_1447 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1446 / x_1447);
        let x_1449 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1449 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1451 : vec4<f32> = u_xlat8;
        let x_1454 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1451.w, x_1451.x, x_1451.y, x_1451.z) * vec4<f32>(x_1454.x, x_1454.x, x_1454.x, x_1454.x));
        let x_1457 : vec4<f32> = u_xlat9;
        let x_1460 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1457.x, x_1457.w, x_1457.y, x_1457.z) * vec4<f32>(x_1460.y, x_1460.y, x_1460.y, x_1460.y));
        let x_1463 : vec4<f32> = u_xlat8;
        let x_1464 : vec3<f32> = vec3<f32>(x_1463.y, x_1463.z, x_1463.w);
        let x_1465 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1464.x, x_1465.y, x_1464.y, x_1464.z);
        let x_1468 : f32 = u_xlat9.x;
        u_xlat11.y = x_1468;
        let x_1470 : vec4<f32> = u_xlat5;
        let x_1473 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1476 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1470.x, x_1470.y, x_1470.x, x_1470.y) * vec4<f32>(x_1473.x, x_1473.y, x_1473.x, x_1473.y)) + vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1476.y));
        let x_1479 : vec4<f32> = u_xlat5;
        let x_1482 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1485 : vec4<f32> = u_xlat11;
        u_xlat45 = ((vec2<f32>(x_1479.x, x_1479.y) * vec2<f32>(x_1482.x, x_1482.y)) + vec2<f32>(x_1485.w, x_1485.y));
        let x_1489 : f32 = u_xlat11.y;
        u_xlat8.y = x_1489;
        let x_1492 : f32 = u_xlat9.z;
        u_xlat11.y = x_1492;
        let x_1494 : vec4<f32> = u_xlat5;
        let x_1497 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1500 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1494.x, x_1494.y, x_1494.x, x_1494.y) * vec4<f32>(x_1497.x, x_1497.y, x_1497.x, x_1497.y)) + vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1500.y));
        let x_1503 : vec4<f32> = u_xlat5;
        let x_1506 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1509 : vec4<f32> = u_xlat11;
        let x_1511 : vec2<f32> = ((vec2<f32>(x_1503.x, x_1503.y) * vec2<f32>(x_1506.x, x_1506.y)) + vec2<f32>(x_1509.w, x_1509.y));
        let x_1512 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1511.x, x_1511.y, x_1512.z, x_1512.w);
        let x_1515 : f32 = u_xlat11.y;
        u_xlat8.z = x_1515;
        let x_1518 : vec4<f32> = u_xlat5;
        let x_1521 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1518.x, x_1518.y, x_1518.x, x_1518.y) * vec4<f32>(x_1521.x, x_1521.y, x_1521.x, x_1521.y)) + vec4<f32>(x_1524.x, x_1524.y, x_1524.x, x_1524.z));
        let x_1528 : f32 = u_xlat9.w;
        u_xlat11.y = x_1528;
        let x_1531 : vec4<f32> = u_xlat5;
        let x_1534 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1537 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1531.x, x_1531.y, x_1531.x, x_1531.y) * vec4<f32>(x_1534.x, x_1534.y, x_1534.x, x_1534.y)) + vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1537.y));
        let x_1541 : vec4<f32> = u_xlat5;
        let x_1544 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1547 : vec4<f32> = u_xlat11;
        let x_1549 : vec2<f32> = ((vec2<f32>(x_1541.x, x_1541.y) * vec2<f32>(x_1544.x, x_1544.y)) + vec2<f32>(x_1547.w, x_1547.y));
        let x_1550 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1549.x, x_1549.y, x_1550.z);
        let x_1553 : f32 = u_xlat11.y;
        u_xlat8.w = x_1553;
        let x_1556 : vec4<f32> = u_xlat5;
        let x_1559 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1562 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1556.x, x_1556.y) * vec2<f32>(x_1559.x, x_1559.y)) + vec2<f32>(x_1562.x, x_1562.w));
        let x_1565 : vec4<f32> = u_xlat11;
        let x_1566 : vec3<f32> = vec3<f32>(x_1565.x, x_1565.z, x_1565.w);
        let x_1567 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1566.x, x_1567.y, x_1566.y, x_1566.z);
        let x_1569 : vec4<f32> = u_xlat5;
        let x_1572 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1575 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1569.x, x_1569.y, x_1569.x, x_1569.y) * vec4<f32>(x_1572.x, x_1572.y, x_1572.x, x_1572.y)) + vec4<f32>(x_1575.x, x_1575.y, x_1575.z, x_1575.y));
        let x_1579 : vec4<f32> = u_xlat5;
        let x_1582 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1585 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1579.x, x_1579.y) * vec2<f32>(x_1582.x, x_1582.y)) + vec2<f32>(x_1585.w, x_1585.y));
        let x_1589 : f32 = u_xlat8.x;
        u_xlat9.x = x_1589;
        let x_1591 : vec4<f32> = u_xlat5;
        let x_1594 : vec4<f32> = x_726.x_MainLightShadowmapSize;
        let x_1597 : vec4<f32> = u_xlat9;
        let x_1599 : vec2<f32> = ((vec2<f32>(x_1591.x, x_1591.y) * vec2<f32>(x_1594.x, x_1594.y)) + vec2<f32>(x_1597.x, x_1597.y));
        let x_1600 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1599.x, x_1599.y, x_1600.z, x_1600.w);
        let x_1603 : vec4<f32> = u_xlat7;
        let x_1605 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1603.x, x_1603.x, x_1603.x, x_1603.x) * x_1605);
        let x_1608 : vec4<f32> = u_xlat7;
        let x_1610 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1608.y, x_1608.y, x_1608.y, x_1608.y) * x_1610);
        let x_1613 : vec4<f32> = u_xlat7;
        let x_1615 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1613.z, x_1613.z, x_1613.z, x_1613.z) * x_1615);
        let x_1617 : vec4<f32> = u_xlat7;
        let x_1619 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1617.w, x_1617.w, x_1617.w, x_1617.w) * x_1619);
        let x_1622 : vec4<f32> = u_xlat12;
        let x_1623 : vec2<f32> = vec2<f32>(x_1622.x, x_1622.y);
        let x_1625 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
        let x_1632 : vec3<f32> = txVec13;
        let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1632.xy, x_1632.z);
        u_xlat66 = x_1634;
        let x_1636 : vec4<f32> = u_xlat12;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.z, x_1636.w);
        let x_1639 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec14;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1646.xy, x_1646.z);
        u_xlat8.x = x_1648;
        let x_1651 : f32 = u_xlat8.x;
        let x_1653 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1651 * x_1653);
        let x_1657 : f32 = u_xlat17.x;
        let x_1658 : f32 = u_xlat66;
        let x_1661 : f32 = u_xlat8.x;
        u_xlat66 = ((x_1657 * x_1658) + x_1661);
        let x_1664 : vec2<f32> = u_xlat45;
        let x_1666 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1664.x, x_1664.y, x_1666);
        let x_1673 : vec3<f32> = txVec15;
        let x_1675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1673.xy, x_1673.z);
        u_xlat45.x = x_1675;
        let x_1678 : f32 = u_xlat17.z;
        let x_1680 : f32 = u_xlat45.x;
        let x_1682 : f32 = u_xlat66;
        u_xlat45.x = ((x_1678 * x_1680) + x_1682);
        let x_1686 : vec4<f32> = u_xlat15;
        let x_1687 : vec2<f32> = vec2<f32>(x_1686.x, x_1686.y);
        let x_1689 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1687.x, x_1687.y, x_1689);
        let x_1697 : vec3<f32> = txVec16;
        let x_1699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1697.xy, x_1697.z);
        u_xlat65 = x_1699;
        let x_1701 : f32 = u_xlat17.w;
        let x_1702 : f32 = u_xlat65;
        let x_1705 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1701 * x_1702) + x_1705);
        let x_1709 : vec4<f32> = u_xlat13;
        let x_1710 : vec2<f32> = vec2<f32>(x_1709.x, x_1709.y);
        let x_1712 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1710.x, x_1710.y, x_1712);
        let x_1719 : vec3<f32> = txVec17;
        let x_1721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1719.xy, x_1719.z);
        u_xlat65 = x_1721;
        let x_1723 : f32 = u_xlat18.x;
        let x_1724 : f32 = u_xlat65;
        let x_1727 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1723 * x_1724) + x_1727);
        let x_1731 : vec4<f32> = u_xlat13;
        let x_1732 : vec2<f32> = vec2<f32>(x_1731.z, x_1731.w);
        let x_1734 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1732.x, x_1732.y, x_1734);
        let x_1741 : vec3<f32> = txVec18;
        let x_1743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1741.xy, x_1741.z);
        u_xlat65 = x_1743;
        let x_1745 : f32 = u_xlat18.y;
        let x_1746 : f32 = u_xlat65;
        let x_1749 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1745 * x_1746) + x_1749);
        let x_1753 : vec4<f32> = u_xlat14;
        let x_1754 : vec2<f32> = vec2<f32>(x_1753.x, x_1753.y);
        let x_1756 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec19;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1763.xy, x_1763.z);
        u_xlat65 = x_1765;
        let x_1767 : f32 = u_xlat18.z;
        let x_1768 : f32 = u_xlat65;
        let x_1771 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1767 * x_1768) + x_1771);
        let x_1775 : vec4<f32> = u_xlat15;
        let x_1776 : vec2<f32> = vec2<f32>(x_1775.z, x_1775.w);
        let x_1778 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec20;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1785.xy, x_1785.z);
        u_xlat65 = x_1787;
        let x_1789 : f32 = u_xlat18.w;
        let x_1790 : f32 = u_xlat65;
        let x_1793 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1789 * x_1790) + x_1793);
        let x_1797 : vec4<f32> = u_xlat16;
        let x_1798 : vec2<f32> = vec2<f32>(x_1797.x, x_1797.y);
        let x_1800 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1798.x, x_1798.y, x_1800);
        let x_1807 : vec3<f32> = txVec21;
        let x_1809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1807.xy, x_1807.z);
        u_xlat65 = x_1809;
        let x_1811 : f32 = u_xlat19.x;
        let x_1812 : f32 = u_xlat65;
        let x_1815 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1811 * x_1812) + x_1815);
        let x_1819 : vec4<f32> = u_xlat16;
        let x_1820 : vec2<f32> = vec2<f32>(x_1819.z, x_1819.w);
        let x_1822 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
        let x_1829 : vec3<f32> = txVec22;
        let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1829.xy, x_1829.z);
        u_xlat65 = x_1831;
        let x_1833 : f32 = u_xlat19.y;
        let x_1834 : f32 = u_xlat65;
        let x_1837 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1833 * x_1834) + x_1837);
        let x_1841 : vec3<f32> = u_xlat28;
        let x_1842 : vec2<f32> = vec2<f32>(x_1841.x, x_1841.y);
        let x_1844 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1842.x, x_1842.y, x_1844);
        let x_1851 : vec3<f32> = txVec23;
        let x_1853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1851.xy, x_1851.z);
        u_xlat65 = x_1853;
        let x_1855 : f32 = u_xlat19.z;
        let x_1856 : f32 = u_xlat65;
        let x_1859 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1855 * x_1856) + x_1859);
        let x_1863 : vec2<f32> = u_xlat54;
        let x_1865 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1863.x, x_1863.y, x_1865);
        let x_1872 : vec3<f32> = txVec24;
        let x_1874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1872.xy, x_1872.z);
        u_xlat65 = x_1874;
        let x_1876 : f32 = u_xlat19.w;
        let x_1877 : f32 = u_xlat65;
        let x_1880 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1876 * x_1877) + x_1880);
        let x_1884 : vec4<f32> = u_xlat11;
        let x_1885 : vec2<f32> = vec2<f32>(x_1884.x, x_1884.y);
        let x_1887 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1885.x, x_1885.y, x_1887);
        let x_1894 : vec3<f32> = txVec25;
        let x_1896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1894.xy, x_1894.z);
        u_xlat65 = x_1896;
        let x_1898 : f32 = u_xlat7.x;
        let x_1899 : f32 = u_xlat65;
        let x_1902 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1898 * x_1899) + x_1902);
        let x_1906 : vec4<f32> = u_xlat11;
        let x_1907 : vec2<f32> = vec2<f32>(x_1906.z, x_1906.w);
        let x_1909 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1907.x, x_1907.y, x_1909);
        let x_1916 : vec3<f32> = txVec26;
        let x_1918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1916.xy, x_1916.z);
        u_xlat65 = x_1918;
        let x_1920 : f32 = u_xlat7.y;
        let x_1921 : f32 = u_xlat65;
        let x_1924 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1920 * x_1921) + x_1924);
        let x_1928 : vec2<f32> = u_xlat49;
        let x_1930 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
        let x_1937 : vec3<f32> = txVec27;
        let x_1939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1937.xy, x_1937.z);
        u_xlat65 = x_1939;
        let x_1941 : f32 = u_xlat7.z;
        let x_1942 : f32 = u_xlat65;
        let x_1945 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1941 * x_1942) + x_1945);
        let x_1949 : vec4<f32> = u_xlat5;
        let x_1950 : vec2<f32> = vec2<f32>(x_1949.x, x_1949.y);
        let x_1952 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1950.x, x_1950.y, x_1952);
        let x_1959 : vec3<f32> = txVec28;
        let x_1961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1959.xy, x_1959.z);
        u_xlat5.x = x_1961;
        let x_1964 : f32 = u_xlat7.w;
        let x_1966 : f32 = u_xlat5.x;
        let x_1969 : f32 = u_xlat45.x;
        u_xlat63 = ((x_1964 * x_1966) + x_1969);
      }
    }
  } else {
    let x_1973 : vec4<f32> = vs_INTERP8;
    let x_1974 : vec2<f32> = vec2<f32>(x_1973.x, x_1973.y);
    let x_1976 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1974.x, x_1974.y, x_1976);
    let x_1983 : vec3<f32> = txVec29;
    let x_1985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1983.xy, x_1983.z);
    u_xlat63 = x_1985;
  }
  let x_1987 : f32 = x_726.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1987) + 1.0f);
  let x_1991 : f32 = u_xlat63;
  let x_1993 : f32 = x_726.x_MainLightShadowParams.x;
  let x_1996 : f32 = u_xlat5.x;
  u_xlat63 = ((x_1991 * x_1993) + x_1996);
  let x_1999 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_1999);
  let x_2003 : f32 = vs_INTERP8.z;
  u_xlatb25 = (x_2003 >= 1.0f);
  let x_2005 : bool = u_xlatb25;
  let x_2006 : bool = u_xlatb5;
  u_xlatb5 = (x_2005 | x_2006);
  let x_2008 : bool = u_xlatb5;
  let x_2009 : f32 = u_xlat63;
  u_xlat63 = select(x_2009, 1.0f, x_2008);
  let x_2011 : vec3<f32> = vs_INTERP0;
  let x_2013 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_2015 : vec3<f32> = (x_2011 + -(x_2013));
  let x_2016 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
  let x_2018 : vec4<f32> = u_xlat5;
  let x_2020 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_2018.x, x_2018.y, x_2018.z), vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
  let x_2025 : f32 = u_xlat5.x;
  let x_2027 : f32 = x_726.x_MainLightShadowParams.z;
  let x_2030 : f32 = x_726.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_2025 * x_2027) + x_2030);
  let x_2034 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_2034, 0.0f, 1.0f);
  let x_2037 : f32 = u_xlat63;
  u_xlat25 = (-(x_2037) + 1.0f);
  let x_2041 : f32 = u_xlat5.x;
  let x_2042 : f32 = u_xlat25;
  let x_2044 : f32 = u_xlat63;
  u_xlat63 = ((x_2041 * x_2042) + x_2044);
  let x_2052 : f32 = x_2050.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_2052 == -1.0f));
  let x_2054 : bool = u_xlatb5;
  if (x_2054) {
    let x_2057 : vec3<f32> = vs_INTERP0;
    let x_2060 : vec4<f32> = x_2050.x_MainLightWorldToLight[1i];
    let x_2062 : vec2<f32> = (vec2<f32>(x_2057.y, x_2057.y) * vec2<f32>(x_2060.x, x_2060.y));
    let x_2063 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2062.x, x_2062.y, x_2063.z, x_2063.w);
    let x_2066 : vec4<f32> = x_2050.x_MainLightWorldToLight[0i];
    let x_2068 : vec3<f32> = vs_INTERP0;
    let x_2071 : vec4<f32> = u_xlat5;
    let x_2073 : vec2<f32> = ((vec2<f32>(x_2066.x, x_2066.y) * vec2<f32>(x_2068.x, x_2068.x)) + vec2<f32>(x_2071.x, x_2071.y));
    let x_2074 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2073.x, x_2073.y, x_2074.z, x_2074.w);
    let x_2077 : vec4<f32> = x_2050.x_MainLightWorldToLight[2i];
    let x_2079 : vec3<f32> = vs_INTERP0;
    let x_2082 : vec4<f32> = u_xlat5;
    let x_2084 : vec2<f32> = ((vec2<f32>(x_2077.x, x_2077.y) * vec2<f32>(x_2079.z, x_2079.z)) + vec2<f32>(x_2082.x, x_2082.y));
    let x_2085 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2084.x, x_2084.y, x_2085.z, x_2085.w);
    let x_2087 : vec4<f32> = u_xlat5;
    let x_2090 : vec4<f32> = x_2050.x_MainLightWorldToLight[3i];
    let x_2092 : vec2<f32> = (vec2<f32>(x_2087.x, x_2087.y) + vec2<f32>(x_2090.x, x_2090.y));
    let x_2093 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2092.x, x_2092.y, x_2093.z, x_2093.w);
    let x_2095 : vec4<f32> = u_xlat5;
    let x_2098 : vec2<f32> = ((vec2<f32>(x_2095.x, x_2095.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2099 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2098.x, x_2098.y, x_2099.z, x_2099.w);
    let x_2106 : vec4<f32> = u_xlat5;
    let x_2109 : f32 = x_44.x_GlobalMipBias.x;
    let x_2110 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2106.x, x_2106.y), x_2109);
    u_xlat5 = x_2110;
    let x_2113 : f32 = x_2050.x_MainLightCookieTextureFormat;
    let x_2115 : f32 = x_2050.x_MainLightCookieTextureFormat;
    let x_2117 : f32 = x_2050.x_MainLightCookieTextureFormat;
    let x_2119 : f32 = x_2050.x_MainLightCookieTextureFormat;
    let x_2120 : vec4<f32> = vec4<f32>(x_2113, x_2115, x_2117, x_2119);
    let x_2128 : vec4<bool> = (vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2120.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2128.x, x_2128.y);
    let x_2131 : bool = u_xlatb7.y;
    if (x_2131) {
      let x_2136 : f32 = u_xlat5.w;
      x_2132 = x_2136;
    } else {
      let x_2139 : f32 = u_xlat5.x;
      x_2132 = x_2139;
    }
    let x_2140 : f32 = x_2132;
    u_xlat65 = x_2140;
    let x_2142 : bool = u_xlatb7.x;
    if (x_2142) {
      let x_2146 : vec4<f32> = u_xlat5;
      x_2143 = vec3<f32>(x_2146.x, x_2146.y, x_2146.z);
    } else {
      let x_2149 : f32 = u_xlat65;
      x_2143 = vec3<f32>(x_2149, x_2149, x_2149);
    }
    let x_2151 : vec3<f32> = x_2143;
    let x_2152 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_2158 : vec4<f32> = u_xlat5;
  let x_2161 : vec4<f32> = x_44.x_MainLightColor;
  let x_2163 : vec3<f32> = (vec3<f32>(x_2158.x, x_2158.y, x_2158.z) * vec3<f32>(x_2161.x, x_2161.y, x_2161.z));
  let x_2164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2163.x, x_2163.y, x_2163.z, x_2164.w);
  let x_2166 : f32 = u_xlat64;
  let x_2168 : vec4<f32> = u_xlat5;
  let x_2170 : vec3<f32> = (vec3<f32>(x_2166, x_2166, x_2166) * vec3<f32>(x_2168.x, x_2168.y, x_2168.z));
  let x_2171 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
  let x_2173 : vec3<f32> = u_xlat4;
  let x_2175 : vec4<f32> = u_xlat1;
  u_xlat65 = dot(-(x_2173), vec3<f32>(x_2175.x, x_2175.y, x_2175.z));
  let x_2178 : f32 = u_xlat65;
  let x_2179 : f32 = u_xlat65;
  u_xlat65 = (x_2178 + x_2179);
  let x_2181 : vec4<f32> = u_xlat1;
  let x_2183 : f32 = u_xlat65;
  let x_2187 : vec3<f32> = u_xlat4;
  let x_2189 : vec3<f32> = ((vec3<f32>(x_2181.x, x_2181.y, x_2181.z) * -(vec3<f32>(x_2183, x_2183, x_2183))) + -(x_2187));
  let x_2190 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2189.x, x_2189.y, x_2189.z, x_2190.w);
  let x_2192 : vec4<f32> = u_xlat1;
  let x_2194 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(vec3<f32>(x_2192.x, x_2192.y, x_2192.z), x_2194);
  let x_2196 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2196, 0.0f, 1.0f);
  let x_2198 : f32 = u_xlat65;
  u_xlat65 = (-(x_2198) + 1.0f);
  let x_2201 : f32 = u_xlat65;
  let x_2202 : f32 = u_xlat65;
  u_xlat65 = (x_2201 * x_2202);
  let x_2204 : f32 = u_xlat65;
  let x_2205 : f32 = u_xlat65;
  u_xlat65 = (x_2204 * x_2205);
  let x_2207 : f32 = u_xlat60;
  u_xlat66 = ((-(x_2207) * 0.699999988f) + 1.700000048f);
  let x_2213 : f32 = u_xlat60;
  let x_2214 : f32 = u_xlat66;
  u_xlat60 = (x_2213 * x_2214);
  let x_2216 : f32 = u_xlat60;
  u_xlat60 = (x_2216 * 6.0f);
  let x_2226 : vec4<f32> = u_xlat7;
  let x_2228 : f32 = u_xlat60;
  let x_2229 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2226.x, x_2226.y, x_2226.z), x_2228);
  u_xlat7 = x_2229;
  let x_2231 : f32 = u_xlat7.w;
  u_xlat60 = (x_2231 + -1.0f);
  let x_2234 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2235 : f32 = u_xlat60;
  u_xlat60 = ((x_2234 * x_2235) + 1.0f);
  let x_2238 : f32 = u_xlat60;
  u_xlat60 = max(x_2238, 0.0f);
  let x_2240 : f32 = u_xlat60;
  u_xlat60 = log2(x_2240);
  let x_2242 : f32 = u_xlat60;
  let x_2244 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_2242 * x_2244);
  let x_2246 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2246);
  let x_2248 : f32 = u_xlat60;
  let x_2250 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_2248 * x_2250);
  let x_2252 : vec4<f32> = u_xlat7;
  let x_2254 : f32 = u_xlat60;
  let x_2256 : vec3<f32> = (vec3<f32>(x_2252.x, x_2252.y, x_2252.z) * vec3<f32>(x_2254, x_2254, x_2254));
  let x_2257 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
  let x_2259 : vec4<f32> = u_xlat2;
  let x_2261 : vec4<f32> = u_xlat2;
  let x_2265 : vec2<f32> = ((vec2<f32>(x_2259.x, x_2259.x) * vec2<f32>(x_2261.x, x_2261.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2266 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2265.x, x_2265.y, x_2266.z, x_2266.w);
  let x_2269 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_2269);
  let x_2271 : vec4<f32> = u_xlat0;
  let x_2274 : f32 = u_xlat61;
  u_xlat28 = (-(vec3<f32>(x_2271.x, x_2271.y, x_2271.z)) + vec3<f32>(x_2274, x_2274, x_2274));
  let x_2277 : f32 = u_xlat65;
  let x_2279 : vec3<f32> = u_xlat28;
  let x_2281 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_2277, x_2277, x_2277) * x_2279) + vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
  let x_2284 : f32 = u_xlat60;
  let x_2286 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2284, x_2284, x_2284) * x_2286);
  let x_2288 : vec4<f32> = u_xlat7;
  let x_2290 : vec3<f32> = u_xlat28;
  let x_2291 : vec3<f32> = (vec3<f32>(x_2288.x, x_2288.y, x_2288.z) * x_2290);
  let x_2292 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
  let x_2294 : vec4<f32> = u_xlat3;
  let x_2296 : vec3<f32> = u_xlat6;
  let x_2298 : vec4<f32> = u_xlat7;
  let x_2300 : vec3<f32> = ((vec3<f32>(x_2294.x, x_2294.y, x_2294.z) * x_2296) + vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
  let x_2301 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
  let x_2303 : f32 = u_xlat63;
  let x_2306 : f32 = x_359.unity_LightData.z;
  u_xlat60 = (x_2303 * x_2306);
  let x_2308 : vec4<f32> = u_xlat1;
  let x_2311 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat61 = dot(vec3<f32>(x_2308.x, x_2308.y, x_2308.z), vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
  let x_2314 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2314, 0.0f, 1.0f);
  let x_2316 : f32 = u_xlat60;
  let x_2317 : f32 = u_xlat61;
  u_xlat60 = (x_2316 * x_2317);
  let x_2319 : f32 = u_xlat60;
  let x_2321 : vec4<f32> = u_xlat5;
  let x_2323 : vec3<f32> = (vec3<f32>(x_2319, x_2319, x_2319) * vec3<f32>(x_2321.x, x_2321.y, x_2321.z));
  let x_2324 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
  let x_2326 : vec3<f32> = u_xlat4;
  let x_2328 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2330 : vec3<f32> = (x_2326 + vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
  let x_2331 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
  let x_2333 : vec4<f32> = u_xlat7;
  let x_2335 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2333.x, x_2333.y, x_2333.z), vec3<f32>(x_2335.x, x_2335.y, x_2335.z));
  let x_2338 : f32 = u_xlat60;
  u_xlat60 = max(x_2338, 1.17549435e-37f);
  let x_2341 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2341);
  let x_2343 : f32 = u_xlat60;
  let x_2345 : vec4<f32> = u_xlat7;
  let x_2347 : vec3<f32> = (vec3<f32>(x_2343, x_2343, x_2343) * vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
  let x_2348 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2347.x, x_2347.y, x_2347.z, x_2348.w);
  let x_2350 : vec4<f32> = u_xlat1;
  let x_2352 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2350.x, x_2350.y, x_2350.z), vec3<f32>(x_2352.x, x_2352.y, x_2352.z));
  let x_2355 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2355, 0.0f, 1.0f);
  let x_2358 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2360 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec3<f32>(x_2358.x, x_2358.y, x_2358.z), vec3<f32>(x_2360.x, x_2360.y, x_2360.z));
  let x_2363 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2363, 0.0f, 1.0f);
  let x_2365 : f32 = u_xlat60;
  let x_2366 : f32 = u_xlat60;
  u_xlat60 = (x_2365 * x_2366);
  let x_2368 : f32 = u_xlat60;
  let x_2370 : f32 = u_xlat8.x;
  u_xlat60 = ((x_2368 * x_2370) + 1.000010014f);
  let x_2374 : f32 = u_xlat61;
  let x_2375 : f32 = u_xlat61;
  u_xlat61 = (x_2374 * x_2375);
  let x_2377 : f32 = u_xlat60;
  let x_2378 : f32 = u_xlat60;
  u_xlat60 = (x_2377 * x_2378);
  let x_2380 : f32 = u_xlat61;
  u_xlat61 = max(x_2380, 0.100000001f);
  let x_2383 : f32 = u_xlat60;
  let x_2384 : f32 = u_xlat61;
  u_xlat60 = (x_2383 * x_2384);
  let x_2386 : f32 = u_xlat62;
  let x_2387 : f32 = u_xlat60;
  u_xlat60 = (x_2386 * x_2387);
  let x_2389 : f32 = u_xlat22;
  let x_2390 : f32 = u_xlat60;
  u_xlat60 = (x_2389 / x_2390);
  let x_2392 : vec4<f32> = u_xlat0;
  let x_2394 : f32 = u_xlat60;
  let x_2397 : vec3<f32> = u_xlat6;
  let x_2398 : vec3<f32> = ((vec3<f32>(x_2392.x, x_2392.y, x_2392.z) * vec3<f32>(x_2394, x_2394, x_2394)) + x_2397);
  let x_2399 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);
  let x_2401 : vec4<f32> = u_xlat5;
  let x_2403 : vec4<f32> = u_xlat7;
  let x_2405 : vec3<f32> = (vec3<f32>(x_2401.x, x_2401.y, x_2401.z) * vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
  let x_2406 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
  let x_2409 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2411 : f32 = x_359.unity_LightData.y;
  u_xlat60 = min(x_2409, x_2411);
  let x_2415 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2415));
  let x_2419 : f32 = x_2050.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2421 : f32 = x_2050.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2423 : f32 = x_2050.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2425 : f32 = x_2050.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2426 : vec4<f32> = vec4<f32>(x_2419, x_2421, x_2423, x_2425);
  let x_2432 : vec4<bool> = (vec4<f32>(x_2426.x, x_2426.y, x_2426.z, x_2426.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2432.x, x_2432.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2443 : u32 = u_xlatu_loop_1;
    let x_2444 : u32 = u_xlatu60;
    if ((x_2443 < x_2444)) {
    } else {
      break;
    }
    let x_2447 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_2447 >> 2u);
    let x_2451 : u32 = u_xlatu_loop_1;
    u_xlati63 = bitcast<i32>((x_2451 & 3u));
    let x_2454 : u32 = u_xlatu2;
    let x_2457 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2454)];
    let x_2467 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2472 : vec4<u32> = indexable[x_2467];
    u_xlat2.x = dot(x_2457, bitcast<vec4<f32>>(x_2472));
    let x_2477 : f32 = u_xlat2.x;
    u_xlatu2 = bitcast<u32>(i32(x_2477));
    let x_2480 : vec3<f32> = vs_INTERP0;
    let x_2492 : u32 = u_xlatu2;
    let x_2495 : vec4<f32> = x_2491.x_AdditionalLightsPosition[bitcast<i32>(x_2492)];
    let x_2498 : u32 = u_xlatu2;
    let x_2501 : vec4<f32> = x_2491.x_AdditionalLightsPosition[bitcast<i32>(x_2498)];
    let x_2503 : vec3<f32> = ((-(x_2480) * vec3<f32>(x_2495.w, x_2495.w, x_2495.w)) + vec3<f32>(x_2501.x, x_2501.y, x_2501.z));
    let x_2504 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2503.x, x_2503.y, x_2503.z, x_2504.w);
    let x_2506 : vec4<f32> = u_xlat9;
    let x_2508 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2506.x, x_2506.y, x_2506.z), vec3<f32>(x_2508.x, x_2508.y, x_2508.z));
    let x_2511 : f32 = u_xlat63;
    u_xlat63 = max(x_2511, 6.10351562e-05f);
    let x_2514 : f32 = u_xlat63;
    u_xlat65 = inverseSqrt(x_2514);
    let x_2516 : f32 = u_xlat65;
    let x_2518 : vec4<f32> = u_xlat9;
    let x_2520 : vec3<f32> = (vec3<f32>(x_2516, x_2516, x_2516) * vec3<f32>(x_2518.x, x_2518.y, x_2518.z));
    let x_2521 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2521.w);
    let x_2523 : f32 = u_xlat63;
    u_xlat66 = (1.0f / x_2523);
    let x_2525 : f32 = u_xlat63;
    let x_2526 : u32 = u_xlatu2;
    let x_2529 : f32 = x_2491.x_AdditionalLightsAttenuation[bitcast<i32>(x_2526)].x;
    u_xlat63 = (x_2525 * x_2529);
    let x_2531 : f32 = u_xlat63;
    let x_2533 : f32 = u_xlat63;
    u_xlat63 = ((-(x_2531) * x_2533) + 1.0f);
    let x_2536 : f32 = u_xlat63;
    u_xlat63 = max(x_2536, 0.0f);
    let x_2538 : f32 = u_xlat63;
    let x_2539 : f32 = u_xlat63;
    u_xlat63 = (x_2538 * x_2539);
    let x_2541 : f32 = u_xlat63;
    let x_2542 : f32 = u_xlat66;
    u_xlat63 = (x_2541 * x_2542);
    let x_2544 : u32 = u_xlatu2;
    let x_2547 : vec4<f32> = x_2491.x_AdditionalLightsSpotDir[bitcast<i32>(x_2544)];
    let x_2549 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2547.x, x_2547.y, x_2547.z), vec3<f32>(x_2549.x, x_2549.y, x_2549.z));
    let x_2552 : f32 = u_xlat66;
    let x_2553 : u32 = u_xlatu2;
    let x_2556 : f32 = x_2491.x_AdditionalLightsAttenuation[bitcast<i32>(x_2553)].z;
    let x_2558 : u32 = u_xlatu2;
    let x_2561 : f32 = x_2491.x_AdditionalLightsAttenuation[bitcast<i32>(x_2558)].w;
    u_xlat66 = ((x_2552 * x_2556) + x_2561);
    let x_2563 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2563, 0.0f, 1.0f);
    let x_2565 : f32 = u_xlat66;
    let x_2566 : f32 = u_xlat66;
    u_xlat66 = (x_2565 * x_2566);
    let x_2568 : f32 = u_xlat63;
    let x_2569 : f32 = u_xlat66;
    u_xlat63 = (x_2568 * x_2569);
    let x_2572 : u32 = u_xlatu2;
    u_xlatu66 = (x_2572 >> 5u);
    let x_2575 : u32 = u_xlatu2;
    u_xlati47 = (1i << bitcast<u32>((bitcast<i32>(x_2575) & 31i)));
    let x_2581 : i32 = u_xlati47;
    let x_2583 : u32 = u_xlatu66;
    let x_2586 : f32 = x_2050.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2583)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2581) & bitcast<u32>(x_2586)));
    let x_2590 : i32 = u_xlati66;
    if ((x_2590 != 0i)) {
      let x_2600 : u32 = u_xlatu2;
      let x_2603 : f32 = x_2599.x_AdditionalLightsLightTypes[bitcast<i32>(x_2600)].el;
      u_xlati66 = i32(x_2603);
      let x_2605 : i32 = u_xlati66;
      u_xlati47 = select(1i, 0i, (x_2605 != 0i));
      let x_2609 : u32 = u_xlatu2;
      u_xlati67 = (bitcast<i32>(x_2609) << bitcast<u32>(2i));
      let x_2612 : i32 = u_xlati47;
      if ((x_2612 != 0i)) {
        let x_2616 : vec3<f32> = vs_INTERP0;
        let x_2618 : i32 = u_xlati67;
        let x_2621 : i32 = u_xlati67;
        let x_2625 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[((x_2618 + 1i) / 4i)][((x_2621 + 1i) % 4i)];
        let x_2627 : vec3<f32> = (vec3<f32>(x_2616.y, x_2616.y, x_2616.y) * vec3<f32>(x_2625.x, x_2625.y, x_2625.w));
        let x_2628 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
        let x_2630 : i32 = u_xlati67;
        let x_2632 : i32 = u_xlati67;
        let x_2635 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[(x_2630 / 4i)][(x_2632 % 4i)];
        let x_2637 : vec3<f32> = vs_INTERP0;
        let x_2640 : vec4<f32> = u_xlat11;
        let x_2642 : vec3<f32> = ((vec3<f32>(x_2635.x, x_2635.y, x_2635.w) * vec3<f32>(x_2637.x, x_2637.x, x_2637.x)) + vec3<f32>(x_2640.x, x_2640.y, x_2640.z));
        let x_2643 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
        let x_2645 : i32 = u_xlati67;
        let x_2648 : i32 = u_xlati67;
        let x_2652 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[((x_2645 + 2i) / 4i)][((x_2648 + 2i) % 4i)];
        let x_2654 : vec3<f32> = vs_INTERP0;
        let x_2657 : vec4<f32> = u_xlat11;
        let x_2659 : vec3<f32> = ((vec3<f32>(x_2652.x, x_2652.y, x_2652.w) * vec3<f32>(x_2654.z, x_2654.z, x_2654.z)) + vec3<f32>(x_2657.x, x_2657.y, x_2657.z));
        let x_2660 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2659.x, x_2659.y, x_2659.z, x_2660.w);
        let x_2662 : vec4<f32> = u_xlat11;
        let x_2664 : i32 = u_xlati67;
        let x_2667 : i32 = u_xlati67;
        let x_2671 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[((x_2664 + 3i) / 4i)][((x_2667 + 3i) % 4i)];
        let x_2673 : vec3<f32> = (vec3<f32>(x_2662.x, x_2662.y, x_2662.z) + vec3<f32>(x_2671.x, x_2671.y, x_2671.w));
        let x_2674 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2673.x, x_2673.y, x_2673.z, x_2674.w);
        let x_2676 : vec4<f32> = u_xlat11;
        let x_2678 : vec4<f32> = u_xlat11;
        let x_2680 : vec2<f32> = (vec2<f32>(x_2676.x, x_2676.y) / vec2<f32>(x_2678.z, x_2678.z));
        let x_2681 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2680.x, x_2680.y, x_2681.z, x_2681.w);
        let x_2683 : vec4<f32> = u_xlat11;
        let x_2686 : vec2<f32> = ((vec2<f32>(x_2683.x, x_2683.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2687 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2686.x, x_2686.y, x_2687.z, x_2687.w);
        let x_2689 : vec4<f32> = u_xlat11;
        let x_2693 : vec2<f32> = clamp(vec2<f32>(x_2689.x, x_2689.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2694 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2693.x, x_2693.y, x_2694.z, x_2694.w);
        let x_2696 : u32 = u_xlatu2;
        let x_2699 : vec4<f32> = x_2599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2696)];
        let x_2701 : vec4<f32> = u_xlat11;
        let x_2704 : u32 = u_xlatu2;
        let x_2707 : vec4<f32> = x_2599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2704)];
        let x_2709 : vec2<f32> = ((vec2<f32>(x_2699.x, x_2699.y) * vec2<f32>(x_2701.x, x_2701.y)) + vec2<f32>(x_2707.z, x_2707.w));
        let x_2710 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2709.x, x_2709.y, x_2710.z, x_2710.w);
      } else {
        let x_2714 : i32 = u_xlati66;
        u_xlatb66 = (x_2714 == 1i);
        let x_2716 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2716);
        let x_2718 : i32 = u_xlati66;
        if ((x_2718 != 0i)) {
          let x_2723 : vec3<f32> = vs_INTERP0;
          let x_2725 : i32 = u_xlati67;
          let x_2728 : i32 = u_xlati67;
          let x_2732 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[((x_2725 + 1i) / 4i)][((x_2728 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2723.y, x_2723.y) * vec2<f32>(x_2732.x, x_2732.y));
          let x_2735 : i32 = u_xlati67;
          let x_2737 : i32 = u_xlati67;
          let x_2740 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[(x_2735 / 4i)][(x_2737 % 4i)];
          let x_2742 : vec3<f32> = vs_INTERP0;
          let x_2745 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2740.x, x_2740.y) * vec2<f32>(x_2742.x, x_2742.x)) + x_2745);
          let x_2747 : i32 = u_xlati67;
          let x_2750 : i32 = u_xlati67;
          let x_2754 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[((x_2747 + 2i) / 4i)][((x_2750 + 2i) % 4i)];
          let x_2756 : vec3<f32> = vs_INTERP0;
          let x_2759 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2754.x, x_2754.y) * vec2<f32>(x_2756.z, x_2756.z)) + x_2759);
          let x_2761 : vec2<f32> = u_xlat51;
          let x_2762 : i32 = u_xlati67;
          let x_2765 : i32 = u_xlati67;
          let x_2769 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[((x_2762 + 3i) / 4i)][((x_2765 + 3i) % 4i)];
          u_xlat51 = (x_2761 + vec2<f32>(x_2769.x, x_2769.y));
          let x_2772 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2772 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2775 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2775);
          let x_2777 : u32 = u_xlatu2;
          let x_2780 : vec4<f32> = x_2599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2777)];
          let x_2782 : vec2<f32> = u_xlat51;
          let x_2784 : u32 = u_xlatu2;
          let x_2787 : vec4<f32> = x_2599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2784)];
          let x_2789 : vec2<f32> = ((vec2<f32>(x_2780.x, x_2780.y) * x_2782) + vec2<f32>(x_2787.z, x_2787.w));
          let x_2790 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2789.x, x_2789.y, x_2790.z, x_2790.w);
        } else {
          let x_2793 : vec3<f32> = vs_INTERP0;
          let x_2795 : i32 = u_xlati67;
          let x_2798 : i32 = u_xlati67;
          let x_2802 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[((x_2795 + 1i) / 4i)][((x_2798 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2793.y, x_2793.y, x_2793.y, x_2793.y) * x_2802);
          let x_2804 : i32 = u_xlati67;
          let x_2806 : i32 = u_xlati67;
          let x_2809 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[(x_2804 / 4i)][(x_2806 % 4i)];
          let x_2810 : vec3<f32> = vs_INTERP0;
          let x_2813 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2809 * vec4<f32>(x_2810.x, x_2810.x, x_2810.x, x_2810.x)) + x_2813);
          let x_2815 : i32 = u_xlati67;
          let x_2818 : i32 = u_xlati67;
          let x_2822 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[((x_2815 + 2i) / 4i)][((x_2818 + 2i) % 4i)];
          let x_2823 : vec3<f32> = vs_INTERP0;
          let x_2826 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2822 * vec4<f32>(x_2823.z, x_2823.z, x_2823.z, x_2823.z)) + x_2826);
          let x_2828 : vec4<f32> = u_xlat12;
          let x_2829 : i32 = u_xlati67;
          let x_2832 : i32 = u_xlati67;
          let x_2836 : vec4<f32> = x_2599.x_AdditionalLightsWorldToLights[((x_2829 + 3i) / 4i)][((x_2832 + 3i) % 4i)];
          u_xlat12 = (x_2828 + x_2836);
          let x_2838 : vec4<f32> = u_xlat12;
          let x_2840 : vec4<f32> = u_xlat12;
          let x_2842 : vec3<f32> = (vec3<f32>(x_2838.x, x_2838.y, x_2838.z) / vec3<f32>(x_2840.w, x_2840.w, x_2840.w));
          let x_2843 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2842.x, x_2842.y, x_2842.z, x_2843.w);
          let x_2845 : vec4<f32> = u_xlat12;
          let x_2847 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(vec3<f32>(x_2845.x, x_2845.y, x_2845.z), vec3<f32>(x_2847.x, x_2847.y, x_2847.z));
          let x_2850 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2850);
          let x_2852 : f32 = u_xlat66;
          let x_2854 : vec4<f32> = u_xlat12;
          let x_2856 : vec3<f32> = (vec3<f32>(x_2852, x_2852, x_2852) * vec3<f32>(x_2854.x, x_2854.y, x_2854.z));
          let x_2857 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2856.x, x_2856.y, x_2856.z, x_2857.w);
          let x_2859 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(abs(vec3<f32>(x_2859.x, x_2859.y, x_2859.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2863 : f32 = u_xlat66;
          u_xlat66 = max(x_2863, 0.000001f);
          let x_2866 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2866);
          let x_2868 : f32 = u_xlat66;
          let x_2870 : vec4<f32> = u_xlat12;
          let x_2872 : vec3<f32> = (vec3<f32>(x_2868, x_2868, x_2868) * vec3<f32>(x_2870.z, x_2870.x, x_2870.y));
          let x_2873 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2872.x, x_2872.y, x_2872.z, x_2873.w);
          let x_2876 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2876);
          let x_2880 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2880, 0.0f, 1.0f);
          let x_2884 : vec4<f32> = u_xlat13;
          let x_2887 : vec4<bool> = (vec4<f32>(x_2884.y, x_2884.z, x_2884.y, x_2884.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2887.x, x_2887.y);
          let x_2891 : bool = u_xlatb47.x;
          if (x_2891) {
            let x_2896 : f32 = u_xlat13.x;
            x_2892 = x_2896;
          } else {
            let x_2899 : f32 = u_xlat13.x;
            x_2892 = -(x_2899);
          }
          let x_2901 : f32 = x_2892;
          u_xlat47.x = x_2901;
          let x_2904 : bool = u_xlatb47.y;
          if (x_2904) {
            let x_2909 : f32 = u_xlat13.x;
            x_2905 = x_2909;
          } else {
            let x_2912 : f32 = u_xlat13.x;
            x_2905 = -(x_2912);
          }
          let x_2914 : f32 = x_2905;
          u_xlat47.y = x_2914;
          let x_2916 : vec4<f32> = u_xlat12;
          let x_2918 : f32 = u_xlat66;
          let x_2921 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2916.x, x_2916.y) * vec2<f32>(x_2918, x_2918)) + x_2921);
          let x_2923 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2923 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2926 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2926, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2930 : u32 = u_xlatu2;
          let x_2933 : vec4<f32> = x_2599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2930)];
          let x_2935 : vec2<f32> = u_xlat47;
          let x_2937 : u32 = u_xlatu2;
          let x_2940 : vec4<f32> = x_2599.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2937)];
          let x_2942 : vec2<f32> = ((vec2<f32>(x_2933.x, x_2933.y) * x_2935) + vec2<f32>(x_2940.z, x_2940.w));
          let x_2943 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2942.x, x_2942.y, x_2943.z, x_2943.w);
        }
      }
      let x_2950 : vec4<f32> = u_xlat11;
      let x_2953 : f32 = x_44.x_GlobalMipBias.x;
      let x_2954 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2950.x, x_2950.y), x_2953);
      u_xlat11 = x_2954;
      let x_2956 : bool = u_xlatb7.y;
      if (x_2956) {
        let x_2961 : f32 = u_xlat11.w;
        x_2957 = x_2961;
      } else {
        let x_2964 : f32 = u_xlat11.x;
        x_2957 = x_2964;
      }
      let x_2965 : f32 = x_2957;
      u_xlat66 = x_2965;
      let x_2967 : bool = u_xlatb7.x;
      if (x_2967) {
        let x_2971 : vec4<f32> = u_xlat11;
        x_2968 = vec3<f32>(x_2971.x, x_2971.y, x_2971.z);
      } else {
        let x_2974 : f32 = u_xlat66;
        x_2968 = vec3<f32>(x_2974, x_2974, x_2974);
      }
      let x_2976 : vec3<f32> = x_2968;
      let x_2977 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2976.x, x_2976.y, x_2976.z, x_2977.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2983 : vec4<f32> = u_xlat11;
    let x_2985 : u32 = u_xlatu2;
    let x_2988 : vec4<f32> = x_2491.x_AdditionalLightsColor[bitcast<i32>(x_2985)];
    let x_2990 : vec3<f32> = (vec3<f32>(x_2983.x, x_2983.y, x_2983.z) * vec3<f32>(x_2988.x, x_2988.y, x_2988.z));
    let x_2991 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2990.x, x_2990.y, x_2990.z, x_2991.w);
    let x_2993 : f32 = u_xlat64;
    let x_2995 : vec4<f32> = u_xlat11;
    let x_2997 : vec3<f32> = (vec3<f32>(x_2993, x_2993, x_2993) * vec3<f32>(x_2995.x, x_2995.y, x_2995.z));
    let x_2998 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2997.x, x_2997.y, x_2997.z, x_2998.w);
    let x_3000 : vec4<f32> = u_xlat1;
    let x_3002 : vec4<f32> = u_xlat10;
    u_xlat2.x = dot(vec3<f32>(x_3000.x, x_3000.y, x_3000.z), vec3<f32>(x_3002.x, x_3002.y, x_3002.z));
    let x_3007 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3007, 0.0f, 1.0f);
    let x_3011 : f32 = u_xlat2.x;
    let x_3012 : f32 = u_xlat63;
    u_xlat2.x = (x_3011 * x_3012);
    let x_3015 : vec4<f32> = u_xlat2;
    let x_3017 : vec4<f32> = u_xlat11;
    let x_3019 : vec3<f32> = (vec3<f32>(x_3015.x, x_3015.x, x_3015.x) * vec3<f32>(x_3017.x, x_3017.y, x_3017.z));
    let x_3020 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3019.x, x_3019.y, x_3019.z, x_3020.w);
    let x_3022 : vec4<f32> = u_xlat9;
    let x_3024 : f32 = u_xlat65;
    let x_3027 : vec3<f32> = u_xlat4;
    let x_3028 : vec3<f32> = ((vec3<f32>(x_3022.x, x_3022.y, x_3022.z) * vec3<f32>(x_3024, x_3024, x_3024)) + x_3027);
    let x_3029 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3028.x, x_3028.y, x_3028.z, x_3029.w);
    let x_3031 : vec4<f32> = u_xlat9;
    let x_3033 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3031.x, x_3031.y, x_3031.z), vec3<f32>(x_3033.x, x_3033.y, x_3033.z));
    let x_3038 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_3038, 1.17549435e-37f);
    let x_3042 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_3042);
    let x_3045 : vec4<f32> = u_xlat2;
    let x_3047 : vec4<f32> = u_xlat9;
    let x_3049 : vec3<f32> = (vec3<f32>(x_3045.x, x_3045.x, x_3045.x) * vec3<f32>(x_3047.x, x_3047.y, x_3047.z));
    let x_3050 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3049.x, x_3049.y, x_3049.z, x_3050.w);
    let x_3052 : vec4<f32> = u_xlat1;
    let x_3054 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3052.x, x_3052.y, x_3052.z), vec3<f32>(x_3054.x, x_3054.y, x_3054.z));
    let x_3059 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3059, 0.0f, 1.0f);
    let x_3062 : vec4<f32> = u_xlat10;
    let x_3064 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_3062.x, x_3062.y, x_3062.z), vec3<f32>(x_3064.x, x_3064.y, x_3064.z));
    let x_3067 : f32 = u_xlat63;
    u_xlat63 = clamp(x_3067, 0.0f, 1.0f);
    let x_3070 : f32 = u_xlat2.x;
    let x_3072 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3070 * x_3072);
    let x_3076 : f32 = u_xlat2.x;
    let x_3078 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_3076 * x_3078) + 1.000010014f);
    let x_3082 : f32 = u_xlat63;
    let x_3083 : f32 = u_xlat63;
    u_xlat63 = (x_3082 * x_3083);
    let x_3086 : f32 = u_xlat2.x;
    let x_3088 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3086 * x_3088);
    let x_3091 : f32 = u_xlat63;
    u_xlat63 = max(x_3091, 0.100000001f);
    let x_3094 : f32 = u_xlat2.x;
    let x_3095 : f32 = u_xlat63;
    u_xlat2.x = (x_3094 * x_3095);
    let x_3098 : f32 = u_xlat62;
    let x_3100 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3098 * x_3100);
    let x_3103 : f32 = u_xlat22;
    let x_3105 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3103 / x_3105);
    let x_3108 : vec4<f32> = u_xlat0;
    let x_3110 : vec4<f32> = u_xlat2;
    let x_3113 : vec3<f32> = u_xlat6;
    let x_3114 : vec3<f32> = ((vec3<f32>(x_3108.x, x_3108.y, x_3108.z) * vec3<f32>(x_3110.x, x_3110.x, x_3110.x)) + x_3113);
    let x_3115 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3114.x, x_3114.y, x_3114.z, x_3115.w);
    let x_3117 : vec4<f32> = u_xlat9;
    let x_3119 : vec4<f32> = u_xlat11;
    let x_3122 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_3117.x, x_3117.y, x_3117.z) * vec3<f32>(x_3119.x, x_3119.y, x_3119.z)) + x_3122);

    continuing {
      let x_3124 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3124 + bitcast<u32>(1i));
    }
  }
  let x_3126 : vec4<f32> = u_xlat3;
  let x_3128 : f32 = u_xlat42;
  let x_3131 : vec4<f32> = u_xlat5;
  let x_3133 : vec3<f32> = ((vec3<f32>(x_3126.x, x_3126.y, x_3126.z) * vec3<f32>(x_3128, x_3128, x_3128)) + vec3<f32>(x_3131.x, x_3131.y, x_3131.z));
  let x_3134 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3133.x, x_3133.y, x_3133.z, x_3134.w);
  let x_3138 : vec3<f32> = u_xlat28;
  let x_3139 : vec4<f32> = u_xlat0;
  let x_3141 : vec3<f32> = (x_3138 + vec3<f32>(x_3139.x, x_3139.y, x_3139.z));
  let x_3142 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3141.x, x_3141.y, x_3141.z, x_3142.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

