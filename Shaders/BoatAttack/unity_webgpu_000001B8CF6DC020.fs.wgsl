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

@group(0) @binding(7) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(6) var<uniform> x_190 : UnityPerMaterial;

@group(0) @binding(9) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_E9EC22CC : sampler;

@group(0) @binding(8) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_6EEDD32E : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_359 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_702 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2024 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2465 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2573 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_2106 : f32;
  var x_2117 : vec3<f32>;
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
  var x_2866 : f32;
  var x_2879 : f32;
  var x_2931 : f32;
  var x_2942 : vec3<f32>;
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
  let x_520 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_517, x_519);
  u_xlat3 = x_520;
  let x_526 : vec2<f32> = vs_INTERP4;
  let x_528 : f32 = x_44.x_GlobalMipBias.x;
  let x_529 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_526, x_528);
  let x_530 : vec3<f32> = vec3<f32>(x_529.x, x_529.y, x_529.z);
  let x_531 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat3;
  let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.y, x_533.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat1;
  let x_542 : vec4<f32> = u_xlat3;
  u_xlat60 = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : f32 = u_xlat60;
  u_xlat60 = (x_545 + 0.5f);
  let x_548 : f32 = u_xlat60;
  let x_550 : vec4<f32> = u_xlat5;
  let x_552 : vec3<f32> = (vec3<f32>(x_548, x_548, x_548) * vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_556 : f32 = u_xlat3.w;
  u_xlat60 = max(x_556, 0.0001f);
  let x_559 : vec4<f32> = u_xlat3;
  let x_561 : f32 = u_xlat60;
  let x_563 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) / vec3<f32>(x_561, x_561, x_561));
  let x_564 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_569 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_570 : vec2<f32> = vec2<f32>(x_569.x, x_569.y);
  let x_574 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_570.x, x_570.y));
  let x_575 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat5;
  let x_579 : vec4<f32> = hlslcc_FragCoord;
  let x_581 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) * vec2<f32>(x_579.x, x_579.y));
  let x_582 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
  let x_585 : f32 = u_xlat5.y;
  let x_588 : f32 = x_44.x_ScaleBiasRt.x;
  let x_591 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_585 * x_588) + x_591);
  let x_593 : f32 = u_xlat60;
  u_xlat5.z = (-(x_593) + 1.0f);
  let x_597 : vec4<f32> = u_xlat2;
  let x_598 : vec2<f32> = vec2<f32>(x_597.x, x_597.y);
  let x_599 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat2;
  let x_605 : vec2<f32> = clamp(vec2<f32>(x_601.x, x_601.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
  let x_609 : f32 = u_xlat2.x;
  u_xlat60 = ((-(x_609) * 0.959999979f) + 0.959999979f);
  let x_614 : f32 = u_xlat60;
  let x_617 : f32 = u_xlat2.y;
  u_xlat61 = (-(x_614) + x_617);
  let x_620 : f32 = u_xlat60;
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_620, x_620, x_620) * vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = (vec3<f32>(x_625.x, x_625.y, x_625.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_630 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat2;
  let x_634 : vec4<f32> = u_xlat0;
  let x_639 : vec3<f32> = ((vec3<f32>(x_632.x, x_632.x, x_632.x) * vec3<f32>(x_634.x, x_634.y, x_634.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_640 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_643 : f32 = u_xlat2.y;
  u_xlat60 = (-(x_643) + 1.0f);
  let x_646 : f32 = u_xlat60;
  let x_647 : f32 = u_xlat60;
  u_xlat2.x = (x_646 * x_647);
  let x_651 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_651, 0.0078125f);
  let x_657 : f32 = u_xlat2.x;
  let x_659 : f32 = u_xlat2.x;
  u_xlat22 = (x_657 * x_659);
  let x_661 : f32 = u_xlat61;
  u_xlat61 = (x_661 + 1.0f);
  let x_663 : f32 = u_xlat61;
  u_xlat61 = min(x_663, 1.0f);
  let x_667 : f32 = u_xlat2.x;
  u_xlat62 = ((x_667 * 4.0f) + 2.0f);
  let x_677 : vec4<f32> = u_xlat5;
  let x_680 : f32 = x_44.x_GlobalMipBias.x;
  let x_681 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_677.x, x_677.z), x_680);
  u_xlat63 = x_681.x;
  let x_684 : f32 = u_xlat63;
  u_xlat64 = (x_684 + -1.0f);
  let x_688 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_689 : f32 = u_xlat64;
  u_xlat64 = ((x_688 * x_689) + 1.0f);
  let x_694 : f32 = u_xlat2.z;
  let x_695 : f32 = u_xlat63;
  u_xlat42 = min(x_694, x_695);
  let x_704 : f32 = x_702.x_MainLightShadowParams.y;
  u_xlatb63 = (0.0f < x_704);
  let x_706 : bool = u_xlatb63;
  if (x_706) {
    let x_710 : f32 = x_702.x_MainLightShadowParams.y;
    u_xlatb63 = (x_710 == 1.0f);
    let x_712 : bool = u_xlatb63;
    if (x_712) {
      let x_716 : vec4<f32> = vs_INTERP8;
      let x_719 : vec4<f32> = x_702.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y) + x_719);
      let x_722 : vec4<f32> = u_xlat5;
      let x_723 : vec2<f32> = vec2<f32>(x_722.x, x_722.y);
      let x_725 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_723.x, x_723.y, x_725);
      let x_738 : vec3<f32> = txVec0;
      let x_740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_738.xy, x_738.z);
      u_xlat7.x = x_740;
      let x_743 : vec4<f32> = u_xlat5;
      let x_744 : vec2<f32> = vec2<f32>(x_743.z, x_743.w);
      let x_746 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_744.x, x_744.y, x_746);
      let x_753 : vec3<f32> = txVec1;
      let x_755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_753.xy, x_753.z);
      u_xlat7.y = x_755;
      let x_757 : vec4<f32> = vs_INTERP8;
      let x_760 : vec4<f32> = x_702.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_757.x, x_757.y, x_757.x, x_757.y) + x_760);
      let x_763 : vec4<f32> = u_xlat5;
      let x_764 : vec2<f32> = vec2<f32>(x_763.x, x_763.y);
      let x_766 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_764.x, x_764.y, x_766);
      let x_773 : vec3<f32> = txVec2;
      let x_775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_773.xy, x_773.z);
      u_xlat7.z = x_775;
      let x_778 : vec4<f32> = u_xlat5;
      let x_779 : vec2<f32> = vec2<f32>(x_778.z, x_778.w);
      let x_781 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_779.x, x_779.y, x_781);
      let x_788 : vec3<f32> = txVec3;
      let x_790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_788.xy, x_788.z);
      u_xlat7.w = x_790;
      let x_792 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_792, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_799 : f32 = x_702.x_MainLightShadowParams.y;
      u_xlatb5 = (x_799 == 2.0f);
      let x_801 : bool = u_xlatb5;
      if (x_801) {
        let x_804 : vec4<f32> = vs_INTERP8;
        let x_807 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_811 : vec2<f32> = ((vec2<f32>(x_804.x, x_804.y) * vec2<f32>(x_807.z, x_807.w)) + vec2<f32>(0.5f, 0.5f));
        let x_812 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
        let x_814 : vec4<f32> = u_xlat5;
        let x_816 : vec2<f32> = floor(vec2<f32>(x_814.x, x_814.y));
        let x_817 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_816.x, x_816.y, x_817.z, x_817.w);
        let x_820 : vec4<f32> = vs_INTERP8;
        let x_823 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_826 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_820.x, x_820.y) * vec2<f32>(x_823.z, x_823.w)) + -(vec2<f32>(x_826.x, x_826.y)));
        let x_830 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_830.x, x_830.x, x_830.y, x_830.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_835 : vec4<f32> = u_xlat7;
        let x_837 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_835.x, x_835.x, x_835.z, x_835.z) * vec4<f32>(x_837.x, x_837.x, x_837.z, x_837.z));
        let x_840 : vec4<f32> = u_xlat8;
        let x_844 : vec2<f32> = (vec2<f32>(x_840.y, x_840.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_845 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_844.x, x_845.y, x_844.y, x_845.w);
        let x_847 : vec4<f32> = u_xlat8;
        let x_850 : vec2<f32> = u_xlat45;
        let x_852 : vec2<f32> = ((vec2<f32>(x_847.x, x_847.z) * vec2<f32>(0.5f, 0.5f)) + -(x_850));
        let x_853 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
        let x_856 : vec2<f32> = u_xlat45;
        u_xlat48 = (-(x_856) + vec2<f32>(1.0f, 1.0f));
        let x_860 : vec2<f32> = u_xlat45;
        let x_862 : vec2<f32> = min(x_860, vec2<f32>(0.0f, 0.0f));
        let x_863 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat9;
        let x_868 : vec4<f32> = u_xlat9;
        let x_871 : vec2<f32> = u_xlat48;
        let x_872 : vec2<f32> = ((-(vec2<f32>(x_865.x, x_865.y)) * vec2<f32>(x_868.x, x_868.y)) + x_871);
        let x_873 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
        let x_875 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_875, vec2<f32>(0.0f, 0.0f));
        let x_877 : vec2<f32> = u_xlat45;
        let x_879 : vec2<f32> = u_xlat45;
        let x_881 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_877) * x_879) + vec2<f32>(x_881.y, x_881.w));
        let x_884 : vec4<f32> = u_xlat9;
        let x_886 : vec2<f32> = (vec2<f32>(x_884.x, x_884.y) + vec2<f32>(1.0f, 1.0f));
        let x_887 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_886.x, x_886.y, x_887.z, x_887.w);
        let x_889 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_889 + vec2<f32>(1.0f, 1.0f));
        let x_892 : vec4<f32> = u_xlat8;
        let x_896 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_897 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
        let x_899 : vec2<f32> = u_xlat48;
        let x_900 : vec2<f32> = (x_899 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_901 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat9;
        let x_905 : vec2<f32> = (vec2<f32>(x_903.x, x_903.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_906 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_909 : vec2<f32> = u_xlat45;
        let x_910 : vec2<f32> = (x_909 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_911 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_910.x, x_910.y, x_911.z, x_911.w);
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat45 = (vec2<f32>(x_913.y, x_913.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_917 : f32 = u_xlat9.x;
        u_xlat10.z = x_917;
        let x_920 : f32 = u_xlat45.x;
        u_xlat10.w = x_920;
        let x_923 : f32 = u_xlat11.x;
        u_xlat8.z = x_923;
        let x_926 : f32 = u_xlat7.x;
        u_xlat8.w = x_926;
        let x_929 : vec4<f32> = u_xlat8;
        let x_931 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_929.z, x_929.w, x_929.x, x_929.z) + vec4<f32>(x_931.z, x_931.w, x_931.x, x_931.z));
        let x_935 : f32 = u_xlat10.y;
        u_xlat9.z = x_935;
        let x_938 : f32 = u_xlat45.y;
        u_xlat9.w = x_938;
        let x_941 : f32 = u_xlat8.y;
        u_xlat11.z = x_941;
        let x_944 : f32 = u_xlat7.z;
        u_xlat11.w = x_944;
        let x_946 : vec4<f32> = u_xlat9;
        let x_948 : vec4<f32> = u_xlat11;
        let x_950 : vec3<f32> = (vec3<f32>(x_946.z, x_946.y, x_946.w) + vec3<f32>(x_948.z, x_948.y, x_948.w));
        let x_951 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
        let x_953 : vec4<f32> = u_xlat8;
        let x_955 : vec4<f32> = u_xlat12;
        let x_957 : vec3<f32> = (vec3<f32>(x_953.x, x_953.z, x_953.w) / vec3<f32>(x_955.z, x_955.w, x_955.y));
        let x_958 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
        let x_960 : vec4<f32> = u_xlat8;
        let x_965 : vec3<f32> = (vec3<f32>(x_960.x, x_960.y, x_960.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat11;
        let x_970 : vec4<f32> = u_xlat7;
        let x_972 : vec3<f32> = (vec3<f32>(x_968.z, x_968.y, x_968.w) / vec3<f32>(x_970.x, x_970.y, x_970.z));
        let x_973 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
        let x_975 : vec4<f32> = u_xlat9;
        let x_977 : vec3<f32> = (vec3<f32>(x_975.x, x_975.y, x_975.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_978 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
        let x_980 : vec4<f32> = u_xlat8;
        let x_983 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_985 : vec3<f32> = (vec3<f32>(x_980.y, x_980.x, x_980.z) * vec3<f32>(x_983.x, x_983.x, x_983.x));
        let x_986 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
        let x_988 : vec4<f32> = u_xlat9;
        let x_991 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_993 : vec3<f32> = (vec3<f32>(x_988.x, x_988.y, x_988.z) * vec3<f32>(x_991.y, x_991.y, x_991.y));
        let x_994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
        let x_997 : f32 = u_xlat9.x;
        u_xlat8.w = x_997;
        let x_999 : vec4<f32> = u_xlat5;
        let x_1002 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1005 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_999.x, x_999.y, x_999.x, x_999.y) * vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y)) + vec4<f32>(x_1005.y, x_1005.w, x_1005.x, x_1005.w));
        let x_1008 : vec4<f32> = u_xlat5;
        let x_1011 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1014 : vec4<f32> = u_xlat8;
        u_xlat45 = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.x, x_1011.y)) + vec2<f32>(x_1014.z, x_1014.w));
        let x_1018 : f32 = u_xlat8.y;
        u_xlat9.w = x_1018;
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1021 : vec2<f32> = vec2<f32>(x_1020.y, x_1020.z);
        let x_1022 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1022.x, x_1021.x, x_1022.z, x_1021.y);
        let x_1024 : vec4<f32> = u_xlat5;
        let x_1027 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1024.x, x_1024.y, x_1024.x, x_1024.y) * vec4<f32>(x_1027.x, x_1027.y, x_1027.x, x_1027.y)) + vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1030.y));
        let x_1033 : vec4<f32> = u_xlat5;
        let x_1036 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1039 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1033.x, x_1033.y, x_1033.x, x_1033.y) * vec4<f32>(x_1036.x, x_1036.y, x_1036.x, x_1036.y)) + vec4<f32>(x_1039.w, x_1039.y, x_1039.w, x_1039.z));
        let x_1042 : vec4<f32> = u_xlat5;
        let x_1045 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1048 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y) * vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y)) + vec4<f32>(x_1048.x, x_1048.w, x_1048.z, x_1048.w));
        let x_1052 : vec4<f32> = u_xlat7;
        let x_1054 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1052.x, x_1052.x, x_1052.x, x_1052.y) * vec4<f32>(x_1054.z, x_1054.w, x_1054.y, x_1054.z));
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1060 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1058.y, x_1058.y, x_1058.z, x_1058.z) * x_1060);
        let x_1063 : f32 = u_xlat7.z;
        let x_1065 : f32 = u_xlat12.y;
        u_xlat5.x = (x_1063 * x_1065);
        let x_1069 : vec4<f32> = u_xlat10;
        let x_1070 : vec2<f32> = vec2<f32>(x_1069.x, x_1069.y);
        let x_1072 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1070.x, x_1070.y, x_1072);
        let x_1080 : vec3<f32> = txVec4;
        let x_1082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1080.xy, x_1080.z);
        u_xlat25 = x_1082;
        let x_1084 : vec4<f32> = u_xlat10;
        let x_1085 : vec2<f32> = vec2<f32>(x_1084.z, x_1084.w);
        let x_1087 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1085.x, x_1085.y, x_1087);
        let x_1095 : vec3<f32> = txVec5;
        let x_1097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1095.xy, x_1095.z);
        u_xlat66 = x_1097;
        let x_1098 : f32 = u_xlat66;
        let x_1100 : f32 = u_xlat13.y;
        u_xlat66 = (x_1098 * x_1100);
        let x_1103 : f32 = u_xlat13.x;
        let x_1104 : f32 = u_xlat25;
        let x_1106 : f32 = u_xlat66;
        u_xlat25 = ((x_1103 * x_1104) + x_1106);
        let x_1109 : vec2<f32> = u_xlat45;
        let x_1111 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1109.x, x_1109.y, x_1111);
        let x_1118 : vec3<f32> = txVec6;
        let x_1120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1118.xy, x_1118.z);
        u_xlat45.x = x_1120;
        let x_1123 : f32 = u_xlat13.z;
        let x_1125 : f32 = u_xlat45.x;
        let x_1127 : f32 = u_xlat25;
        u_xlat25 = ((x_1123 * x_1125) + x_1127);
        let x_1130 : vec4<f32> = u_xlat9;
        let x_1131 : vec2<f32> = vec2<f32>(x_1130.x, x_1130.y);
        let x_1133 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1131.x, x_1131.y, x_1133);
        let x_1140 : vec3<f32> = txVec7;
        let x_1142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1140.xy, x_1140.z);
        u_xlat45.x = x_1142;
        let x_1145 : f32 = u_xlat13.w;
        let x_1147 : f32 = u_xlat45.x;
        let x_1149 : f32 = u_xlat25;
        u_xlat25 = ((x_1145 * x_1147) + x_1149);
        let x_1152 : vec4<f32> = u_xlat11;
        let x_1153 : vec2<f32> = vec2<f32>(x_1152.x, x_1152.y);
        let x_1155 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1153.x, x_1153.y, x_1155);
        let x_1162 : vec3<f32> = txVec8;
        let x_1164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1162.xy, x_1162.z);
        u_xlat45.x = x_1164;
        let x_1167 : f32 = u_xlat14.x;
        let x_1169 : f32 = u_xlat45.x;
        let x_1171 : f32 = u_xlat25;
        u_xlat25 = ((x_1167 * x_1169) + x_1171);
        let x_1174 : vec4<f32> = u_xlat11;
        let x_1175 : vec2<f32> = vec2<f32>(x_1174.z, x_1174.w);
        let x_1177 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1184 : vec3<f32> = txVec9;
        let x_1186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1184.xy, x_1184.z);
        u_xlat45.x = x_1186;
        let x_1189 : f32 = u_xlat14.y;
        let x_1191 : f32 = u_xlat45.x;
        let x_1193 : f32 = u_xlat25;
        u_xlat25 = ((x_1189 * x_1191) + x_1193);
        let x_1196 : vec4<f32> = u_xlat9;
        let x_1197 : vec2<f32> = vec2<f32>(x_1196.z, x_1196.w);
        let x_1199 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1197.x, x_1197.y, x_1199);
        let x_1206 : vec3<f32> = txVec10;
        let x_1208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1206.xy, x_1206.z);
        u_xlat45.x = x_1208;
        let x_1211 : f32 = u_xlat14.z;
        let x_1213 : f32 = u_xlat45.x;
        let x_1215 : f32 = u_xlat25;
        u_xlat25 = ((x_1211 * x_1213) + x_1215);
        let x_1218 : vec4<f32> = u_xlat8;
        let x_1219 : vec2<f32> = vec2<f32>(x_1218.x, x_1218.y);
        let x_1221 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec11;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1228.xy, x_1228.z);
        u_xlat45.x = x_1230;
        let x_1233 : f32 = u_xlat14.w;
        let x_1235 : f32 = u_xlat45.x;
        let x_1237 : f32 = u_xlat25;
        u_xlat25 = ((x_1233 * x_1235) + x_1237);
        let x_1240 : vec4<f32> = u_xlat8;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.z, x_1240.w);
        let x_1243 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1250 : vec3<f32> = txVec12;
        let x_1252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1250.xy, x_1250.z);
        u_xlat45.x = x_1252;
        let x_1255 : f32 = u_xlat5.x;
        let x_1257 : f32 = u_xlat45.x;
        let x_1259 : f32 = u_xlat25;
        u_xlat63 = ((x_1255 * x_1257) + x_1259);
      } else {
        let x_1262 : vec4<f32> = vs_INTERP8;
        let x_1265 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1268 : vec2<f32> = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(x_1265.z, x_1265.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1269 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1268.x, x_1268.y, x_1269.z, x_1269.w);
        let x_1271 : vec4<f32> = u_xlat5;
        let x_1273 : vec2<f32> = floor(vec2<f32>(x_1271.x, x_1271.y));
        let x_1274 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1273.x, x_1273.y, x_1274.z, x_1274.w);
        let x_1276 : vec4<f32> = vs_INTERP8;
        let x_1279 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1279.z, x_1279.w)) + -(vec2<f32>(x_1282.x, x_1282.y)));
        let x_1286 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_1286.x, x_1286.x, x_1286.y, x_1286.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1289 : vec4<f32> = u_xlat7;
        let x_1291 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1289.x, x_1289.x, x_1289.z, x_1289.z) * vec4<f32>(x_1291.x, x_1291.x, x_1291.z, x_1291.z));
        let x_1294 : vec4<f32> = u_xlat8;
        let x_1298 : vec2<f32> = (vec2<f32>(x_1294.y, x_1294.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1299 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1299.x, x_1298.x, x_1299.z, x_1298.y);
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1304 : vec2<f32> = u_xlat45;
        let x_1306 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1304));
        let x_1307 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1306.x, x_1307.y, x_1306.y, x_1307.w);
        let x_1309 : vec2<f32> = u_xlat45;
        let x_1311 : vec2<f32> = (-(x_1309) + vec2<f32>(1.0f, 1.0f));
        let x_1312 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1314 : vec2<f32> = u_xlat45;
        u_xlat48 = min(x_1314, vec2<f32>(0.0f, 0.0f));
        let x_1316 : vec2<f32> = u_xlat48;
        let x_1318 : vec2<f32> = u_xlat48;
        let x_1320 : vec4<f32> = u_xlat8;
        let x_1322 : vec2<f32> = ((-(x_1316) * x_1318) + vec2<f32>(x_1320.x, x_1320.y));
        let x_1323 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1323.w);
        let x_1325 : vec2<f32> = u_xlat45;
        u_xlat48 = max(x_1325, vec2<f32>(0.0f, 0.0f));
        let x_1328 : vec2<f32> = u_xlat48;
        let x_1330 : vec2<f32> = u_xlat48;
        let x_1332 : vec4<f32> = u_xlat7;
        let x_1334 : vec2<f32> = ((-(x_1328) * x_1330) + vec2<f32>(x_1332.y, x_1332.w));
        let x_1335 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1334.x, x_1335.y, x_1334.y);
        let x_1337 : vec4<f32> = u_xlat8;
        let x_1339 : vec2<f32> = (vec2<f32>(x_1337.x, x_1337.y) + vec2<f32>(2.0f, 2.0f));
        let x_1340 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
        let x_1342 : vec3<f32> = u_xlat27;
        let x_1344 : vec2<f32> = (vec2<f32>(x_1342.x, x_1342.z) + vec2<f32>(2.0f, 2.0f));
        let x_1345 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1345.x, x_1344.x, x_1345.z, x_1344.y);
        let x_1348 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1348 * 0.081632003f);
        let x_1352 : vec4<f32> = u_xlat7;
        let x_1355 : vec3<f32> = (vec3<f32>(x_1352.z, x_1352.x, x_1352.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1356 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
        let x_1358 : vec4<f32> = u_xlat8;
        let x_1361 : vec2<f32> = (vec2<f32>(x_1358.x, x_1358.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1362 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1361.x, x_1361.y, x_1362.z, x_1362.w);
        let x_1365 : f32 = u_xlat11.y;
        u_xlat10.x = x_1365;
        let x_1367 : vec2<f32> = u_xlat45;
        let x_1374 : vec2<f32> = ((vec2<f32>(x_1367.x, x_1367.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1375 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1375.x, x_1374.x, x_1375.z, x_1374.y);
        let x_1377 : vec2<f32> = u_xlat45;
        let x_1381 : vec2<f32> = ((vec2<f32>(x_1377.x, x_1377.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1382 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1381.x, x_1382.y, x_1381.y, x_1382.w);
        let x_1385 : f32 = u_xlat7.x;
        u_xlat8.y = x_1385;
        let x_1388 : f32 = u_xlat9.y;
        u_xlat8.w = x_1388;
        let x_1390 : vec4<f32> = u_xlat8;
        let x_1391 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1390 + x_1391);
        let x_1393 : vec2<f32> = u_xlat45;
        let x_1396 : vec2<f32> = ((vec2<f32>(x_1393.y, x_1393.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1397 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1397.x, x_1396.x, x_1397.z, x_1396.y);
        let x_1399 : vec2<f32> = u_xlat45;
        let x_1402 : vec2<f32> = ((vec2<f32>(x_1399.y, x_1399.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1403 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1402.x, x_1403.y, x_1402.y, x_1403.w);
        let x_1406 : f32 = u_xlat7.y;
        u_xlat9.y = x_1406;
        let x_1408 : vec4<f32> = u_xlat9;
        let x_1409 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1408 + x_1409);
        let x_1411 : vec4<f32> = u_xlat8;
        let x_1412 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1411 / x_1412);
        let x_1414 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1414 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1420 : vec4<f32> = u_xlat9;
        let x_1421 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1420 / x_1421);
        let x_1423 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1423 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1425 : vec4<f32> = u_xlat8;
        let x_1428 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1425.w, x_1425.x, x_1425.y, x_1425.z) * vec4<f32>(x_1428.x, x_1428.x, x_1428.x, x_1428.x));
        let x_1431 : vec4<f32> = u_xlat9;
        let x_1434 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1431.x, x_1431.w, x_1431.y, x_1431.z) * vec4<f32>(x_1434.y, x_1434.y, x_1434.y, x_1434.y));
        let x_1437 : vec4<f32> = u_xlat8;
        let x_1438 : vec3<f32> = vec3<f32>(x_1437.y, x_1437.z, x_1437.w);
        let x_1439 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1438.x, x_1439.y, x_1438.y, x_1438.z);
        let x_1442 : f32 = u_xlat9.x;
        u_xlat11.y = x_1442;
        let x_1444 : vec4<f32> = u_xlat5;
        let x_1447 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1450 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1444.x, x_1444.y, x_1444.x, x_1444.y) * vec4<f32>(x_1447.x, x_1447.y, x_1447.x, x_1447.y)) + vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1450.y));
        let x_1453 : vec4<f32> = u_xlat5;
        let x_1456 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1459 : vec4<f32> = u_xlat11;
        u_xlat45 = ((vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(x_1456.x, x_1456.y)) + vec2<f32>(x_1459.w, x_1459.y));
        let x_1463 : f32 = u_xlat11.y;
        u_xlat8.y = x_1463;
        let x_1466 : f32 = u_xlat9.z;
        u_xlat11.y = x_1466;
        let x_1468 : vec4<f32> = u_xlat5;
        let x_1471 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1474 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1468.x, x_1468.y, x_1468.x, x_1468.y) * vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y)) + vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1474.y));
        let x_1477 : vec4<f32> = u_xlat5;
        let x_1480 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1483 : vec4<f32> = u_xlat11;
        let x_1485 : vec2<f32> = ((vec2<f32>(x_1477.x, x_1477.y) * vec2<f32>(x_1480.x, x_1480.y)) + vec2<f32>(x_1483.w, x_1483.y));
        let x_1486 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1485.x, x_1485.y, x_1486.z, x_1486.w);
        let x_1489 : f32 = u_xlat11.y;
        u_xlat8.z = x_1489;
        let x_1492 : vec4<f32> = u_xlat5;
        let x_1495 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1498 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1492.x, x_1492.y, x_1492.x, x_1492.y) * vec4<f32>(x_1495.x, x_1495.y, x_1495.x, x_1495.y)) + vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.z));
        let x_1502 : f32 = u_xlat9.w;
        u_xlat11.y = x_1502;
        let x_1505 : vec4<f32> = u_xlat5;
        let x_1508 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1511 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1505.x, x_1505.y, x_1505.x, x_1505.y) * vec4<f32>(x_1508.x, x_1508.y, x_1508.x, x_1508.y)) + vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1511.y));
        let x_1515 : vec4<f32> = u_xlat5;
        let x_1518 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1521 : vec4<f32> = u_xlat11;
        let x_1523 : vec2<f32> = ((vec2<f32>(x_1515.x, x_1515.y) * vec2<f32>(x_1518.x, x_1518.y)) + vec2<f32>(x_1521.w, x_1521.y));
        let x_1524 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1523.x, x_1523.y, x_1524.z);
        let x_1527 : f32 = u_xlat11.y;
        u_xlat8.w = x_1527;
        let x_1530 : vec4<f32> = u_xlat5;
        let x_1533 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1536 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1530.x, x_1530.y) * vec2<f32>(x_1533.x, x_1533.y)) + vec2<f32>(x_1536.x, x_1536.w));
        let x_1539 : vec4<f32> = u_xlat11;
        let x_1540 : vec3<f32> = vec3<f32>(x_1539.x, x_1539.z, x_1539.w);
        let x_1541 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1540.x, x_1541.y, x_1540.y, x_1540.z);
        let x_1543 : vec4<f32> = u_xlat5;
        let x_1546 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1549 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1543.x, x_1543.y, x_1543.x, x_1543.y) * vec4<f32>(x_1546.x, x_1546.y, x_1546.x, x_1546.y)) + vec4<f32>(x_1549.x, x_1549.y, x_1549.z, x_1549.y));
        let x_1553 : vec4<f32> = u_xlat5;
        let x_1556 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1559 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1553.x, x_1553.y) * vec2<f32>(x_1556.x, x_1556.y)) + vec2<f32>(x_1559.w, x_1559.y));
        let x_1563 : f32 = u_xlat8.x;
        u_xlat9.x = x_1563;
        let x_1565 : vec4<f32> = u_xlat5;
        let x_1568 : vec4<f32> = x_702.x_MainLightShadowmapSize;
        let x_1571 : vec4<f32> = u_xlat9;
        let x_1573 : vec2<f32> = ((vec2<f32>(x_1565.x, x_1565.y) * vec2<f32>(x_1568.x, x_1568.y)) + vec2<f32>(x_1571.x, x_1571.y));
        let x_1574 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1573.x, x_1573.y, x_1574.z, x_1574.w);
        let x_1577 : vec4<f32> = u_xlat7;
        let x_1579 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1577.x, x_1577.x, x_1577.x, x_1577.x) * x_1579);
        let x_1582 : vec4<f32> = u_xlat7;
        let x_1584 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1582.y, x_1582.y, x_1582.y, x_1582.y) * x_1584);
        let x_1587 : vec4<f32> = u_xlat7;
        let x_1589 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1587.z, x_1587.z, x_1587.z, x_1587.z) * x_1589);
        let x_1591 : vec4<f32> = u_xlat7;
        let x_1593 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1591.w, x_1591.w, x_1591.w, x_1591.w) * x_1593);
        let x_1596 : vec4<f32> = u_xlat12;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.x, x_1596.y);
        let x_1599 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec13;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1606.xy, x_1606.z);
        u_xlat66 = x_1608;
        let x_1610 : vec4<f32> = u_xlat12;
        let x_1611 : vec2<f32> = vec2<f32>(x_1610.z, x_1610.w);
        let x_1613 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec14;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1620.xy, x_1620.z);
        u_xlat8.x = x_1622;
        let x_1625 : f32 = u_xlat8.x;
        let x_1627 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1625 * x_1627);
        let x_1631 : f32 = u_xlat17.x;
        let x_1632 : f32 = u_xlat66;
        let x_1635 : f32 = u_xlat8.x;
        u_xlat66 = ((x_1631 * x_1632) + x_1635);
        let x_1638 : vec2<f32> = u_xlat45;
        let x_1640 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1638.x, x_1638.y, x_1640);
        let x_1647 : vec3<f32> = txVec15;
        let x_1649 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1647.xy, x_1647.z);
        u_xlat45.x = x_1649;
        let x_1652 : f32 = u_xlat17.z;
        let x_1654 : f32 = u_xlat45.x;
        let x_1656 : f32 = u_xlat66;
        u_xlat45.x = ((x_1652 * x_1654) + x_1656);
        let x_1660 : vec4<f32> = u_xlat15;
        let x_1661 : vec2<f32> = vec2<f32>(x_1660.x, x_1660.y);
        let x_1663 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1661.x, x_1661.y, x_1663);
        let x_1671 : vec3<f32> = txVec16;
        let x_1673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1671.xy, x_1671.z);
        u_xlat65 = x_1673;
        let x_1675 : f32 = u_xlat17.w;
        let x_1676 : f32 = u_xlat65;
        let x_1679 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1675 * x_1676) + x_1679);
        let x_1683 : vec4<f32> = u_xlat13;
        let x_1684 : vec2<f32> = vec2<f32>(x_1683.x, x_1683.y);
        let x_1686 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
        let x_1693 : vec3<f32> = txVec17;
        let x_1695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1693.xy, x_1693.z);
        u_xlat65 = x_1695;
        let x_1697 : f32 = u_xlat18.x;
        let x_1698 : f32 = u_xlat65;
        let x_1701 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1697 * x_1698) + x_1701);
        let x_1705 : vec4<f32> = u_xlat13;
        let x_1706 : vec2<f32> = vec2<f32>(x_1705.z, x_1705.w);
        let x_1708 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1706.x, x_1706.y, x_1708);
        let x_1715 : vec3<f32> = txVec18;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1715.xy, x_1715.z);
        u_xlat65 = x_1717;
        let x_1719 : f32 = u_xlat18.y;
        let x_1720 : f32 = u_xlat65;
        let x_1723 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1719 * x_1720) + x_1723);
        let x_1727 : vec4<f32> = u_xlat14;
        let x_1728 : vec2<f32> = vec2<f32>(x_1727.x, x_1727.y);
        let x_1730 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1728.x, x_1728.y, x_1730);
        let x_1737 : vec3<f32> = txVec19;
        let x_1739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1737.xy, x_1737.z);
        u_xlat65 = x_1739;
        let x_1741 : f32 = u_xlat18.z;
        let x_1742 : f32 = u_xlat65;
        let x_1745 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1741 * x_1742) + x_1745);
        let x_1749 : vec4<f32> = u_xlat15;
        let x_1750 : vec2<f32> = vec2<f32>(x_1749.z, x_1749.w);
        let x_1752 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec20;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1759.xy, x_1759.z);
        u_xlat65 = x_1761;
        let x_1763 : f32 = u_xlat18.w;
        let x_1764 : f32 = u_xlat65;
        let x_1767 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1763 * x_1764) + x_1767);
        let x_1771 : vec4<f32> = u_xlat16;
        let x_1772 : vec2<f32> = vec2<f32>(x_1771.x, x_1771.y);
        let x_1774 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1772.x, x_1772.y, x_1774);
        let x_1781 : vec3<f32> = txVec21;
        let x_1783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1781.xy, x_1781.z);
        u_xlat65 = x_1783;
        let x_1785 : f32 = u_xlat19.x;
        let x_1786 : f32 = u_xlat65;
        let x_1789 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1785 * x_1786) + x_1789);
        let x_1793 : vec4<f32> = u_xlat16;
        let x_1794 : vec2<f32> = vec2<f32>(x_1793.z, x_1793.w);
        let x_1796 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1794.x, x_1794.y, x_1796);
        let x_1803 : vec3<f32> = txVec22;
        let x_1805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1803.xy, x_1803.z);
        u_xlat65 = x_1805;
        let x_1807 : f32 = u_xlat19.y;
        let x_1808 : f32 = u_xlat65;
        let x_1811 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1807 * x_1808) + x_1811);
        let x_1815 : vec3<f32> = u_xlat28;
        let x_1816 : vec2<f32> = vec2<f32>(x_1815.x, x_1815.y);
        let x_1818 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1816.x, x_1816.y, x_1818);
        let x_1825 : vec3<f32> = txVec23;
        let x_1827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1825.xy, x_1825.z);
        u_xlat65 = x_1827;
        let x_1829 : f32 = u_xlat19.z;
        let x_1830 : f32 = u_xlat65;
        let x_1833 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1829 * x_1830) + x_1833);
        let x_1837 : vec2<f32> = u_xlat54;
        let x_1839 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
        let x_1846 : vec3<f32> = txVec24;
        let x_1848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1846.xy, x_1846.z);
        u_xlat65 = x_1848;
        let x_1850 : f32 = u_xlat19.w;
        let x_1851 : f32 = u_xlat65;
        let x_1854 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1850 * x_1851) + x_1854);
        let x_1858 : vec4<f32> = u_xlat11;
        let x_1859 : vec2<f32> = vec2<f32>(x_1858.x, x_1858.y);
        let x_1861 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1859.x, x_1859.y, x_1861);
        let x_1868 : vec3<f32> = txVec25;
        let x_1870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1868.xy, x_1868.z);
        u_xlat65 = x_1870;
        let x_1872 : f32 = u_xlat7.x;
        let x_1873 : f32 = u_xlat65;
        let x_1876 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1872 * x_1873) + x_1876);
        let x_1880 : vec4<f32> = u_xlat11;
        let x_1881 : vec2<f32> = vec2<f32>(x_1880.z, x_1880.w);
        let x_1883 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1881.x, x_1881.y, x_1883);
        let x_1890 : vec3<f32> = txVec26;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1890.xy, x_1890.z);
        u_xlat65 = x_1892;
        let x_1894 : f32 = u_xlat7.y;
        let x_1895 : f32 = u_xlat65;
        let x_1898 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1894 * x_1895) + x_1898);
        let x_1902 : vec2<f32> = u_xlat49;
        let x_1904 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1902.x, x_1902.y, x_1904);
        let x_1911 : vec3<f32> = txVec27;
        let x_1913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1911.xy, x_1911.z);
        u_xlat65 = x_1913;
        let x_1915 : f32 = u_xlat7.z;
        let x_1916 : f32 = u_xlat65;
        let x_1919 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1915 * x_1916) + x_1919);
        let x_1923 : vec4<f32> = u_xlat5;
        let x_1924 : vec2<f32> = vec2<f32>(x_1923.x, x_1923.y);
        let x_1926 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1924.x, x_1924.y, x_1926);
        let x_1933 : vec3<f32> = txVec28;
        let x_1935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1933.xy, x_1933.z);
        u_xlat5.x = x_1935;
        let x_1938 : f32 = u_xlat7.w;
        let x_1940 : f32 = u_xlat5.x;
        let x_1943 : f32 = u_xlat45.x;
        u_xlat63 = ((x_1938 * x_1940) + x_1943);
      }
    }
  } else {
    let x_1947 : vec4<f32> = vs_INTERP8;
    let x_1948 : vec2<f32> = vec2<f32>(x_1947.x, x_1947.y);
    let x_1950 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1948.x, x_1948.y, x_1950);
    let x_1957 : vec3<f32> = txVec29;
    let x_1959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1957.xy, x_1957.z);
    u_xlat63 = x_1959;
  }
  let x_1961 : f32 = x_702.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1961) + 1.0f);
  let x_1965 : f32 = u_xlat63;
  let x_1967 : f32 = x_702.x_MainLightShadowParams.x;
  let x_1970 : f32 = u_xlat5.x;
  u_xlat63 = ((x_1965 * x_1967) + x_1970);
  let x_1973 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_1973);
  let x_1977 : f32 = vs_INTERP8.z;
  u_xlatb25 = (x_1977 >= 1.0f);
  let x_1979 : bool = u_xlatb25;
  let x_1980 : bool = u_xlatb5;
  u_xlatb5 = (x_1979 | x_1980);
  let x_1982 : bool = u_xlatb5;
  let x_1983 : f32 = u_xlat63;
  u_xlat63 = select(x_1983, 1.0f, x_1982);
  let x_1985 : vec3<f32> = vs_INTERP0;
  let x_1987 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1989 : vec3<f32> = (x_1985 + -(x_1987));
  let x_1990 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1990.w);
  let x_1992 : vec4<f32> = u_xlat5;
  let x_1994 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1992.x, x_1992.y, x_1992.z), vec3<f32>(x_1994.x, x_1994.y, x_1994.z));
  let x_1999 : f32 = u_xlat5.x;
  let x_2001 : f32 = x_702.x_MainLightShadowParams.z;
  let x_2004 : f32 = x_702.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1999 * x_2001) + x_2004);
  let x_2008 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_2008, 0.0f, 1.0f);
  let x_2011 : f32 = u_xlat63;
  u_xlat25 = (-(x_2011) + 1.0f);
  let x_2015 : f32 = u_xlat5.x;
  let x_2016 : f32 = u_xlat25;
  let x_2018 : f32 = u_xlat63;
  u_xlat63 = ((x_2015 * x_2016) + x_2018);
  let x_2026 : f32 = x_2024.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_2026 == -1.0f));
  let x_2028 : bool = u_xlatb5;
  if (x_2028) {
    let x_2031 : vec3<f32> = vs_INTERP0;
    let x_2034 : vec4<f32> = x_2024.x_MainLightWorldToLight[1i];
    let x_2036 : vec2<f32> = (vec2<f32>(x_2031.y, x_2031.y) * vec2<f32>(x_2034.x, x_2034.y));
    let x_2037 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2036.x, x_2036.y, x_2037.z, x_2037.w);
    let x_2040 : vec4<f32> = x_2024.x_MainLightWorldToLight[0i];
    let x_2042 : vec3<f32> = vs_INTERP0;
    let x_2045 : vec4<f32> = u_xlat5;
    let x_2047 : vec2<f32> = ((vec2<f32>(x_2040.x, x_2040.y) * vec2<f32>(x_2042.x, x_2042.x)) + vec2<f32>(x_2045.x, x_2045.y));
    let x_2048 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2047.x, x_2047.y, x_2048.z, x_2048.w);
    let x_2051 : vec4<f32> = x_2024.x_MainLightWorldToLight[2i];
    let x_2053 : vec3<f32> = vs_INTERP0;
    let x_2056 : vec4<f32> = u_xlat5;
    let x_2058 : vec2<f32> = ((vec2<f32>(x_2051.x, x_2051.y) * vec2<f32>(x_2053.z, x_2053.z)) + vec2<f32>(x_2056.x, x_2056.y));
    let x_2059 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2058.x, x_2058.y, x_2059.z, x_2059.w);
    let x_2061 : vec4<f32> = u_xlat5;
    let x_2064 : vec4<f32> = x_2024.x_MainLightWorldToLight[3i];
    let x_2066 : vec2<f32> = (vec2<f32>(x_2061.x, x_2061.y) + vec2<f32>(x_2064.x, x_2064.y));
    let x_2067 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2066.x, x_2066.y, x_2067.z, x_2067.w);
    let x_2069 : vec4<f32> = u_xlat5;
    let x_2072 : vec2<f32> = ((vec2<f32>(x_2069.x, x_2069.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2073 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2072.x, x_2072.y, x_2073.z, x_2073.w);
    let x_2080 : vec4<f32> = u_xlat5;
    let x_2083 : f32 = x_44.x_GlobalMipBias.x;
    let x_2084 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2080.x, x_2080.y), x_2083);
    u_xlat5 = x_2084;
    let x_2087 : f32 = x_2024.x_MainLightCookieTextureFormat;
    let x_2089 : f32 = x_2024.x_MainLightCookieTextureFormat;
    let x_2091 : f32 = x_2024.x_MainLightCookieTextureFormat;
    let x_2093 : f32 = x_2024.x_MainLightCookieTextureFormat;
    let x_2094 : vec4<f32> = vec4<f32>(x_2087, x_2089, x_2091, x_2093);
    let x_2102 : vec4<bool> = (vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2094.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2102.x, x_2102.y);
    let x_2105 : bool = u_xlatb7.y;
    if (x_2105) {
      let x_2110 : f32 = u_xlat5.w;
      x_2106 = x_2110;
    } else {
      let x_2113 : f32 = u_xlat5.x;
      x_2106 = x_2113;
    }
    let x_2114 : f32 = x_2106;
    u_xlat65 = x_2114;
    let x_2116 : bool = u_xlatb7.x;
    if (x_2116) {
      let x_2120 : vec4<f32> = u_xlat5;
      x_2117 = vec3<f32>(x_2120.x, x_2120.y, x_2120.z);
    } else {
      let x_2123 : f32 = u_xlat65;
      x_2117 = vec3<f32>(x_2123, x_2123, x_2123);
    }
    let x_2125 : vec3<f32> = x_2117;
    let x_2126 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_2132 : vec4<f32> = u_xlat5;
  let x_2135 : vec4<f32> = x_44.x_MainLightColor;
  let x_2137 : vec3<f32> = (vec3<f32>(x_2132.x, x_2132.y, x_2132.z) * vec3<f32>(x_2135.x, x_2135.y, x_2135.z));
  let x_2138 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2137.x, x_2137.y, x_2137.z, x_2138.w);
  let x_2140 : f32 = u_xlat64;
  let x_2142 : vec4<f32> = u_xlat5;
  let x_2144 : vec3<f32> = (vec3<f32>(x_2140, x_2140, x_2140) * vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
  let x_2145 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
  let x_2147 : vec3<f32> = u_xlat4;
  let x_2149 : vec4<f32> = u_xlat1;
  u_xlat65 = dot(-(x_2147), vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
  let x_2152 : f32 = u_xlat65;
  let x_2153 : f32 = u_xlat65;
  u_xlat65 = (x_2152 + x_2153);
  let x_2155 : vec4<f32> = u_xlat1;
  let x_2157 : f32 = u_xlat65;
  let x_2161 : vec3<f32> = u_xlat4;
  let x_2163 : vec3<f32> = ((vec3<f32>(x_2155.x, x_2155.y, x_2155.z) * -(vec3<f32>(x_2157, x_2157, x_2157))) + -(x_2161));
  let x_2164 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2163.x, x_2163.y, x_2163.z, x_2164.w);
  let x_2166 : vec4<f32> = u_xlat1;
  let x_2168 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(vec3<f32>(x_2166.x, x_2166.y, x_2166.z), x_2168);
  let x_2170 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2170, 0.0f, 1.0f);
  let x_2172 : f32 = u_xlat65;
  u_xlat65 = (-(x_2172) + 1.0f);
  let x_2175 : f32 = u_xlat65;
  let x_2176 : f32 = u_xlat65;
  u_xlat65 = (x_2175 * x_2176);
  let x_2178 : f32 = u_xlat65;
  let x_2179 : f32 = u_xlat65;
  u_xlat65 = (x_2178 * x_2179);
  let x_2181 : f32 = u_xlat60;
  u_xlat66 = ((-(x_2181) * 0.699999988f) + 1.700000048f);
  let x_2187 : f32 = u_xlat60;
  let x_2188 : f32 = u_xlat66;
  u_xlat60 = (x_2187 * x_2188);
  let x_2190 : f32 = u_xlat60;
  u_xlat60 = (x_2190 * 6.0f);
  let x_2200 : vec4<f32> = u_xlat7;
  let x_2202 : f32 = u_xlat60;
  let x_2203 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2200.x, x_2200.y, x_2200.z), x_2202);
  u_xlat7 = x_2203;
  let x_2205 : f32 = u_xlat7.w;
  u_xlat60 = (x_2205 + -1.0f);
  let x_2208 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2209 : f32 = u_xlat60;
  u_xlat60 = ((x_2208 * x_2209) + 1.0f);
  let x_2212 : f32 = u_xlat60;
  u_xlat60 = max(x_2212, 0.0f);
  let x_2214 : f32 = u_xlat60;
  u_xlat60 = log2(x_2214);
  let x_2216 : f32 = u_xlat60;
  let x_2218 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_2216 * x_2218);
  let x_2220 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2220);
  let x_2222 : f32 = u_xlat60;
  let x_2224 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_2222 * x_2224);
  let x_2226 : vec4<f32> = u_xlat7;
  let x_2228 : f32 = u_xlat60;
  let x_2230 : vec3<f32> = (vec3<f32>(x_2226.x, x_2226.y, x_2226.z) * vec3<f32>(x_2228, x_2228, x_2228));
  let x_2231 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2231.w);
  let x_2233 : vec4<f32> = u_xlat2;
  let x_2235 : vec4<f32> = u_xlat2;
  let x_2239 : vec2<f32> = ((vec2<f32>(x_2233.x, x_2233.x) * vec2<f32>(x_2235.x, x_2235.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2240 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2239.x, x_2239.y, x_2240.z, x_2240.w);
  let x_2243 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_2243);
  let x_2245 : vec4<f32> = u_xlat0;
  let x_2248 : f32 = u_xlat61;
  u_xlat28 = (-(vec3<f32>(x_2245.x, x_2245.y, x_2245.z)) + vec3<f32>(x_2248, x_2248, x_2248));
  let x_2251 : f32 = u_xlat65;
  let x_2253 : vec3<f32> = u_xlat28;
  let x_2255 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_2251, x_2251, x_2251) * x_2253) + vec3<f32>(x_2255.x, x_2255.y, x_2255.z));
  let x_2258 : f32 = u_xlat60;
  let x_2260 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2258, x_2258, x_2258) * x_2260);
  let x_2262 : vec4<f32> = u_xlat7;
  let x_2264 : vec3<f32> = u_xlat28;
  let x_2265 : vec3<f32> = (vec3<f32>(x_2262.x, x_2262.y, x_2262.z) * x_2264);
  let x_2266 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
  let x_2268 : vec4<f32> = u_xlat3;
  let x_2270 : vec3<f32> = u_xlat6;
  let x_2272 : vec4<f32> = u_xlat7;
  let x_2274 : vec3<f32> = ((vec3<f32>(x_2268.x, x_2268.y, x_2268.z) * x_2270) + vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
  let x_2275 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
  let x_2277 : f32 = u_xlat63;
  let x_2280 : f32 = x_359.unity_LightData.z;
  u_xlat60 = (x_2277 * x_2280);
  let x_2282 : vec4<f32> = u_xlat1;
  let x_2285 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat61 = dot(vec3<f32>(x_2282.x, x_2282.y, x_2282.z), vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
  let x_2288 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2288, 0.0f, 1.0f);
  let x_2290 : f32 = u_xlat60;
  let x_2291 : f32 = u_xlat61;
  u_xlat60 = (x_2290 * x_2291);
  let x_2293 : f32 = u_xlat60;
  let x_2295 : vec4<f32> = u_xlat5;
  let x_2297 : vec3<f32> = (vec3<f32>(x_2293, x_2293, x_2293) * vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
  let x_2298 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2297.x, x_2297.y, x_2297.z, x_2298.w);
  let x_2300 : vec3<f32> = u_xlat4;
  let x_2302 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2304 : vec3<f32> = (x_2300 + vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
  let x_2305 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
  let x_2307 : vec4<f32> = u_xlat7;
  let x_2309 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2307.x, x_2307.y, x_2307.z), vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
  let x_2312 : f32 = u_xlat60;
  u_xlat60 = max(x_2312, 1.17549435e-37f);
  let x_2315 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2315);
  let x_2317 : f32 = u_xlat60;
  let x_2319 : vec4<f32> = u_xlat7;
  let x_2321 : vec3<f32> = (vec3<f32>(x_2317, x_2317, x_2317) * vec3<f32>(x_2319.x, x_2319.y, x_2319.z));
  let x_2322 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2322.w);
  let x_2324 : vec4<f32> = u_xlat1;
  let x_2326 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2324.x, x_2324.y, x_2324.z), vec3<f32>(x_2326.x, x_2326.y, x_2326.z));
  let x_2329 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2329, 0.0f, 1.0f);
  let x_2332 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2334 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec3<f32>(x_2332.x, x_2332.y, x_2332.z), vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
  let x_2337 : f32 = u_xlat61;
  u_xlat61 = clamp(x_2337, 0.0f, 1.0f);
  let x_2339 : f32 = u_xlat60;
  let x_2340 : f32 = u_xlat60;
  u_xlat60 = (x_2339 * x_2340);
  let x_2342 : f32 = u_xlat60;
  let x_2344 : f32 = u_xlat8.x;
  u_xlat60 = ((x_2342 * x_2344) + 1.000010014f);
  let x_2348 : f32 = u_xlat61;
  let x_2349 : f32 = u_xlat61;
  u_xlat61 = (x_2348 * x_2349);
  let x_2351 : f32 = u_xlat60;
  let x_2352 : f32 = u_xlat60;
  u_xlat60 = (x_2351 * x_2352);
  let x_2354 : f32 = u_xlat61;
  u_xlat61 = max(x_2354, 0.100000001f);
  let x_2357 : f32 = u_xlat60;
  let x_2358 : f32 = u_xlat61;
  u_xlat60 = (x_2357 * x_2358);
  let x_2360 : f32 = u_xlat62;
  let x_2361 : f32 = u_xlat60;
  u_xlat60 = (x_2360 * x_2361);
  let x_2363 : f32 = u_xlat22;
  let x_2364 : f32 = u_xlat60;
  u_xlat60 = (x_2363 / x_2364);
  let x_2366 : vec4<f32> = u_xlat0;
  let x_2368 : f32 = u_xlat60;
  let x_2371 : vec3<f32> = u_xlat6;
  let x_2372 : vec3<f32> = ((vec3<f32>(x_2366.x, x_2366.y, x_2366.z) * vec3<f32>(x_2368, x_2368, x_2368)) + x_2371);
  let x_2373 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2372.x, x_2372.y, x_2372.z, x_2373.w);
  let x_2375 : vec4<f32> = u_xlat5;
  let x_2377 : vec4<f32> = u_xlat7;
  let x_2379 : vec3<f32> = (vec3<f32>(x_2375.x, x_2375.y, x_2375.z) * vec3<f32>(x_2377.x, x_2377.y, x_2377.z));
  let x_2380 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2379.x, x_2379.y, x_2379.z, x_2380.w);
  let x_2383 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2385 : f32 = x_359.unity_LightData.y;
  u_xlat60 = min(x_2383, x_2385);
  let x_2389 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2389));
  let x_2393 : f32 = x_2024.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2395 : f32 = x_2024.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2397 : f32 = x_2024.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2399 : f32 = x_2024.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2400 : vec4<f32> = vec4<f32>(x_2393, x_2395, x_2397, x_2399);
  let x_2406 : vec4<bool> = (vec4<f32>(x_2400.x, x_2400.y, x_2400.z, x_2400.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2406.x, x_2406.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2417 : u32 = u_xlatu_loop_1;
    let x_2418 : u32 = u_xlatu60;
    if ((x_2417 < x_2418)) {
    } else {
      break;
    }
    let x_2421 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_2421 >> 2u);
    let x_2425 : u32 = u_xlatu_loop_1;
    u_xlati63 = bitcast<i32>((x_2425 & 3u));
    let x_2428 : u32 = u_xlatu2;
    let x_2431 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2428)];
    let x_2441 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2446 : vec4<u32> = indexable[x_2441];
    u_xlat2.x = dot(x_2431, bitcast<vec4<f32>>(x_2446));
    let x_2451 : f32 = u_xlat2.x;
    u_xlatu2 = bitcast<u32>(i32(x_2451));
    let x_2454 : vec3<f32> = vs_INTERP0;
    let x_2466 : u32 = u_xlatu2;
    let x_2469 : vec4<f32> = x_2465.x_AdditionalLightsPosition[bitcast<i32>(x_2466)];
    let x_2472 : u32 = u_xlatu2;
    let x_2475 : vec4<f32> = x_2465.x_AdditionalLightsPosition[bitcast<i32>(x_2472)];
    let x_2477 : vec3<f32> = ((-(x_2454) * vec3<f32>(x_2469.w, x_2469.w, x_2469.w)) + vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
    let x_2478 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
    let x_2480 : vec4<f32> = u_xlat9;
    let x_2482 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2480.x, x_2480.y, x_2480.z), vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
    let x_2485 : f32 = u_xlat63;
    u_xlat63 = max(x_2485, 6.10351562e-05f);
    let x_2488 : f32 = u_xlat63;
    u_xlat65 = inverseSqrt(x_2488);
    let x_2490 : f32 = u_xlat65;
    let x_2492 : vec4<f32> = u_xlat9;
    let x_2494 : vec3<f32> = (vec3<f32>(x_2490, x_2490, x_2490) * vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
    let x_2495 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
    let x_2497 : f32 = u_xlat63;
    u_xlat66 = (1.0f / x_2497);
    let x_2499 : f32 = u_xlat63;
    let x_2500 : u32 = u_xlatu2;
    let x_2503 : f32 = x_2465.x_AdditionalLightsAttenuation[bitcast<i32>(x_2500)].x;
    u_xlat63 = (x_2499 * x_2503);
    let x_2505 : f32 = u_xlat63;
    let x_2507 : f32 = u_xlat63;
    u_xlat63 = ((-(x_2505) * x_2507) + 1.0f);
    let x_2510 : f32 = u_xlat63;
    u_xlat63 = max(x_2510, 0.0f);
    let x_2512 : f32 = u_xlat63;
    let x_2513 : f32 = u_xlat63;
    u_xlat63 = (x_2512 * x_2513);
    let x_2515 : f32 = u_xlat63;
    let x_2516 : f32 = u_xlat66;
    u_xlat63 = (x_2515 * x_2516);
    let x_2518 : u32 = u_xlatu2;
    let x_2521 : vec4<f32> = x_2465.x_AdditionalLightsSpotDir[bitcast<i32>(x_2518)];
    let x_2523 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2521.x, x_2521.y, x_2521.z), vec3<f32>(x_2523.x, x_2523.y, x_2523.z));
    let x_2526 : f32 = u_xlat66;
    let x_2527 : u32 = u_xlatu2;
    let x_2530 : f32 = x_2465.x_AdditionalLightsAttenuation[bitcast<i32>(x_2527)].z;
    let x_2532 : u32 = u_xlatu2;
    let x_2535 : f32 = x_2465.x_AdditionalLightsAttenuation[bitcast<i32>(x_2532)].w;
    u_xlat66 = ((x_2526 * x_2530) + x_2535);
    let x_2537 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2537, 0.0f, 1.0f);
    let x_2539 : f32 = u_xlat66;
    let x_2540 : f32 = u_xlat66;
    u_xlat66 = (x_2539 * x_2540);
    let x_2542 : f32 = u_xlat63;
    let x_2543 : f32 = u_xlat66;
    u_xlat63 = (x_2542 * x_2543);
    let x_2546 : u32 = u_xlatu2;
    u_xlatu66 = (x_2546 >> 5u);
    let x_2549 : u32 = u_xlatu2;
    u_xlati47 = (1i << bitcast<u32>((bitcast<i32>(x_2549) & 31i)));
    let x_2555 : i32 = u_xlati47;
    let x_2557 : u32 = u_xlatu66;
    let x_2560 : f32 = x_2024.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2557)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2555) & bitcast<u32>(x_2560)));
    let x_2564 : i32 = u_xlati66;
    if ((x_2564 != 0i)) {
      let x_2574 : u32 = u_xlatu2;
      let x_2577 : f32 = x_2573.x_AdditionalLightsLightTypes[bitcast<i32>(x_2574)].el;
      u_xlati66 = i32(x_2577);
      let x_2579 : i32 = u_xlati66;
      u_xlati47 = select(1i, 0i, (x_2579 != 0i));
      let x_2583 : u32 = u_xlatu2;
      u_xlati67 = (bitcast<i32>(x_2583) << bitcast<u32>(2i));
      let x_2586 : i32 = u_xlati47;
      if ((x_2586 != 0i)) {
        let x_2590 : vec3<f32> = vs_INTERP0;
        let x_2592 : i32 = u_xlati67;
        let x_2595 : i32 = u_xlati67;
        let x_2599 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[((x_2592 + 1i) / 4i)][((x_2595 + 1i) % 4i)];
        let x_2601 : vec3<f32> = (vec3<f32>(x_2590.y, x_2590.y, x_2590.y) * vec3<f32>(x_2599.x, x_2599.y, x_2599.w));
        let x_2602 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2601.x, x_2601.y, x_2601.z, x_2602.w);
        let x_2604 : i32 = u_xlati67;
        let x_2606 : i32 = u_xlati67;
        let x_2609 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[(x_2604 / 4i)][(x_2606 % 4i)];
        let x_2611 : vec3<f32> = vs_INTERP0;
        let x_2614 : vec4<f32> = u_xlat11;
        let x_2616 : vec3<f32> = ((vec3<f32>(x_2609.x, x_2609.y, x_2609.w) * vec3<f32>(x_2611.x, x_2611.x, x_2611.x)) + vec3<f32>(x_2614.x, x_2614.y, x_2614.z));
        let x_2617 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2616.x, x_2616.y, x_2616.z, x_2617.w);
        let x_2619 : i32 = u_xlati67;
        let x_2622 : i32 = u_xlati67;
        let x_2626 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[((x_2619 + 2i) / 4i)][((x_2622 + 2i) % 4i)];
        let x_2628 : vec3<f32> = vs_INTERP0;
        let x_2631 : vec4<f32> = u_xlat11;
        let x_2633 : vec3<f32> = ((vec3<f32>(x_2626.x, x_2626.y, x_2626.w) * vec3<f32>(x_2628.z, x_2628.z, x_2628.z)) + vec3<f32>(x_2631.x, x_2631.y, x_2631.z));
        let x_2634 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2633.x, x_2633.y, x_2633.z, x_2634.w);
        let x_2636 : vec4<f32> = u_xlat11;
        let x_2638 : i32 = u_xlati67;
        let x_2641 : i32 = u_xlati67;
        let x_2645 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[((x_2638 + 3i) / 4i)][((x_2641 + 3i) % 4i)];
        let x_2647 : vec3<f32> = (vec3<f32>(x_2636.x, x_2636.y, x_2636.z) + vec3<f32>(x_2645.x, x_2645.y, x_2645.w));
        let x_2648 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
        let x_2650 : vec4<f32> = u_xlat11;
        let x_2652 : vec4<f32> = u_xlat11;
        let x_2654 : vec2<f32> = (vec2<f32>(x_2650.x, x_2650.y) / vec2<f32>(x_2652.z, x_2652.z));
        let x_2655 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2654.x, x_2654.y, x_2655.z, x_2655.w);
        let x_2657 : vec4<f32> = u_xlat11;
        let x_2660 : vec2<f32> = ((vec2<f32>(x_2657.x, x_2657.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2661 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2660.x, x_2660.y, x_2661.z, x_2661.w);
        let x_2663 : vec4<f32> = u_xlat11;
        let x_2667 : vec2<f32> = clamp(vec2<f32>(x_2663.x, x_2663.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2668 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2667.x, x_2667.y, x_2668.z, x_2668.w);
        let x_2670 : u32 = u_xlatu2;
        let x_2673 : vec4<f32> = x_2573.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2670)];
        let x_2675 : vec4<f32> = u_xlat11;
        let x_2678 : u32 = u_xlatu2;
        let x_2681 : vec4<f32> = x_2573.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2678)];
        let x_2683 : vec2<f32> = ((vec2<f32>(x_2673.x, x_2673.y) * vec2<f32>(x_2675.x, x_2675.y)) + vec2<f32>(x_2681.z, x_2681.w));
        let x_2684 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2683.x, x_2683.y, x_2684.z, x_2684.w);
      } else {
        let x_2688 : i32 = u_xlati66;
        u_xlatb66 = (x_2688 == 1i);
        let x_2690 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2690);
        let x_2692 : i32 = u_xlati66;
        if ((x_2692 != 0i)) {
          let x_2697 : vec3<f32> = vs_INTERP0;
          let x_2699 : i32 = u_xlati67;
          let x_2702 : i32 = u_xlati67;
          let x_2706 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[((x_2699 + 1i) / 4i)][((x_2702 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2697.y, x_2697.y) * vec2<f32>(x_2706.x, x_2706.y));
          let x_2709 : i32 = u_xlati67;
          let x_2711 : i32 = u_xlati67;
          let x_2714 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[(x_2709 / 4i)][(x_2711 % 4i)];
          let x_2716 : vec3<f32> = vs_INTERP0;
          let x_2719 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2714.x, x_2714.y) * vec2<f32>(x_2716.x, x_2716.x)) + x_2719);
          let x_2721 : i32 = u_xlati67;
          let x_2724 : i32 = u_xlati67;
          let x_2728 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[((x_2721 + 2i) / 4i)][((x_2724 + 2i) % 4i)];
          let x_2730 : vec3<f32> = vs_INTERP0;
          let x_2733 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2728.x, x_2728.y) * vec2<f32>(x_2730.z, x_2730.z)) + x_2733);
          let x_2735 : vec2<f32> = u_xlat51;
          let x_2736 : i32 = u_xlati67;
          let x_2739 : i32 = u_xlati67;
          let x_2743 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[((x_2736 + 3i) / 4i)][((x_2739 + 3i) % 4i)];
          u_xlat51 = (x_2735 + vec2<f32>(x_2743.x, x_2743.y));
          let x_2746 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2746 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2749 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2749);
          let x_2751 : u32 = u_xlatu2;
          let x_2754 : vec4<f32> = x_2573.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2751)];
          let x_2756 : vec2<f32> = u_xlat51;
          let x_2758 : u32 = u_xlatu2;
          let x_2761 : vec4<f32> = x_2573.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2758)];
          let x_2763 : vec2<f32> = ((vec2<f32>(x_2754.x, x_2754.y) * x_2756) + vec2<f32>(x_2761.z, x_2761.w));
          let x_2764 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2763.x, x_2763.y, x_2764.z, x_2764.w);
        } else {
          let x_2767 : vec3<f32> = vs_INTERP0;
          let x_2769 : i32 = u_xlati67;
          let x_2772 : i32 = u_xlati67;
          let x_2776 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[((x_2769 + 1i) / 4i)][((x_2772 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2767.y, x_2767.y, x_2767.y, x_2767.y) * x_2776);
          let x_2778 : i32 = u_xlati67;
          let x_2780 : i32 = u_xlati67;
          let x_2783 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[(x_2778 / 4i)][(x_2780 % 4i)];
          let x_2784 : vec3<f32> = vs_INTERP0;
          let x_2787 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2783 * vec4<f32>(x_2784.x, x_2784.x, x_2784.x, x_2784.x)) + x_2787);
          let x_2789 : i32 = u_xlati67;
          let x_2792 : i32 = u_xlati67;
          let x_2796 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[((x_2789 + 2i) / 4i)][((x_2792 + 2i) % 4i)];
          let x_2797 : vec3<f32> = vs_INTERP0;
          let x_2800 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2796 * vec4<f32>(x_2797.z, x_2797.z, x_2797.z, x_2797.z)) + x_2800);
          let x_2802 : vec4<f32> = u_xlat12;
          let x_2803 : i32 = u_xlati67;
          let x_2806 : i32 = u_xlati67;
          let x_2810 : vec4<f32> = x_2573.x_AdditionalLightsWorldToLights[((x_2803 + 3i) / 4i)][((x_2806 + 3i) % 4i)];
          u_xlat12 = (x_2802 + x_2810);
          let x_2812 : vec4<f32> = u_xlat12;
          let x_2814 : vec4<f32> = u_xlat12;
          let x_2816 : vec3<f32> = (vec3<f32>(x_2812.x, x_2812.y, x_2812.z) / vec3<f32>(x_2814.w, x_2814.w, x_2814.w));
          let x_2817 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2816.x, x_2816.y, x_2816.z, x_2817.w);
          let x_2819 : vec4<f32> = u_xlat12;
          let x_2821 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(vec3<f32>(x_2819.x, x_2819.y, x_2819.z), vec3<f32>(x_2821.x, x_2821.y, x_2821.z));
          let x_2824 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2824);
          let x_2826 : f32 = u_xlat66;
          let x_2828 : vec4<f32> = u_xlat12;
          let x_2830 : vec3<f32> = (vec3<f32>(x_2826, x_2826, x_2826) * vec3<f32>(x_2828.x, x_2828.y, x_2828.z));
          let x_2831 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
          let x_2833 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(abs(vec3<f32>(x_2833.x, x_2833.y, x_2833.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2837 : f32 = u_xlat66;
          u_xlat66 = max(x_2837, 0.000001f);
          let x_2840 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2840);
          let x_2842 : f32 = u_xlat66;
          let x_2844 : vec4<f32> = u_xlat12;
          let x_2846 : vec3<f32> = (vec3<f32>(x_2842, x_2842, x_2842) * vec3<f32>(x_2844.z, x_2844.x, x_2844.y));
          let x_2847 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2846.x, x_2846.y, x_2846.z, x_2847.w);
          let x_2850 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2850);
          let x_2854 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2854, 0.0f, 1.0f);
          let x_2858 : vec4<f32> = u_xlat13;
          let x_2861 : vec4<bool> = (vec4<f32>(x_2858.y, x_2858.z, x_2858.y, x_2858.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2861.x, x_2861.y);
          let x_2865 : bool = u_xlatb47.x;
          if (x_2865) {
            let x_2870 : f32 = u_xlat13.x;
            x_2866 = x_2870;
          } else {
            let x_2873 : f32 = u_xlat13.x;
            x_2866 = -(x_2873);
          }
          let x_2875 : f32 = x_2866;
          u_xlat47.x = x_2875;
          let x_2878 : bool = u_xlatb47.y;
          if (x_2878) {
            let x_2883 : f32 = u_xlat13.x;
            x_2879 = x_2883;
          } else {
            let x_2886 : f32 = u_xlat13.x;
            x_2879 = -(x_2886);
          }
          let x_2888 : f32 = x_2879;
          u_xlat47.y = x_2888;
          let x_2890 : vec4<f32> = u_xlat12;
          let x_2892 : f32 = u_xlat66;
          let x_2895 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2890.x, x_2890.y) * vec2<f32>(x_2892, x_2892)) + x_2895);
          let x_2897 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2897 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2900 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2900, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2904 : u32 = u_xlatu2;
          let x_2907 : vec4<f32> = x_2573.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2904)];
          let x_2909 : vec2<f32> = u_xlat47;
          let x_2911 : u32 = u_xlatu2;
          let x_2914 : vec4<f32> = x_2573.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2911)];
          let x_2916 : vec2<f32> = ((vec2<f32>(x_2907.x, x_2907.y) * x_2909) + vec2<f32>(x_2914.z, x_2914.w));
          let x_2917 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2916.x, x_2916.y, x_2917.z, x_2917.w);
        }
      }
      let x_2924 : vec4<f32> = u_xlat11;
      let x_2927 : f32 = x_44.x_GlobalMipBias.x;
      let x_2928 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2924.x, x_2924.y), x_2927);
      u_xlat11 = x_2928;
      let x_2930 : bool = u_xlatb7.y;
      if (x_2930) {
        let x_2935 : f32 = u_xlat11.w;
        x_2931 = x_2935;
      } else {
        let x_2938 : f32 = u_xlat11.x;
        x_2931 = x_2938;
      }
      let x_2939 : f32 = x_2931;
      u_xlat66 = x_2939;
      let x_2941 : bool = u_xlatb7.x;
      if (x_2941) {
        let x_2945 : vec4<f32> = u_xlat11;
        x_2942 = vec3<f32>(x_2945.x, x_2945.y, x_2945.z);
      } else {
        let x_2948 : f32 = u_xlat66;
        x_2942 = vec3<f32>(x_2948, x_2948, x_2948);
      }
      let x_2950 : vec3<f32> = x_2942;
      let x_2951 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2950.x, x_2950.y, x_2950.z, x_2951.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2957 : vec4<f32> = u_xlat11;
    let x_2959 : u32 = u_xlatu2;
    let x_2962 : vec4<f32> = x_2465.x_AdditionalLightsColor[bitcast<i32>(x_2959)];
    let x_2964 : vec3<f32> = (vec3<f32>(x_2957.x, x_2957.y, x_2957.z) * vec3<f32>(x_2962.x, x_2962.y, x_2962.z));
    let x_2965 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2965.w);
    let x_2967 : f32 = u_xlat64;
    let x_2969 : vec4<f32> = u_xlat11;
    let x_2971 : vec3<f32> = (vec3<f32>(x_2967, x_2967, x_2967) * vec3<f32>(x_2969.x, x_2969.y, x_2969.z));
    let x_2972 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2971.x, x_2971.y, x_2971.z, x_2972.w);
    let x_2974 : vec4<f32> = u_xlat1;
    let x_2976 : vec4<f32> = u_xlat10;
    u_xlat2.x = dot(vec3<f32>(x_2974.x, x_2974.y, x_2974.z), vec3<f32>(x_2976.x, x_2976.y, x_2976.z));
    let x_2981 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2981, 0.0f, 1.0f);
    let x_2985 : f32 = u_xlat2.x;
    let x_2986 : f32 = u_xlat63;
    u_xlat2.x = (x_2985 * x_2986);
    let x_2989 : vec4<f32> = u_xlat2;
    let x_2991 : vec4<f32> = u_xlat11;
    let x_2993 : vec3<f32> = (vec3<f32>(x_2989.x, x_2989.x, x_2989.x) * vec3<f32>(x_2991.x, x_2991.y, x_2991.z));
    let x_2994 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2994.w);
    let x_2996 : vec4<f32> = u_xlat9;
    let x_2998 : f32 = u_xlat65;
    let x_3001 : vec3<f32> = u_xlat4;
    let x_3002 : vec3<f32> = ((vec3<f32>(x_2996.x, x_2996.y, x_2996.z) * vec3<f32>(x_2998, x_2998, x_2998)) + x_3001);
    let x_3003 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3002.x, x_3002.y, x_3002.z, x_3003.w);
    let x_3005 : vec4<f32> = u_xlat9;
    let x_3007 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3005.x, x_3005.y, x_3005.z), vec3<f32>(x_3007.x, x_3007.y, x_3007.z));
    let x_3012 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_3012, 1.17549435e-37f);
    let x_3016 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_3016);
    let x_3019 : vec4<f32> = u_xlat2;
    let x_3021 : vec4<f32> = u_xlat9;
    let x_3023 : vec3<f32> = (vec3<f32>(x_3019.x, x_3019.x, x_3019.x) * vec3<f32>(x_3021.x, x_3021.y, x_3021.z));
    let x_3024 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3023.x, x_3023.y, x_3023.z, x_3024.w);
    let x_3026 : vec4<f32> = u_xlat1;
    let x_3028 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3026.x, x_3026.y, x_3026.z), vec3<f32>(x_3028.x, x_3028.y, x_3028.z));
    let x_3033 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3033, 0.0f, 1.0f);
    let x_3036 : vec4<f32> = u_xlat10;
    let x_3038 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_3036.x, x_3036.y, x_3036.z), vec3<f32>(x_3038.x, x_3038.y, x_3038.z));
    let x_3041 : f32 = u_xlat63;
    u_xlat63 = clamp(x_3041, 0.0f, 1.0f);
    let x_3044 : f32 = u_xlat2.x;
    let x_3046 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3044 * x_3046);
    let x_3050 : f32 = u_xlat2.x;
    let x_3052 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_3050 * x_3052) + 1.000010014f);
    let x_3056 : f32 = u_xlat63;
    let x_3057 : f32 = u_xlat63;
    u_xlat63 = (x_3056 * x_3057);
    let x_3060 : f32 = u_xlat2.x;
    let x_3062 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3060 * x_3062);
    let x_3065 : f32 = u_xlat63;
    u_xlat63 = max(x_3065, 0.100000001f);
    let x_3068 : f32 = u_xlat2.x;
    let x_3069 : f32 = u_xlat63;
    u_xlat2.x = (x_3068 * x_3069);
    let x_3072 : f32 = u_xlat62;
    let x_3074 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3072 * x_3074);
    let x_3077 : f32 = u_xlat22;
    let x_3079 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3077 / x_3079);
    let x_3082 : vec4<f32> = u_xlat0;
    let x_3084 : vec4<f32> = u_xlat2;
    let x_3087 : vec3<f32> = u_xlat6;
    let x_3088 : vec3<f32> = ((vec3<f32>(x_3082.x, x_3082.y, x_3082.z) * vec3<f32>(x_3084.x, x_3084.x, x_3084.x)) + x_3087);
    let x_3089 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3088.x, x_3088.y, x_3088.z, x_3089.w);
    let x_3091 : vec4<f32> = u_xlat9;
    let x_3093 : vec4<f32> = u_xlat11;
    let x_3096 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_3091.x, x_3091.y, x_3091.z) * vec3<f32>(x_3093.x, x_3093.y, x_3093.z)) + x_3096);

    continuing {
      let x_3098 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3098 + bitcast<u32>(1i));
    }
  }
  let x_3100 : vec4<f32> = u_xlat3;
  let x_3102 : f32 = u_xlat42;
  let x_3105 : vec4<f32> = u_xlat5;
  let x_3107 : vec3<f32> = ((vec3<f32>(x_3100.x, x_3100.y, x_3100.z) * vec3<f32>(x_3102, x_3102, x_3102)) + vec3<f32>(x_3105.x, x_3105.y, x_3105.z));
  let x_3108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3107.x, x_3107.y, x_3107.z, x_3108.w);
  let x_3112 : vec3<f32> = u_xlat28;
  let x_3113 : vec4<f32> = u_xlat0;
  let x_3115 : vec3<f32> = (x_3112 + vec3<f32>(x_3113.x, x_3113.y, x_3113.z));
  let x_3116 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3115.x, x_3115.y, x_3115.z, x_3116.w);
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

