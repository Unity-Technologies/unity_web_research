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

@group(1) @binding(4) var<uniform> x_1987 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2428 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2536 : AdditionalLightsCookies;

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
  var x_2069 : f32;
  var x_2080 : vec3<f32>;
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
  var x_2829 : f32;
  var x_2842 : f32;
  var x_2894 : f32;
  var x_2905 : vec3<f32>;
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
      let x_679 : vec4<f32> = x_661.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y) + x_679);
      let x_682 : vec4<f32> = u_xlat5;
      let x_683 : vec2<f32> = vec2<f32>(x_682.x, x_682.y);
      let x_685 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_683.x, x_683.y, x_685);
      let x_698 : vec3<f32> = txVec0;
      let x_700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_698.xy, x_698.z);
      u_xlat7.x = x_700;
      let x_703 : vec4<f32> = u_xlat5;
      let x_704 : vec2<f32> = vec2<f32>(x_703.z, x_703.w);
      let x_706 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_704.x, x_704.y, x_706);
      let x_713 : vec3<f32> = txVec1;
      let x_715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_713.xy, x_713.z);
      u_xlat7.y = x_715;
      let x_717 : vec4<f32> = vs_INTERP8;
      let x_721 : vec4<f32> = x_661.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_717.x, x_717.y, x_717.x, x_717.y) + x_721);
      let x_724 : vec4<f32> = u_xlat5;
      let x_725 : vec2<f32> = vec2<f32>(x_724.x, x_724.y);
      let x_727 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_725.x, x_725.y, x_727);
      let x_734 : vec3<f32> = txVec2;
      let x_736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_734.xy, x_734.z);
      u_xlat7.z = x_736;
      let x_739 : vec4<f32> = u_xlat5;
      let x_740 : vec2<f32> = vec2<f32>(x_739.z, x_739.w);
      let x_742 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_740.x, x_740.y, x_742);
      let x_749 : vec3<f32> = txVec3;
      let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_749.xy, x_749.z);
      u_xlat7.w = x_751;
      let x_753 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_753, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_760 : f32 = x_661.x_MainLightShadowParams.y;
      u_xlatb5 = (x_760 == 2.0f);
      let x_762 : bool = u_xlatb5;
      if (x_762) {
        let x_765 : vec4<f32> = vs_INTERP8;
        let x_768 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_773 : vec2<f32> = ((vec2<f32>(x_765.x, x_765.y) * vec2<f32>(x_768.z, x_768.w)) + vec2<f32>(0.5f, 0.5f));
        let x_774 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_773.x, x_773.y, x_774.z, x_774.w);
        let x_776 : vec4<f32> = u_xlat5;
        let x_778 : vec2<f32> = floor(vec2<f32>(x_776.x, x_776.y));
        let x_779 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
        let x_782 : vec4<f32> = vs_INTERP8;
        let x_785 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_788 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_785.z, x_785.w)) + -(vec2<f32>(x_788.x, x_788.y)));
        let x_792 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_792.x, x_792.x, x_792.y, x_792.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_797 : vec4<f32> = u_xlat7;
        let x_799 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_797.x, x_797.x, x_797.z, x_797.z) * vec4<f32>(x_799.x, x_799.x, x_799.z, x_799.z));
        let x_802 : vec4<f32> = u_xlat8;
        let x_806 : vec2<f32> = (vec2<f32>(x_802.y, x_802.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_807 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_806.x, x_807.y, x_806.y, x_807.w);
        let x_809 : vec4<f32> = u_xlat8;
        let x_812 : vec2<f32> = u_xlat45;
        let x_814 : vec2<f32> = ((vec2<f32>(x_809.x, x_809.z) * vec2<f32>(0.5f, 0.5f)) + -(x_812));
        let x_815 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_814.x, x_814.y, x_815.z, x_815.w);
        let x_818 : vec2<f32> = u_xlat45;
        u_xlat48 = (-(x_818) + vec2<f32>(1.0f, 1.0f));
        let x_822 : vec2<f32> = u_xlat45;
        let x_824 : vec2<f32> = min(x_822, vec2<f32>(0.0f, 0.0f));
        let x_825 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_827 : vec4<f32> = u_xlat9;
        let x_830 : vec4<f32> = u_xlat9;
        let x_833 : vec2<f32> = u_xlat48;
        let x_834 : vec2<f32> = ((-(vec2<f32>(x_827.x, x_827.y)) * vec2<f32>(x_830.x, x_830.y)) + x_833);
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_834.x, x_834.y, x_835.z, x_835.w);
        let x_837 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_837, vec2<f32>(0.0f, 0.0f));
        let x_839 : vec2<f32> = u_xlat45;
        let x_841 : vec2<f32> = u_xlat45;
        let x_843 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_839) * x_841) + vec2<f32>(x_843.y, x_843.w));
        let x_846 : vec4<f32> = u_xlat9;
        let x_848 : vec2<f32> = (vec2<f32>(x_846.x, x_846.y) + vec2<f32>(1.0f, 1.0f));
        let x_849 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
        let x_851 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_851 + vec2<f32>(1.0f, 1.0f));
        let x_854 : vec4<f32> = u_xlat8;
        let x_858 : vec2<f32> = (vec2<f32>(x_854.x, x_854.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_859 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_858.x, x_858.y, x_859.z, x_859.w);
        let x_861 : vec2<f32> = u_xlat48;
        let x_862 : vec2<f32> = (x_861 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_863 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat9;
        let x_867 : vec2<f32> = (vec2<f32>(x_865.x, x_865.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_868 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_867.x, x_867.y, x_868.z, x_868.w);
        let x_871 : vec2<f32> = u_xlat45;
        let x_872 : vec2<f32> = (x_871 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_873 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
        let x_875 : vec4<f32> = u_xlat7;
        u_xlat45 = (vec2<f32>(x_875.y, x_875.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_879 : f32 = u_xlat9.x;
        u_xlat10.z = x_879;
        let x_882 : f32 = u_xlat45.x;
        u_xlat10.w = x_882;
        let x_885 : f32 = u_xlat11.x;
        u_xlat8.z = x_885;
        let x_888 : f32 = u_xlat7.x;
        u_xlat8.w = x_888;
        let x_891 : vec4<f32> = u_xlat8;
        let x_893 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_891.z, x_891.w, x_891.x, x_891.z) + vec4<f32>(x_893.z, x_893.w, x_893.x, x_893.z));
        let x_897 : f32 = u_xlat10.y;
        u_xlat9.z = x_897;
        let x_900 : f32 = u_xlat45.y;
        u_xlat9.w = x_900;
        let x_903 : f32 = u_xlat8.y;
        u_xlat11.z = x_903;
        let x_906 : f32 = u_xlat7.z;
        u_xlat11.w = x_906;
        let x_908 : vec4<f32> = u_xlat9;
        let x_910 : vec4<f32> = u_xlat11;
        let x_912 : vec3<f32> = (vec3<f32>(x_908.z, x_908.y, x_908.w) + vec3<f32>(x_910.z, x_910.y, x_910.w));
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
        let x_915 : vec4<f32> = u_xlat8;
        let x_917 : vec4<f32> = u_xlat12;
        let x_919 : vec3<f32> = (vec3<f32>(x_915.x, x_915.z, x_915.w) / vec3<f32>(x_917.z, x_917.w, x_917.y));
        let x_920 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
        let x_922 : vec4<f32> = u_xlat8;
        let x_928 : vec3<f32> = (vec3<f32>(x_922.x, x_922.y, x_922.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_929 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
        let x_931 : vec4<f32> = u_xlat11;
        let x_933 : vec4<f32> = u_xlat7;
        let x_935 : vec3<f32> = (vec3<f32>(x_931.z, x_931.y, x_931.w) / vec3<f32>(x_933.x, x_933.y, x_933.z));
        let x_936 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat9;
        let x_940 : vec3<f32> = (vec3<f32>(x_938.x, x_938.y, x_938.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_941 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat8;
        let x_946 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_948 : vec3<f32> = (vec3<f32>(x_943.y, x_943.x, x_943.z) * vec3<f32>(x_946.x, x_946.x, x_946.x));
        let x_949 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
        let x_951 : vec4<f32> = u_xlat9;
        let x_954 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_956 : vec3<f32> = (vec3<f32>(x_951.x, x_951.y, x_951.z) * vec3<f32>(x_954.y, x_954.y, x_954.y));
        let x_957 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
        let x_960 : f32 = u_xlat9.x;
        u_xlat8.w = x_960;
        let x_962 : vec4<f32> = u_xlat5;
        let x_965 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_962.x, x_962.y, x_962.x, x_962.y) * vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.y)) + vec4<f32>(x_968.y, x_968.w, x_968.x, x_968.w));
        let x_971 : vec4<f32> = u_xlat5;
        let x_974 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_977 : vec4<f32> = u_xlat8;
        u_xlat45 = ((vec2<f32>(x_971.x, x_971.y) * vec2<f32>(x_974.x, x_974.y)) + vec2<f32>(x_977.z, x_977.w));
        let x_981 : f32 = u_xlat8.y;
        u_xlat9.w = x_981;
        let x_983 : vec4<f32> = u_xlat9;
        let x_984 : vec2<f32> = vec2<f32>(x_983.y, x_983.z);
        let x_985 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_985.x, x_984.x, x_985.z, x_984.y);
        let x_987 : vec4<f32> = u_xlat5;
        let x_990 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_993 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_987.x, x_987.y, x_987.x, x_987.y) * vec4<f32>(x_990.x, x_990.y, x_990.x, x_990.y)) + vec4<f32>(x_993.x, x_993.y, x_993.z, x_993.y));
        let x_996 : vec4<f32> = u_xlat5;
        let x_999 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1002 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_996.x, x_996.y, x_996.x, x_996.y) * vec4<f32>(x_999.x, x_999.y, x_999.x, x_999.y)) + vec4<f32>(x_1002.w, x_1002.y, x_1002.w, x_1002.z));
        let x_1005 : vec4<f32> = u_xlat5;
        let x_1008 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1011 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1005.x, x_1005.y, x_1005.x, x_1005.y) * vec4<f32>(x_1008.x, x_1008.y, x_1008.x, x_1008.y)) + vec4<f32>(x_1011.x, x_1011.w, x_1011.z, x_1011.w));
        let x_1015 : vec4<f32> = u_xlat7;
        let x_1017 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1015.x, x_1015.x, x_1015.x, x_1015.y) * vec4<f32>(x_1017.z, x_1017.w, x_1017.y, x_1017.z));
        let x_1021 : vec4<f32> = u_xlat7;
        let x_1023 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1021.y, x_1021.y, x_1021.z, x_1021.z) * x_1023);
        let x_1026 : f32 = u_xlat7.z;
        let x_1028 : f32 = u_xlat12.y;
        u_xlat5.x = (x_1026 * x_1028);
        let x_1032 : vec4<f32> = u_xlat10;
        let x_1033 : vec2<f32> = vec2<f32>(x_1032.x, x_1032.y);
        let x_1035 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1033.x, x_1033.y, x_1035);
        let x_1043 : vec3<f32> = txVec4;
        let x_1045 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1043.xy, x_1043.z);
        u_xlat25 = x_1045;
        let x_1047 : vec4<f32> = u_xlat10;
        let x_1048 : vec2<f32> = vec2<f32>(x_1047.z, x_1047.w);
        let x_1050 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
        let x_1058 : vec3<f32> = txVec5;
        let x_1060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1058.xy, x_1058.z);
        u_xlat66 = x_1060;
        let x_1061 : f32 = u_xlat66;
        let x_1063 : f32 = u_xlat13.y;
        u_xlat66 = (x_1061 * x_1063);
        let x_1066 : f32 = u_xlat13.x;
        let x_1067 : f32 = u_xlat25;
        let x_1069 : f32 = u_xlat66;
        u_xlat25 = ((x_1066 * x_1067) + x_1069);
        let x_1072 : vec2<f32> = u_xlat45;
        let x_1074 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1072.x, x_1072.y, x_1074);
        let x_1081 : vec3<f32> = txVec6;
        let x_1083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1081.xy, x_1081.z);
        u_xlat45.x = x_1083;
        let x_1086 : f32 = u_xlat13.z;
        let x_1088 : f32 = u_xlat45.x;
        let x_1090 : f32 = u_xlat25;
        u_xlat25 = ((x_1086 * x_1088) + x_1090);
        let x_1093 : vec4<f32> = u_xlat9;
        let x_1094 : vec2<f32> = vec2<f32>(x_1093.x, x_1093.y);
        let x_1096 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1094.x, x_1094.y, x_1096);
        let x_1103 : vec3<f32> = txVec7;
        let x_1105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1103.xy, x_1103.z);
        u_xlat45.x = x_1105;
        let x_1108 : f32 = u_xlat13.w;
        let x_1110 : f32 = u_xlat45.x;
        let x_1112 : f32 = u_xlat25;
        u_xlat25 = ((x_1108 * x_1110) + x_1112);
        let x_1115 : vec4<f32> = u_xlat11;
        let x_1116 : vec2<f32> = vec2<f32>(x_1115.x, x_1115.y);
        let x_1118 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1116.x, x_1116.y, x_1118);
        let x_1125 : vec3<f32> = txVec8;
        let x_1127 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1125.xy, x_1125.z);
        u_xlat45.x = x_1127;
        let x_1130 : f32 = u_xlat14.x;
        let x_1132 : f32 = u_xlat45.x;
        let x_1134 : f32 = u_xlat25;
        u_xlat25 = ((x_1130 * x_1132) + x_1134);
        let x_1137 : vec4<f32> = u_xlat11;
        let x_1138 : vec2<f32> = vec2<f32>(x_1137.z, x_1137.w);
        let x_1140 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1138.x, x_1138.y, x_1140);
        let x_1147 : vec3<f32> = txVec9;
        let x_1149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1147.xy, x_1147.z);
        u_xlat45.x = x_1149;
        let x_1152 : f32 = u_xlat14.y;
        let x_1154 : f32 = u_xlat45.x;
        let x_1156 : f32 = u_xlat25;
        u_xlat25 = ((x_1152 * x_1154) + x_1156);
        let x_1159 : vec4<f32> = u_xlat9;
        let x_1160 : vec2<f32> = vec2<f32>(x_1159.z, x_1159.w);
        let x_1162 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1160.x, x_1160.y, x_1162);
        let x_1169 : vec3<f32> = txVec10;
        let x_1171 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1169.xy, x_1169.z);
        u_xlat45.x = x_1171;
        let x_1174 : f32 = u_xlat14.z;
        let x_1176 : f32 = u_xlat45.x;
        let x_1178 : f32 = u_xlat25;
        u_xlat25 = ((x_1174 * x_1176) + x_1178);
        let x_1181 : vec4<f32> = u_xlat8;
        let x_1182 : vec2<f32> = vec2<f32>(x_1181.x, x_1181.y);
        let x_1184 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1182.x, x_1182.y, x_1184);
        let x_1191 : vec3<f32> = txVec11;
        let x_1193 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1191.xy, x_1191.z);
        u_xlat45.x = x_1193;
        let x_1196 : f32 = u_xlat14.w;
        let x_1198 : f32 = u_xlat45.x;
        let x_1200 : f32 = u_xlat25;
        u_xlat25 = ((x_1196 * x_1198) + x_1200);
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1204 : vec2<f32> = vec2<f32>(x_1203.z, x_1203.w);
        let x_1206 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1204.x, x_1204.y, x_1206);
        let x_1213 : vec3<f32> = txVec12;
        let x_1215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1213.xy, x_1213.z);
        u_xlat45.x = x_1215;
        let x_1218 : f32 = u_xlat5.x;
        let x_1220 : f32 = u_xlat45.x;
        let x_1222 : f32 = u_xlat25;
        u_xlat63 = ((x_1218 * x_1220) + x_1222);
      } else {
        let x_1225 : vec4<f32> = vs_INTERP8;
        let x_1228 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1231 : vec2<f32> = ((vec2<f32>(x_1225.x, x_1225.y) * vec2<f32>(x_1228.z, x_1228.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1232 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1231.x, x_1231.y, x_1232.z, x_1232.w);
        let x_1234 : vec4<f32> = u_xlat5;
        let x_1236 : vec2<f32> = floor(vec2<f32>(x_1234.x, x_1234.y));
        let x_1237 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec4<f32> = vs_INTERP8;
        let x_1242 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(x_1242.z, x_1242.w)) + -(vec2<f32>(x_1245.x, x_1245.y)));
        let x_1249 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_1249.x, x_1249.x, x_1249.y, x_1249.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1252 : vec4<f32> = u_xlat7;
        let x_1254 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1252.x, x_1252.x, x_1252.z, x_1252.z) * vec4<f32>(x_1254.x, x_1254.x, x_1254.z, x_1254.z));
        let x_1257 : vec4<f32> = u_xlat8;
        let x_1261 : vec2<f32> = (vec2<f32>(x_1257.y, x_1257.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1262 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1262.x, x_1261.x, x_1262.z, x_1261.y);
        let x_1264 : vec4<f32> = u_xlat8;
        let x_1267 : vec2<f32> = u_xlat45;
        let x_1269 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1267));
        let x_1270 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1269.x, x_1270.y, x_1269.y, x_1270.w);
        let x_1272 : vec2<f32> = u_xlat45;
        let x_1274 : vec2<f32> = (-(x_1272) + vec2<f32>(1.0f, 1.0f));
        let x_1275 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1274.x, x_1274.y, x_1275.z, x_1275.w);
        let x_1277 : vec2<f32> = u_xlat45;
        u_xlat48 = min(x_1277, vec2<f32>(0.0f, 0.0f));
        let x_1279 : vec2<f32> = u_xlat48;
        let x_1281 : vec2<f32> = u_xlat48;
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1285 : vec2<f32> = ((-(x_1279) * x_1281) + vec2<f32>(x_1283.x, x_1283.y));
        let x_1286 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
        let x_1288 : vec2<f32> = u_xlat45;
        u_xlat48 = max(x_1288, vec2<f32>(0.0f, 0.0f));
        let x_1291 : vec2<f32> = u_xlat48;
        let x_1293 : vec2<f32> = u_xlat48;
        let x_1295 : vec4<f32> = u_xlat7;
        let x_1297 : vec2<f32> = ((-(x_1291) * x_1293) + vec2<f32>(x_1295.y, x_1295.w));
        let x_1298 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1297.x, x_1298.y, x_1297.y);
        let x_1300 : vec4<f32> = u_xlat8;
        let x_1302 : vec2<f32> = (vec2<f32>(x_1300.x, x_1300.y) + vec2<f32>(2.0f, 2.0f));
        let x_1303 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1302.x, x_1302.y, x_1303.z, x_1303.w);
        let x_1305 : vec3<f32> = u_xlat27;
        let x_1307 : vec2<f32> = (vec2<f32>(x_1305.x, x_1305.z) + vec2<f32>(2.0f, 2.0f));
        let x_1308 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1308.x, x_1307.x, x_1308.z, x_1307.y);
        let x_1311 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1311 * 0.081632003f);
        let x_1315 : vec4<f32> = u_xlat7;
        let x_1318 : vec3<f32> = (vec3<f32>(x_1315.z, x_1315.x, x_1315.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1319 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
        let x_1321 : vec4<f32> = u_xlat8;
        let x_1324 : vec2<f32> = (vec2<f32>(x_1321.x, x_1321.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1325 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1324.x, x_1324.y, x_1325.z, x_1325.w);
        let x_1328 : f32 = u_xlat11.y;
        u_xlat10.x = x_1328;
        let x_1330 : vec2<f32> = u_xlat45;
        let x_1337 : vec2<f32> = ((vec2<f32>(x_1330.x, x_1330.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1338 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1338.x, x_1337.x, x_1338.z, x_1337.y);
        let x_1340 : vec2<f32> = u_xlat45;
        let x_1344 : vec2<f32> = ((vec2<f32>(x_1340.x, x_1340.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1344.x, x_1345.y, x_1344.y, x_1345.w);
        let x_1348 : f32 = u_xlat7.x;
        u_xlat8.y = x_1348;
        let x_1351 : f32 = u_xlat9.y;
        u_xlat8.w = x_1351;
        let x_1353 : vec4<f32> = u_xlat8;
        let x_1354 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1353 + x_1354);
        let x_1356 : vec2<f32> = u_xlat45;
        let x_1359 : vec2<f32> = ((vec2<f32>(x_1356.y, x_1356.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1360 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1360.x, x_1359.x, x_1360.z, x_1359.y);
        let x_1362 : vec2<f32> = u_xlat45;
        let x_1365 : vec2<f32> = ((vec2<f32>(x_1362.y, x_1362.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1366 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1365.x, x_1366.y, x_1365.y, x_1366.w);
        let x_1369 : f32 = u_xlat7.y;
        u_xlat9.y = x_1369;
        let x_1371 : vec4<f32> = u_xlat9;
        let x_1372 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1371 + x_1372);
        let x_1374 : vec4<f32> = u_xlat8;
        let x_1375 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1374 / x_1375);
        let x_1377 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1377 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1383 : vec4<f32> = u_xlat9;
        let x_1384 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1383 / x_1384);
        let x_1386 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1386 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1388 : vec4<f32> = u_xlat8;
        let x_1391 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1388.w, x_1388.x, x_1388.y, x_1388.z) * vec4<f32>(x_1391.x, x_1391.x, x_1391.x, x_1391.x));
        let x_1394 : vec4<f32> = u_xlat9;
        let x_1397 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1394.x, x_1394.w, x_1394.y, x_1394.z) * vec4<f32>(x_1397.y, x_1397.y, x_1397.y, x_1397.y));
        let x_1400 : vec4<f32> = u_xlat8;
        let x_1401 : vec3<f32> = vec3<f32>(x_1400.y, x_1400.z, x_1400.w);
        let x_1402 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1401.x, x_1402.y, x_1401.y, x_1401.z);
        let x_1405 : f32 = u_xlat9.x;
        u_xlat11.y = x_1405;
        let x_1407 : vec4<f32> = u_xlat5;
        let x_1410 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1413 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1407.x, x_1407.y, x_1407.x, x_1407.y) * vec4<f32>(x_1410.x, x_1410.y, x_1410.x, x_1410.y)) + vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1413.y));
        let x_1416 : vec4<f32> = u_xlat5;
        let x_1419 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1422 : vec4<f32> = u_xlat11;
        u_xlat45 = ((vec2<f32>(x_1416.x, x_1416.y) * vec2<f32>(x_1419.x, x_1419.y)) + vec2<f32>(x_1422.w, x_1422.y));
        let x_1426 : f32 = u_xlat11.y;
        u_xlat8.y = x_1426;
        let x_1429 : f32 = u_xlat9.z;
        u_xlat11.y = x_1429;
        let x_1431 : vec4<f32> = u_xlat5;
        let x_1434 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1437 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1431.x, x_1431.y, x_1431.x, x_1431.y) * vec4<f32>(x_1434.x, x_1434.y, x_1434.x, x_1434.y)) + vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1437.y));
        let x_1440 : vec4<f32> = u_xlat5;
        let x_1443 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1446 : vec4<f32> = u_xlat11;
        let x_1448 : vec2<f32> = ((vec2<f32>(x_1440.x, x_1440.y) * vec2<f32>(x_1443.x, x_1443.y)) + vec2<f32>(x_1446.w, x_1446.y));
        let x_1449 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1448.x, x_1448.y, x_1449.z, x_1449.w);
        let x_1452 : f32 = u_xlat11.y;
        u_xlat8.z = x_1452;
        let x_1455 : vec4<f32> = u_xlat5;
        let x_1458 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1455.x, x_1455.y, x_1455.x, x_1455.y) * vec4<f32>(x_1458.x, x_1458.y, x_1458.x, x_1458.y)) + vec4<f32>(x_1461.x, x_1461.y, x_1461.x, x_1461.z));
        let x_1465 : f32 = u_xlat9.w;
        u_xlat11.y = x_1465;
        let x_1468 : vec4<f32> = u_xlat5;
        let x_1471 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1474 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1468.x, x_1468.y, x_1468.x, x_1468.y) * vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y)) + vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1474.y));
        let x_1478 : vec4<f32> = u_xlat5;
        let x_1481 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1484 : vec4<f32> = u_xlat11;
        let x_1486 : vec2<f32> = ((vec2<f32>(x_1478.x, x_1478.y) * vec2<f32>(x_1481.x, x_1481.y)) + vec2<f32>(x_1484.w, x_1484.y));
        let x_1487 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1486.x, x_1486.y, x_1487.z);
        let x_1490 : f32 = u_xlat11.y;
        u_xlat8.w = x_1490;
        let x_1493 : vec4<f32> = u_xlat5;
        let x_1496 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1499 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1496.x, x_1496.y)) + vec2<f32>(x_1499.x, x_1499.w));
        let x_1502 : vec4<f32> = u_xlat11;
        let x_1503 : vec3<f32> = vec3<f32>(x_1502.x, x_1502.z, x_1502.w);
        let x_1504 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1503.x, x_1504.y, x_1503.y, x_1503.z);
        let x_1506 : vec4<f32> = u_xlat5;
        let x_1509 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1512 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1506.x, x_1506.y, x_1506.x, x_1506.y) * vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.y)) + vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1512.y));
        let x_1516 : vec4<f32> = u_xlat5;
        let x_1519 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1522 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1516.x, x_1516.y) * vec2<f32>(x_1519.x, x_1519.y)) + vec2<f32>(x_1522.w, x_1522.y));
        let x_1526 : f32 = u_xlat8.x;
        u_xlat9.x = x_1526;
        let x_1528 : vec4<f32> = u_xlat5;
        let x_1531 : vec4<f32> = x_661.x_MainLightShadowmapSize;
        let x_1534 : vec4<f32> = u_xlat9;
        let x_1536 : vec2<f32> = ((vec2<f32>(x_1528.x, x_1528.y) * vec2<f32>(x_1531.x, x_1531.y)) + vec2<f32>(x_1534.x, x_1534.y));
        let x_1537 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1536.x, x_1536.y, x_1537.z, x_1537.w);
        let x_1540 : vec4<f32> = u_xlat7;
        let x_1542 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1540.x, x_1540.x, x_1540.x, x_1540.x) * x_1542);
        let x_1545 : vec4<f32> = u_xlat7;
        let x_1547 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1545.y, x_1545.y, x_1545.y, x_1545.y) * x_1547);
        let x_1550 : vec4<f32> = u_xlat7;
        let x_1552 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1550.z, x_1550.z, x_1550.z, x_1550.z) * x_1552);
        let x_1554 : vec4<f32> = u_xlat7;
        let x_1556 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1554.w, x_1554.w, x_1554.w, x_1554.w) * x_1556);
        let x_1559 : vec4<f32> = u_xlat12;
        let x_1560 : vec2<f32> = vec2<f32>(x_1559.x, x_1559.y);
        let x_1562 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1560.x, x_1560.y, x_1562);
        let x_1569 : vec3<f32> = txVec13;
        let x_1571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1569.xy, x_1569.z);
        u_xlat66 = x_1571;
        let x_1573 : vec4<f32> = u_xlat12;
        let x_1574 : vec2<f32> = vec2<f32>(x_1573.z, x_1573.w);
        let x_1576 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
        let x_1583 : vec3<f32> = txVec14;
        let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1583.xy, x_1583.z);
        u_xlat8.x = x_1585;
        let x_1588 : f32 = u_xlat8.x;
        let x_1590 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1588 * x_1590);
        let x_1594 : f32 = u_xlat17.x;
        let x_1595 : f32 = u_xlat66;
        let x_1598 : f32 = u_xlat8.x;
        u_xlat66 = ((x_1594 * x_1595) + x_1598);
        let x_1601 : vec2<f32> = u_xlat45;
        let x_1603 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec15;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1610.xy, x_1610.z);
        u_xlat45.x = x_1612;
        let x_1615 : f32 = u_xlat17.z;
        let x_1617 : f32 = u_xlat45.x;
        let x_1619 : f32 = u_xlat66;
        u_xlat45.x = ((x_1615 * x_1617) + x_1619);
        let x_1623 : vec4<f32> = u_xlat15;
        let x_1624 : vec2<f32> = vec2<f32>(x_1623.x, x_1623.y);
        let x_1626 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
        let x_1634 : vec3<f32> = txVec16;
        let x_1636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1634.xy, x_1634.z);
        u_xlat65 = x_1636;
        let x_1638 : f32 = u_xlat17.w;
        let x_1639 : f32 = u_xlat65;
        let x_1642 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1638 * x_1639) + x_1642);
        let x_1646 : vec4<f32> = u_xlat13;
        let x_1647 : vec2<f32> = vec2<f32>(x_1646.x, x_1646.y);
        let x_1649 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec17;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1656.xy, x_1656.z);
        u_xlat65 = x_1658;
        let x_1660 : f32 = u_xlat18.x;
        let x_1661 : f32 = u_xlat65;
        let x_1664 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1660 * x_1661) + x_1664);
        let x_1668 : vec4<f32> = u_xlat13;
        let x_1669 : vec2<f32> = vec2<f32>(x_1668.z, x_1668.w);
        let x_1671 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
        let x_1678 : vec3<f32> = txVec18;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1678.xy, x_1678.z);
        u_xlat65 = x_1680;
        let x_1682 : f32 = u_xlat18.y;
        let x_1683 : f32 = u_xlat65;
        let x_1686 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1682 * x_1683) + x_1686);
        let x_1690 : vec4<f32> = u_xlat14;
        let x_1691 : vec2<f32> = vec2<f32>(x_1690.x, x_1690.y);
        let x_1693 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1700 : vec3<f32> = txVec19;
        let x_1702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1700.xy, x_1700.z);
        u_xlat65 = x_1702;
        let x_1704 : f32 = u_xlat18.z;
        let x_1705 : f32 = u_xlat65;
        let x_1708 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1704 * x_1705) + x_1708);
        let x_1712 : vec4<f32> = u_xlat15;
        let x_1713 : vec2<f32> = vec2<f32>(x_1712.z, x_1712.w);
        let x_1715 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
        let x_1722 : vec3<f32> = txVec20;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1722.xy, x_1722.z);
        u_xlat65 = x_1724;
        let x_1726 : f32 = u_xlat18.w;
        let x_1727 : f32 = u_xlat65;
        let x_1730 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1726 * x_1727) + x_1730);
        let x_1734 : vec4<f32> = u_xlat16;
        let x_1735 : vec2<f32> = vec2<f32>(x_1734.x, x_1734.y);
        let x_1737 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1735.x, x_1735.y, x_1737);
        let x_1744 : vec3<f32> = txVec21;
        let x_1746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1744.xy, x_1744.z);
        u_xlat65 = x_1746;
        let x_1748 : f32 = u_xlat19.x;
        let x_1749 : f32 = u_xlat65;
        let x_1752 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1748 * x_1749) + x_1752);
        let x_1756 : vec4<f32> = u_xlat16;
        let x_1757 : vec2<f32> = vec2<f32>(x_1756.z, x_1756.w);
        let x_1759 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1757.x, x_1757.y, x_1759);
        let x_1766 : vec3<f32> = txVec22;
        let x_1768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1766.xy, x_1766.z);
        u_xlat65 = x_1768;
        let x_1770 : f32 = u_xlat19.y;
        let x_1771 : f32 = u_xlat65;
        let x_1774 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1770 * x_1771) + x_1774);
        let x_1778 : vec3<f32> = u_xlat28;
        let x_1779 : vec2<f32> = vec2<f32>(x_1778.x, x_1778.y);
        let x_1781 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec23;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1788.xy, x_1788.z);
        u_xlat65 = x_1790;
        let x_1792 : f32 = u_xlat19.z;
        let x_1793 : f32 = u_xlat65;
        let x_1796 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1792 * x_1793) + x_1796);
        let x_1800 : vec2<f32> = u_xlat54;
        let x_1802 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1800.x, x_1800.y, x_1802);
        let x_1809 : vec3<f32> = txVec24;
        let x_1811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1809.xy, x_1809.z);
        u_xlat65 = x_1811;
        let x_1813 : f32 = u_xlat19.w;
        let x_1814 : f32 = u_xlat65;
        let x_1817 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1813 * x_1814) + x_1817);
        let x_1821 : vec4<f32> = u_xlat11;
        let x_1822 : vec2<f32> = vec2<f32>(x_1821.x, x_1821.y);
        let x_1824 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1822.x, x_1822.y, x_1824);
        let x_1831 : vec3<f32> = txVec25;
        let x_1833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1831.xy, x_1831.z);
        u_xlat65 = x_1833;
        let x_1835 : f32 = u_xlat7.x;
        let x_1836 : f32 = u_xlat65;
        let x_1839 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1835 * x_1836) + x_1839);
        let x_1843 : vec4<f32> = u_xlat11;
        let x_1844 : vec2<f32> = vec2<f32>(x_1843.z, x_1843.w);
        let x_1846 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1844.x, x_1844.y, x_1846);
        let x_1853 : vec3<f32> = txVec26;
        let x_1855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1853.xy, x_1853.z);
        u_xlat65 = x_1855;
        let x_1857 : f32 = u_xlat7.y;
        let x_1858 : f32 = u_xlat65;
        let x_1861 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1857 * x_1858) + x_1861);
        let x_1865 : vec2<f32> = u_xlat49;
        let x_1867 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1865.x, x_1865.y, x_1867);
        let x_1874 : vec3<f32> = txVec27;
        let x_1876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1874.xy, x_1874.z);
        u_xlat65 = x_1876;
        let x_1878 : f32 = u_xlat7.z;
        let x_1879 : f32 = u_xlat65;
        let x_1882 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1878 * x_1879) + x_1882);
        let x_1886 : vec4<f32> = u_xlat5;
        let x_1887 : vec2<f32> = vec2<f32>(x_1886.x, x_1886.y);
        let x_1889 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1887.x, x_1887.y, x_1889);
        let x_1896 : vec3<f32> = txVec28;
        let x_1898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1896.xy, x_1896.z);
        u_xlat5.x = x_1898;
        let x_1901 : f32 = u_xlat7.w;
        let x_1903 : f32 = u_xlat5.x;
        let x_1906 : f32 = u_xlat45.x;
        u_xlat63 = ((x_1901 * x_1903) + x_1906);
      }
    }
  } else {
    let x_1910 : vec4<f32> = vs_INTERP8;
    let x_1911 : vec2<f32> = vec2<f32>(x_1910.x, x_1910.y);
    let x_1913 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1911.x, x_1911.y, x_1913);
    let x_1920 : vec3<f32> = txVec29;
    let x_1922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1920.xy, x_1920.z);
    u_xlat63 = x_1922;
  }
  let x_1924 : f32 = x_661.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1924) + 1.0f);
  let x_1928 : f32 = u_xlat63;
  let x_1930 : f32 = x_661.x_MainLightShadowParams.x;
  let x_1933 : f32 = u_xlat5.x;
  u_xlat63 = ((x_1928 * x_1930) + x_1933);
  let x_1936 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_1936);
  let x_1940 : f32 = vs_INTERP8.z;
  u_xlatb25 = (x_1940 >= 1.0f);
  let x_1942 : bool = u_xlatb25;
  let x_1943 : bool = u_xlatb5;
  u_xlatb5 = (x_1942 | x_1943);
  let x_1945 : bool = u_xlatb5;
  let x_1946 : f32 = u_xlat63;
  u_xlat63 = select(x_1946, 1.0f, x_1945);
  let x_1948 : vec3<f32> = vs_INTERP0;
  let x_1950 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1952 : vec3<f32> = (x_1948 + -(x_1950));
  let x_1953 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
  let x_1955 : vec4<f32> = u_xlat5;
  let x_1957 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1955.x, x_1955.y, x_1955.z), vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
  let x_1962 : f32 = u_xlat5.x;
  let x_1964 : f32 = x_661.x_MainLightShadowParams.z;
  let x_1967 : f32 = x_661.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1962 * x_1964) + x_1967);
  let x_1971 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1971, 0.0f, 1.0f);
  let x_1974 : f32 = u_xlat63;
  u_xlat25 = (-(x_1974) + 1.0f);
  let x_1978 : f32 = u_xlat5.x;
  let x_1979 : f32 = u_xlat25;
  let x_1981 : f32 = u_xlat63;
  u_xlat63 = ((x_1978 * x_1979) + x_1981);
  let x_1989 : f32 = x_1987.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_1989 == -1.0f));
  let x_1991 : bool = u_xlatb5;
  if (x_1991) {
    let x_1994 : vec3<f32> = vs_INTERP0;
    let x_1997 : vec4<f32> = x_1987.x_MainLightWorldToLight[1i];
    let x_1999 : vec2<f32> = (vec2<f32>(x_1994.y, x_1994.y) * vec2<f32>(x_1997.x, x_1997.y));
    let x_2000 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1999.x, x_1999.y, x_2000.z, x_2000.w);
    let x_2003 : vec4<f32> = x_1987.x_MainLightWorldToLight[0i];
    let x_2005 : vec3<f32> = vs_INTERP0;
    let x_2008 : vec4<f32> = u_xlat5;
    let x_2010 : vec2<f32> = ((vec2<f32>(x_2003.x, x_2003.y) * vec2<f32>(x_2005.x, x_2005.x)) + vec2<f32>(x_2008.x, x_2008.y));
    let x_2011 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2010.x, x_2010.y, x_2011.z, x_2011.w);
    let x_2014 : vec4<f32> = x_1987.x_MainLightWorldToLight[2i];
    let x_2016 : vec3<f32> = vs_INTERP0;
    let x_2019 : vec4<f32> = u_xlat5;
    let x_2021 : vec2<f32> = ((vec2<f32>(x_2014.x, x_2014.y) * vec2<f32>(x_2016.z, x_2016.z)) + vec2<f32>(x_2019.x, x_2019.y));
    let x_2022 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2021.x, x_2021.y, x_2022.z, x_2022.w);
    let x_2024 : vec4<f32> = u_xlat5;
    let x_2027 : vec4<f32> = x_1987.x_MainLightWorldToLight[3i];
    let x_2029 : vec2<f32> = (vec2<f32>(x_2024.x, x_2024.y) + vec2<f32>(x_2027.x, x_2027.y));
    let x_2030 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2029.x, x_2029.y, x_2030.z, x_2030.w);
    let x_2032 : vec4<f32> = u_xlat5;
    let x_2035 : vec2<f32> = ((vec2<f32>(x_2032.x, x_2032.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2036 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2035.x, x_2035.y, x_2036.z, x_2036.w);
    let x_2043 : vec4<f32> = u_xlat5;
    let x_2046 : f32 = x_44.x_GlobalMipBias.x;
    let x_2047 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2043.x, x_2043.y), x_2046);
    u_xlat5 = x_2047;
    let x_2050 : f32 = x_1987.x_MainLightCookieTextureFormat;
    let x_2052 : f32 = x_1987.x_MainLightCookieTextureFormat;
    let x_2054 : f32 = x_1987.x_MainLightCookieTextureFormat;
    let x_2056 : f32 = x_1987.x_MainLightCookieTextureFormat;
    let x_2057 : vec4<f32> = vec4<f32>(x_2050, x_2052, x_2054, x_2056);
    let x_2065 : vec4<bool> = (vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2057.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2065.x, x_2065.y);
    let x_2068 : bool = u_xlatb7.y;
    if (x_2068) {
      let x_2073 : f32 = u_xlat5.w;
      x_2069 = x_2073;
    } else {
      let x_2076 : f32 = u_xlat5.x;
      x_2069 = x_2076;
    }
    let x_2077 : f32 = x_2069;
    u_xlat65 = x_2077;
    let x_2079 : bool = u_xlatb7.x;
    if (x_2079) {
      let x_2083 : vec4<f32> = u_xlat5;
      x_2080 = vec3<f32>(x_2083.x, x_2083.y, x_2083.z);
    } else {
      let x_2086 : f32 = u_xlat65;
      x_2080 = vec3<f32>(x_2086, x_2086, x_2086);
    }
    let x_2088 : vec3<f32> = x_2080;
    let x_2089 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_2095 : vec4<f32> = u_xlat5;
  let x_2098 : vec4<f32> = x_44.x_MainLightColor;
  let x_2100 : vec3<f32> = (vec3<f32>(x_2095.x, x_2095.y, x_2095.z) * vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
  let x_2101 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
  let x_2103 : f32 = u_xlat64;
  let x_2105 : vec4<f32> = u_xlat5;
  let x_2107 : vec3<f32> = (vec3<f32>(x_2103, x_2103, x_2103) * vec3<f32>(x_2105.x, x_2105.y, x_2105.z));
  let x_2108 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2107.x, x_2107.y, x_2107.z, x_2108.w);
  let x_2110 : vec3<f32> = u_xlat4;
  let x_2112 : vec4<f32> = u_xlat1;
  u_xlat65 = dot(-(x_2110), vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2115 : f32 = u_xlat65;
  let x_2116 : f32 = u_xlat65;
  u_xlat65 = (x_2115 + x_2116);
  let x_2118 : vec4<f32> = u_xlat1;
  let x_2120 : f32 = u_xlat65;
  let x_2124 : vec3<f32> = u_xlat4;
  let x_2126 : vec3<f32> = ((vec3<f32>(x_2118.x, x_2118.y, x_2118.z) * -(vec3<f32>(x_2120, x_2120, x_2120))) + -(x_2124));
  let x_2127 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2126.x, x_2126.y, x_2126.z, x_2127.w);
  let x_2129 : vec4<f32> = u_xlat1;
  let x_2131 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(vec3<f32>(x_2129.x, x_2129.y, x_2129.z), x_2131);
  let x_2133 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2133, 0.0f, 1.0f);
  let x_2135 : f32 = u_xlat65;
  u_xlat65 = (-(x_2135) + 1.0f);
  let x_2138 : f32 = u_xlat65;
  let x_2139 : f32 = u_xlat65;
  u_xlat65 = (x_2138 * x_2139);
  let x_2141 : f32 = u_xlat65;
  let x_2142 : f32 = u_xlat65;
  u_xlat65 = (x_2141 * x_2142);
  let x_2144 : f32 = u_xlat60;
  u_xlat66 = ((-(x_2144) * 0.699999988f) + 1.700000048f);
  let x_2150 : f32 = u_xlat60;
  let x_2151 : f32 = u_xlat66;
  u_xlat60 = (x_2150 * x_2151);
  let x_2153 : f32 = u_xlat60;
  u_xlat60 = (x_2153 * 6.0f);
  let x_2163 : vec4<f32> = u_xlat7;
  let x_2165 : f32 = u_xlat60;
  let x_2166 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2163.x, x_2163.y, x_2163.z), x_2165);
  u_xlat7 = x_2166;
  let x_2168 : f32 = u_xlat7.w;
  u_xlat60 = (x_2168 + -1.0f);
  let x_2171 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2172 : f32 = u_xlat60;
  u_xlat60 = ((x_2171 * x_2172) + 1.0f);
  let x_2175 : f32 = u_xlat60;
  u_xlat60 = max(x_2175, 0.0f);
  let x_2177 : f32 = u_xlat60;
  u_xlat60 = log2(x_2177);
  let x_2179 : f32 = u_xlat60;
  let x_2181 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_2179 * x_2181);
  let x_2183 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2183);
  let x_2185 : f32 = u_xlat60;
  let x_2187 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_2185 * x_2187);
  let x_2189 : vec4<f32> = u_xlat7;
  let x_2191 : f32 = u_xlat60;
  let x_2193 : vec3<f32> = (vec3<f32>(x_2189.x, x_2189.y, x_2189.z) * vec3<f32>(x_2191, x_2191, x_2191));
  let x_2194 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2193.x, x_2193.y, x_2193.z, x_2194.w);
  let x_2196 : vec4<f32> = u_xlat2;
  let x_2198 : vec4<f32> = u_xlat2;
  let x_2202 : vec2<f32> = ((vec2<f32>(x_2196.x, x_2196.x) * vec2<f32>(x_2198.x, x_2198.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2203 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2202.x, x_2202.y, x_2203.z, x_2203.w);
  let x_2206 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_2206);
  let x_2208 : vec4<f32> = u_xlat0;
  let x_2211 : f32 = u_xlat61;
  u_xlat28 = (-(vec3<f32>(x_2208.x, x_2208.y, x_2208.z)) + vec3<f32>(x_2211, x_2211, x_2211));
  let x_2214 : f32 = u_xlat65;
  let x_2216 : vec3<f32> = u_xlat28;
  let x_2218 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_2214, x_2214, x_2214) * x_2216) + vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
  let x_2221 : f32 = u_xlat60;
  let x_2223 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2221, x_2221, x_2221) * x_2223);
  let x_2225 : vec4<f32> = u_xlat7;
  let x_2227 : vec3<f32> = u_xlat28;
  let x_2228 : vec3<f32> = (vec3<f32>(x_2225.x, x_2225.y, x_2225.z) * x_2227);
  let x_2229 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
  let x_2231 : vec4<f32> = u_xlat3;
  let x_2233 : vec3<f32> = u_xlat6;
  let x_2235 : vec4<f32> = u_xlat7;
  let x_2237 : vec3<f32> = ((vec3<f32>(x_2231.x, x_2231.y, x_2231.z) * x_2233) + vec3<f32>(x_2235.x, x_2235.y, x_2235.z));
  let x_2238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2237.x, x_2237.y, x_2237.z, x_2238.w);
  let x_2240 : f32 = u_xlat63;
  let x_2243 : f32 = x_359.unity_LightData.z;
  u_xlat60 = (x_2240 * x_2243);
  let x_2245 : vec4<f32> = u_xlat1;
  let x_2248 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat61 = dot(vec3<f32>(x_2245.x, x_2245.y, x_2245.z), vec3<f32>(x_2248.x, x_2248.y, x_2248.z));
  let x_2251 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2251, 0.0f, 1.0f);
  let x_2253 : f32 = u_xlat60;
  let x_2254 : f32 = u_xlat61;
  u_xlat60 = (x_2253 * x_2254);
  let x_2256 : f32 = u_xlat60;
  let x_2258 : vec4<f32> = u_xlat5;
  let x_2260 : vec3<f32> = (vec3<f32>(x_2256, x_2256, x_2256) * vec3<f32>(x_2258.x, x_2258.y, x_2258.z));
  let x_2261 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
  let x_2263 : vec3<f32> = u_xlat4;
  let x_2265 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2267 : vec3<f32> = (x_2263 + vec3<f32>(x_2265.x, x_2265.y, x_2265.z));
  let x_2268 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
  let x_2270 : vec4<f32> = u_xlat7;
  let x_2272 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2270.x, x_2270.y, x_2270.z), vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
  let x_2275 : f32 = u_xlat60;
  u_xlat60 = max(x_2275, 1.17549435e-37f);
  let x_2278 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2278);
  let x_2280 : f32 = u_xlat60;
  let x_2282 : vec4<f32> = u_xlat7;
  let x_2284 : vec3<f32> = (vec3<f32>(x_2280, x_2280, x_2280) * vec3<f32>(x_2282.x, x_2282.y, x_2282.z));
  let x_2285 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
  let x_2287 : vec4<f32> = u_xlat1;
  let x_2289 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2287.x, x_2287.y, x_2287.z), vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
  let x_2292 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2292, 0.0f, 1.0f);
  let x_2295 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2297 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec3<f32>(x_2295.x, x_2295.y, x_2295.z), vec3<f32>(x_2297.x, x_2297.y, x_2297.z));
  let x_2300 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2300, 0.0f, 1.0f);
  let x_2302 : f32 = u_xlat60;
  let x_2303 : f32 = u_xlat60;
  u_xlat60 = (x_2302 * x_2303);
  let x_2305 : f32 = u_xlat60;
  let x_2307 : f32 = u_xlat8.x;
  u_xlat60 = ((x_2305 * x_2307) + 1.000010014f);
  let x_2311 : f32 = u_xlat61;
  let x_2312 : f32 = u_xlat61;
  u_xlat61 = (x_2311 * x_2312);
  let x_2314 : f32 = u_xlat60;
  let x_2315 : f32 = u_xlat60;
  u_xlat60 = (x_2314 * x_2315);
  let x_2317 : f32 = u_xlat61;
  u_xlat61 = max(x_2317, 0.100000001f);
  let x_2320 : f32 = u_xlat60;
  let x_2321 : f32 = u_xlat61;
  u_xlat60 = (x_2320 * x_2321);
  let x_2323 : f32 = u_xlat62;
  let x_2324 : f32 = u_xlat60;
  u_xlat60 = (x_2323 * x_2324);
  let x_2326 : f32 = u_xlat22;
  let x_2327 : f32 = u_xlat60;
  u_xlat60 = (x_2326 / x_2327);
  let x_2329 : vec4<f32> = u_xlat0;
  let x_2331 : f32 = u_xlat60;
  let x_2334 : vec3<f32> = u_xlat6;
  let x_2335 : vec3<f32> = ((vec3<f32>(x_2329.x, x_2329.y, x_2329.z) * vec3<f32>(x_2331, x_2331, x_2331)) + x_2334);
  let x_2336 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2336.w);
  let x_2338 : vec4<f32> = u_xlat5;
  let x_2340 : vec4<f32> = u_xlat7;
  let x_2342 : vec3<f32> = (vec3<f32>(x_2338.x, x_2338.y, x_2338.z) * vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
  let x_2343 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
  let x_2346 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2348 : f32 = x_359.unity_LightData.y;
  u_xlat60 = min(x_2346, x_2348);
  let x_2352 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2352));
  let x_2356 : f32 = x_1987.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2358 : f32 = x_1987.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2360 : f32 = x_1987.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2362 : f32 = x_1987.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2363 : vec4<f32> = vec4<f32>(x_2356, x_2358, x_2360, x_2362);
  let x_2369 : vec4<bool> = (vec4<f32>(x_2363.x, x_2363.y, x_2363.z, x_2363.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2369.x, x_2369.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2380 : u32 = u_xlatu_loop_1;
    let x_2381 : u32 = u_xlatu60;
    if ((x_2380 < x_2381)) {
    } else {
      break;
    }
    let x_2384 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_2384 >> 2u);
    let x_2388 : u32 = u_xlatu_loop_1;
    u_xlati63 = bitcast<i32>((x_2388 & 3u));
    let x_2391 : u32 = u_xlatu2;
    let x_2394 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2391)];
    let x_2404 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2409 : vec4<u32> = indexable[x_2404];
    u_xlat2.x = dot(x_2394, bitcast<vec4<f32>>(x_2409));
    let x_2414 : f32 = u_xlat2.x;
    u_xlatu2 = bitcast<u32>(i32(x_2414));
    let x_2417 : vec3<f32> = vs_INTERP0;
    let x_2429 : u32 = u_xlatu2;
    let x_2432 : vec4<f32> = x_2428.x_AdditionalLightsPosition[bitcast<i32>(x_2429)];
    let x_2435 : u32 = u_xlatu2;
    let x_2438 : vec4<f32> = x_2428.x_AdditionalLightsPosition[bitcast<i32>(x_2435)];
    let x_2440 : vec3<f32> = ((-(x_2417) * vec3<f32>(x_2432.w, x_2432.w, x_2432.w)) + vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
    let x_2441 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
    let x_2443 : vec4<f32> = u_xlat9;
    let x_2445 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2443.x, x_2443.y, x_2443.z), vec3<f32>(x_2445.x, x_2445.y, x_2445.z));
    let x_2448 : f32 = u_xlat63;
    u_xlat63 = max(x_2448, 6.10351562e-05f);
    let x_2451 : f32 = u_xlat63;
    u_xlat65 = inverseSqrt(x_2451);
    let x_2453 : f32 = u_xlat65;
    let x_2455 : vec4<f32> = u_xlat9;
    let x_2457 : vec3<f32> = (vec3<f32>(x_2453, x_2453, x_2453) * vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
    let x_2458 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2457.x, x_2457.y, x_2457.z, x_2458.w);
    let x_2460 : f32 = u_xlat63;
    u_xlat66 = (1.0f / x_2460);
    let x_2462 : f32 = u_xlat63;
    let x_2463 : u32 = u_xlatu2;
    let x_2466 : f32 = x_2428.x_AdditionalLightsAttenuation[bitcast<i32>(x_2463)].x;
    u_xlat63 = (x_2462 * x_2466);
    let x_2468 : f32 = u_xlat63;
    let x_2470 : f32 = u_xlat63;
    u_xlat63 = ((-(x_2468) * x_2470) + 1.0f);
    let x_2473 : f32 = u_xlat63;
    u_xlat63 = max(x_2473, 0.0f);
    let x_2475 : f32 = u_xlat63;
    let x_2476 : f32 = u_xlat63;
    u_xlat63 = (x_2475 * x_2476);
    let x_2478 : f32 = u_xlat63;
    let x_2479 : f32 = u_xlat66;
    u_xlat63 = (x_2478 * x_2479);
    let x_2481 : u32 = u_xlatu2;
    let x_2484 : vec4<f32> = x_2428.x_AdditionalLightsSpotDir[bitcast<i32>(x_2481)];
    let x_2486 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2484.x, x_2484.y, x_2484.z), vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
    let x_2489 : f32 = u_xlat66;
    let x_2490 : u32 = u_xlatu2;
    let x_2493 : f32 = x_2428.x_AdditionalLightsAttenuation[bitcast<i32>(x_2490)].z;
    let x_2495 : u32 = u_xlatu2;
    let x_2498 : f32 = x_2428.x_AdditionalLightsAttenuation[bitcast<i32>(x_2495)].w;
    u_xlat66 = ((x_2489 * x_2493) + x_2498);
    let x_2500 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2500, 0.0f, 1.0f);
    let x_2502 : f32 = u_xlat66;
    let x_2503 : f32 = u_xlat66;
    u_xlat66 = (x_2502 * x_2503);
    let x_2505 : f32 = u_xlat63;
    let x_2506 : f32 = u_xlat66;
    u_xlat63 = (x_2505 * x_2506);
    let x_2509 : u32 = u_xlatu2;
    u_xlatu66 = (x_2509 >> 5u);
    let x_2512 : u32 = u_xlatu2;
    u_xlati47 = (1i << bitcast<u32>((bitcast<i32>(x_2512) & 31i)));
    let x_2518 : i32 = u_xlati47;
    let x_2520 : u32 = u_xlatu66;
    let x_2523 : f32 = x_1987.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2520)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2518) & bitcast<u32>(x_2523)));
    let x_2527 : i32 = u_xlati66;
    if ((x_2527 != 0i)) {
      let x_2537 : u32 = u_xlatu2;
      let x_2540 : f32 = x_2536.x_AdditionalLightsLightTypes[bitcast<i32>(x_2537)].el;
      u_xlati66 = i32(x_2540);
      let x_2542 : i32 = u_xlati66;
      u_xlati47 = select(1i, 0i, (x_2542 != 0i));
      let x_2546 : u32 = u_xlatu2;
      u_xlati67 = (bitcast<i32>(x_2546) << bitcast<u32>(2i));
      let x_2549 : i32 = u_xlati47;
      if ((x_2549 != 0i)) {
        let x_2553 : vec3<f32> = vs_INTERP0;
        let x_2555 : i32 = u_xlati67;
        let x_2558 : i32 = u_xlati67;
        let x_2562 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[((x_2555 + 1i) / 4i)][((x_2558 + 1i) % 4i)];
        let x_2564 : vec3<f32> = (vec3<f32>(x_2553.y, x_2553.y, x_2553.y) * vec3<f32>(x_2562.x, x_2562.y, x_2562.w));
        let x_2565 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
        let x_2567 : i32 = u_xlati67;
        let x_2569 : i32 = u_xlati67;
        let x_2572 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[(x_2567 / 4i)][(x_2569 % 4i)];
        let x_2574 : vec3<f32> = vs_INTERP0;
        let x_2577 : vec4<f32> = u_xlat11;
        let x_2579 : vec3<f32> = ((vec3<f32>(x_2572.x, x_2572.y, x_2572.w) * vec3<f32>(x_2574.x, x_2574.x, x_2574.x)) + vec3<f32>(x_2577.x, x_2577.y, x_2577.z));
        let x_2580 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
        let x_2582 : i32 = u_xlati67;
        let x_2585 : i32 = u_xlati67;
        let x_2589 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[((x_2582 + 2i) / 4i)][((x_2585 + 2i) % 4i)];
        let x_2591 : vec3<f32> = vs_INTERP0;
        let x_2594 : vec4<f32> = u_xlat11;
        let x_2596 : vec3<f32> = ((vec3<f32>(x_2589.x, x_2589.y, x_2589.w) * vec3<f32>(x_2591.z, x_2591.z, x_2591.z)) + vec3<f32>(x_2594.x, x_2594.y, x_2594.z));
        let x_2597 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2596.x, x_2596.y, x_2596.z, x_2597.w);
        let x_2599 : vec4<f32> = u_xlat11;
        let x_2601 : i32 = u_xlati67;
        let x_2604 : i32 = u_xlati67;
        let x_2608 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[((x_2601 + 3i) / 4i)][((x_2604 + 3i) % 4i)];
        let x_2610 : vec3<f32> = (vec3<f32>(x_2599.x, x_2599.y, x_2599.z) + vec3<f32>(x_2608.x, x_2608.y, x_2608.w));
        let x_2611 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);
        let x_2613 : vec4<f32> = u_xlat11;
        let x_2615 : vec4<f32> = u_xlat11;
        let x_2617 : vec2<f32> = (vec2<f32>(x_2613.x, x_2613.y) / vec2<f32>(x_2615.z, x_2615.z));
        let x_2618 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2617.x, x_2617.y, x_2618.z, x_2618.w);
        let x_2620 : vec4<f32> = u_xlat11;
        let x_2623 : vec2<f32> = ((vec2<f32>(x_2620.x, x_2620.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2624 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2623.x, x_2623.y, x_2624.z, x_2624.w);
        let x_2626 : vec4<f32> = u_xlat11;
        let x_2630 : vec2<f32> = clamp(vec2<f32>(x_2626.x, x_2626.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2631 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2630.x, x_2630.y, x_2631.z, x_2631.w);
        let x_2633 : u32 = u_xlatu2;
        let x_2636 : vec4<f32> = x_2536.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2633)];
        let x_2638 : vec4<f32> = u_xlat11;
        let x_2641 : u32 = u_xlatu2;
        let x_2644 : vec4<f32> = x_2536.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2641)];
        let x_2646 : vec2<f32> = ((vec2<f32>(x_2636.x, x_2636.y) * vec2<f32>(x_2638.x, x_2638.y)) + vec2<f32>(x_2644.z, x_2644.w));
        let x_2647 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2646.x, x_2646.y, x_2647.z, x_2647.w);
      } else {
        let x_2651 : i32 = u_xlati66;
        u_xlatb66 = (x_2651 == 1i);
        let x_2653 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2653);
        let x_2655 : i32 = u_xlati66;
        if ((x_2655 != 0i)) {
          let x_2660 : vec3<f32> = vs_INTERP0;
          let x_2662 : i32 = u_xlati67;
          let x_2665 : i32 = u_xlati67;
          let x_2669 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[((x_2662 + 1i) / 4i)][((x_2665 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2660.y, x_2660.y) * vec2<f32>(x_2669.x, x_2669.y));
          let x_2672 : i32 = u_xlati67;
          let x_2674 : i32 = u_xlati67;
          let x_2677 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[(x_2672 / 4i)][(x_2674 % 4i)];
          let x_2679 : vec3<f32> = vs_INTERP0;
          let x_2682 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2677.x, x_2677.y) * vec2<f32>(x_2679.x, x_2679.x)) + x_2682);
          let x_2684 : i32 = u_xlati67;
          let x_2687 : i32 = u_xlati67;
          let x_2691 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[((x_2684 + 2i) / 4i)][((x_2687 + 2i) % 4i)];
          let x_2693 : vec3<f32> = vs_INTERP0;
          let x_2696 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2691.x, x_2691.y) * vec2<f32>(x_2693.z, x_2693.z)) + x_2696);
          let x_2698 : vec2<f32> = u_xlat51;
          let x_2699 : i32 = u_xlati67;
          let x_2702 : i32 = u_xlati67;
          let x_2706 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[((x_2699 + 3i) / 4i)][((x_2702 + 3i) % 4i)];
          u_xlat51 = (x_2698 + vec2<f32>(x_2706.x, x_2706.y));
          let x_2709 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2709 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2712 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2712);
          let x_2714 : u32 = u_xlatu2;
          let x_2717 : vec4<f32> = x_2536.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2714)];
          let x_2719 : vec2<f32> = u_xlat51;
          let x_2721 : u32 = u_xlatu2;
          let x_2724 : vec4<f32> = x_2536.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2721)];
          let x_2726 : vec2<f32> = ((vec2<f32>(x_2717.x, x_2717.y) * x_2719) + vec2<f32>(x_2724.z, x_2724.w));
          let x_2727 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2726.x, x_2726.y, x_2727.z, x_2727.w);
        } else {
          let x_2730 : vec3<f32> = vs_INTERP0;
          let x_2732 : i32 = u_xlati67;
          let x_2735 : i32 = u_xlati67;
          let x_2739 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[((x_2732 + 1i) / 4i)][((x_2735 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2730.y, x_2730.y, x_2730.y, x_2730.y) * x_2739);
          let x_2741 : i32 = u_xlati67;
          let x_2743 : i32 = u_xlati67;
          let x_2746 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[(x_2741 / 4i)][(x_2743 % 4i)];
          let x_2747 : vec3<f32> = vs_INTERP0;
          let x_2750 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2746 * vec4<f32>(x_2747.x, x_2747.x, x_2747.x, x_2747.x)) + x_2750);
          let x_2752 : i32 = u_xlati67;
          let x_2755 : i32 = u_xlati67;
          let x_2759 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[((x_2752 + 2i) / 4i)][((x_2755 + 2i) % 4i)];
          let x_2760 : vec3<f32> = vs_INTERP0;
          let x_2763 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2759 * vec4<f32>(x_2760.z, x_2760.z, x_2760.z, x_2760.z)) + x_2763);
          let x_2765 : vec4<f32> = u_xlat12;
          let x_2766 : i32 = u_xlati67;
          let x_2769 : i32 = u_xlati67;
          let x_2773 : vec4<f32> = x_2536.x_AdditionalLightsWorldToLights[((x_2766 + 3i) / 4i)][((x_2769 + 3i) % 4i)];
          u_xlat12 = (x_2765 + x_2773);
          let x_2775 : vec4<f32> = u_xlat12;
          let x_2777 : vec4<f32> = u_xlat12;
          let x_2779 : vec3<f32> = (vec3<f32>(x_2775.x, x_2775.y, x_2775.z) / vec3<f32>(x_2777.w, x_2777.w, x_2777.w));
          let x_2780 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2779.x, x_2779.y, x_2779.z, x_2780.w);
          let x_2782 : vec4<f32> = u_xlat12;
          let x_2784 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(vec3<f32>(x_2782.x, x_2782.y, x_2782.z), vec3<f32>(x_2784.x, x_2784.y, x_2784.z));
          let x_2787 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2787);
          let x_2789 : f32 = u_xlat66;
          let x_2791 : vec4<f32> = u_xlat12;
          let x_2793 : vec3<f32> = (vec3<f32>(x_2789, x_2789, x_2789) * vec3<f32>(x_2791.x, x_2791.y, x_2791.z));
          let x_2794 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2793.x, x_2793.y, x_2793.z, x_2794.w);
          let x_2796 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(abs(vec3<f32>(x_2796.x, x_2796.y, x_2796.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2800 : f32 = u_xlat66;
          u_xlat66 = max(x_2800, 0.000001f);
          let x_2803 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2803);
          let x_2805 : f32 = u_xlat66;
          let x_2807 : vec4<f32> = u_xlat12;
          let x_2809 : vec3<f32> = (vec3<f32>(x_2805, x_2805, x_2805) * vec3<f32>(x_2807.z, x_2807.x, x_2807.y));
          let x_2810 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2810.w);
          let x_2813 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2813);
          let x_2817 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2817, 0.0f, 1.0f);
          let x_2821 : vec4<f32> = u_xlat13;
          let x_2824 : vec4<bool> = (vec4<f32>(x_2821.y, x_2821.z, x_2821.y, x_2821.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2824.x, x_2824.y);
          let x_2828 : bool = u_xlatb47.x;
          if (x_2828) {
            let x_2833 : f32 = u_xlat13.x;
            x_2829 = x_2833;
          } else {
            let x_2836 : f32 = u_xlat13.x;
            x_2829 = -(x_2836);
          }
          let x_2838 : f32 = x_2829;
          u_xlat47.x = x_2838;
          let x_2841 : bool = u_xlatb47.y;
          if (x_2841) {
            let x_2846 : f32 = u_xlat13.x;
            x_2842 = x_2846;
          } else {
            let x_2849 : f32 = u_xlat13.x;
            x_2842 = -(x_2849);
          }
          let x_2851 : f32 = x_2842;
          u_xlat47.y = x_2851;
          let x_2853 : vec4<f32> = u_xlat12;
          let x_2855 : f32 = u_xlat66;
          let x_2858 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2853.x, x_2853.y) * vec2<f32>(x_2855, x_2855)) + x_2858);
          let x_2860 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2860 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2863 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2863, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2867 : u32 = u_xlatu2;
          let x_2870 : vec4<f32> = x_2536.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2867)];
          let x_2872 : vec2<f32> = u_xlat47;
          let x_2874 : u32 = u_xlatu2;
          let x_2877 : vec4<f32> = x_2536.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2874)];
          let x_2879 : vec2<f32> = ((vec2<f32>(x_2870.x, x_2870.y) * x_2872) + vec2<f32>(x_2877.z, x_2877.w));
          let x_2880 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2879.x, x_2879.y, x_2880.z, x_2880.w);
        }
      }
      let x_2887 : vec4<f32> = u_xlat11;
      let x_2890 : f32 = x_44.x_GlobalMipBias.x;
      let x_2891 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2887.x, x_2887.y), x_2890);
      u_xlat11 = x_2891;
      let x_2893 : bool = u_xlatb7.y;
      if (x_2893) {
        let x_2898 : f32 = u_xlat11.w;
        x_2894 = x_2898;
      } else {
        let x_2901 : f32 = u_xlat11.x;
        x_2894 = x_2901;
      }
      let x_2902 : f32 = x_2894;
      u_xlat66 = x_2902;
      let x_2904 : bool = u_xlatb7.x;
      if (x_2904) {
        let x_2908 : vec4<f32> = u_xlat11;
        x_2905 = vec3<f32>(x_2908.x, x_2908.y, x_2908.z);
      } else {
        let x_2911 : f32 = u_xlat66;
        x_2905 = vec3<f32>(x_2911, x_2911, x_2911);
      }
      let x_2913 : vec3<f32> = x_2905;
      let x_2914 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2913.x, x_2913.y, x_2913.z, x_2914.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2920 : vec4<f32> = u_xlat11;
    let x_2922 : u32 = u_xlatu2;
    let x_2925 : vec4<f32> = x_2428.x_AdditionalLightsColor[bitcast<i32>(x_2922)];
    let x_2927 : vec3<f32> = (vec3<f32>(x_2920.x, x_2920.y, x_2920.z) * vec3<f32>(x_2925.x, x_2925.y, x_2925.z));
    let x_2928 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2927.x, x_2927.y, x_2927.z, x_2928.w);
    let x_2930 : f32 = u_xlat64;
    let x_2932 : vec4<f32> = u_xlat11;
    let x_2934 : vec3<f32> = (vec3<f32>(x_2930, x_2930, x_2930) * vec3<f32>(x_2932.x, x_2932.y, x_2932.z));
    let x_2935 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2934.x, x_2934.y, x_2934.z, x_2935.w);
    let x_2937 : vec4<f32> = u_xlat1;
    let x_2939 : vec4<f32> = u_xlat10;
    u_xlat2.x = dot(vec3<f32>(x_2937.x, x_2937.y, x_2937.z), vec3<f32>(x_2939.x, x_2939.y, x_2939.z));
    let x_2944 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2944, 0.0f, 1.0f);
    let x_2948 : f32 = u_xlat2.x;
    let x_2949 : f32 = u_xlat63;
    u_xlat2.x = (x_2948 * x_2949);
    let x_2952 : vec4<f32> = u_xlat2;
    let x_2954 : vec4<f32> = u_xlat11;
    let x_2956 : vec3<f32> = (vec3<f32>(x_2952.x, x_2952.x, x_2952.x) * vec3<f32>(x_2954.x, x_2954.y, x_2954.z));
    let x_2957 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2956.x, x_2956.y, x_2956.z, x_2957.w);
    let x_2959 : vec4<f32> = u_xlat9;
    let x_2961 : f32 = u_xlat65;
    let x_2964 : vec3<f32> = u_xlat4;
    let x_2965 : vec3<f32> = ((vec3<f32>(x_2959.x, x_2959.y, x_2959.z) * vec3<f32>(x_2961, x_2961, x_2961)) + x_2964);
    let x_2966 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2965.x, x_2965.y, x_2965.z, x_2966.w);
    let x_2968 : vec4<f32> = u_xlat9;
    let x_2970 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_2968.x, x_2968.y, x_2968.z), vec3<f32>(x_2970.x, x_2970.y, x_2970.z));
    let x_2975 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_2975, 1.17549435e-37f);
    let x_2979 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_2979);
    let x_2982 : vec4<f32> = u_xlat2;
    let x_2984 : vec4<f32> = u_xlat9;
    let x_2986 : vec3<f32> = (vec3<f32>(x_2982.x, x_2982.x, x_2982.x) * vec3<f32>(x_2984.x, x_2984.y, x_2984.z));
    let x_2987 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2986.x, x_2986.y, x_2986.z, x_2987.w);
    let x_2989 : vec4<f32> = u_xlat1;
    let x_2991 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_2989.x, x_2989.y, x_2989.z), vec3<f32>(x_2991.x, x_2991.y, x_2991.z));
    let x_2996 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2996, 0.0f, 1.0f);
    let x_2999 : vec4<f32> = u_xlat10;
    let x_3001 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2999.x, x_2999.y, x_2999.z), vec3<f32>(x_3001.x, x_3001.y, x_3001.z));
    let x_3004 : f32 = u_xlat63;
    u_xlat63 = clamp(x_3004, 0.0f, 1.0f);
    let x_3007 : f32 = u_xlat2.x;
    let x_3009 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3007 * x_3009);
    let x_3013 : f32 = u_xlat2.x;
    let x_3015 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_3013 * x_3015) + 1.000010014f);
    let x_3019 : f32 = u_xlat63;
    let x_3020 : f32 = u_xlat63;
    u_xlat63 = (x_3019 * x_3020);
    let x_3023 : f32 = u_xlat2.x;
    let x_3025 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3023 * x_3025);
    let x_3028 : f32 = u_xlat63;
    u_xlat63 = max(x_3028, 0.100000001f);
    let x_3031 : f32 = u_xlat2.x;
    let x_3032 : f32 = u_xlat63;
    u_xlat2.x = (x_3031 * x_3032);
    let x_3035 : f32 = u_xlat62;
    let x_3037 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3035 * x_3037);
    let x_3040 : f32 = u_xlat22;
    let x_3042 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3040 / x_3042);
    let x_3045 : vec4<f32> = u_xlat0;
    let x_3047 : vec4<f32> = u_xlat2;
    let x_3050 : vec3<f32> = u_xlat6;
    let x_3051 : vec3<f32> = ((vec3<f32>(x_3045.x, x_3045.y, x_3045.z) * vec3<f32>(x_3047.x, x_3047.x, x_3047.x)) + x_3050);
    let x_3052 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3051.x, x_3051.y, x_3051.z, x_3052.w);
    let x_3054 : vec4<f32> = u_xlat9;
    let x_3056 : vec4<f32> = u_xlat11;
    let x_3059 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_3054.x, x_3054.y, x_3054.z) * vec3<f32>(x_3056.x, x_3056.y, x_3056.z)) + x_3059);

    continuing {
      let x_3061 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3061 + bitcast<u32>(1i));
    }
  }
  let x_3063 : vec4<f32> = u_xlat3;
  let x_3065 : f32 = u_xlat42;
  let x_3068 : vec4<f32> = u_xlat5;
  let x_3070 : vec3<f32> = ((vec3<f32>(x_3063.x, x_3063.y, x_3063.z) * vec3<f32>(x_3065, x_3065, x_3065)) + vec3<f32>(x_3068.x, x_3068.y, x_3068.z));
  let x_3071 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3070.x, x_3070.y, x_3070.z, x_3071.w);
  let x_3075 : vec3<f32> = u_xlat28;
  let x_3076 : vec4<f32> = u_xlat0;
  let x_3078 : vec3<f32> = (x_3075 + vec3<f32>(x_3076.x, x_3076.y, x_3076.z));
  let x_3079 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3078.x, x_3078.y, x_3078.z, x_3079.w);
  let x_3084 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3086 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_3084 & bitcast<u32>(x_3086));
  let x_3089 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3089);
  let x_3094 : f32 = u_xlat0.x;
  let x_3096 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3094 * x_3096);
  let x_3101 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3101, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3106 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3106.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

