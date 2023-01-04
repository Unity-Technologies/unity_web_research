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

@group(1) @binding(3) var<uniform> x_661 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1985 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2426 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2534 : AdditionalLightsCookies;

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
  var u_xlat61 : f32;
  var u_xlat4 : vec3<f32>;
  var x_475 : f32;
  var x_488 : f32;
  var x_499 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat62 : f32;
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
  var x_2067 : f32;
  var x_2078 : vec3<f32>;
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
  var x_2827 : f32;
  var x_2840 : f32;
  var x_2892 : f32;
  var x_2903 : vec3<f32>;
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
  u_xlat61 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat61;
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
  let x_517 : vec2<f32> = vs_INTERP4;
  let x_519 : f32 = x_44.x_GlobalMipBias.x;
  let x_520 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_517, x_519);
  let x_521 : vec3<f32> = vec3<f32>(x_520.x, x_520.y, x_520.z);
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_528 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_529 : vec2<f32> = vec2<f32>(x_528.x, x_528.y);
  let x_533 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_529.x, x_529.y));
  let x_534 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
  let x_536 : vec4<f32> = u_xlat5;
  let x_538 : vec4<f32> = hlslcc_FragCoord;
  let x_540 : vec2<f32> = (vec2<f32>(x_536.x, x_536.y) * vec2<f32>(x_538.x, x_538.y));
  let x_541 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
  let x_544 : f32 = u_xlat5.y;
  let x_547 : f32 = x_44.x_ScaleBiasRt.x;
  let x_550 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_544 * x_547) + x_550);
  let x_552 : f32 = u_xlat60;
  u_xlat5.z = (-(x_552) + 1.0f);
  let x_556 : vec4<f32> = u_xlat2;
  let x_557 : vec2<f32> = vec2<f32>(x_556.x, x_556.y);
  let x_558 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat2;
  let x_564 : vec2<f32> = clamp(vec2<f32>(x_560.x, x_560.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
  let x_568 : f32 = u_xlat2.x;
  u_xlat60 = ((-(x_568) * 0.959999979f) + 0.959999979f);
  let x_573 : f32 = u_xlat60;
  let x_576 : f32 = u_xlat2.y;
  u_xlat61 = (-(x_573) + x_576);
  let x_579 : f32 = u_xlat60;
  let x_581 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_579, x_579, x_579) * vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat0;
  let x_588 : vec3<f32> = (vec3<f32>(x_584.x, x_584.y, x_584.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_589 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat2;
  let x_593 : vec4<f32> = u_xlat0;
  let x_598 : vec3<f32> = ((vec3<f32>(x_591.x, x_591.x, x_591.x) * vec3<f32>(x_593.x, x_593.y, x_593.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_599 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat2.y;
  u_xlat60 = (-(x_602) + 1.0f);
  let x_605 : f32 = u_xlat60;
  let x_606 : f32 = u_xlat60;
  u_xlat2.x = (x_605 * x_606);
  let x_610 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_610, 0.0078125f);
  let x_616 : f32 = u_xlat2.x;
  let x_618 : f32 = u_xlat2.x;
  u_xlat22 = (x_616 * x_618);
  let x_620 : f32 = u_xlat61;
  u_xlat61 = (x_620 + 1.0f);
  let x_622 : f32 = u_xlat61;
  u_xlat61 = min(x_622, 1.0f);
  let x_626 : f32 = u_xlat2.x;
  u_xlat62 = ((x_626 * 4.0f) + 2.0f);
  let x_636 : vec4<f32> = u_xlat5;
  let x_639 : f32 = x_44.x_GlobalMipBias.x;
  let x_640 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_636.x, x_636.z), x_639);
  u_xlat63 = x_640.x;
  let x_643 : f32 = u_xlat63;
  u_xlat64 = (x_643 + -1.0f);
  let x_647 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_648 : f32 = u_xlat64;
  u_xlat64 = ((x_647 * x_648) + 1.0f);
  let x_653 : f32 = u_xlat2.z;
  let x_654 : f32 = u_xlat63;
  u_xlat42 = min(x_653, x_654);
  let x_663 : f32 = x_661.x_MainLightShadowParams.y;
  u_xlatb63 = (0.0f < x_663);
  let x_665 : bool = u_xlatb63;
  if (x_665) {
    let x_669 : f32 = x_661.x_MainLightShadowParams.y;
    u_xlatb63 = (x_669 == 1.0f);
    let x_671 : bool = u_xlatb63;
    if (x_671) {
      let x_675 : vec4<f32> = vs_INTERP8;
      let x_678 : vec4<f32> = x_661.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y) + x_678);
      let x_681 : vec4<f32> = u_xlat5;
      let x_682 : vec2<f32> = vec2<f32>(x_681.x, x_681.y);
      let x_684 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_682.x, x_682.y, x_684);
      let x_697 : vec3<f32> = txVec0;
      let x_699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_697.xy, x_697.z);
      u_xlat7.x = x_699;
      let x_702 : vec4<f32> = u_xlat5;
      let x_703 : vec2<f32> = vec2<f32>(x_702.z, x_702.w);
      let x_705 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_703.x, x_703.y, x_705);
      let x_712 : vec3<f32> = txVec1;
      let x_714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_712.xy, x_712.z);
      u_xlat7.y = x_714;
      let x_716 : vec4<f32> = vs_INTERP8;
      let x_719 : vec4<f32> = x_661.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y) + x_719);
      let x_722 : vec4<f32> = u_xlat5;
      let x_723 : vec2<f32> = vec2<f32>(x_722.x, x_722.y);
      let x_725 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_723.x, x_723.y, x_725);
      let x_732 : vec3<f32> = txVec2;
      let x_734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_732.xy, x_732.z);
      u_xlat7.z = x_734;
      let x_737 : vec4<f32> = u_xlat5;
      let x_738 : vec2<f32> = vec2<f32>(x_737.z, x_737.w);
      let x_740 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_738.x, x_738.y, x_740);
      let x_747 : vec3<f32> = txVec3;
      let x_749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_747.xy, x_747.z);
      u_xlat7.w = x_749;
      let x_751 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_751, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_758 : f32 = x_661.x_MainLightShadowParams.y;
      u_xlatb5 = (x_758 == 2.0f);
      let x_760 : bool = u_xlatb5;
      if (x_760) {
        let x_763 : vec4<f32> = vs_INTERP8;
        let x_766 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_771 : vec2<f32> = ((vec2<f32>(x_763.x, x_763.y) * vec2<f32>(x_766.z, x_766.w)) + vec2<f32>(0.5f, 0.5f));
        let x_772 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat5;
        let x_776 : vec2<f32> = floor(vec2<f32>(x_774.x, x_774.y));
        let x_777 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
        let x_780 : vec4<f32> = vs_INTERP8;
        let x_783 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_786 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_780.x, x_780.y) * vec2<f32>(x_783.z, x_783.w)) + -(vec2<f32>(x_786.x, x_786.y)));
        let x_790 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_790.x, x_790.x, x_790.y, x_790.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_795 : vec4<f32> = u_xlat7;
        let x_797 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_795.x, x_795.x, x_795.z, x_795.z) * vec4<f32>(x_797.x, x_797.x, x_797.z, x_797.z));
        let x_800 : vec4<f32> = u_xlat8;
        let x_804 : vec2<f32> = (vec2<f32>(x_800.y, x_800.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_805 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_804.x, x_805.y, x_804.y, x_805.w);
        let x_807 : vec4<f32> = u_xlat8;
        let x_810 : vec2<f32> = u_xlat45;
        let x_812 : vec2<f32> = ((vec2<f32>(x_807.x, x_807.z) * vec2<f32>(0.5f, 0.5f)) + -(x_810));
        let x_813 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
        let x_816 : vec2<f32> = u_xlat45;
        u_xlat48 = (-(x_816) + vec2<f32>(1.0f, 1.0f));
        let x_820 : vec2<f32> = u_xlat45;
        let x_822 : vec2<f32> = min(x_820, vec2<f32>(0.0f, 0.0f));
        let x_823 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_822.x, x_822.y, x_823.z, x_823.w);
        let x_825 : vec4<f32> = u_xlat9;
        let x_828 : vec4<f32> = u_xlat9;
        let x_831 : vec2<f32> = u_xlat48;
        let x_832 : vec2<f32> = ((-(vec2<f32>(x_825.x, x_825.y)) * vec2<f32>(x_828.x, x_828.y)) + x_831);
        let x_833 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_832.x, x_832.y, x_833.z, x_833.w);
        let x_835 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_835, vec2<f32>(0.0f, 0.0f));
        let x_837 : vec2<f32> = u_xlat45;
        let x_839 : vec2<f32> = u_xlat45;
        let x_841 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_837) * x_839) + vec2<f32>(x_841.y, x_841.w));
        let x_844 : vec4<f32> = u_xlat9;
        let x_846 : vec2<f32> = (vec2<f32>(x_844.x, x_844.y) + vec2<f32>(1.0f, 1.0f));
        let x_847 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_846.x, x_846.y, x_847.z, x_847.w);
        let x_849 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_849 + vec2<f32>(1.0f, 1.0f));
        let x_852 : vec4<f32> = u_xlat8;
        let x_856 : vec2<f32> = (vec2<f32>(x_852.x, x_852.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_857 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_856.x, x_856.y, x_857.z, x_857.w);
        let x_859 : vec2<f32> = u_xlat48;
        let x_860 : vec2<f32> = (x_859 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_861 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
        let x_863 : vec4<f32> = u_xlat9;
        let x_865 : vec2<f32> = (vec2<f32>(x_863.x, x_863.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_866 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
        let x_869 : vec2<f32> = u_xlat45;
        let x_870 : vec2<f32> = (x_869 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_871 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_873 : vec4<f32> = u_xlat7;
        u_xlat45 = (vec2<f32>(x_873.y, x_873.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_877 : f32 = u_xlat9.x;
        u_xlat10.z = x_877;
        let x_880 : f32 = u_xlat45.x;
        u_xlat10.w = x_880;
        let x_883 : f32 = u_xlat11.x;
        u_xlat8.z = x_883;
        let x_886 : f32 = u_xlat7.x;
        u_xlat8.w = x_886;
        let x_889 : vec4<f32> = u_xlat8;
        let x_891 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_889.z, x_889.w, x_889.x, x_889.z) + vec4<f32>(x_891.z, x_891.w, x_891.x, x_891.z));
        let x_895 : f32 = u_xlat10.y;
        u_xlat9.z = x_895;
        let x_898 : f32 = u_xlat45.y;
        u_xlat9.w = x_898;
        let x_901 : f32 = u_xlat8.y;
        u_xlat11.z = x_901;
        let x_904 : f32 = u_xlat7.z;
        u_xlat11.w = x_904;
        let x_906 : vec4<f32> = u_xlat9;
        let x_908 : vec4<f32> = u_xlat11;
        let x_910 : vec3<f32> = (vec3<f32>(x_906.z, x_906.y, x_906.w) + vec3<f32>(x_908.z, x_908.y, x_908.w));
        let x_911 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
        let x_913 : vec4<f32> = u_xlat8;
        let x_915 : vec4<f32> = u_xlat12;
        let x_917 : vec3<f32> = (vec3<f32>(x_913.x, x_913.z, x_913.w) / vec3<f32>(x_915.z, x_915.w, x_915.y));
        let x_918 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
        let x_920 : vec4<f32> = u_xlat8;
        let x_926 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_927 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
        let x_929 : vec4<f32> = u_xlat11;
        let x_931 : vec4<f32> = u_xlat7;
        let x_933 : vec3<f32> = (vec3<f32>(x_929.z, x_929.y, x_929.w) / vec3<f32>(x_931.x, x_931.y, x_931.z));
        let x_934 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
        let x_936 : vec4<f32> = u_xlat9;
        let x_938 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_939 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
        let x_941 : vec4<f32> = u_xlat8;
        let x_944 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_946 : vec3<f32> = (vec3<f32>(x_941.y, x_941.x, x_941.z) * vec3<f32>(x_944.x, x_944.x, x_944.x));
        let x_947 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat9;
        let x_952 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_954 : vec3<f32> = (vec3<f32>(x_949.x, x_949.y, x_949.z) * vec3<f32>(x_952.y, x_952.y, x_952.y));
        let x_955 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
        let x_958 : f32 = u_xlat9.x;
        u_xlat8.w = x_958;
        let x_960 : vec4<f32> = u_xlat5;
        let x_963 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_960.x, x_960.y, x_960.x, x_960.y) * vec4<f32>(x_963.x, x_963.y, x_963.x, x_963.y)) + vec4<f32>(x_966.y, x_966.w, x_966.x, x_966.w));
        let x_969 : vec4<f32> = u_xlat5;
        let x_972 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_975 : vec4<f32> = u_xlat8;
        u_xlat45 = ((vec2<f32>(x_969.x, x_969.y) * vec2<f32>(x_972.x, x_972.y)) + vec2<f32>(x_975.z, x_975.w));
        let x_979 : f32 = u_xlat8.y;
        u_xlat9.w = x_979;
        let x_981 : vec4<f32> = u_xlat9;
        let x_982 : vec2<f32> = vec2<f32>(x_981.y, x_981.z);
        let x_983 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_983.x, x_982.x, x_983.z, x_982.y);
        let x_985 : vec4<f32> = u_xlat5;
        let x_988 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_991 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_985.x, x_985.y, x_985.x, x_985.y) * vec4<f32>(x_988.x, x_988.y, x_988.x, x_988.y)) + vec4<f32>(x_991.x, x_991.y, x_991.z, x_991.y));
        let x_994 : vec4<f32> = u_xlat5;
        let x_997 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1000 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_994.x, x_994.y, x_994.x, x_994.y) * vec4<f32>(x_997.x, x_997.y, x_997.x, x_997.y)) + vec4<f32>(x_1000.w, x_1000.y, x_1000.w, x_1000.z));
        let x_1003 : vec4<f32> = u_xlat5;
        let x_1006 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1009 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1003.x, x_1003.y, x_1003.x, x_1003.y) * vec4<f32>(x_1006.x, x_1006.y, x_1006.x, x_1006.y)) + vec4<f32>(x_1009.x, x_1009.w, x_1009.z, x_1009.w));
        let x_1013 : vec4<f32> = u_xlat7;
        let x_1015 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1013.x, x_1013.x, x_1013.x, x_1013.y) * vec4<f32>(x_1015.z, x_1015.w, x_1015.y, x_1015.z));
        let x_1019 : vec4<f32> = u_xlat7;
        let x_1021 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1019.y, x_1019.y, x_1019.z, x_1019.z) * x_1021);
        let x_1024 : f32 = u_xlat7.z;
        let x_1026 : f32 = u_xlat12.y;
        u_xlat5.x = (x_1024 * x_1026);
        let x_1030 : vec4<f32> = u_xlat10;
        let x_1031 : vec2<f32> = vec2<f32>(x_1030.x, x_1030.y);
        let x_1033 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1031.x, x_1031.y, x_1033);
        let x_1041 : vec3<f32> = txVec4;
        let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1041.xy, x_1041.z);
        u_xlat25 = x_1043;
        let x_1045 : vec4<f32> = u_xlat10;
        let x_1046 : vec2<f32> = vec2<f32>(x_1045.z, x_1045.w);
        let x_1048 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
        let x_1056 : vec3<f32> = txVec5;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1056.xy, x_1056.z);
        u_xlat66 = x_1058;
        let x_1059 : f32 = u_xlat66;
        let x_1061 : f32 = u_xlat13.y;
        u_xlat66 = (x_1059 * x_1061);
        let x_1064 : f32 = u_xlat13.x;
        let x_1065 : f32 = u_xlat25;
        let x_1067 : f32 = u_xlat66;
        u_xlat25 = ((x_1064 * x_1065) + x_1067);
        let x_1070 : vec2<f32> = u_xlat45;
        let x_1072 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1070.x, x_1070.y, x_1072);
        let x_1079 : vec3<f32> = txVec6;
        let x_1081 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1079.xy, x_1079.z);
        u_xlat45.x = x_1081;
        let x_1084 : f32 = u_xlat13.z;
        let x_1086 : f32 = u_xlat45.x;
        let x_1088 : f32 = u_xlat25;
        u_xlat25 = ((x_1084 * x_1086) + x_1088);
        let x_1091 : vec4<f32> = u_xlat9;
        let x_1092 : vec2<f32> = vec2<f32>(x_1091.x, x_1091.y);
        let x_1094 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1092.x, x_1092.y, x_1094);
        let x_1101 : vec3<f32> = txVec7;
        let x_1103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1101.xy, x_1101.z);
        u_xlat45.x = x_1103;
        let x_1106 : f32 = u_xlat13.w;
        let x_1108 : f32 = u_xlat45.x;
        let x_1110 : f32 = u_xlat25;
        u_xlat25 = ((x_1106 * x_1108) + x_1110);
        let x_1113 : vec4<f32> = u_xlat11;
        let x_1114 : vec2<f32> = vec2<f32>(x_1113.x, x_1113.y);
        let x_1116 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1114.x, x_1114.y, x_1116);
        let x_1123 : vec3<f32> = txVec8;
        let x_1125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1123.xy, x_1123.z);
        u_xlat45.x = x_1125;
        let x_1128 : f32 = u_xlat14.x;
        let x_1130 : f32 = u_xlat45.x;
        let x_1132 : f32 = u_xlat25;
        u_xlat25 = ((x_1128 * x_1130) + x_1132);
        let x_1135 : vec4<f32> = u_xlat11;
        let x_1136 : vec2<f32> = vec2<f32>(x_1135.z, x_1135.w);
        let x_1138 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1136.x, x_1136.y, x_1138);
        let x_1145 : vec3<f32> = txVec9;
        let x_1147 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1145.xy, x_1145.z);
        u_xlat45.x = x_1147;
        let x_1150 : f32 = u_xlat14.y;
        let x_1152 : f32 = u_xlat45.x;
        let x_1154 : f32 = u_xlat25;
        u_xlat25 = ((x_1150 * x_1152) + x_1154);
        let x_1157 : vec4<f32> = u_xlat9;
        let x_1158 : vec2<f32> = vec2<f32>(x_1157.z, x_1157.w);
        let x_1160 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1158.x, x_1158.y, x_1160);
        let x_1167 : vec3<f32> = txVec10;
        let x_1169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1167.xy, x_1167.z);
        u_xlat45.x = x_1169;
        let x_1172 : f32 = u_xlat14.z;
        let x_1174 : f32 = u_xlat45.x;
        let x_1176 : f32 = u_xlat25;
        u_xlat25 = ((x_1172 * x_1174) + x_1176);
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1180 : vec2<f32> = vec2<f32>(x_1179.x, x_1179.y);
        let x_1182 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1180.x, x_1180.y, x_1182);
        let x_1189 : vec3<f32> = txVec11;
        let x_1191 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1189.xy, x_1189.z);
        u_xlat45.x = x_1191;
        let x_1194 : f32 = u_xlat14.w;
        let x_1196 : f32 = u_xlat45.x;
        let x_1198 : f32 = u_xlat25;
        u_xlat25 = ((x_1194 * x_1196) + x_1198);
        let x_1201 : vec4<f32> = u_xlat8;
        let x_1202 : vec2<f32> = vec2<f32>(x_1201.z, x_1201.w);
        let x_1204 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
        let x_1211 : vec3<f32> = txVec12;
        let x_1213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1211.xy, x_1211.z);
        u_xlat45.x = x_1213;
        let x_1216 : f32 = u_xlat5.x;
        let x_1218 : f32 = u_xlat45.x;
        let x_1220 : f32 = u_xlat25;
        u_xlat63 = ((x_1216 * x_1218) + x_1220);
      } else {
        let x_1223 : vec4<f32> = vs_INTERP8;
        let x_1226 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1229 : vec2<f32> = ((vec2<f32>(x_1223.x, x_1223.y) * vec2<f32>(x_1226.z, x_1226.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1230 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1229.x, x_1229.y, x_1230.z, x_1230.w);
        let x_1232 : vec4<f32> = u_xlat5;
        let x_1234 : vec2<f32> = floor(vec2<f32>(x_1232.x, x_1232.y));
        let x_1235 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        let x_1237 : vec4<f32> = vs_INTERP8;
        let x_1240 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1237.x, x_1237.y) * vec2<f32>(x_1240.z, x_1240.w)) + -(vec2<f32>(x_1243.x, x_1243.y)));
        let x_1247 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_1247.x, x_1247.x, x_1247.y, x_1247.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1250 : vec4<f32> = u_xlat7;
        let x_1252 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1250.x, x_1250.x, x_1250.z, x_1250.z) * vec4<f32>(x_1252.x, x_1252.x, x_1252.z, x_1252.z));
        let x_1255 : vec4<f32> = u_xlat8;
        let x_1259 : vec2<f32> = (vec2<f32>(x_1255.y, x_1255.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1260 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1260.x, x_1259.x, x_1260.z, x_1259.y);
        let x_1262 : vec4<f32> = u_xlat8;
        let x_1265 : vec2<f32> = u_xlat45;
        let x_1267 : vec2<f32> = ((vec2<f32>(x_1262.x, x_1262.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1265));
        let x_1268 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1267.x, x_1268.y, x_1267.y, x_1268.w);
        let x_1270 : vec2<f32> = u_xlat45;
        let x_1272 : vec2<f32> = (-(x_1270) + vec2<f32>(1.0f, 1.0f));
        let x_1273 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
        let x_1275 : vec2<f32> = u_xlat45;
        u_xlat48 = min(x_1275, vec2<f32>(0.0f, 0.0f));
        let x_1277 : vec2<f32> = u_xlat48;
        let x_1279 : vec2<f32> = u_xlat48;
        let x_1281 : vec4<f32> = u_xlat8;
        let x_1283 : vec2<f32> = ((-(x_1277) * x_1279) + vec2<f32>(x_1281.x, x_1281.y));
        let x_1284 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1283.x, x_1283.y, x_1284.z, x_1284.w);
        let x_1286 : vec2<f32> = u_xlat45;
        u_xlat48 = max(x_1286, vec2<f32>(0.0f, 0.0f));
        let x_1289 : vec2<f32> = u_xlat48;
        let x_1291 : vec2<f32> = u_xlat48;
        let x_1293 : vec4<f32> = u_xlat7;
        let x_1295 : vec2<f32> = ((-(x_1289) * x_1291) + vec2<f32>(x_1293.y, x_1293.w));
        let x_1296 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1295.x, x_1296.y, x_1295.y);
        let x_1298 : vec4<f32> = u_xlat8;
        let x_1300 : vec2<f32> = (vec2<f32>(x_1298.x, x_1298.y) + vec2<f32>(2.0f, 2.0f));
        let x_1301 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1301.w);
        let x_1303 : vec3<f32> = u_xlat27;
        let x_1305 : vec2<f32> = (vec2<f32>(x_1303.x, x_1303.z) + vec2<f32>(2.0f, 2.0f));
        let x_1306 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1306.x, x_1305.x, x_1306.z, x_1305.y);
        let x_1309 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1309 * 0.081632003f);
        let x_1313 : vec4<f32> = u_xlat7;
        let x_1316 : vec3<f32> = (vec3<f32>(x_1313.z, x_1313.x, x_1313.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1317 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1317.w);
        let x_1319 : vec4<f32> = u_xlat8;
        let x_1322 : vec2<f32> = (vec2<f32>(x_1319.x, x_1319.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1323 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1323.w);
        let x_1326 : f32 = u_xlat11.y;
        u_xlat10.x = x_1326;
        let x_1328 : vec2<f32> = u_xlat45;
        let x_1335 : vec2<f32> = ((vec2<f32>(x_1328.x, x_1328.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1336 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1336.x, x_1335.x, x_1336.z, x_1335.y);
        let x_1338 : vec2<f32> = u_xlat45;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1338.x, x_1338.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1343 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1342.x, x_1343.y, x_1342.y, x_1343.w);
        let x_1346 : f32 = u_xlat7.x;
        u_xlat8.y = x_1346;
        let x_1349 : f32 = u_xlat9.y;
        u_xlat8.w = x_1349;
        let x_1351 : vec4<f32> = u_xlat8;
        let x_1352 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1351 + x_1352);
        let x_1354 : vec2<f32> = u_xlat45;
        let x_1357 : vec2<f32> = ((vec2<f32>(x_1354.y, x_1354.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1358 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1358.x, x_1357.x, x_1358.z, x_1357.y);
        let x_1360 : vec2<f32> = u_xlat45;
        let x_1363 : vec2<f32> = ((vec2<f32>(x_1360.y, x_1360.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1364 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1363.x, x_1364.y, x_1363.y, x_1364.w);
        let x_1367 : f32 = u_xlat7.y;
        u_xlat9.y = x_1367;
        let x_1369 : vec4<f32> = u_xlat9;
        let x_1370 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1369 + x_1370);
        let x_1372 : vec4<f32> = u_xlat8;
        let x_1373 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1372 / x_1373);
        let x_1375 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1375 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1381 : vec4<f32> = u_xlat9;
        let x_1382 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1381 / x_1382);
        let x_1384 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1384 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1386 : vec4<f32> = u_xlat8;
        let x_1389 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1386.w, x_1386.x, x_1386.y, x_1386.z) * vec4<f32>(x_1389.x, x_1389.x, x_1389.x, x_1389.x));
        let x_1392 : vec4<f32> = u_xlat9;
        let x_1395 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1392.x, x_1392.w, x_1392.y, x_1392.z) * vec4<f32>(x_1395.y, x_1395.y, x_1395.y, x_1395.y));
        let x_1398 : vec4<f32> = u_xlat8;
        let x_1399 : vec3<f32> = vec3<f32>(x_1398.y, x_1398.z, x_1398.w);
        let x_1400 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1399.x, x_1400.y, x_1399.y, x_1399.z);
        let x_1403 : f32 = u_xlat9.x;
        u_xlat11.y = x_1403;
        let x_1405 : vec4<f32> = u_xlat5;
        let x_1408 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1411 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1405.x, x_1405.y, x_1405.x, x_1405.y) * vec4<f32>(x_1408.x, x_1408.y, x_1408.x, x_1408.y)) + vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1411.y));
        let x_1414 : vec4<f32> = u_xlat5;
        let x_1417 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1420 : vec4<f32> = u_xlat11;
        u_xlat45 = ((vec2<f32>(x_1414.x, x_1414.y) * vec2<f32>(x_1417.x, x_1417.y)) + vec2<f32>(x_1420.w, x_1420.y));
        let x_1424 : f32 = u_xlat11.y;
        u_xlat8.y = x_1424;
        let x_1427 : f32 = u_xlat9.z;
        u_xlat11.y = x_1427;
        let x_1429 : vec4<f32> = u_xlat5;
        let x_1432 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1435 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1429.x, x_1429.y, x_1429.x, x_1429.y) * vec4<f32>(x_1432.x, x_1432.y, x_1432.x, x_1432.y)) + vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1435.y));
        let x_1438 : vec4<f32> = u_xlat5;
        let x_1441 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1444 : vec4<f32> = u_xlat11;
        let x_1446 : vec2<f32> = ((vec2<f32>(x_1438.x, x_1438.y) * vec2<f32>(x_1441.x, x_1441.y)) + vec2<f32>(x_1444.w, x_1444.y));
        let x_1447 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1446.x, x_1446.y, x_1447.z, x_1447.w);
        let x_1450 : f32 = u_xlat11.y;
        u_xlat8.z = x_1450;
        let x_1453 : vec4<f32> = u_xlat5;
        let x_1456 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1459 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1453.x, x_1453.y, x_1453.x, x_1453.y) * vec4<f32>(x_1456.x, x_1456.y, x_1456.x, x_1456.y)) + vec4<f32>(x_1459.x, x_1459.y, x_1459.x, x_1459.z));
        let x_1463 : f32 = u_xlat9.w;
        u_xlat11.y = x_1463;
        let x_1466 : vec4<f32> = u_xlat5;
        let x_1469 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1472 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1466.x, x_1466.y, x_1466.x, x_1466.y) * vec4<f32>(x_1469.x, x_1469.y, x_1469.x, x_1469.y)) + vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1472.y));
        let x_1476 : vec4<f32> = u_xlat5;
        let x_1479 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1482 : vec4<f32> = u_xlat11;
        let x_1484 : vec2<f32> = ((vec2<f32>(x_1476.x, x_1476.y) * vec2<f32>(x_1479.x, x_1479.y)) + vec2<f32>(x_1482.w, x_1482.y));
        let x_1485 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1484.x, x_1484.y, x_1485.z);
        let x_1488 : f32 = u_xlat11.y;
        u_xlat8.w = x_1488;
        let x_1491 : vec4<f32> = u_xlat5;
        let x_1494 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1497 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1491.x, x_1491.y) * vec2<f32>(x_1494.x, x_1494.y)) + vec2<f32>(x_1497.x, x_1497.w));
        let x_1500 : vec4<f32> = u_xlat11;
        let x_1501 : vec3<f32> = vec3<f32>(x_1500.x, x_1500.z, x_1500.w);
        let x_1502 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1501.x, x_1502.y, x_1501.y, x_1501.z);
        let x_1504 : vec4<f32> = u_xlat5;
        let x_1507 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1510 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1504.x, x_1504.y, x_1504.x, x_1504.y) * vec4<f32>(x_1507.x, x_1507.y, x_1507.x, x_1507.y)) + vec4<f32>(x_1510.x, x_1510.y, x_1510.z, x_1510.y));
        let x_1514 : vec4<f32> = u_xlat5;
        let x_1517 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1520 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1514.x, x_1514.y) * vec2<f32>(x_1517.x, x_1517.y)) + vec2<f32>(x_1520.w, x_1520.y));
        let x_1524 : f32 = u_xlat8.x;
        u_xlat9.x = x_1524;
        let x_1526 : vec4<f32> = u_xlat5;
        let x_1529 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1532 : vec4<f32> = u_xlat9;
        let x_1534 : vec2<f32> = ((vec2<f32>(x_1526.x, x_1526.y) * vec2<f32>(x_1529.x, x_1529.y)) + vec2<f32>(x_1532.x, x_1532.y));
        let x_1535 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1534.x, x_1534.y, x_1535.z, x_1535.w);
        let x_1538 : vec4<f32> = u_xlat7;
        let x_1540 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1538.x, x_1538.x, x_1538.x, x_1538.x) * x_1540);
        let x_1543 : vec4<f32> = u_xlat7;
        let x_1545 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1543.y, x_1543.y, x_1543.y, x_1543.y) * x_1545);
        let x_1548 : vec4<f32> = u_xlat7;
        let x_1550 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1548.z, x_1548.z, x_1548.z, x_1548.z) * x_1550);
        let x_1552 : vec4<f32> = u_xlat7;
        let x_1554 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1552.w, x_1552.w, x_1552.w, x_1552.w) * x_1554);
        let x_1557 : vec4<f32> = u_xlat12;
        let x_1558 : vec2<f32> = vec2<f32>(x_1557.x, x_1557.y);
        let x_1560 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec13;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1567.xy, x_1567.z);
        u_xlat66 = x_1569;
        let x_1571 : vec4<f32> = u_xlat12;
        let x_1572 : vec2<f32> = vec2<f32>(x_1571.z, x_1571.w);
        let x_1574 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec14;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1581.xy, x_1581.z);
        u_xlat8.x = x_1583;
        let x_1586 : f32 = u_xlat8.x;
        let x_1588 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1586 * x_1588);
        let x_1592 : f32 = u_xlat17.x;
        let x_1593 : f32 = u_xlat66;
        let x_1596 : f32 = u_xlat8.x;
        u_xlat66 = ((x_1592 * x_1593) + x_1596);
        let x_1599 : vec2<f32> = u_xlat45;
        let x_1601 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec15;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1608.xy, x_1608.z);
        u_xlat45.x = x_1610;
        let x_1613 : f32 = u_xlat17.z;
        let x_1615 : f32 = u_xlat45.x;
        let x_1617 : f32 = u_xlat66;
        u_xlat45.x = ((x_1613 * x_1615) + x_1617);
        let x_1621 : vec4<f32> = u_xlat15;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.x, x_1621.y);
        let x_1624 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1632 : vec3<f32> = txVec16;
        let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1632.xy, x_1632.z);
        u_xlat65 = x_1634;
        let x_1636 : f32 = u_xlat17.w;
        let x_1637 : f32 = u_xlat65;
        let x_1640 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1636 * x_1637) + x_1640);
        let x_1644 : vec4<f32> = u_xlat13;
        let x_1645 : vec2<f32> = vec2<f32>(x_1644.x, x_1644.y);
        let x_1647 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
        let x_1654 : vec3<f32> = txVec17;
        let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1654.xy, x_1654.z);
        u_xlat65 = x_1656;
        let x_1658 : f32 = u_xlat18.x;
        let x_1659 : f32 = u_xlat65;
        let x_1662 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1658 * x_1659) + x_1662);
        let x_1666 : vec4<f32> = u_xlat13;
        let x_1667 : vec2<f32> = vec2<f32>(x_1666.z, x_1666.w);
        let x_1669 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1667.x, x_1667.y, x_1669);
        let x_1676 : vec3<f32> = txVec18;
        let x_1678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1676.xy, x_1676.z);
        u_xlat65 = x_1678;
        let x_1680 : f32 = u_xlat18.y;
        let x_1681 : f32 = u_xlat65;
        let x_1684 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1680 * x_1681) + x_1684);
        let x_1688 : vec4<f32> = u_xlat14;
        let x_1689 : vec2<f32> = vec2<f32>(x_1688.x, x_1688.y);
        let x_1691 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1689.x, x_1689.y, x_1691);
        let x_1698 : vec3<f32> = txVec19;
        let x_1700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1698.xy, x_1698.z);
        u_xlat65 = x_1700;
        let x_1702 : f32 = u_xlat18.z;
        let x_1703 : f32 = u_xlat65;
        let x_1706 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1702 * x_1703) + x_1706);
        let x_1710 : vec4<f32> = u_xlat15;
        let x_1711 : vec2<f32> = vec2<f32>(x_1710.z, x_1710.w);
        let x_1713 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
        let x_1720 : vec3<f32> = txVec20;
        let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1720.xy, x_1720.z);
        u_xlat65 = x_1722;
        let x_1724 : f32 = u_xlat18.w;
        let x_1725 : f32 = u_xlat65;
        let x_1728 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1724 * x_1725) + x_1728);
        let x_1732 : vec4<f32> = u_xlat16;
        let x_1733 : vec2<f32> = vec2<f32>(x_1732.x, x_1732.y);
        let x_1735 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1733.x, x_1733.y, x_1735);
        let x_1742 : vec3<f32> = txVec21;
        let x_1744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1742.xy, x_1742.z);
        u_xlat65 = x_1744;
        let x_1746 : f32 = u_xlat19.x;
        let x_1747 : f32 = u_xlat65;
        let x_1750 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1746 * x_1747) + x_1750);
        let x_1754 : vec4<f32> = u_xlat16;
        let x_1755 : vec2<f32> = vec2<f32>(x_1754.z, x_1754.w);
        let x_1757 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1755.x, x_1755.y, x_1757);
        let x_1764 : vec3<f32> = txVec22;
        let x_1766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1764.xy, x_1764.z);
        u_xlat65 = x_1766;
        let x_1768 : f32 = u_xlat19.y;
        let x_1769 : f32 = u_xlat65;
        let x_1772 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1768 * x_1769) + x_1772);
        let x_1776 : vec3<f32> = u_xlat28;
        let x_1777 : vec2<f32> = vec2<f32>(x_1776.x, x_1776.y);
        let x_1779 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1777.x, x_1777.y, x_1779);
        let x_1786 : vec3<f32> = txVec23;
        let x_1788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1786.xy, x_1786.z);
        u_xlat65 = x_1788;
        let x_1790 : f32 = u_xlat19.z;
        let x_1791 : f32 = u_xlat65;
        let x_1794 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1790 * x_1791) + x_1794);
        let x_1798 : vec2<f32> = u_xlat54;
        let x_1800 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1798.x, x_1798.y, x_1800);
        let x_1807 : vec3<f32> = txVec24;
        let x_1809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1807.xy, x_1807.z);
        u_xlat65 = x_1809;
        let x_1811 : f32 = u_xlat19.w;
        let x_1812 : f32 = u_xlat65;
        let x_1815 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1811 * x_1812) + x_1815);
        let x_1819 : vec4<f32> = u_xlat11;
        let x_1820 : vec2<f32> = vec2<f32>(x_1819.x, x_1819.y);
        let x_1822 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
        let x_1829 : vec3<f32> = txVec25;
        let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1829.xy, x_1829.z);
        u_xlat65 = x_1831;
        let x_1833 : f32 = u_xlat7.x;
        let x_1834 : f32 = u_xlat65;
        let x_1837 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1833 * x_1834) + x_1837);
        let x_1841 : vec4<f32> = u_xlat11;
        let x_1842 : vec2<f32> = vec2<f32>(x_1841.z, x_1841.w);
        let x_1844 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1842.x, x_1842.y, x_1844);
        let x_1851 : vec3<f32> = txVec26;
        let x_1853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1851.xy, x_1851.z);
        u_xlat65 = x_1853;
        let x_1855 : f32 = u_xlat7.y;
        let x_1856 : f32 = u_xlat65;
        let x_1859 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1855 * x_1856) + x_1859);
        let x_1863 : vec2<f32> = u_xlat49;
        let x_1865 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1863.x, x_1863.y, x_1865);
        let x_1872 : vec3<f32> = txVec27;
        let x_1874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1872.xy, x_1872.z);
        u_xlat65 = x_1874;
        let x_1876 : f32 = u_xlat7.z;
        let x_1877 : f32 = u_xlat65;
        let x_1880 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1876 * x_1877) + x_1880);
        let x_1884 : vec4<f32> = u_xlat5;
        let x_1885 : vec2<f32> = vec2<f32>(x_1884.x, x_1884.y);
        let x_1887 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1885.x, x_1885.y, x_1887);
        let x_1894 : vec3<f32> = txVec28;
        let x_1896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1894.xy, x_1894.z);
        u_xlat5.x = x_1896;
        let x_1899 : f32 = u_xlat7.w;
        let x_1901 : f32 = u_xlat5.x;
        let x_1904 : f32 = u_xlat45.x;
        u_xlat63 = ((x_1899 * x_1901) + x_1904);
      }
    }
  } else {
    let x_1908 : vec4<f32> = vs_INTERP8;
    let x_1909 : vec2<f32> = vec2<f32>(x_1908.x, x_1908.y);
    let x_1911 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1909.x, x_1909.y, x_1911);
    let x_1918 : vec3<f32> = txVec29;
    let x_1920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1918.xy, x_1918.z);
    u_xlat63 = x_1920;
  }
  let x_1922 : f32 = x_661.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1922) + 1.0f);
  let x_1926 : f32 = u_xlat63;
  let x_1928 : f32 = x_661.x_MainLightShadowParams.x;
  let x_1931 : f32 = u_xlat5.x;
  u_xlat63 = ((x_1926 * x_1928) + x_1931);
  let x_1934 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_1934);
  let x_1938 : f32 = vs_INTERP8.z;
  u_xlatb25 = (x_1938 >= 1.0f);
  let x_1940 : bool = u_xlatb25;
  let x_1941 : bool = u_xlatb5;
  u_xlatb5 = (x_1940 | x_1941);
  let x_1943 : bool = u_xlatb5;
  let x_1944 : f32 = u_xlat63;
  u_xlat63 = select(x_1944, 1.0f, x_1943);
  let x_1946 : vec3<f32> = vs_INTERP0;
  let x_1948 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1950 : vec3<f32> = (x_1946 + -(x_1948));
  let x_1951 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
  let x_1953 : vec4<f32> = u_xlat5;
  let x_1955 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1953.x, x_1953.y, x_1953.z), vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
  let x_1960 : f32 = u_xlat5.x;
  let x_1962 : f32 = x_661.x_MainLightShadowParams.z;
  let x_1965 : f32 = x_661.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1960 * x_1962) + x_1965);
  let x_1969 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1969, 0.0f, 1.0f);
  let x_1972 : f32 = u_xlat63;
  u_xlat25 = (-(x_1972) + 1.0f);
  let x_1976 : f32 = u_xlat5.x;
  let x_1977 : f32 = u_xlat25;
  let x_1979 : f32 = u_xlat63;
  u_xlat63 = ((x_1976 * x_1977) + x_1979);
  let x_1987 : f32 = x_1985.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_1987 == -1.0f));
  let x_1989 : bool = u_xlatb5;
  if (x_1989) {
    let x_1992 : vec3<f32> = vs_INTERP0;
    let x_1995 : vec4<f32> = x_1985.x_MainLightWorldToLight[1i];
    let x_1997 : vec2<f32> = (vec2<f32>(x_1992.y, x_1992.y) * vec2<f32>(x_1995.x, x_1995.y));
    let x_1998 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1997.x, x_1997.y, x_1998.z, x_1998.w);
    let x_2001 : vec4<f32> = x_1985.x_MainLightWorldToLight[0i];
    let x_2003 : vec3<f32> = vs_INTERP0;
    let x_2006 : vec4<f32> = u_xlat5;
    let x_2008 : vec2<f32> = ((vec2<f32>(x_2001.x, x_2001.y) * vec2<f32>(x_2003.x, x_2003.x)) + vec2<f32>(x_2006.x, x_2006.y));
    let x_2009 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2008.x, x_2008.y, x_2009.z, x_2009.w);
    let x_2012 : vec4<f32> = x_1985.x_MainLightWorldToLight[2i];
    let x_2014 : vec3<f32> = vs_INTERP0;
    let x_2017 : vec4<f32> = u_xlat5;
    let x_2019 : vec2<f32> = ((vec2<f32>(x_2012.x, x_2012.y) * vec2<f32>(x_2014.z, x_2014.z)) + vec2<f32>(x_2017.x, x_2017.y));
    let x_2020 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2019.x, x_2019.y, x_2020.z, x_2020.w);
    let x_2022 : vec4<f32> = u_xlat5;
    let x_2025 : vec4<f32> = x_1985.x_MainLightWorldToLight[3i];
    let x_2027 : vec2<f32> = (vec2<f32>(x_2022.x, x_2022.y) + vec2<f32>(x_2025.x, x_2025.y));
    let x_2028 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2027.x, x_2027.y, x_2028.z, x_2028.w);
    let x_2030 : vec4<f32> = u_xlat5;
    let x_2033 : vec2<f32> = ((vec2<f32>(x_2030.x, x_2030.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2034 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2033.x, x_2033.y, x_2034.z, x_2034.w);
    let x_2041 : vec4<f32> = u_xlat5;
    let x_2044 : f32 = x_44.x_GlobalMipBias.x;
    let x_2045 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2041.x, x_2041.y), x_2044);
    u_xlat5 = x_2045;
    let x_2048 : f32 = x_1985.x_MainLightCookieTextureFormat;
    let x_2050 : f32 = x_1985.x_MainLightCookieTextureFormat;
    let x_2052 : f32 = x_1985.x_MainLightCookieTextureFormat;
    let x_2054 : f32 = x_1985.x_MainLightCookieTextureFormat;
    let x_2055 : vec4<f32> = vec4<f32>(x_2048, x_2050, x_2052, x_2054);
    let x_2063 : vec4<bool> = (vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2055.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2063.x, x_2063.y);
    let x_2066 : bool = u_xlatb7.y;
    if (x_2066) {
      let x_2071 : f32 = u_xlat5.w;
      x_2067 = x_2071;
    } else {
      let x_2074 : f32 = u_xlat5.x;
      x_2067 = x_2074;
    }
    let x_2075 : f32 = x_2067;
    u_xlat65 = x_2075;
    let x_2077 : bool = u_xlatb7.x;
    if (x_2077) {
      let x_2081 : vec4<f32> = u_xlat5;
      x_2078 = vec3<f32>(x_2081.x, x_2081.y, x_2081.z);
    } else {
      let x_2084 : f32 = u_xlat65;
      x_2078 = vec3<f32>(x_2084, x_2084, x_2084);
    }
    let x_2086 : vec3<f32> = x_2078;
    let x_2087 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_2093 : vec4<f32> = u_xlat5;
  let x_2096 : vec4<f32> = x_44.x_MainLightColor;
  let x_2098 : vec3<f32> = (vec3<f32>(x_2093.x, x_2093.y, x_2093.z) * vec3<f32>(x_2096.x, x_2096.y, x_2096.z));
  let x_2099 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2098.x, x_2098.y, x_2098.z, x_2099.w);
  let x_2101 : f32 = u_xlat64;
  let x_2103 : vec4<f32> = u_xlat5;
  let x_2105 : vec3<f32> = (vec3<f32>(x_2101, x_2101, x_2101) * vec3<f32>(x_2103.x, x_2103.y, x_2103.z));
  let x_2106 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2105.x, x_2105.y, x_2105.z, x_2106.w);
  let x_2108 : vec3<f32> = u_xlat4;
  let x_2110 : vec4<f32> = u_xlat1;
  u_xlat65 = dot(-(x_2108), vec3<f32>(x_2110.x, x_2110.y, x_2110.z));
  let x_2113 : f32 = u_xlat65;
  let x_2114 : f32 = u_xlat65;
  u_xlat65 = (x_2113 + x_2114);
  let x_2116 : vec4<f32> = u_xlat1;
  let x_2118 : f32 = u_xlat65;
  let x_2122 : vec3<f32> = u_xlat4;
  let x_2124 : vec3<f32> = ((vec3<f32>(x_2116.x, x_2116.y, x_2116.z) * -(vec3<f32>(x_2118, x_2118, x_2118))) + -(x_2122));
  let x_2125 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
  let x_2127 : vec4<f32> = u_xlat1;
  let x_2129 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(vec3<f32>(x_2127.x, x_2127.y, x_2127.z), x_2129);
  let x_2131 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2131, 0.0f, 1.0f);
  let x_2133 : f32 = u_xlat65;
  u_xlat65 = (-(x_2133) + 1.0f);
  let x_2136 : f32 = u_xlat65;
  let x_2137 : f32 = u_xlat65;
  u_xlat65 = (x_2136 * x_2137);
  let x_2139 : f32 = u_xlat65;
  let x_2140 : f32 = u_xlat65;
  u_xlat65 = (x_2139 * x_2140);
  let x_2142 : f32 = u_xlat60;
  u_xlat66 = ((-(x_2142) * 0.699999988f) + 1.700000048f);
  let x_2148 : f32 = u_xlat60;
  let x_2149 : f32 = u_xlat66;
  u_xlat60 = (x_2148 * x_2149);
  let x_2151 : f32 = u_xlat60;
  u_xlat60 = (x_2151 * 6.0f);
  let x_2161 : vec4<f32> = u_xlat7;
  let x_2163 : f32 = u_xlat60;
  let x_2164 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2161.x, x_2161.y, x_2161.z), x_2163);
  u_xlat7 = x_2164;
  let x_2166 : f32 = u_xlat7.w;
  u_xlat60 = (x_2166 + -1.0f);
  let x_2169 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2170 : f32 = u_xlat60;
  u_xlat60 = ((x_2169 * x_2170) + 1.0f);
  let x_2173 : f32 = u_xlat60;
  u_xlat60 = max(x_2173, 0.0f);
  let x_2175 : f32 = u_xlat60;
  u_xlat60 = log2(x_2175);
  let x_2177 : f32 = u_xlat60;
  let x_2179 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_2177 * x_2179);
  let x_2181 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2181);
  let x_2183 : f32 = u_xlat60;
  let x_2185 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_2183 * x_2185);
  let x_2187 : vec4<f32> = u_xlat7;
  let x_2189 : f32 = u_xlat60;
  let x_2191 : vec3<f32> = (vec3<f32>(x_2187.x, x_2187.y, x_2187.z) * vec3<f32>(x_2189, x_2189, x_2189));
  let x_2192 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2191.x, x_2191.y, x_2191.z, x_2192.w);
  let x_2194 : vec4<f32> = u_xlat2;
  let x_2196 : vec4<f32> = u_xlat2;
  let x_2200 : vec2<f32> = ((vec2<f32>(x_2194.x, x_2194.x) * vec2<f32>(x_2196.x, x_2196.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2201 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2200.x, x_2200.y, x_2201.z, x_2201.w);
  let x_2204 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_2204);
  let x_2206 : vec4<f32> = u_xlat0;
  let x_2209 : f32 = u_xlat61;
  u_xlat28 = (-(vec3<f32>(x_2206.x, x_2206.y, x_2206.z)) + vec3<f32>(x_2209, x_2209, x_2209));
  let x_2212 : f32 = u_xlat65;
  let x_2214 : vec3<f32> = u_xlat28;
  let x_2216 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_2212, x_2212, x_2212) * x_2214) + vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
  let x_2219 : f32 = u_xlat60;
  let x_2221 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2219, x_2219, x_2219) * x_2221);
  let x_2223 : vec4<f32> = u_xlat7;
  let x_2225 : vec3<f32> = u_xlat28;
  let x_2226 : vec3<f32> = (vec3<f32>(x_2223.x, x_2223.y, x_2223.z) * x_2225);
  let x_2227 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2226.x, x_2226.y, x_2226.z, x_2227.w);
  let x_2229 : vec4<f32> = u_xlat3;
  let x_2231 : vec3<f32> = u_xlat6;
  let x_2233 : vec4<f32> = u_xlat7;
  let x_2235 : vec3<f32> = ((vec3<f32>(x_2229.x, x_2229.y, x_2229.z) * x_2231) + vec3<f32>(x_2233.x, x_2233.y, x_2233.z));
  let x_2236 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
  let x_2238 : f32 = u_xlat63;
  let x_2241 : f32 = x_359.unity_LightData.z;
  u_xlat60 = (x_2238 * x_2241);
  let x_2243 : vec4<f32> = u_xlat1;
  let x_2246 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat61 = dot(vec3<f32>(x_2243.x, x_2243.y, x_2243.z), vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
  let x_2249 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2249, 0.0f, 1.0f);
  let x_2251 : f32 = u_xlat60;
  let x_2252 : f32 = u_xlat61;
  u_xlat60 = (x_2251 * x_2252);
  let x_2254 : f32 = u_xlat60;
  let x_2256 : vec4<f32> = u_xlat5;
  let x_2258 : vec3<f32> = (vec3<f32>(x_2254, x_2254, x_2254) * vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
  let x_2259 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
  let x_2261 : vec3<f32> = u_xlat4;
  let x_2263 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2265 : vec3<f32> = (x_2261 + vec3<f32>(x_2263.x, x_2263.y, x_2263.z));
  let x_2266 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
  let x_2268 : vec4<f32> = u_xlat7;
  let x_2270 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2268.x, x_2268.y, x_2268.z), vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
  let x_2273 : f32 = u_xlat60;
  u_xlat60 = max(x_2273, 1.17549435e-37f);
  let x_2276 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2276);
  let x_2278 : f32 = u_xlat60;
  let x_2280 : vec4<f32> = u_xlat7;
  let x_2282 : vec3<f32> = (vec3<f32>(x_2278, x_2278, x_2278) * vec3<f32>(x_2280.x, x_2280.y, x_2280.z));
  let x_2283 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
  let x_2285 : vec4<f32> = u_xlat1;
  let x_2287 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2285.x, x_2285.y, x_2285.z), vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
  let x_2290 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2290, 0.0f, 1.0f);
  let x_2293 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2295 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec3<f32>(x_2293.x, x_2293.y, x_2293.z), vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
  let x_2298 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2298, 0.0f, 1.0f);
  let x_2300 : f32 = u_xlat60;
  let x_2301 : f32 = u_xlat60;
  u_xlat60 = (x_2300 * x_2301);
  let x_2303 : f32 = u_xlat60;
  let x_2305 : f32 = u_xlat8.x;
  u_xlat60 = ((x_2303 * x_2305) + 1.000010014f);
  let x_2309 : f32 = u_xlat61;
  let x_2310 : f32 = u_xlat61;
  u_xlat61 = (x_2309 * x_2310);
  let x_2312 : f32 = u_xlat60;
  let x_2313 : f32 = u_xlat60;
  u_xlat60 = (x_2312 * x_2313);
  let x_2315 : f32 = u_xlat61;
  u_xlat61 = max(x_2315, 0.100000001f);
  let x_2318 : f32 = u_xlat60;
  let x_2319 : f32 = u_xlat61;
  u_xlat60 = (x_2318 * x_2319);
  let x_2321 : f32 = u_xlat62;
  let x_2322 : f32 = u_xlat60;
  u_xlat60 = (x_2321 * x_2322);
  let x_2324 : f32 = u_xlat22;
  let x_2325 : f32 = u_xlat60;
  u_xlat60 = (x_2324 / x_2325);
  let x_2327 : vec4<f32> = u_xlat0;
  let x_2329 : f32 = u_xlat60;
  let x_2332 : vec3<f32> = u_xlat6;
  let x_2333 : vec3<f32> = ((vec3<f32>(x_2327.x, x_2327.y, x_2327.z) * vec3<f32>(x_2329, x_2329, x_2329)) + x_2332);
  let x_2334 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2334.w);
  let x_2336 : vec4<f32> = u_xlat5;
  let x_2338 : vec4<f32> = u_xlat7;
  let x_2340 : vec3<f32> = (vec3<f32>(x_2336.x, x_2336.y, x_2336.z) * vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
  let x_2344 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2346 : f32 = x_359.unity_LightData.y;
  u_xlat60 = min(x_2344, x_2346);
  let x_2350 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2350));
  let x_2354 : f32 = x_1985.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2356 : f32 = x_1985.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2358 : f32 = x_1985.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2360 : f32 = x_1985.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2361 : vec4<f32> = vec4<f32>(x_2354, x_2356, x_2358, x_2360);
  let x_2367 : vec4<bool> = (vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2361.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2367.x, x_2367.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2378 : u32 = u_xlatu_loop_1;
    let x_2379 : u32 = u_xlatu60;
    if ((x_2378 < x_2379)) {
    } else {
      break;
    }
    let x_2382 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_2382 >> 2u);
    let x_2386 : u32 = u_xlatu_loop_1;
    u_xlati63 = bitcast<i32>((x_2386 & 3u));
    let x_2389 : u32 = u_xlatu2;
    let x_2392 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2389)];
    let x_2402 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2407 : vec4<u32> = indexable[x_2402];
    u_xlat2.x = dot(x_2392, bitcast<vec4<f32>>(x_2407));
    let x_2412 : f32 = u_xlat2.x;
    u_xlatu2 = bitcast<u32>(i32(x_2412));
    let x_2415 : vec3<f32> = vs_INTERP0;
    let x_2427 : u32 = u_xlatu2;
    let x_2430 : vec4<f32> = x_2426.x_AdditionalLightsPosition[bitcast<i32>(x_2427)];
    let x_2433 : u32 = u_xlatu2;
    let x_2436 : vec4<f32> = x_2426.x_AdditionalLightsPosition[bitcast<i32>(x_2433)];
    let x_2438 : vec3<f32> = ((-(x_2415) * vec3<f32>(x_2430.w, x_2430.w, x_2430.w)) + vec3<f32>(x_2436.x, x_2436.y, x_2436.z));
    let x_2439 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2438.x, x_2438.y, x_2438.z, x_2439.w);
    let x_2441 : vec4<f32> = u_xlat9;
    let x_2443 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2441.x, x_2441.y, x_2441.z), vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
    let x_2446 : f32 = u_xlat63;
    u_xlat63 = max(x_2446, 6.10351562e-05f);
    let x_2449 : f32 = u_xlat63;
    u_xlat65 = inverseSqrt(x_2449);
    let x_2451 : f32 = u_xlat65;
    let x_2453 : vec4<f32> = u_xlat9;
    let x_2455 : vec3<f32> = (vec3<f32>(x_2451, x_2451, x_2451) * vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
    let x_2456 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
    let x_2458 : f32 = u_xlat63;
    u_xlat66 = (1.0f / x_2458);
    let x_2460 : f32 = u_xlat63;
    let x_2461 : u32 = u_xlatu2;
    let x_2464 : f32 = x_2426.x_AdditionalLightsAttenuation[bitcast<i32>(x_2461)].x;
    u_xlat63 = (x_2460 * x_2464);
    let x_2466 : f32 = u_xlat63;
    let x_2468 : f32 = u_xlat63;
    u_xlat63 = ((-(x_2466) * x_2468) + 1.0f);
    let x_2471 : f32 = u_xlat63;
    u_xlat63 = max(x_2471, 0.0f);
    let x_2473 : f32 = u_xlat63;
    let x_2474 : f32 = u_xlat63;
    u_xlat63 = (x_2473 * x_2474);
    let x_2476 : f32 = u_xlat63;
    let x_2477 : f32 = u_xlat66;
    u_xlat63 = (x_2476 * x_2477);
    let x_2479 : u32 = u_xlatu2;
    let x_2482 : vec4<f32> = x_2426.x_AdditionalLightsSpotDir[bitcast<i32>(x_2479)];
    let x_2484 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2482.x, x_2482.y, x_2482.z), vec3<f32>(x_2484.x, x_2484.y, x_2484.z));
    let x_2487 : f32 = u_xlat66;
    let x_2488 : u32 = u_xlatu2;
    let x_2491 : f32 = x_2426.x_AdditionalLightsAttenuation[bitcast<i32>(x_2488)].z;
    let x_2493 : u32 = u_xlatu2;
    let x_2496 : f32 = x_2426.x_AdditionalLightsAttenuation[bitcast<i32>(x_2493)].w;
    u_xlat66 = ((x_2487 * x_2491) + x_2496);
    let x_2498 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2498, 0.0f, 1.0f);
    let x_2500 : f32 = u_xlat66;
    let x_2501 : f32 = u_xlat66;
    u_xlat66 = (x_2500 * x_2501);
    let x_2503 : f32 = u_xlat63;
    let x_2504 : f32 = u_xlat66;
    u_xlat63 = (x_2503 * x_2504);
    let x_2507 : u32 = u_xlatu2;
    u_xlatu66 = (x_2507 >> 5u);
    let x_2510 : u32 = u_xlatu2;
    u_xlati47 = (1i << bitcast<u32>((bitcast<i32>(x_2510) & 31i)));
    let x_2516 : i32 = u_xlati47;
    let x_2518 : u32 = u_xlatu66;
    let x_2521 : f32 = x_1985.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2518)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2516) & bitcast<u32>(x_2521)));
    let x_2525 : i32 = u_xlati66;
    if ((x_2525 != 0i)) {
      let x_2535 : u32 = u_xlatu2;
      let x_2538 : f32 = x_2534.x_AdditionalLightsLightTypes[bitcast<i32>(x_2535)].el;
      u_xlati66 = i32(x_2538);
      let x_2540 : i32 = u_xlati66;
      u_xlati47 = select(1i, 0i, (x_2540 != 0i));
      let x_2544 : u32 = u_xlatu2;
      u_xlati67 = (bitcast<i32>(x_2544) << bitcast<u32>(2i));
      let x_2547 : i32 = u_xlati47;
      if ((x_2547 != 0i)) {
        let x_2551 : vec3<f32> = vs_INTERP0;
        let x_2553 : i32 = u_xlati67;
        let x_2556 : i32 = u_xlati67;
        let x_2560 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[((x_2553 + 1i) / 4i)][((x_2556 + 1i) % 4i)];
        let x_2562 : vec3<f32> = (vec3<f32>(x_2551.y, x_2551.y, x_2551.y) * vec3<f32>(x_2560.x, x_2560.y, x_2560.w));
        let x_2563 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
        let x_2565 : i32 = u_xlati67;
        let x_2567 : i32 = u_xlati67;
        let x_2570 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[(x_2565 / 4i)][(x_2567 % 4i)];
        let x_2572 : vec3<f32> = vs_INTERP0;
        let x_2575 : vec4<f32> = u_xlat11;
        let x_2577 : vec3<f32> = ((vec3<f32>(x_2570.x, x_2570.y, x_2570.w) * vec3<f32>(x_2572.x, x_2572.x, x_2572.x)) + vec3<f32>(x_2575.x, x_2575.y, x_2575.z));
        let x_2578 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2577.x, x_2577.y, x_2577.z, x_2578.w);
        let x_2580 : i32 = u_xlati67;
        let x_2583 : i32 = u_xlati67;
        let x_2587 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[((x_2580 + 2i) / 4i)][((x_2583 + 2i) % 4i)];
        let x_2589 : vec3<f32> = vs_INTERP0;
        let x_2592 : vec4<f32> = u_xlat11;
        let x_2594 : vec3<f32> = ((vec3<f32>(x_2587.x, x_2587.y, x_2587.w) * vec3<f32>(x_2589.z, x_2589.z, x_2589.z)) + vec3<f32>(x_2592.x, x_2592.y, x_2592.z));
        let x_2595 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2594.x, x_2594.y, x_2594.z, x_2595.w);
        let x_2597 : vec4<f32> = u_xlat11;
        let x_2599 : i32 = u_xlati67;
        let x_2602 : i32 = u_xlati67;
        let x_2606 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[((x_2599 + 3i) / 4i)][((x_2602 + 3i) % 4i)];
        let x_2608 : vec3<f32> = (vec3<f32>(x_2597.x, x_2597.y, x_2597.z) + vec3<f32>(x_2606.x, x_2606.y, x_2606.w));
        let x_2609 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2608.x, x_2608.y, x_2608.z, x_2609.w);
        let x_2611 : vec4<f32> = u_xlat11;
        let x_2613 : vec4<f32> = u_xlat11;
        let x_2615 : vec2<f32> = (vec2<f32>(x_2611.x, x_2611.y) / vec2<f32>(x_2613.z, x_2613.z));
        let x_2616 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2615.x, x_2615.y, x_2616.z, x_2616.w);
        let x_2618 : vec4<f32> = u_xlat11;
        let x_2621 : vec2<f32> = ((vec2<f32>(x_2618.x, x_2618.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2622 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2621.x, x_2621.y, x_2622.z, x_2622.w);
        let x_2624 : vec4<f32> = u_xlat11;
        let x_2628 : vec2<f32> = clamp(vec2<f32>(x_2624.x, x_2624.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2629 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2628.x, x_2628.y, x_2629.z, x_2629.w);
        let x_2631 : u32 = u_xlatu2;
        let x_2634 : vec4<f32> = x_2534.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2631)];
        let x_2636 : vec4<f32> = u_xlat11;
        let x_2639 : u32 = u_xlatu2;
        let x_2642 : vec4<f32> = x_2534.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2639)];
        let x_2644 : vec2<f32> = ((vec2<f32>(x_2634.x, x_2634.y) * vec2<f32>(x_2636.x, x_2636.y)) + vec2<f32>(x_2642.z, x_2642.w));
        let x_2645 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2644.x, x_2644.y, x_2645.z, x_2645.w);
      } else {
        let x_2649 : i32 = u_xlati66;
        u_xlatb66 = (x_2649 == 1i);
        let x_2651 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2651);
        let x_2653 : i32 = u_xlati66;
        if ((x_2653 != 0i)) {
          let x_2658 : vec3<f32> = vs_INTERP0;
          let x_2660 : i32 = u_xlati67;
          let x_2663 : i32 = u_xlati67;
          let x_2667 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[((x_2660 + 1i) / 4i)][((x_2663 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2658.y, x_2658.y) * vec2<f32>(x_2667.x, x_2667.y));
          let x_2670 : i32 = u_xlati67;
          let x_2672 : i32 = u_xlati67;
          let x_2675 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[(x_2670 / 4i)][(x_2672 % 4i)];
          let x_2677 : vec3<f32> = vs_INTERP0;
          let x_2680 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2675.x, x_2675.y) * vec2<f32>(x_2677.x, x_2677.x)) + x_2680);
          let x_2682 : i32 = u_xlati67;
          let x_2685 : i32 = u_xlati67;
          let x_2689 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[((x_2682 + 2i) / 4i)][((x_2685 + 2i) % 4i)];
          let x_2691 : vec3<f32> = vs_INTERP0;
          let x_2694 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2689.x, x_2689.y) * vec2<f32>(x_2691.z, x_2691.z)) + x_2694);
          let x_2696 : vec2<f32> = u_xlat51;
          let x_2697 : i32 = u_xlati67;
          let x_2700 : i32 = u_xlati67;
          let x_2704 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[((x_2697 + 3i) / 4i)][((x_2700 + 3i) % 4i)];
          u_xlat51 = (x_2696 + vec2<f32>(x_2704.x, x_2704.y));
          let x_2707 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2707 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2710 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2710);
          let x_2712 : u32 = u_xlatu2;
          let x_2715 : vec4<f32> = x_2534.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2712)];
          let x_2717 : vec2<f32> = u_xlat51;
          let x_2719 : u32 = u_xlatu2;
          let x_2722 : vec4<f32> = x_2534.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2719)];
          let x_2724 : vec2<f32> = ((vec2<f32>(x_2715.x, x_2715.y) * x_2717) + vec2<f32>(x_2722.z, x_2722.w));
          let x_2725 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2724.x, x_2724.y, x_2725.z, x_2725.w);
        } else {
          let x_2728 : vec3<f32> = vs_INTERP0;
          let x_2730 : i32 = u_xlati67;
          let x_2733 : i32 = u_xlati67;
          let x_2737 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[((x_2730 + 1i) / 4i)][((x_2733 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2728.y, x_2728.y, x_2728.y, x_2728.y) * x_2737);
          let x_2739 : i32 = u_xlati67;
          let x_2741 : i32 = u_xlati67;
          let x_2744 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[(x_2739 / 4i)][(x_2741 % 4i)];
          let x_2745 : vec3<f32> = vs_INTERP0;
          let x_2748 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2744 * vec4<f32>(x_2745.x, x_2745.x, x_2745.x, x_2745.x)) + x_2748);
          let x_2750 : i32 = u_xlati67;
          let x_2753 : i32 = u_xlati67;
          let x_2757 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[((x_2750 + 2i) / 4i)][((x_2753 + 2i) % 4i)];
          let x_2758 : vec3<f32> = vs_INTERP0;
          let x_2761 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2757 * vec4<f32>(x_2758.z, x_2758.z, x_2758.z, x_2758.z)) + x_2761);
          let x_2763 : vec4<f32> = u_xlat12;
          let x_2764 : i32 = u_xlati67;
          let x_2767 : i32 = u_xlati67;
          let x_2771 : vec4<f32> = x_2534.x_AdditionalLightsWorldToLights[((x_2764 + 3i) / 4i)][((x_2767 + 3i) % 4i)];
          u_xlat12 = (x_2763 + x_2771);
          let x_2773 : vec4<f32> = u_xlat12;
          let x_2775 : vec4<f32> = u_xlat12;
          let x_2777 : vec3<f32> = (vec3<f32>(x_2773.x, x_2773.y, x_2773.z) / vec3<f32>(x_2775.w, x_2775.w, x_2775.w));
          let x_2778 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2777.x, x_2777.y, x_2777.z, x_2778.w);
          let x_2780 : vec4<f32> = u_xlat12;
          let x_2782 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(vec3<f32>(x_2780.x, x_2780.y, x_2780.z), vec3<f32>(x_2782.x, x_2782.y, x_2782.z));
          let x_2785 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2785);
          let x_2787 : f32 = u_xlat66;
          let x_2789 : vec4<f32> = u_xlat12;
          let x_2791 : vec3<f32> = (vec3<f32>(x_2787, x_2787, x_2787) * vec3<f32>(x_2789.x, x_2789.y, x_2789.z));
          let x_2792 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2792.w);
          let x_2794 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(abs(vec3<f32>(x_2794.x, x_2794.y, x_2794.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2798 : f32 = u_xlat66;
          u_xlat66 = max(x_2798, 0.000001f);
          let x_2801 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2801);
          let x_2803 : f32 = u_xlat66;
          let x_2805 : vec4<f32> = u_xlat12;
          let x_2807 : vec3<f32> = (vec3<f32>(x_2803, x_2803, x_2803) * vec3<f32>(x_2805.z, x_2805.x, x_2805.y));
          let x_2808 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2807.x, x_2807.y, x_2807.z, x_2808.w);
          let x_2811 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2811);
          let x_2815 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2815, 0.0f, 1.0f);
          let x_2819 : vec4<f32> = u_xlat13;
          let x_2822 : vec4<bool> = (vec4<f32>(x_2819.y, x_2819.z, x_2819.y, x_2819.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2822.x, x_2822.y);
          let x_2826 : bool = u_xlatb47.x;
          if (x_2826) {
            let x_2831 : f32 = u_xlat13.x;
            x_2827 = x_2831;
          } else {
            let x_2834 : f32 = u_xlat13.x;
            x_2827 = -(x_2834);
          }
          let x_2836 : f32 = x_2827;
          u_xlat47.x = x_2836;
          let x_2839 : bool = u_xlatb47.y;
          if (x_2839) {
            let x_2844 : f32 = u_xlat13.x;
            x_2840 = x_2844;
          } else {
            let x_2847 : f32 = u_xlat13.x;
            x_2840 = -(x_2847);
          }
          let x_2849 : f32 = x_2840;
          u_xlat47.y = x_2849;
          let x_2851 : vec4<f32> = u_xlat12;
          let x_2853 : f32 = u_xlat66;
          let x_2856 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2851.x, x_2851.y) * vec2<f32>(x_2853, x_2853)) + x_2856);
          let x_2858 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2858 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2861 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2861, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2865 : u32 = u_xlatu2;
          let x_2868 : vec4<f32> = x_2534.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2865)];
          let x_2870 : vec2<f32> = u_xlat47;
          let x_2872 : u32 = u_xlatu2;
          let x_2875 : vec4<f32> = x_2534.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2872)];
          let x_2877 : vec2<f32> = ((vec2<f32>(x_2868.x, x_2868.y) * x_2870) + vec2<f32>(x_2875.z, x_2875.w));
          let x_2878 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2877.x, x_2877.y, x_2878.z, x_2878.w);
        }
      }
      let x_2885 : vec4<f32> = u_xlat11;
      let x_2888 : f32 = x_44.x_GlobalMipBias.x;
      let x_2889 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2885.x, x_2885.y), x_2888);
      u_xlat11 = x_2889;
      let x_2891 : bool = u_xlatb7.y;
      if (x_2891) {
        let x_2896 : f32 = u_xlat11.w;
        x_2892 = x_2896;
      } else {
        let x_2899 : f32 = u_xlat11.x;
        x_2892 = x_2899;
      }
      let x_2900 : f32 = x_2892;
      u_xlat66 = x_2900;
      let x_2902 : bool = u_xlatb7.x;
      if (x_2902) {
        let x_2906 : vec4<f32> = u_xlat11;
        x_2903 = vec3<f32>(x_2906.x, x_2906.y, x_2906.z);
      } else {
        let x_2909 : f32 = u_xlat66;
        x_2903 = vec3<f32>(x_2909, x_2909, x_2909);
      }
      let x_2911 : vec3<f32> = x_2903;
      let x_2912 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2911.x, x_2911.y, x_2911.z, x_2912.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2918 : vec4<f32> = u_xlat11;
    let x_2920 : u32 = u_xlatu2;
    let x_2923 : vec4<f32> = x_2426.x_AdditionalLightsColor[bitcast<i32>(x_2920)];
    let x_2925 : vec3<f32> = (vec3<f32>(x_2918.x, x_2918.y, x_2918.z) * vec3<f32>(x_2923.x, x_2923.y, x_2923.z));
    let x_2926 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2925.x, x_2925.y, x_2925.z, x_2926.w);
    let x_2928 : f32 = u_xlat64;
    let x_2930 : vec4<f32> = u_xlat11;
    let x_2932 : vec3<f32> = (vec3<f32>(x_2928, x_2928, x_2928) * vec3<f32>(x_2930.x, x_2930.y, x_2930.z));
    let x_2933 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2932.x, x_2932.y, x_2932.z, x_2933.w);
    let x_2935 : vec4<f32> = u_xlat1;
    let x_2937 : vec4<f32> = u_xlat10;
    u_xlat2.x = dot(vec3<f32>(x_2935.x, x_2935.y, x_2935.z), vec3<f32>(x_2937.x, x_2937.y, x_2937.z));
    let x_2942 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2942, 0.0f, 1.0f);
    let x_2946 : f32 = u_xlat2.x;
    let x_2947 : f32 = u_xlat63;
    u_xlat2.x = (x_2946 * x_2947);
    let x_2950 : vec4<f32> = u_xlat2;
    let x_2952 : vec4<f32> = u_xlat11;
    let x_2954 : vec3<f32> = (vec3<f32>(x_2950.x, x_2950.x, x_2950.x) * vec3<f32>(x_2952.x, x_2952.y, x_2952.z));
    let x_2955 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2954.x, x_2954.y, x_2954.z, x_2955.w);
    let x_2957 : vec4<f32> = u_xlat9;
    let x_2959 : f32 = u_xlat65;
    let x_2962 : vec3<f32> = u_xlat4;
    let x_2963 : vec3<f32> = ((vec3<f32>(x_2957.x, x_2957.y, x_2957.z) * vec3<f32>(x_2959, x_2959, x_2959)) + x_2962);
    let x_2964 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2963.x, x_2963.y, x_2963.z, x_2964.w);
    let x_2966 : vec4<f32> = u_xlat9;
    let x_2968 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_2966.x, x_2966.y, x_2966.z), vec3<f32>(x_2968.x, x_2968.y, x_2968.z));
    let x_2973 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_2973, 1.17549435e-37f);
    let x_2977 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_2977);
    let x_2980 : vec4<f32> = u_xlat2;
    let x_2982 : vec4<f32> = u_xlat9;
    let x_2984 : vec3<f32> = (vec3<f32>(x_2980.x, x_2980.x, x_2980.x) * vec3<f32>(x_2982.x, x_2982.y, x_2982.z));
    let x_2985 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2984.x, x_2984.y, x_2984.z, x_2985.w);
    let x_2987 : vec4<f32> = u_xlat1;
    let x_2989 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_2987.x, x_2987.y, x_2987.z), vec3<f32>(x_2989.x, x_2989.y, x_2989.z));
    let x_2994 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2994, 0.0f, 1.0f);
    let x_2997 : vec4<f32> = u_xlat10;
    let x_2999 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2997.x, x_2997.y, x_2997.z), vec3<f32>(x_2999.x, x_2999.y, x_2999.z));
    let x_3002 : f32 = u_xlat63;
    u_xlat63 = clamp(x_3002, 0.0f, 1.0f);
    let x_3005 : f32 = u_xlat2.x;
    let x_3007 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3005 * x_3007);
    let x_3011 : f32 = u_xlat2.x;
    let x_3013 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_3011 * x_3013) + 1.000010014f);
    let x_3017 : f32 = u_xlat63;
    let x_3018 : f32 = u_xlat63;
    u_xlat63 = (x_3017 * x_3018);
    let x_3021 : f32 = u_xlat2.x;
    let x_3023 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3021 * x_3023);
    let x_3026 : f32 = u_xlat63;
    u_xlat63 = max(x_3026, 0.100000001f);
    let x_3029 : f32 = u_xlat2.x;
    let x_3030 : f32 = u_xlat63;
    u_xlat2.x = (x_3029 * x_3030);
    let x_3033 : f32 = u_xlat62;
    let x_3035 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3033 * x_3035);
    let x_3038 : f32 = u_xlat22;
    let x_3040 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3038 / x_3040);
    let x_3043 : vec4<f32> = u_xlat0;
    let x_3045 : vec4<f32> = u_xlat2;
    let x_3048 : vec3<f32> = u_xlat6;
    let x_3049 : vec3<f32> = ((vec3<f32>(x_3043.x, x_3043.y, x_3043.z) * vec3<f32>(x_3045.x, x_3045.x, x_3045.x)) + x_3048);
    let x_3050 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3049.x, x_3049.y, x_3049.z, x_3050.w);
    let x_3052 : vec4<f32> = u_xlat9;
    let x_3054 : vec4<f32> = u_xlat11;
    let x_3057 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_3052.x, x_3052.y, x_3052.z) * vec3<f32>(x_3054.x, x_3054.y, x_3054.z)) + x_3057);

    continuing {
      let x_3059 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3059 + bitcast<u32>(1i));
    }
  }
  let x_3061 : vec4<f32> = u_xlat3;
  let x_3063 : f32 = u_xlat42;
  let x_3066 : vec4<f32> = u_xlat5;
  let x_3068 : vec3<f32> = ((vec3<f32>(x_3061.x, x_3061.y, x_3061.z) * vec3<f32>(x_3063, x_3063, x_3063)) + vec3<f32>(x_3066.x, x_3066.y, x_3066.z));
  let x_3069 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3068.x, x_3068.y, x_3068.z, x_3069.w);
  let x_3073 : vec3<f32> = u_xlat28;
  let x_3074 : vec4<f32> = u_xlat0;
  let x_3076 : vec3<f32> = (x_3073 + vec3<f32>(x_3074.x, x_3074.y, x_3074.z));
  let x_3077 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3076.x, x_3076.y, x_3076.z, x_3077.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

