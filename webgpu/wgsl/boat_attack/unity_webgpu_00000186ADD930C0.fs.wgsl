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

@group(1) @binding(3) var<uniform> x_515 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2231 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2662 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2781 : AdditionalLightsCookies;

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
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var u_xlat42 : f32;
  var x_146 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlatb63 : bool;
  var x_211 : f32;
  var x_220 : f32;
  var u_xlat63 : f32;
  var u_xlatb43 : vec2<bool>;
  var u_xlat43 : vec2<f32>;
  var u_xlat65 : f32;
  var u_xlat4 : vec3<f32>;
  var x_475 : f32;
  var x_488 : f32;
  var x_499 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat64 : f32;
  var u_xlat23 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat44 : f32;
  var u_xlatb66 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb68 : bool;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat68 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat27 : f32;
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
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat70 : f32;
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
  var u_xlatb24 : vec2<bool>;
  var u_xlatb45 : bool;
  var x_2183 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlat45 : f32;
  var x_2313 : f32;
  var x_2324 : vec3<f32>;
  var u_xlat69 : f32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu2 : u32;
  var u_xlati66 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu48 : u32;
  var u_xlati69 : i32;
  var u_xlati48 : i32;
  var u_xlati70 : i32;
  var u_xlatb48 : bool;
  var u_xlatb53 : vec2<bool>;
  var u_xlat53 : vec2<f32>;
  var x_3081 : f32;
  var x_3094 : f32;
  var x_3146 : f32;
  var x_3158 : vec3<f32>;
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
  u_xlatb21 = (x_96 >= x_98);
  let x_101 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_101);
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
  let x_118 : f32 = u_xlat21;
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
  u_xlatb21 = (x_138 == 0.0f);
  let x_142 : f32 = u_xlat1.x;
  u_xlat42 = (x_142 + 1.00000001e-10f);
  let x_145 : bool = u_xlatb21;
  if (x_145) {
    let x_150 : f32 = u_xlat1.x;
    x_146 = x_150;
  } else {
    let x_152 : f32 = u_xlat42;
    x_146 = x_152;
  }
  let x_153 : f32 = x_146;
  u_xlat21 = x_153;
  let x_155 : f32 = u_xlat1.y;
  let x_158 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_155) + x_158);
  let x_164 : f32 = u_xlat0.x;
  u_xlat22.x = ((x_164 * 6.0f) + 1.00000001e-10f);
  let x_170 : f32 = u_xlat1.x;
  let x_172 : f32 = u_xlat22.x;
  u_xlat1.x = (x_170 / x_172);
  let x_176 : f32 = u_xlat1.x;
  let x_178 : f32 = u_xlat1.z;
  u_xlat1.x = (x_176 + x_178);
  let x_182 : f32 = u_xlat0.x;
  let x_183 : f32 = u_xlat42;
  u_xlat0.x = (x_182 / x_183);
  let x_187 : f32 = u_xlat0.w;
  let x_193 : f32 = x_190.x_Hue;
  let x_196 : f32 = u_xlat1.x;
  u_xlat42 = ((x_187 * x_193) + abs(x_196));
  let x_200 : f32 = u_xlat42;
  u_xlatb63 = (x_200 < 0.0f);
  let x_202 : f32 = u_xlat42;
  u_xlatb1 = (1.0f < x_202);
  let x_204 : f32 = u_xlat42;
  let x_207 : vec2<f32> = (vec2<f32>(x_204, x_204) + vec2<f32>(1.0f, -1.0f));
  let x_208 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_207.x, x_207.y, x_208.z);
  let x_210 : bool = u_xlatb1;
  if (x_210) {
    let x_215 : f32 = u_xlat22.y;
    x_211 = x_215;
  } else {
    let x_217 : f32 = u_xlat42;
    x_211 = x_217;
  }
  let x_218 : f32 = x_211;
  u_xlat42 = x_218;
  let x_219 : bool = u_xlatb63;
  if (x_219) {
    let x_224 : f32 = u_xlat22.x;
    x_220 = x_224;
  } else {
    let x_226 : f32 = u_xlat42;
    x_220 = x_226;
  }
  let x_227 : f32 = x_220;
  u_xlat42 = x_227;
  let x_228 : f32 = u_xlat42;
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
  let x_279 : f32 = u_xlat21;
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
  u_xlat63 = dot(vec2<f32>(x_320.x, x_320.y), vec2<f32>(x_322.x, x_322.y));
  let x_325 : f32 = u_xlat63;
  u_xlat63 = min(x_325, 1.0f);
  let x_327 : f32 = u_xlat63;
  u_xlat63 = (-(x_327) + 1.0f);
  let x_330 : f32 = u_xlat63;
  u_xlat63 = sqrt(x_330);
  let x_332 : f32 = u_xlat63;
  u_xlat63 = max(x_332, 1.00000002e-16f);
  let x_340 : vec4<f32> = vs_INTERP3;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_340.x, x_340.y), x_343);
  let x_345 : vec3<f32> = vec3<f32>(x_344.x, x_344.w, x_344.y);
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_353 : f32 = vs_INTERP2.w;
  u_xlatb43.x = (0.0f < x_353);
  let x_361 : f32 = x_359.unity_WorldTransformParams.w;
  u_xlatb43.y = (x_361 >= 0.0f);
  let x_367 : bool = u_xlatb43.x;
  u_xlat43.x = select(-1.0f, 1.0f, x_367);
  let x_371 : bool = u_xlatb43.y;
  u_xlat43.y = select(-1.0f, 1.0f, x_371);
  let x_375 : f32 = u_xlat43.y;
  let x_377 : f32 = u_xlat43.x;
  u_xlat43.x = (x_375 * x_377);
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
  let x_400 : vec2<f32> = u_xlat43;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.x, x_400.x) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat22 = (vec3<f32>(x_407.y, x_407.y, x_407.y) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = vs_INTERP2;
  let x_417 : vec3<f32> = u_xlat22;
  let x_418 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.x, x_412.x) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + x_417);
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : f32 = u_xlat63;
  let x_423 : vec3<f32> = vs_INTERP1;
  let x_425 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = ((vec3<f32>(x_421, x_421, x_421) * x_423) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat63;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_446 == 0.0f);
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_454 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_455 : vec3<f32> = (-(x_449) + x_454);
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : vec4<f32> = u_xlat3;
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat65 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat65;
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec3<f32> = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : bool = u_xlatb63;
  if (x_474) {
    let x_479 : f32 = u_xlat3.x;
    x_475 = x_479;
  } else {
    let x_484 : f32 = x_44.unity_MatrixV[0i].z;
    x_475 = x_484;
  }
  let x_485 : f32 = x_475;
  u_xlat4.x = x_485;
  let x_487 : bool = u_xlatb63;
  if (x_487) {
    let x_492 : f32 = u_xlat3.y;
    x_488 = x_492;
  } else {
    let x_495 : f32 = x_44.unity_MatrixV[1i].z;
    x_488 = x_495;
  }
  let x_496 : f32 = x_488;
  u_xlat4.y = x_496;
  let x_498 : bool = u_xlatb63;
  if (x_498) {
    let x_503 : f32 = u_xlat3.z;
    x_499 = x_503;
  } else {
    let x_507 : f32 = x_44.unity_MatrixV[2i].z;
    x_499 = x_507;
  }
  let x_508 : f32 = x_499;
  u_xlat4.z = x_508;
  let x_510 : vec3<f32> = vs_INTERP0;
  let x_518 : vec4<f32> = x_515.x_CascadeShadowSplitSpheres0;
  let x_521 : vec3<f32> = (x_510 + -(vec3<f32>(x_518.x, x_518.y, x_518.z)));
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : vec3<f32> = vs_INTERP0;
  let x_527 : vec4<f32> = x_515.x_CascadeShadowSplitSpheres1;
  let x_530 : vec3<f32> = (x_525 + -(vec3<f32>(x_527.x, x_527.y, x_527.z)));
  let x_531 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_534 : vec3<f32> = vs_INTERP0;
  let x_536 : vec4<f32> = x_515.x_CascadeShadowSplitSpheres2;
  let x_539 : vec3<f32> = (x_534 + -(vec3<f32>(x_536.x, x_536.y, x_536.z)));
  let x_540 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_543 : vec3<f32> = vs_INTERP0;
  let x_546 : vec4<f32> = x_515.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_543 + -(vec3<f32>(x_546.x, x_546.y, x_546.z)));
  let x_550 : vec4<f32> = u_xlat3;
  let x_552 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_556 : vec4<f32> = u_xlat5;
  let x_558 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_556.x, x_556.y, x_556.z), vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_562 : vec4<f32> = u_xlat6;
  let x_564 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_562.x, x_562.y, x_562.z), vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_568 : vec3<f32> = u_xlat7;
  let x_569 : vec3<f32> = u_xlat7;
  u_xlat3.w = dot(x_568, x_569);
  let x_575 : vec4<f32> = u_xlat3;
  let x_578 : vec4<f32> = x_515.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_575 < x_578);
  let x_581 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_581);
  let x_585 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_585);
  let x_589 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_589);
  let x_593 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_593);
  let x_597 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_597);
  let x_602 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_602);
  let x_606 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_606);
  let x_609 : vec4<f32> = u_xlat3;
  let x_611 : vec4<f32> = u_xlat5;
  let x_613 : vec3<f32> = (vec3<f32>(x_609.x, x_609.y, x_609.z) + vec3<f32>(x_611.y, x_611.z, x_611.w));
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat3;
  let x_619 : vec3<f32> = max(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_620 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_620.x, x_619.x, x_619.y, x_619.z);
  let x_622 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(x_622, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_627 : f32 = u_xlat63;
  u_xlat63 = (-(x_627) + 4.0f);
  let x_632 : f32 = u_xlat63;
  u_xlatu63 = u32(x_632);
  let x_636 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_636) << bitcast<u32>(2i));
  let x_639 : vec3<f32> = vs_INTERP0;
  let x_641 : i32 = u_xlati63;
  let x_644 : i32 = u_xlati63;
  let x_648 : vec4<f32> = x_515.x_MainLightWorldToShadow[((x_641 + 1i) / 4i)][((x_644 + 1i) % 4i)];
  let x_650 : vec3<f32> = (vec3<f32>(x_639.y, x_639.y, x_639.y) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : i32 = u_xlati63;
  let x_655 : i32 = u_xlati63;
  let x_658 : vec4<f32> = x_515.x_MainLightWorldToShadow[(x_653 / 4i)][(x_655 % 4i)];
  let x_660 : vec3<f32> = vs_INTERP0;
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : vec3<f32> = ((vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(x_660.x, x_660.x, x_660.x)) + vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : i32 = u_xlati63;
  let x_671 : i32 = u_xlati63;
  let x_675 : vec4<f32> = x_515.x_MainLightWorldToShadow[((x_668 + 2i) / 4i)][((x_671 + 2i) % 4i)];
  let x_677 : vec3<f32> = vs_INTERP0;
  let x_680 : vec4<f32> = u_xlat3;
  let x_682 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677.z, x_677.z, x_677.z)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat3;
  let x_687 : i32 = u_xlati63;
  let x_690 : i32 = u_xlati63;
  let x_694 : vec4<f32> = x_515.x_MainLightWorldToShadow[((x_687 + 3i) / 4i)][((x_690 + 3i) % 4i)];
  let x_696 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) + vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  u_xlat1.w = 1.0f;
  let x_702 : vec4<f32> = x_359.unity_SHAr;
  let x_703 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(x_702, x_703);
  let x_708 : vec4<f32> = x_359.unity_SHAg;
  let x_709 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(x_708, x_709);
  let x_714 : vec4<f32> = x_359.unity_SHAb;
  let x_715 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_714, x_715);
  let x_718 : vec4<f32> = u_xlat1;
  let x_720 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_718.y, x_718.z, x_718.z, x_718.x) * vec4<f32>(x_720.x, x_720.y, x_720.z, x_720.z));
  let x_725 : vec4<f32> = x_359.unity_SHBr;
  let x_726 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_725, x_726);
  let x_731 : vec4<f32> = x_359.unity_SHBg;
  let x_732 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_731, x_732);
  let x_737 : vec4<f32> = x_359.unity_SHBb;
  let x_738 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_737, x_738);
  let x_742 : f32 = u_xlat1.y;
  let x_744 : f32 = u_xlat1.y;
  u_xlat63 = (x_742 * x_744);
  let x_747 : f32 = u_xlat1.x;
  let x_749 : f32 = u_xlat1.x;
  let x_751 : f32 = u_xlat63;
  u_xlat63 = ((x_747 * x_749) + -(x_751));
  let x_756 : vec4<f32> = x_359.unity_SHC;
  let x_758 : f32 = u_xlat63;
  let x_761 : vec3<f32> = u_xlat7;
  let x_762 : vec3<f32> = ((vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(x_758, x_758, x_758)) + x_761);
  let x_763 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat5;
  let x_767 : vec4<f32> = u_xlat6;
  let x_769 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) + vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat5;
  let x_774 : vec3<f32> = max(vec3<f32>(x_772.x, x_772.y, x_772.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_775 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_779 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_780 : vec2<f32> = vec2<f32>(x_779.x, x_779.y);
  let x_784 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_780.x, x_780.y));
  let x_785 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
  let x_787 : vec4<f32> = u_xlat6;
  let x_789 : vec4<f32> = hlslcc_FragCoord;
  let x_791 : vec2<f32> = (vec2<f32>(x_787.x, x_787.y) * vec2<f32>(x_789.x, x_789.y));
  let x_792 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_791.x, x_791.y, x_792.z, x_792.w);
  let x_795 : f32 = u_xlat6.y;
  let x_798 : f32 = x_44.x_ScaleBiasRt.x;
  let x_801 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_795 * x_798) + x_801);
  let x_803 : f32 = u_xlat63;
  u_xlat6.z = (-(x_803) + 1.0f);
  let x_807 : vec4<f32> = u_xlat2;
  let x_808 : vec2<f32> = vec2<f32>(x_807.x, x_807.y);
  let x_809 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
  let x_811 : vec4<f32> = u_xlat2;
  let x_815 : vec2<f32> = clamp(vec2<f32>(x_811.x, x_811.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_816 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
  let x_819 : f32 = u_xlat2.x;
  u_xlat63 = ((-(x_819) * 0.959999979f) + 0.959999979f);
  let x_825 : f32 = u_xlat63;
  u_xlat64 = (-(x_825) + 1.0f);
  let x_828 : f32 = u_xlat63;
  let x_830 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat0;
  let x_837 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_838 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat2;
  let x_842 : vec4<f32> = u_xlat0;
  let x_847 : vec3<f32> = ((vec3<f32>(x_840.x, x_840.x, x_840.x) * vec3<f32>(x_842.x, x_842.y, x_842.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_848 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_851 : f32 = u_xlat2.y;
  u_xlat63 = (-(x_851) + 1.0f);
  let x_854 : f32 = u_xlat63;
  let x_855 : f32 = u_xlat63;
  u_xlat2.x = (x_854 * x_855);
  let x_859 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_859, 0.0078125f);
  let x_864 : f32 = u_xlat2.x;
  let x_866 : f32 = u_xlat2.x;
  u_xlat65 = (x_864 * x_866);
  let x_868 : f32 = u_xlat64;
  let x_870 : f32 = u_xlat2.y;
  u_xlat64 = (x_868 + x_870);
  let x_872 : f32 = u_xlat64;
  u_xlat64 = min(x_872, 1.0f);
  let x_876 : f32 = u_xlat2.x;
  u_xlat23 = ((x_876 * 4.0f) + 2.0f);
  let x_885 : vec4<f32> = u_xlat6;
  let x_888 : f32 = x_44.x_GlobalMipBias.x;
  let x_889 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_885.x, x_885.z), x_888);
  u_xlat66 = x_889.x;
  let x_892 : f32 = u_xlat66;
  u_xlat67 = (x_892 + -1.0f);
  let x_895 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_896 : f32 = u_xlat67;
  u_xlat67 = ((x_895 * x_896) + 1.0f);
  let x_901 : f32 = u_xlat2.z;
  let x_902 : f32 = u_xlat66;
  u_xlat44 = min(x_901, x_902);
  let x_906 : f32 = x_515.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_906);
  let x_908 : bool = u_xlatb66;
  if (x_908) {
    let x_912 : f32 = x_515.x_MainLightShadowParams.y;
    u_xlatb66 = (x_912 == 1.0f);
    let x_914 : bool = u_xlatb66;
    if (x_914) {
      let x_917 : vec4<f32> = u_xlat3;
      let x_920 : vec4<f32> = x_515.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_917.x, x_917.y, x_917.x, x_917.y) + x_920);
      let x_923 : vec4<f32> = u_xlat6;
      let x_924 : vec2<f32> = vec2<f32>(x_923.x, x_923.y);
      let x_926 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_924.x, x_924.y, x_926);
      let x_939 : vec3<f32> = txVec0;
      let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_939.xy, x_939.z);
      u_xlat8.x = x_941;
      let x_944 : vec4<f32> = u_xlat6;
      let x_945 : vec2<f32> = vec2<f32>(x_944.z, x_944.w);
      let x_947 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_945.x, x_945.y, x_947);
      let x_954 : vec3<f32> = txVec1;
      let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_954.xy, x_954.z);
      u_xlat8.y = x_956;
      let x_958 : vec4<f32> = u_xlat3;
      let x_961 : vec4<f32> = x_515.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_958.x, x_958.y, x_958.x, x_958.y) + x_961);
      let x_964 : vec4<f32> = u_xlat6;
      let x_965 : vec2<f32> = vec2<f32>(x_964.x, x_964.y);
      let x_967 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_965.x, x_965.y, x_967);
      let x_974 : vec3<f32> = txVec2;
      let x_976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_974.xy, x_974.z);
      u_xlat8.z = x_976;
      let x_979 : vec4<f32> = u_xlat6;
      let x_980 : vec2<f32> = vec2<f32>(x_979.z, x_979.w);
      let x_982 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_980.x, x_980.y, x_982);
      let x_989 : vec3<f32> = txVec3;
      let x_991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_989.xy, x_989.z);
      u_xlat8.w = x_991;
      let x_993 : vec4<f32> = u_xlat8;
      u_xlat66 = dot(x_993, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1000 : f32 = x_515.x_MainLightShadowParams.y;
      u_xlatb68 = (x_1000 == 2.0f);
      let x_1002 : bool = u_xlatb68;
      if (x_1002) {
        let x_1005 : vec4<f32> = u_xlat3;
        let x_1008 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1013 : vec2<f32> = ((vec2<f32>(x_1005.x, x_1005.y) * vec2<f32>(x_1008.z, x_1008.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1014 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1013.x, x_1013.y, x_1014.z, x_1014.w);
        let x_1016 : vec4<f32> = u_xlat6;
        let x_1018 : vec2<f32> = floor(vec2<f32>(x_1016.x, x_1016.y));
        let x_1019 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
        let x_1022 : vec4<f32> = u_xlat3;
        let x_1025 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.z, x_1025.w)) + -(vec2<f32>(x_1028.x, x_1028.y)));
        let x_1032 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1032.x, x_1032.x, x_1032.y, x_1032.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1039 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1037.x, x_1037.x, x_1037.z, x_1037.z) * vec4<f32>(x_1039.x, x_1039.x, x_1039.z, x_1039.z));
        let x_1042 : vec4<f32> = u_xlat9;
        let x_1046 : vec2<f32> = (vec2<f32>(x_1042.y, x_1042.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1046.x, x_1047.y, x_1046.y, x_1047.w);
        let x_1049 : vec4<f32> = u_xlat9;
        let x_1052 : vec2<f32> = u_xlat48;
        let x_1054 : vec2<f32> = ((vec2<f32>(x_1049.x, x_1049.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1052));
        let x_1055 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1058 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1058) + vec2<f32>(1.0f, 1.0f));
        let x_1062 : vec2<f32> = u_xlat48;
        let x_1064 : vec2<f32> = min(x_1062, vec2<f32>(0.0f, 0.0f));
        let x_1065 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat10;
        let x_1070 : vec4<f32> = u_xlat10;
        let x_1073 : vec2<f32> = u_xlat51;
        let x_1074 : vec2<f32> = ((-(vec2<f32>(x_1067.x, x_1067.y)) * vec2<f32>(x_1070.x, x_1070.y)) + x_1073);
        let x_1075 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
        let x_1077 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1077, vec2<f32>(0.0f, 0.0f));
        let x_1079 : vec2<f32> = u_xlat48;
        let x_1081 : vec2<f32> = u_xlat48;
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1079) * x_1081) + vec2<f32>(x_1083.y, x_1083.w));
        let x_1086 : vec4<f32> = u_xlat10;
        let x_1088 : vec2<f32> = (vec2<f32>(x_1086.x, x_1086.y) + vec2<f32>(1.0f, 1.0f));
        let x_1089 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1088.x, x_1088.y, x_1089.z, x_1089.w);
        let x_1091 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1091 + vec2<f32>(1.0f, 1.0f));
        let x_1094 : vec4<f32> = u_xlat9;
        let x_1098 : vec2<f32> = (vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1099 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec2<f32> = u_xlat51;
        let x_1102 : vec2<f32> = (x_1101 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat10;
        let x_1107 : vec2<f32> = (vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1108 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1111 : vec2<f32> = u_xlat48;
        let x_1112 : vec2<f32> = (x_1111 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1113 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
        let x_1115 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1115.y, x_1115.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1119 : f32 = u_xlat10.x;
        u_xlat11.z = x_1119;
        let x_1122 : f32 = u_xlat48.x;
        u_xlat11.w = x_1122;
        let x_1125 : f32 = u_xlat12.x;
        u_xlat9.z = x_1125;
        let x_1128 : f32 = u_xlat8.x;
        u_xlat9.w = x_1128;
        let x_1131 : vec4<f32> = u_xlat9;
        let x_1133 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1131.z, x_1131.w, x_1131.x, x_1131.z) + vec4<f32>(x_1133.z, x_1133.w, x_1133.x, x_1133.z));
        let x_1137 : f32 = u_xlat11.y;
        u_xlat10.z = x_1137;
        let x_1140 : f32 = u_xlat48.y;
        u_xlat10.w = x_1140;
        let x_1143 : f32 = u_xlat9.y;
        u_xlat12.z = x_1143;
        let x_1146 : f32 = u_xlat8.z;
        u_xlat12.w = x_1146;
        let x_1148 : vec4<f32> = u_xlat10;
        let x_1150 : vec4<f32> = u_xlat12;
        let x_1152 : vec3<f32> = (vec3<f32>(x_1148.z, x_1148.y, x_1148.w) + vec3<f32>(x_1150.z, x_1150.y, x_1150.w));
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat9;
        let x_1157 : vec4<f32> = u_xlat13;
        let x_1159 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.z, x_1155.w) / vec3<f32>(x_1157.z, x_1157.w, x_1157.y));
        let x_1160 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat9;
        let x_1168 : vec3<f32> = (vec3<f32>(x_1162.x, x_1162.y, x_1162.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat12;
        let x_1173 : vec4<f32> = u_xlat8;
        let x_1175 : vec3<f32> = (vec3<f32>(x_1171.z, x_1171.y, x_1171.w) / vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
        let x_1176 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
        let x_1178 : vec4<f32> = u_xlat10;
        let x_1180 : vec3<f32> = (vec3<f32>(x_1178.x, x_1178.y, x_1178.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1181 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
        let x_1183 : vec4<f32> = u_xlat9;
        let x_1186 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1188 : vec3<f32> = (vec3<f32>(x_1183.y, x_1183.x, x_1183.z) * vec3<f32>(x_1186.x, x_1186.x, x_1186.x));
        let x_1189 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
        let x_1191 : vec4<f32> = u_xlat10;
        let x_1194 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1196 : vec3<f32> = (vec3<f32>(x_1191.x, x_1191.y, x_1191.z) * vec3<f32>(x_1194.y, x_1194.y, x_1194.y));
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
        let x_1200 : f32 = u_xlat10.x;
        u_xlat9.w = x_1200;
        let x_1202 : vec4<f32> = u_xlat6;
        let x_1205 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1208 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1202.x, x_1202.y, x_1202.x, x_1202.y) * vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.y)) + vec4<f32>(x_1208.y, x_1208.w, x_1208.x, x_1208.w));
        let x_1211 : vec4<f32> = u_xlat6;
        let x_1214 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1211.x, x_1211.y) * vec2<f32>(x_1214.x, x_1214.y)) + vec2<f32>(x_1217.z, x_1217.w));
        let x_1221 : f32 = u_xlat9.y;
        u_xlat10.w = x_1221;
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1224 : vec2<f32> = vec2<f32>(x_1223.y, x_1223.z);
        let x_1225 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1225.x, x_1224.x, x_1225.z, x_1224.y);
        let x_1227 : vec4<f32> = u_xlat6;
        let x_1230 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1233 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y) * vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y)) + vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1233.y));
        let x_1236 : vec4<f32> = u_xlat6;
        let x_1239 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1242 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1236.x, x_1236.y, x_1236.x, x_1236.y) * vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y)) + vec4<f32>(x_1242.w, x_1242.y, x_1242.w, x_1242.z));
        let x_1245 : vec4<f32> = u_xlat6;
        let x_1248 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.x, x_1251.w, x_1251.z, x_1251.w));
        let x_1255 : vec4<f32> = u_xlat8;
        let x_1257 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1255.x, x_1255.x, x_1255.x, x_1255.y) * vec4<f32>(x_1257.z, x_1257.w, x_1257.y, x_1257.z));
        let x_1261 : vec4<f32> = u_xlat8;
        let x_1263 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1261.y, x_1261.y, x_1261.z, x_1261.z) * x_1263);
        let x_1267 : f32 = u_xlat8.z;
        let x_1269 : f32 = u_xlat13.y;
        u_xlat68 = (x_1267 * x_1269);
        let x_1272 : vec4<f32> = u_xlat11;
        let x_1273 : vec2<f32> = vec2<f32>(x_1272.x, x_1272.y);
        let x_1275 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1273.x, x_1273.y, x_1275);
        let x_1282 : vec3<f32> = txVec4;
        let x_1284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1282.xy, x_1282.z);
        u_xlat6.x = x_1284;
        let x_1287 : vec4<f32> = u_xlat11;
        let x_1288 : vec2<f32> = vec2<f32>(x_1287.z, x_1287.w);
        let x_1290 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1288.x, x_1288.y, x_1290);
        let x_1298 : vec3<f32> = txVec5;
        let x_1300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1298.xy, x_1298.z);
        u_xlat27 = x_1300;
        let x_1301 : f32 = u_xlat27;
        let x_1303 : f32 = u_xlat14.y;
        u_xlat27 = (x_1301 * x_1303);
        let x_1306 : f32 = u_xlat14.x;
        let x_1308 : f32 = u_xlat6.x;
        let x_1310 : f32 = u_xlat27;
        u_xlat6.x = ((x_1306 * x_1308) + x_1310);
        let x_1314 : vec2<f32> = u_xlat48;
        let x_1316 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec6;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1323.xy, x_1323.z);
        u_xlat27 = x_1325;
        let x_1327 : f32 = u_xlat14.z;
        let x_1328 : f32 = u_xlat27;
        let x_1331 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1327 * x_1328) + x_1331);
        let x_1335 : vec4<f32> = u_xlat10;
        let x_1336 : vec2<f32> = vec2<f32>(x_1335.x, x_1335.y);
        let x_1338 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1336.x, x_1336.y, x_1338);
        let x_1345 : vec3<f32> = txVec7;
        let x_1347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1345.xy, x_1345.z);
        u_xlat27 = x_1347;
        let x_1349 : f32 = u_xlat14.w;
        let x_1350 : f32 = u_xlat27;
        let x_1353 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1349 * x_1350) + x_1353);
        let x_1357 : vec4<f32> = u_xlat12;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.x, x_1357.y);
        let x_1360 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec8;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1367.xy, x_1367.z);
        u_xlat27 = x_1369;
        let x_1371 : f32 = u_xlat15.x;
        let x_1372 : f32 = u_xlat27;
        let x_1375 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1371 * x_1372) + x_1375);
        let x_1379 : vec4<f32> = u_xlat12;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.z, x_1379.w);
        let x_1382 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec9;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1389.xy, x_1389.z);
        u_xlat27 = x_1391;
        let x_1393 : f32 = u_xlat15.y;
        let x_1394 : f32 = u_xlat27;
        let x_1397 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1393 * x_1394) + x_1397);
        let x_1401 : vec4<f32> = u_xlat10;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.z, x_1401.w);
        let x_1404 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec10;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1411.xy, x_1411.z);
        u_xlat27 = x_1413;
        let x_1415 : f32 = u_xlat15.z;
        let x_1416 : f32 = u_xlat27;
        let x_1419 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1415 * x_1416) + x_1419);
        let x_1423 : vec4<f32> = u_xlat9;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.x, x_1423.y);
        let x_1426 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec11;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1433.xy, x_1433.z);
        u_xlat27 = x_1435;
        let x_1437 : f32 = u_xlat15.w;
        let x_1438 : f32 = u_xlat27;
        let x_1441 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1437 * x_1438) + x_1441);
        let x_1445 : vec4<f32> = u_xlat9;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.z, x_1445.w);
        let x_1448 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec12;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1455.xy, x_1455.z);
        u_xlat27 = x_1457;
        let x_1458 : f32 = u_xlat68;
        let x_1459 : f32 = u_xlat27;
        let x_1462 : f32 = u_xlat6.x;
        u_xlat66 = ((x_1458 * x_1459) + x_1462);
      } else {
        let x_1465 : vec4<f32> = u_xlat3;
        let x_1468 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1471 : vec2<f32> = ((vec2<f32>(x_1465.x, x_1465.y) * vec2<f32>(x_1468.z, x_1468.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1472 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1471.x, x_1471.y, x_1472.z, x_1472.w);
        let x_1474 : vec4<f32> = u_xlat6;
        let x_1476 : vec2<f32> = floor(vec2<f32>(x_1474.x, x_1474.y));
        let x_1477 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1476.x, x_1476.y, x_1477.z, x_1477.w);
        let x_1479 : vec4<f32> = u_xlat3;
        let x_1482 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1485 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1479.x, x_1479.y) * vec2<f32>(x_1482.z, x_1482.w)) + -(vec2<f32>(x_1485.x, x_1485.y)));
        let x_1489 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1489.x, x_1489.x, x_1489.y, x_1489.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1492 : vec4<f32> = u_xlat8;
        let x_1494 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1492.x, x_1492.x, x_1492.z, x_1492.z) * vec4<f32>(x_1494.x, x_1494.x, x_1494.z, x_1494.z));
        let x_1497 : vec4<f32> = u_xlat9;
        let x_1501 : vec2<f32> = (vec2<f32>(x_1497.y, x_1497.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1502 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1502.x, x_1501.x, x_1502.z, x_1501.y);
        let x_1504 : vec4<f32> = u_xlat9;
        let x_1507 : vec2<f32> = u_xlat48;
        let x_1509 : vec2<f32> = ((vec2<f32>(x_1504.x, x_1504.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1507));
        let x_1510 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1509.x, x_1510.y, x_1509.y, x_1510.w);
        let x_1512 : vec2<f32> = u_xlat48;
        let x_1514 : vec2<f32> = (-(x_1512) + vec2<f32>(1.0f, 1.0f));
        let x_1515 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1514.x, x_1514.y, x_1515.z, x_1515.w);
        let x_1517 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1517, vec2<f32>(0.0f, 0.0f));
        let x_1519 : vec2<f32> = u_xlat51;
        let x_1521 : vec2<f32> = u_xlat51;
        let x_1523 : vec4<f32> = u_xlat9;
        let x_1525 : vec2<f32> = ((-(x_1519) * x_1521) + vec2<f32>(x_1523.x, x_1523.y));
        let x_1526 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1525.x, x_1525.y, x_1526.z, x_1526.w);
        let x_1528 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1528, vec2<f32>(0.0f, 0.0f));
        let x_1531 : vec2<f32> = u_xlat51;
        let x_1533 : vec2<f32> = u_xlat51;
        let x_1535 : vec4<f32> = u_xlat8;
        let x_1537 : vec2<f32> = ((-(x_1531) * x_1533) + vec2<f32>(x_1535.y, x_1535.w));
        let x_1538 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1537.x, x_1538.y, x_1537.y);
        let x_1540 : vec4<f32> = u_xlat9;
        let x_1542 : vec2<f32> = (vec2<f32>(x_1540.x, x_1540.y) + vec2<f32>(2.0f, 2.0f));
        let x_1543 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1542.x, x_1542.y, x_1543.z, x_1543.w);
        let x_1545 : vec3<f32> = u_xlat29;
        let x_1547 : vec2<f32> = (vec2<f32>(x_1545.x, x_1545.z) + vec2<f32>(2.0f, 2.0f));
        let x_1548 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1548.x, x_1547.x, x_1548.z, x_1547.y);
        let x_1551 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1551 * 0.081632003f);
        let x_1555 : vec4<f32> = u_xlat8;
        let x_1558 : vec3<f32> = (vec3<f32>(x_1555.z, x_1555.x, x_1555.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1559 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1559.w);
        let x_1561 : vec4<f32> = u_xlat9;
        let x_1564 : vec2<f32> = (vec2<f32>(x_1561.x, x_1561.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1565 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1564.x, x_1564.y, x_1565.z, x_1565.w);
        let x_1568 : f32 = u_xlat12.y;
        u_xlat11.x = x_1568;
        let x_1570 : vec2<f32> = u_xlat48;
        let x_1577 : vec2<f32> = ((vec2<f32>(x_1570.x, x_1570.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1578 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1578.x, x_1577.x, x_1578.z, x_1577.y);
        let x_1580 : vec2<f32> = u_xlat48;
        let x_1584 : vec2<f32> = ((vec2<f32>(x_1580.x, x_1580.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1585 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1584.x, x_1585.y, x_1584.y, x_1585.w);
        let x_1588 : f32 = u_xlat8.x;
        u_xlat9.y = x_1588;
        let x_1591 : f32 = u_xlat10.y;
        u_xlat9.w = x_1591;
        let x_1593 : vec4<f32> = u_xlat9;
        let x_1594 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1593 + x_1594);
        let x_1596 : vec2<f32> = u_xlat48;
        let x_1599 : vec2<f32> = ((vec2<f32>(x_1596.y, x_1596.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1600 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1600.x, x_1599.x, x_1600.z, x_1599.y);
        let x_1602 : vec2<f32> = u_xlat48;
        let x_1605 : vec2<f32> = ((vec2<f32>(x_1602.y, x_1602.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1606 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1605.x, x_1606.y, x_1605.y, x_1606.w);
        let x_1609 : f32 = u_xlat8.y;
        u_xlat10.y = x_1609;
        let x_1611 : vec4<f32> = u_xlat10;
        let x_1612 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1611 + x_1612);
        let x_1614 : vec4<f32> = u_xlat9;
        let x_1615 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1614 / x_1615);
        let x_1617 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1617 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1623 : vec4<f32> = u_xlat10;
        let x_1624 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1623 / x_1624);
        let x_1626 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1626 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1628 : vec4<f32> = u_xlat9;
        let x_1631 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1628.w, x_1628.x, x_1628.y, x_1628.z) * vec4<f32>(x_1631.x, x_1631.x, x_1631.x, x_1631.x));
        let x_1634 : vec4<f32> = u_xlat10;
        let x_1637 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1634.x, x_1634.w, x_1634.y, x_1634.z) * vec4<f32>(x_1637.y, x_1637.y, x_1637.y, x_1637.y));
        let x_1640 : vec4<f32> = u_xlat9;
        let x_1641 : vec3<f32> = vec3<f32>(x_1640.y, x_1640.z, x_1640.w);
        let x_1642 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1641.x, x_1642.y, x_1641.y, x_1641.z);
        let x_1645 : f32 = u_xlat10.x;
        u_xlat12.y = x_1645;
        let x_1647 : vec4<f32> = u_xlat6;
        let x_1650 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1653 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1647.x, x_1647.y, x_1647.x, x_1647.y) * vec4<f32>(x_1650.x, x_1650.y, x_1650.x, x_1650.y)) + vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1653.y));
        let x_1656 : vec4<f32> = u_xlat6;
        let x_1659 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1662 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1656.x, x_1656.y) * vec2<f32>(x_1659.x, x_1659.y)) + vec2<f32>(x_1662.w, x_1662.y));
        let x_1666 : f32 = u_xlat12.y;
        u_xlat9.y = x_1666;
        let x_1669 : f32 = u_xlat10.z;
        u_xlat12.y = x_1669;
        let x_1671 : vec4<f32> = u_xlat6;
        let x_1674 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1677 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1671.x, x_1671.y, x_1671.x, x_1671.y) * vec4<f32>(x_1674.x, x_1674.y, x_1674.x, x_1674.y)) + vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1677.y));
        let x_1680 : vec4<f32> = u_xlat6;
        let x_1683 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1686 : vec4<f32> = u_xlat12;
        let x_1688 : vec2<f32> = ((vec2<f32>(x_1680.x, x_1680.y) * vec2<f32>(x_1683.x, x_1683.y)) + vec2<f32>(x_1686.w, x_1686.y));
        let x_1689 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1688.x, x_1688.y, x_1689.z, x_1689.w);
        let x_1692 : f32 = u_xlat12.y;
        u_xlat9.z = x_1692;
        let x_1695 : vec4<f32> = u_xlat6;
        let x_1698 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1701 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1695.x, x_1695.y, x_1695.x, x_1695.y) * vec4<f32>(x_1698.x, x_1698.y, x_1698.x, x_1698.y)) + vec4<f32>(x_1701.x, x_1701.y, x_1701.x, x_1701.z));
        let x_1705 : f32 = u_xlat10.w;
        u_xlat12.y = x_1705;
        let x_1708 : vec4<f32> = u_xlat6;
        let x_1711 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1714 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1708.x, x_1708.y, x_1708.x, x_1708.y) * vec4<f32>(x_1711.x, x_1711.y, x_1711.x, x_1711.y)) + vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1714.y));
        let x_1718 : vec4<f32> = u_xlat6;
        let x_1721 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1724 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1718.x, x_1718.y) * vec2<f32>(x_1721.x, x_1721.y)) + vec2<f32>(x_1724.w, x_1724.y));
        let x_1728 : f32 = u_xlat12.y;
        u_xlat9.w = x_1728;
        let x_1731 : vec4<f32> = u_xlat6;
        let x_1734 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1737 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1731.x, x_1731.y) * vec2<f32>(x_1734.x, x_1734.y)) + vec2<f32>(x_1737.x, x_1737.w));
        let x_1740 : vec4<f32> = u_xlat12;
        let x_1741 : vec3<f32> = vec3<f32>(x_1740.x, x_1740.z, x_1740.w);
        let x_1742 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1741.x, x_1742.y, x_1741.y, x_1741.z);
        let x_1744 : vec4<f32> = u_xlat6;
        let x_1747 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1750 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.y) * vec4<f32>(x_1747.x, x_1747.y, x_1747.x, x_1747.y)) + vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1750.y));
        let x_1754 : vec4<f32> = u_xlat6;
        let x_1757 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1760 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1754.x, x_1754.y) * vec2<f32>(x_1757.x, x_1757.y)) + vec2<f32>(x_1760.w, x_1760.y));
        let x_1764 : f32 = u_xlat9.x;
        u_xlat10.x = x_1764;
        let x_1766 : vec4<f32> = u_xlat6;
        let x_1769 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1772 : vec4<f32> = u_xlat10;
        let x_1774 : vec2<f32> = ((vec2<f32>(x_1766.x, x_1766.y) * vec2<f32>(x_1769.x, x_1769.y)) + vec2<f32>(x_1772.x, x_1772.y));
        let x_1775 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1774.x, x_1774.y, x_1775.z, x_1775.w);
        let x_1778 : vec4<f32> = u_xlat8;
        let x_1780 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1778.x, x_1778.x, x_1778.x, x_1778.x) * x_1780);
        let x_1783 : vec4<f32> = u_xlat8;
        let x_1785 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1783.y, x_1783.y, x_1783.y, x_1783.y) * x_1785);
        let x_1788 : vec4<f32> = u_xlat8;
        let x_1790 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1788.z, x_1788.z, x_1788.z, x_1788.z) * x_1790);
        let x_1792 : vec4<f32> = u_xlat8;
        let x_1794 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1792.w, x_1792.w, x_1792.w, x_1792.w) * x_1794);
        let x_1797 : vec4<f32> = u_xlat13;
        let x_1798 : vec2<f32> = vec2<f32>(x_1797.x, x_1797.y);
        let x_1800 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1798.x, x_1798.y, x_1800);
        let x_1807 : vec3<f32> = txVec13;
        let x_1809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1807.xy, x_1807.z);
        u_xlat68 = x_1809;
        let x_1811 : vec4<f32> = u_xlat13;
        let x_1812 : vec2<f32> = vec2<f32>(x_1811.z, x_1811.w);
        let x_1814 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1812.x, x_1812.y, x_1814);
        let x_1822 : vec3<f32> = txVec14;
        let x_1824 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1822.xy, x_1822.z);
        u_xlat70 = x_1824;
        let x_1825 : f32 = u_xlat70;
        let x_1827 : f32 = u_xlat18.y;
        u_xlat70 = (x_1825 * x_1827);
        let x_1830 : f32 = u_xlat18.x;
        let x_1831 : f32 = u_xlat68;
        let x_1833 : f32 = u_xlat70;
        u_xlat68 = ((x_1830 * x_1831) + x_1833);
        let x_1836 : vec2<f32> = u_xlat48;
        let x_1838 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1836.x, x_1836.y, x_1838);
        let x_1845 : vec3<f32> = txVec15;
        let x_1847 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1845.xy, x_1845.z);
        u_xlat48.x = x_1847;
        let x_1850 : f32 = u_xlat18.z;
        let x_1852 : f32 = u_xlat48.x;
        let x_1854 : f32 = u_xlat68;
        u_xlat68 = ((x_1850 * x_1852) + x_1854);
        let x_1857 : vec4<f32> = u_xlat16;
        let x_1858 : vec2<f32> = vec2<f32>(x_1857.x, x_1857.y);
        let x_1860 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1858.x, x_1858.y, x_1860);
        let x_1867 : vec3<f32> = txVec16;
        let x_1869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1867.xy, x_1867.z);
        u_xlat48.x = x_1869;
        let x_1872 : f32 = u_xlat18.w;
        let x_1874 : f32 = u_xlat48.x;
        let x_1876 : f32 = u_xlat68;
        u_xlat68 = ((x_1872 * x_1874) + x_1876);
        let x_1879 : vec4<f32> = u_xlat14;
        let x_1880 : vec2<f32> = vec2<f32>(x_1879.x, x_1879.y);
        let x_1882 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1880.x, x_1880.y, x_1882);
        let x_1889 : vec3<f32> = txVec17;
        let x_1891 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1889.xy, x_1889.z);
        u_xlat48.x = x_1891;
        let x_1894 : f32 = u_xlat19.x;
        let x_1896 : f32 = u_xlat48.x;
        let x_1898 : f32 = u_xlat68;
        u_xlat68 = ((x_1894 * x_1896) + x_1898);
        let x_1901 : vec4<f32> = u_xlat14;
        let x_1902 : vec2<f32> = vec2<f32>(x_1901.z, x_1901.w);
        let x_1904 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1902.x, x_1902.y, x_1904);
        let x_1911 : vec3<f32> = txVec18;
        let x_1913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1911.xy, x_1911.z);
        u_xlat48.x = x_1913;
        let x_1916 : f32 = u_xlat19.y;
        let x_1918 : f32 = u_xlat48.x;
        let x_1920 : f32 = u_xlat68;
        u_xlat68 = ((x_1916 * x_1918) + x_1920);
        let x_1923 : vec4<f32> = u_xlat15;
        let x_1924 : vec2<f32> = vec2<f32>(x_1923.x, x_1923.y);
        let x_1926 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1924.x, x_1924.y, x_1926);
        let x_1933 : vec3<f32> = txVec19;
        let x_1935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1933.xy, x_1933.z);
        u_xlat48.x = x_1935;
        let x_1938 : f32 = u_xlat19.z;
        let x_1940 : f32 = u_xlat48.x;
        let x_1942 : f32 = u_xlat68;
        u_xlat68 = ((x_1938 * x_1940) + x_1942);
        let x_1945 : vec4<f32> = u_xlat16;
        let x_1946 : vec2<f32> = vec2<f32>(x_1945.z, x_1945.w);
        let x_1948 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1946.x, x_1946.y, x_1948);
        let x_1955 : vec3<f32> = txVec20;
        let x_1957 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1955.xy, x_1955.z);
        u_xlat48.x = x_1957;
        let x_1960 : f32 = u_xlat19.w;
        let x_1962 : f32 = u_xlat48.x;
        let x_1964 : f32 = u_xlat68;
        u_xlat68 = ((x_1960 * x_1962) + x_1964);
        let x_1967 : vec4<f32> = u_xlat17;
        let x_1968 : vec2<f32> = vec2<f32>(x_1967.x, x_1967.y);
        let x_1970 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1968.x, x_1968.y, x_1970);
        let x_1977 : vec3<f32> = txVec21;
        let x_1979 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1977.xy, x_1977.z);
        u_xlat48.x = x_1979;
        let x_1982 : f32 = u_xlat20.x;
        let x_1984 : f32 = u_xlat48.x;
        let x_1986 : f32 = u_xlat68;
        u_xlat68 = ((x_1982 * x_1984) + x_1986);
        let x_1989 : vec4<f32> = u_xlat17;
        let x_1990 : vec2<f32> = vec2<f32>(x_1989.z, x_1989.w);
        let x_1992 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1990.x, x_1990.y, x_1992);
        let x_1999 : vec3<f32> = txVec22;
        let x_2001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1999.xy, x_1999.z);
        u_xlat48.x = x_2001;
        let x_2004 : f32 = u_xlat20.y;
        let x_2006 : f32 = u_xlat48.x;
        let x_2008 : f32 = u_xlat68;
        u_xlat68 = ((x_2004 * x_2006) + x_2008);
        let x_2011 : vec2<f32> = u_xlat30;
        let x_2013 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2011.x, x_2011.y, x_2013);
        let x_2020 : vec3<f32> = txVec23;
        let x_2022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2020.xy, x_2020.z);
        u_xlat48.x = x_2022;
        let x_2025 : f32 = u_xlat20.z;
        let x_2027 : f32 = u_xlat48.x;
        let x_2029 : f32 = u_xlat68;
        u_xlat68 = ((x_2025 * x_2027) + x_2029);
        let x_2032 : vec2<f32> = u_xlat57;
        let x_2034 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2032.x, x_2032.y, x_2034);
        let x_2041 : vec3<f32> = txVec24;
        let x_2043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2041.xy, x_2041.z);
        u_xlat48.x = x_2043;
        let x_2046 : f32 = u_xlat20.w;
        let x_2048 : f32 = u_xlat48.x;
        let x_2050 : f32 = u_xlat68;
        u_xlat68 = ((x_2046 * x_2048) + x_2050);
        let x_2053 : vec4<f32> = u_xlat12;
        let x_2054 : vec2<f32> = vec2<f32>(x_2053.x, x_2053.y);
        let x_2056 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2054.x, x_2054.y, x_2056);
        let x_2063 : vec3<f32> = txVec25;
        let x_2065 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2063.xy, x_2063.z);
        u_xlat48.x = x_2065;
        let x_2068 : f32 = u_xlat8.x;
        let x_2070 : f32 = u_xlat48.x;
        let x_2072 : f32 = u_xlat68;
        u_xlat68 = ((x_2068 * x_2070) + x_2072);
        let x_2075 : vec4<f32> = u_xlat12;
        let x_2076 : vec2<f32> = vec2<f32>(x_2075.z, x_2075.w);
        let x_2078 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2076.x, x_2076.y, x_2078);
        let x_2085 : vec3<f32> = txVec26;
        let x_2087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2085.xy, x_2085.z);
        u_xlat48.x = x_2087;
        let x_2090 : f32 = u_xlat8.y;
        let x_2092 : f32 = u_xlat48.x;
        let x_2094 : f32 = u_xlat68;
        u_xlat68 = ((x_2090 * x_2092) + x_2094);
        let x_2097 : vec2<f32> = u_xlat52;
        let x_2099 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2097.x, x_2097.y, x_2099);
        let x_2106 : vec3<f32> = txVec27;
        let x_2108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2106.xy, x_2106.z);
        u_xlat48.x = x_2108;
        let x_2111 : f32 = u_xlat8.z;
        let x_2113 : f32 = u_xlat48.x;
        let x_2115 : f32 = u_xlat68;
        u_xlat68 = ((x_2111 * x_2113) + x_2115);
        let x_2118 : vec4<f32> = u_xlat6;
        let x_2119 : vec2<f32> = vec2<f32>(x_2118.x, x_2118.y);
        let x_2121 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2119.x, x_2119.y, x_2121);
        let x_2128 : vec3<f32> = txVec28;
        let x_2130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2128.xy, x_2128.z);
        u_xlat6.x = x_2130;
        let x_2133 : f32 = u_xlat8.w;
        let x_2135 : f32 = u_xlat6.x;
        let x_2137 : f32 = u_xlat68;
        u_xlat66 = ((x_2133 * x_2135) + x_2137);
      }
    }
  } else {
    let x_2141 : vec4<f32> = u_xlat3;
    let x_2142 : vec2<f32> = vec2<f32>(x_2141.x, x_2141.y);
    let x_2144 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2142.x, x_2142.y, x_2144);
    let x_2151 : vec3<f32> = txVec29;
    let x_2153 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2151.xy, x_2151.z);
    u_xlat66 = x_2153;
  }
  let x_2155 : f32 = x_515.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2155) + 1.0f);
  let x_2159 : f32 = u_xlat66;
  let x_2161 : f32 = x_515.x_MainLightShadowParams.x;
  let x_2164 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2159 * x_2161) + x_2164);
  let x_2169 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_2169);
  let x_2174 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2174 >= 1.0f);
  let x_2176 : bool = u_xlatb45;
  let x_2178 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_2176 | x_2178);
  let x_2182 : bool = u_xlatb24.x;
  if (x_2182) {
    x_2183 = 1.0f;
  } else {
    let x_2188 : f32 = u_xlat3.x;
    x_2183 = x_2188;
  }
  let x_2189 : f32 = x_2183;
  u_xlat3.x = x_2189;
  let x_2192 : vec3<f32> = vs_INTERP0;
  let x_2194 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat24 = (x_2192 + -(x_2194));
  let x_2197 : vec3<f32> = u_xlat24;
  let x_2198 : vec3<f32> = u_xlat24;
  u_xlat24.x = dot(x_2197, x_2198);
  let x_2202 : f32 = u_xlat24.x;
  let x_2204 : f32 = x_515.x_MainLightShadowParams.z;
  let x_2207 : f32 = x_515.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_2202 * x_2204) + x_2207);
  let x_2211 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2211, 0.0f, 1.0f);
  let x_2216 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2216) + 1.0f);
  let x_2220 : f32 = u_xlat24.x;
  let x_2221 : f32 = u_xlat45;
  let x_2224 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2220 * x_2221) + x_2224);
  let x_2233 : f32 = x_2231.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_2233 == -1.0f));
  let x_2237 : bool = u_xlatb24.x;
  if (x_2237) {
    let x_2240 : vec3<f32> = vs_INTERP0;
    let x_2243 : vec4<f32> = x_2231.x_MainLightWorldToLight[1i];
    let x_2245 : vec2<f32> = (vec2<f32>(x_2240.y, x_2240.y) * vec2<f32>(x_2243.x, x_2243.y));
    let x_2246 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2245.x, x_2245.y, x_2246.z);
    let x_2249 : vec4<f32> = x_2231.x_MainLightWorldToLight[0i];
    let x_2251 : vec3<f32> = vs_INTERP0;
    let x_2254 : vec3<f32> = u_xlat24;
    let x_2256 : vec2<f32> = ((vec2<f32>(x_2249.x, x_2249.y) * vec2<f32>(x_2251.x, x_2251.x)) + vec2<f32>(x_2254.x, x_2254.y));
    let x_2257 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2256.x, x_2256.y, x_2257.z);
    let x_2260 : vec4<f32> = x_2231.x_MainLightWorldToLight[2i];
    let x_2262 : vec3<f32> = vs_INTERP0;
    let x_2265 : vec3<f32> = u_xlat24;
    let x_2267 : vec2<f32> = ((vec2<f32>(x_2260.x, x_2260.y) * vec2<f32>(x_2262.z, x_2262.z)) + vec2<f32>(x_2265.x, x_2265.y));
    let x_2268 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2267.x, x_2267.y, x_2268.z);
    let x_2270 : vec3<f32> = u_xlat24;
    let x_2273 : vec4<f32> = x_2231.x_MainLightWorldToLight[3i];
    let x_2275 : vec2<f32> = (vec2<f32>(x_2270.x, x_2270.y) + vec2<f32>(x_2273.x, x_2273.y));
    let x_2276 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2275.x, x_2275.y, x_2276.z);
    let x_2278 : vec3<f32> = u_xlat24;
    let x_2281 : vec2<f32> = ((vec2<f32>(x_2278.x, x_2278.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2282 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2281.x, x_2281.y, x_2282.z);
    let x_2289 : vec3<f32> = u_xlat24;
    let x_2292 : f32 = x_44.x_GlobalMipBias.x;
    let x_2293 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2289.x, x_2289.y), x_2292);
    u_xlat6 = x_2293;
    let x_2295 : f32 = x_2231.x_MainLightCookieTextureFormat;
    let x_2297 : f32 = x_2231.x_MainLightCookieTextureFormat;
    let x_2299 : f32 = x_2231.x_MainLightCookieTextureFormat;
    let x_2301 : f32 = x_2231.x_MainLightCookieTextureFormat;
    let x_2302 : vec4<f32> = vec4<f32>(x_2295, x_2297, x_2299, x_2301);
    let x_2309 : vec4<bool> = (vec4<f32>(x_2302.x, x_2302.y, x_2302.z, x_2302.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_2309.x, x_2309.y);
    let x_2312 : bool = u_xlatb24.y;
    if (x_2312) {
      let x_2317 : f32 = u_xlat6.w;
      x_2313 = x_2317;
    } else {
      let x_2320 : f32 = u_xlat6.x;
      x_2313 = x_2320;
    }
    let x_2321 : f32 = x_2313;
    u_xlat45 = x_2321;
    let x_2323 : bool = u_xlatb24.x;
    if (x_2323) {
      let x_2327 : vec4<f32> = u_xlat6;
      x_2324 = vec3<f32>(x_2327.x, x_2327.y, x_2327.z);
    } else {
      let x_2330 : f32 = u_xlat45;
      x_2324 = vec3<f32>(x_2330, x_2330, x_2330);
    }
    let x_2332 : vec3<f32> = x_2324;
    u_xlat24 = x_2332;
  } else {
    u_xlat24.x = 1.0f;
    u_xlat24.y = 1.0f;
    u_xlat24.z = 1.0f;
  }
  let x_2337 : vec3<f32> = u_xlat24;
  let x_2339 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat24 = (x_2337 * vec3<f32>(x_2339.x, x_2339.y, x_2339.z));
  let x_2342 : f32 = u_xlat67;
  let x_2344 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_2342, x_2342, x_2342) * x_2344);
  let x_2346 : vec3<f32> = u_xlat4;
  let x_2348 : vec4<f32> = u_xlat1;
  u_xlat68 = dot(-(x_2346), vec3<f32>(x_2348.x, x_2348.y, x_2348.z));
  let x_2351 : f32 = u_xlat68;
  let x_2352 : f32 = u_xlat68;
  u_xlat68 = (x_2351 + x_2352);
  let x_2354 : vec4<f32> = u_xlat1;
  let x_2356 : f32 = u_xlat68;
  let x_2360 : vec3<f32> = u_xlat4;
  let x_2362 : vec3<f32> = ((vec3<f32>(x_2354.x, x_2354.y, x_2354.z) * -(vec3<f32>(x_2356, x_2356, x_2356))) + -(x_2360));
  let x_2363 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2362.x, x_2362.y, x_2362.z, x_2363.w);
  let x_2365 : vec4<f32> = u_xlat1;
  let x_2367 : vec3<f32> = u_xlat4;
  u_xlat68 = dot(vec3<f32>(x_2365.x, x_2365.y, x_2365.z), x_2367);
  let x_2369 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2369, 0.0f, 1.0f);
  let x_2371 : f32 = u_xlat68;
  u_xlat68 = (-(x_2371) + 1.0f);
  let x_2374 : f32 = u_xlat68;
  let x_2375 : f32 = u_xlat68;
  u_xlat68 = (x_2374 * x_2375);
  let x_2377 : f32 = u_xlat68;
  let x_2378 : f32 = u_xlat68;
  u_xlat68 = (x_2377 * x_2378);
  let x_2381 : f32 = u_xlat63;
  u_xlat69 = ((-(x_2381) * 0.699999988f) + 1.700000048f);
  let x_2387 : f32 = u_xlat63;
  let x_2388 : f32 = u_xlat69;
  u_xlat63 = (x_2387 * x_2388);
  let x_2390 : f32 = u_xlat63;
  u_xlat63 = (x_2390 * 6.0f);
  let x_2400 : vec4<f32> = u_xlat6;
  let x_2402 : f32 = u_xlat63;
  let x_2403 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2400.x, x_2400.y, x_2400.z), x_2402);
  u_xlat6 = x_2403;
  let x_2405 : f32 = u_xlat6.w;
  u_xlat63 = (x_2405 + -1.0f);
  let x_2408 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2409 : f32 = u_xlat63;
  u_xlat63 = ((x_2408 * x_2409) + 1.0f);
  let x_2412 : f32 = u_xlat63;
  u_xlat63 = max(x_2412, 0.0f);
  let x_2414 : f32 = u_xlat63;
  u_xlat63 = log2(x_2414);
  let x_2416 : f32 = u_xlat63;
  let x_2418 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2416 * x_2418);
  let x_2420 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2420);
  let x_2422 : f32 = u_xlat63;
  let x_2424 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2422 * x_2424);
  let x_2426 : vec4<f32> = u_xlat6;
  let x_2428 : f32 = u_xlat63;
  let x_2430 : vec3<f32> = (vec3<f32>(x_2426.x, x_2426.y, x_2426.z) * vec3<f32>(x_2428, x_2428, x_2428));
  let x_2431 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
  let x_2433 : vec4<f32> = u_xlat2;
  let x_2435 : vec4<f32> = u_xlat2;
  let x_2439 : vec2<f32> = ((vec2<f32>(x_2433.x, x_2433.x) * vec2<f32>(x_2435.x, x_2435.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2440 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2439.x, x_2439.y, x_2440.z, x_2440.w);
  let x_2443 : f32 = u_xlat8.y;
  u_xlat63 = (1.0f / x_2443);
  let x_2445 : vec4<f32> = u_xlat0;
  let x_2448 : f32 = u_xlat64;
  u_xlat29 = (-(vec3<f32>(x_2445.x, x_2445.y, x_2445.z)) + vec3<f32>(x_2448, x_2448, x_2448));
  let x_2451 : f32 = u_xlat68;
  let x_2453 : vec3<f32> = u_xlat29;
  let x_2455 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2451, x_2451, x_2451) * x_2453) + vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
  let x_2458 : f32 = u_xlat63;
  let x_2460 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2458, x_2458, x_2458) * x_2460);
  let x_2462 : vec4<f32> = u_xlat6;
  let x_2464 : vec3<f32> = u_xlat29;
  let x_2465 : vec3<f32> = (vec3<f32>(x_2462.x, x_2462.y, x_2462.z) * x_2464);
  let x_2466 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
  let x_2468 : vec4<f32> = u_xlat5;
  let x_2470 : vec3<f32> = u_xlat7;
  let x_2472 : vec4<f32> = u_xlat6;
  let x_2474 : vec3<f32> = ((vec3<f32>(x_2468.x, x_2468.y, x_2468.z) * x_2470) + vec3<f32>(x_2472.x, x_2472.y, x_2472.z));
  let x_2475 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
  let x_2478 : f32 = u_xlat3.x;
  let x_2480 : f32 = x_359.unity_LightData.z;
  u_xlat63 = (x_2478 * x_2480);
  let x_2482 : vec4<f32> = u_xlat1;
  let x_2485 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat64 = dot(vec3<f32>(x_2482.x, x_2482.y, x_2482.z), vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
  let x_2488 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2488, 0.0f, 1.0f);
  let x_2490 : f32 = u_xlat63;
  let x_2491 : f32 = u_xlat64;
  u_xlat63 = (x_2490 * x_2491);
  let x_2493 : f32 = u_xlat63;
  let x_2495 : vec3<f32> = u_xlat24;
  let x_2496 : vec3<f32> = (vec3<f32>(x_2493, x_2493, x_2493) * x_2495);
  let x_2497 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);
  let x_2499 : vec3<f32> = u_xlat4;
  let x_2501 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2503 : vec3<f32> = (x_2499 + vec3<f32>(x_2501.x, x_2501.y, x_2501.z));
  let x_2504 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2503.x, x_2503.y, x_2503.z, x_2504.w);
  let x_2506 : vec4<f32> = u_xlat6;
  let x_2508 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2506.x, x_2506.y, x_2506.z), vec3<f32>(x_2508.x, x_2508.y, x_2508.z));
  let x_2511 : f32 = u_xlat63;
  u_xlat63 = max(x_2511, 1.17549435e-37f);
  let x_2514 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2514);
  let x_2516 : f32 = u_xlat63;
  let x_2518 : vec4<f32> = u_xlat6;
  let x_2520 : vec3<f32> = (vec3<f32>(x_2516, x_2516, x_2516) * vec3<f32>(x_2518.x, x_2518.y, x_2518.z));
  let x_2521 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2521.w);
  let x_2523 : vec4<f32> = u_xlat1;
  let x_2525 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2523.x, x_2523.y, x_2523.z), vec3<f32>(x_2525.x, x_2525.y, x_2525.z));
  let x_2528 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2528, 0.0f, 1.0f);
  let x_2531 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2533 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2531.x, x_2531.y, x_2531.z), vec3<f32>(x_2533.x, x_2533.y, x_2533.z));
  let x_2536 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2536, 0.0f, 1.0f);
  let x_2538 : f32 = u_xlat63;
  let x_2539 : f32 = u_xlat63;
  u_xlat63 = (x_2538 * x_2539);
  let x_2541 : f32 = u_xlat63;
  let x_2543 : f32 = u_xlat8.x;
  u_xlat63 = ((x_2541 * x_2543) + 1.000010014f);
  let x_2547 : f32 = u_xlat64;
  let x_2548 : f32 = u_xlat64;
  u_xlat64 = (x_2547 * x_2548);
  let x_2550 : f32 = u_xlat63;
  let x_2551 : f32 = u_xlat63;
  u_xlat63 = (x_2550 * x_2551);
  let x_2553 : f32 = u_xlat64;
  u_xlat64 = max(x_2553, 0.100000001f);
  let x_2556 : f32 = u_xlat63;
  let x_2557 : f32 = u_xlat64;
  u_xlat63 = (x_2556 * x_2557);
  let x_2559 : f32 = u_xlat23;
  let x_2560 : f32 = u_xlat63;
  u_xlat63 = (x_2559 * x_2560);
  let x_2562 : f32 = u_xlat65;
  let x_2563 : f32 = u_xlat63;
  u_xlat63 = (x_2562 / x_2563);
  let x_2565 : vec4<f32> = u_xlat0;
  let x_2567 : f32 = u_xlat63;
  let x_2570 : vec3<f32> = u_xlat7;
  let x_2571 : vec3<f32> = ((vec3<f32>(x_2565.x, x_2565.y, x_2565.z) * vec3<f32>(x_2567, x_2567, x_2567)) + x_2570);
  let x_2572 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2571.x, x_2571.y, x_2571.z, x_2572.w);
  let x_2574 : vec4<f32> = u_xlat3;
  let x_2576 : vec4<f32> = u_xlat6;
  let x_2578 : vec3<f32> = (vec3<f32>(x_2574.x, x_2574.y, x_2574.z) * vec3<f32>(x_2576.x, x_2576.y, x_2576.z));
  let x_2579 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2579.w);
  let x_2582 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2584 : f32 = x_359.unity_LightData.y;
  u_xlat63 = min(x_2582, x_2584);
  let x_2586 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2586));
  let x_2591 : f32 = x_2231.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2593 : f32 = x_2231.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2595 : f32 = x_2231.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2597 : f32 = x_2231.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2598 : vec4<f32> = vec4<f32>(x_2591, x_2593, x_2595, x_2597);
  let x_2604 : vec4<bool> = (vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2598.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2604.x, x_2604.y);
  u_xlat29.x = 0.0f;
  u_xlat29.y = 0.0f;
  u_xlat29.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2615 : u32 = u_xlatu_loop_1;
    let x_2616 : u32 = u_xlatu63;
    if ((x_2615 < x_2616)) {
    } else {
      break;
    }
    let x_2619 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_2619 >> 2u);
    let x_2622 : u32 = u_xlatu_loop_1;
    u_xlati66 = bitcast<i32>((x_2622 & 3u));
    let x_2625 : u32 = u_xlatu2;
    let x_2628 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2625)];
    let x_2638 : i32 = u_xlati66;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2643 : vec4<u32> = indexable[x_2638];
    u_xlat2.x = dot(x_2628, bitcast<vec4<f32>>(x_2643));
    let x_2648 : f32 = u_xlat2.x;
    u_xlatu2 = bitcast<u32>(i32(x_2648));
    let x_2651 : vec3<f32> = vs_INTERP0;
    let x_2663 : u32 = u_xlatu2;
    let x_2666 : vec4<f32> = x_2662.x_AdditionalLightsPosition[bitcast<i32>(x_2663)];
    let x_2669 : u32 = u_xlatu2;
    let x_2672 : vec4<f32> = x_2662.x_AdditionalLightsPosition[bitcast<i32>(x_2669)];
    let x_2674 : vec3<f32> = ((-(x_2651) * vec3<f32>(x_2666.w, x_2666.w, x_2666.w)) + vec3<f32>(x_2672.x, x_2672.y, x_2672.z));
    let x_2675 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2674.x, x_2674.y, x_2674.z, x_2675.w);
    let x_2677 : vec4<f32> = u_xlat9;
    let x_2679 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2677.x, x_2677.y, x_2677.z), vec3<f32>(x_2679.x, x_2679.y, x_2679.z));
    let x_2682 : f32 = u_xlat66;
    u_xlat66 = max(x_2682, 6.10351562e-05f);
    let x_2685 : f32 = u_xlat66;
    u_xlat68 = inverseSqrt(x_2685);
    let x_2687 : f32 = u_xlat68;
    let x_2689 : vec4<f32> = u_xlat9;
    let x_2691 : vec3<f32> = (vec3<f32>(x_2687, x_2687, x_2687) * vec3<f32>(x_2689.x, x_2689.y, x_2689.z));
    let x_2692 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2691.x, x_2691.y, x_2691.z, x_2692.w);
    let x_2694 : f32 = u_xlat66;
    u_xlat48.x = (1.0f / x_2694);
    let x_2697 : f32 = u_xlat66;
    let x_2698 : u32 = u_xlatu2;
    let x_2701 : f32 = x_2662.x_AdditionalLightsAttenuation[bitcast<i32>(x_2698)].x;
    u_xlat66 = (x_2697 * x_2701);
    let x_2703 : f32 = u_xlat66;
    let x_2705 : f32 = u_xlat66;
    u_xlat66 = ((-(x_2703) * x_2705) + 1.0f);
    let x_2708 : f32 = u_xlat66;
    u_xlat66 = max(x_2708, 0.0f);
    let x_2710 : f32 = u_xlat66;
    let x_2711 : f32 = u_xlat66;
    u_xlat66 = (x_2710 * x_2711);
    let x_2713 : f32 = u_xlat66;
    let x_2715 : f32 = u_xlat48.x;
    u_xlat66 = (x_2713 * x_2715);
    let x_2717 : u32 = u_xlatu2;
    let x_2720 : vec4<f32> = x_2662.x_AdditionalLightsSpotDir[bitcast<i32>(x_2717)];
    let x_2722 : vec4<f32> = u_xlat10;
    u_xlat48.x = dot(vec3<f32>(x_2720.x, x_2720.y, x_2720.z), vec3<f32>(x_2722.x, x_2722.y, x_2722.z));
    let x_2727 : f32 = u_xlat48.x;
    let x_2728 : u32 = u_xlatu2;
    let x_2731 : f32 = x_2662.x_AdditionalLightsAttenuation[bitcast<i32>(x_2728)].z;
    let x_2733 : u32 = u_xlatu2;
    let x_2736 : f32 = x_2662.x_AdditionalLightsAttenuation[bitcast<i32>(x_2733)].w;
    u_xlat48.x = ((x_2727 * x_2731) + x_2736);
    let x_2740 : f32 = u_xlat48.x;
    u_xlat48.x = clamp(x_2740, 0.0f, 1.0f);
    let x_2744 : f32 = u_xlat48.x;
    let x_2746 : f32 = u_xlat48.x;
    u_xlat48.x = (x_2744 * x_2746);
    let x_2749 : f32 = u_xlat66;
    let x_2751 : f32 = u_xlat48.x;
    u_xlat66 = (x_2749 * x_2751);
    let x_2754 : u32 = u_xlatu2;
    u_xlatu48 = (x_2754 >> 5u);
    let x_2757 : u32 = u_xlatu2;
    u_xlati69 = (1i << bitcast<u32>((bitcast<i32>(x_2757) & 31i)));
    let x_2763 : i32 = u_xlati69;
    let x_2765 : u32 = u_xlatu48;
    let x_2768 : f32 = x_2231.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2765)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_2763) & bitcast<u32>(x_2768)));
    let x_2772 : i32 = u_xlati48;
    if ((x_2772 != 0i)) {
      let x_2782 : u32 = u_xlatu2;
      let x_2785 : f32 = x_2781.x_AdditionalLightsLightTypes[bitcast<i32>(x_2782)].el;
      u_xlati48 = i32(x_2785);
      let x_2787 : i32 = u_xlati48;
      u_xlati69 = select(1i, 0i, (x_2787 != 0i));
      let x_2791 : u32 = u_xlatu2;
      u_xlati70 = (bitcast<i32>(x_2791) << bitcast<u32>(2i));
      let x_2794 : i32 = u_xlati69;
      if ((x_2794 != 0i)) {
        let x_2798 : vec3<f32> = vs_INTERP0;
        let x_2800 : i32 = u_xlati70;
        let x_2803 : i32 = u_xlati70;
        let x_2807 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[((x_2800 + 1i) / 4i)][((x_2803 + 1i) % 4i)];
        let x_2809 : vec3<f32> = (vec3<f32>(x_2798.y, x_2798.y, x_2798.y) * vec3<f32>(x_2807.x, x_2807.y, x_2807.w));
        let x_2810 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2810.w);
        let x_2812 : i32 = u_xlati70;
        let x_2814 : i32 = u_xlati70;
        let x_2817 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[(x_2812 / 4i)][(x_2814 % 4i)];
        let x_2819 : vec3<f32> = vs_INTERP0;
        let x_2822 : vec4<f32> = u_xlat11;
        let x_2824 : vec3<f32> = ((vec3<f32>(x_2817.x, x_2817.y, x_2817.w) * vec3<f32>(x_2819.x, x_2819.x, x_2819.x)) + vec3<f32>(x_2822.x, x_2822.y, x_2822.z));
        let x_2825 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2824.x, x_2824.y, x_2824.z, x_2825.w);
        let x_2827 : i32 = u_xlati70;
        let x_2830 : i32 = u_xlati70;
        let x_2834 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[((x_2827 + 2i) / 4i)][((x_2830 + 2i) % 4i)];
        let x_2836 : vec3<f32> = vs_INTERP0;
        let x_2839 : vec4<f32> = u_xlat11;
        let x_2841 : vec3<f32> = ((vec3<f32>(x_2834.x, x_2834.y, x_2834.w) * vec3<f32>(x_2836.z, x_2836.z, x_2836.z)) + vec3<f32>(x_2839.x, x_2839.y, x_2839.z));
        let x_2842 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2841.x, x_2841.y, x_2841.z, x_2842.w);
        let x_2844 : vec4<f32> = u_xlat11;
        let x_2846 : i32 = u_xlati70;
        let x_2849 : i32 = u_xlati70;
        let x_2853 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[((x_2846 + 3i) / 4i)][((x_2849 + 3i) % 4i)];
        let x_2855 : vec3<f32> = (vec3<f32>(x_2844.x, x_2844.y, x_2844.z) + vec3<f32>(x_2853.x, x_2853.y, x_2853.w));
        let x_2856 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2855.x, x_2855.y, x_2855.z, x_2856.w);
        let x_2858 : vec4<f32> = u_xlat11;
        let x_2860 : vec4<f32> = u_xlat11;
        let x_2862 : vec2<f32> = (vec2<f32>(x_2858.x, x_2858.y) / vec2<f32>(x_2860.z, x_2860.z));
        let x_2863 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2862.x, x_2862.y, x_2863.z, x_2863.w);
        let x_2865 : vec4<f32> = u_xlat11;
        let x_2868 : vec2<f32> = ((vec2<f32>(x_2865.x, x_2865.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2869 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2868.x, x_2868.y, x_2869.z, x_2869.w);
        let x_2871 : vec4<f32> = u_xlat11;
        let x_2875 : vec2<f32> = clamp(vec2<f32>(x_2871.x, x_2871.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2876 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2875.x, x_2875.y, x_2876.z, x_2876.w);
        let x_2878 : u32 = u_xlatu2;
        let x_2881 : vec4<f32> = x_2781.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2878)];
        let x_2883 : vec4<f32> = u_xlat11;
        let x_2886 : u32 = u_xlatu2;
        let x_2889 : vec4<f32> = x_2781.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2886)];
        let x_2891 : vec2<f32> = ((vec2<f32>(x_2881.x, x_2881.y) * vec2<f32>(x_2883.x, x_2883.y)) + vec2<f32>(x_2889.z, x_2889.w));
        let x_2892 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2891.x, x_2891.y, x_2892.z, x_2892.w);
      } else {
        let x_2896 : i32 = u_xlati48;
        u_xlatb48 = (x_2896 == 1i);
        let x_2898 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_2898);
        let x_2900 : i32 = u_xlati48;
        if ((x_2900 != 0i)) {
          let x_2904 : vec3<f32> = vs_INTERP0;
          let x_2906 : i32 = u_xlati70;
          let x_2909 : i32 = u_xlati70;
          let x_2913 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[((x_2906 + 1i) / 4i)][((x_2909 + 1i) % 4i)];
          u_xlat48 = (vec2<f32>(x_2904.y, x_2904.y) * vec2<f32>(x_2913.x, x_2913.y));
          let x_2916 : i32 = u_xlati70;
          let x_2918 : i32 = u_xlati70;
          let x_2921 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[(x_2916 / 4i)][(x_2918 % 4i)];
          let x_2923 : vec3<f32> = vs_INTERP0;
          let x_2926 : vec2<f32> = u_xlat48;
          u_xlat48 = ((vec2<f32>(x_2921.x, x_2921.y) * vec2<f32>(x_2923.x, x_2923.x)) + x_2926);
          let x_2928 : i32 = u_xlati70;
          let x_2931 : i32 = u_xlati70;
          let x_2935 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[((x_2928 + 2i) / 4i)][((x_2931 + 2i) % 4i)];
          let x_2937 : vec3<f32> = vs_INTERP0;
          let x_2940 : vec2<f32> = u_xlat48;
          u_xlat48 = ((vec2<f32>(x_2935.x, x_2935.y) * vec2<f32>(x_2937.z, x_2937.z)) + x_2940);
          let x_2942 : vec2<f32> = u_xlat48;
          let x_2943 : i32 = u_xlati70;
          let x_2946 : i32 = u_xlati70;
          let x_2950 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[((x_2943 + 3i) / 4i)][((x_2946 + 3i) % 4i)];
          u_xlat48 = (x_2942 + vec2<f32>(x_2950.x, x_2950.y));
          let x_2953 : vec2<f32> = u_xlat48;
          u_xlat48 = ((x_2953 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2956 : vec2<f32> = u_xlat48;
          u_xlat48 = fract(x_2956);
          let x_2958 : u32 = u_xlatu2;
          let x_2961 : vec4<f32> = x_2781.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2958)];
          let x_2963 : vec2<f32> = u_xlat48;
          let x_2965 : u32 = u_xlatu2;
          let x_2968 : vec4<f32> = x_2781.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2965)];
          let x_2970 : vec2<f32> = ((vec2<f32>(x_2961.x, x_2961.y) * x_2963) + vec2<f32>(x_2968.z, x_2968.w));
          let x_2971 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2970.x, x_2970.y, x_2971.z, x_2971.w);
        } else {
          let x_2974 : vec3<f32> = vs_INTERP0;
          let x_2976 : i32 = u_xlati70;
          let x_2979 : i32 = u_xlati70;
          let x_2983 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[((x_2976 + 1i) / 4i)][((x_2979 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2974.y, x_2974.y, x_2974.y, x_2974.y) * x_2983);
          let x_2985 : i32 = u_xlati70;
          let x_2987 : i32 = u_xlati70;
          let x_2990 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[(x_2985 / 4i)][(x_2987 % 4i)];
          let x_2991 : vec3<f32> = vs_INTERP0;
          let x_2994 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2990 * vec4<f32>(x_2991.x, x_2991.x, x_2991.x, x_2991.x)) + x_2994);
          let x_2996 : i32 = u_xlati70;
          let x_2999 : i32 = u_xlati70;
          let x_3003 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[((x_2996 + 2i) / 4i)][((x_2999 + 2i) % 4i)];
          let x_3004 : vec3<f32> = vs_INTERP0;
          let x_3007 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3003 * vec4<f32>(x_3004.z, x_3004.z, x_3004.z, x_3004.z)) + x_3007);
          let x_3009 : vec4<f32> = u_xlat12;
          let x_3010 : i32 = u_xlati70;
          let x_3013 : i32 = u_xlati70;
          let x_3017 : vec4<f32> = x_2781.x_AdditionalLightsWorldToLights[((x_3010 + 3i) / 4i)][((x_3013 + 3i) % 4i)];
          u_xlat12 = (x_3009 + x_3017);
          let x_3019 : vec4<f32> = u_xlat12;
          let x_3021 : vec4<f32> = u_xlat12;
          let x_3023 : vec3<f32> = (vec3<f32>(x_3019.x, x_3019.y, x_3019.z) / vec3<f32>(x_3021.w, x_3021.w, x_3021.w));
          let x_3024 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3023.x, x_3023.y, x_3023.z, x_3024.w);
          let x_3026 : vec4<f32> = u_xlat12;
          let x_3028 : vec4<f32> = u_xlat12;
          u_xlat48.x = dot(vec3<f32>(x_3026.x, x_3026.y, x_3026.z), vec3<f32>(x_3028.x, x_3028.y, x_3028.z));
          let x_3033 : f32 = u_xlat48.x;
          u_xlat48.x = inverseSqrt(x_3033);
          let x_3036 : vec2<f32> = u_xlat48;
          let x_3038 : vec4<f32> = u_xlat12;
          let x_3040 : vec3<f32> = (vec3<f32>(x_3036.x, x_3036.x, x_3036.x) * vec3<f32>(x_3038.x, x_3038.y, x_3038.z));
          let x_3041 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3040.x, x_3040.y, x_3040.z, x_3041.w);
          let x_3043 : vec4<f32> = u_xlat12;
          u_xlat48.x = dot(abs(vec3<f32>(x_3043.x, x_3043.y, x_3043.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3049 : f32 = u_xlat48.x;
          u_xlat48.x = max(x_3049, 0.000001f);
          let x_3054 : f32 = u_xlat48.x;
          u_xlat48.x = (1.0f / x_3054);
          let x_3057 : vec2<f32> = u_xlat48;
          let x_3059 : vec4<f32> = u_xlat12;
          let x_3061 : vec3<f32> = (vec3<f32>(x_3057.x, x_3057.x, x_3057.x) * vec3<f32>(x_3059.z, x_3059.x, x_3059.y));
          let x_3062 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3061.x, x_3061.y, x_3061.z, x_3062.w);
          let x_3065 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3065);
          let x_3069 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3069, 0.0f, 1.0f);
          let x_3073 : vec4<f32> = u_xlat13;
          let x_3076 : vec4<bool> = (vec4<f32>(x_3073.y, x_3073.z, x_3073.y, x_3073.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3076.x, x_3076.y);
          let x_3080 : bool = u_xlatb53.x;
          if (x_3080) {
            let x_3085 : f32 = u_xlat13.x;
            x_3081 = x_3085;
          } else {
            let x_3088 : f32 = u_xlat13.x;
            x_3081 = -(x_3088);
          }
          let x_3090 : f32 = x_3081;
          u_xlat53.x = x_3090;
          let x_3093 : bool = u_xlatb53.y;
          if (x_3093) {
            let x_3098 : f32 = u_xlat13.x;
            x_3094 = x_3098;
          } else {
            let x_3101 : f32 = u_xlat13.x;
            x_3094 = -(x_3101);
          }
          let x_3103 : f32 = x_3094;
          u_xlat53.y = x_3103;
          let x_3105 : vec4<f32> = u_xlat12;
          let x_3107 : vec2<f32> = u_xlat48;
          let x_3110 : vec2<f32> = u_xlat53;
          u_xlat48 = ((vec2<f32>(x_3105.x, x_3105.y) * vec2<f32>(x_3107.x, x_3107.x)) + x_3110);
          let x_3112 : vec2<f32> = u_xlat48;
          u_xlat48 = ((x_3112 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3115 : vec2<f32> = u_xlat48;
          u_xlat48 = clamp(x_3115, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3119 : u32 = u_xlatu2;
          let x_3122 : vec4<f32> = x_2781.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3119)];
          let x_3124 : vec2<f32> = u_xlat48;
          let x_3126 : u32 = u_xlatu2;
          let x_3129 : vec4<f32> = x_2781.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3126)];
          let x_3131 : vec2<f32> = ((vec2<f32>(x_3122.x, x_3122.y) * x_3124) + vec2<f32>(x_3129.z, x_3129.w));
          let x_3132 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3131.x, x_3131.y, x_3132.z, x_3132.w);
        }
      }
      let x_3139 : vec4<f32> = u_xlat11;
      let x_3142 : f32 = x_44.x_GlobalMipBias.x;
      let x_3143 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3139.x, x_3139.y), x_3142);
      u_xlat11 = x_3143;
      let x_3145 : bool = u_xlatb6.y;
      if (x_3145) {
        let x_3150 : f32 = u_xlat11.w;
        x_3146 = x_3150;
      } else {
        let x_3153 : f32 = u_xlat11.x;
        x_3146 = x_3153;
      }
      let x_3154 : f32 = x_3146;
      u_xlat48.x = x_3154;
      let x_3157 : bool = u_xlatb6.x;
      if (x_3157) {
        let x_3161 : vec4<f32> = u_xlat11;
        x_3158 = vec3<f32>(x_3161.x, x_3161.y, x_3161.z);
      } else {
        let x_3164 : vec2<f32> = u_xlat48;
        x_3158 = vec3<f32>(x_3164.x, x_3164.x, x_3164.x);
      }
      let x_3166 : vec3<f32> = x_3158;
      let x_3167 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3166.x, x_3166.y, x_3166.z, x_3167.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3173 : vec4<f32> = u_xlat11;
    let x_3175 : u32 = u_xlatu2;
    let x_3178 : vec4<f32> = x_2662.x_AdditionalLightsColor[bitcast<i32>(x_3175)];
    let x_3180 : vec3<f32> = (vec3<f32>(x_3173.x, x_3173.y, x_3173.z) * vec3<f32>(x_3178.x, x_3178.y, x_3178.z));
    let x_3181 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3180.x, x_3180.y, x_3180.z, x_3181.w);
    let x_3183 : f32 = u_xlat67;
    let x_3185 : vec4<f32> = u_xlat11;
    let x_3187 : vec3<f32> = (vec3<f32>(x_3183, x_3183, x_3183) * vec3<f32>(x_3185.x, x_3185.y, x_3185.z));
    let x_3188 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3187.x, x_3187.y, x_3187.z, x_3188.w);
    let x_3190 : vec4<f32> = u_xlat1;
    let x_3192 : vec4<f32> = u_xlat10;
    u_xlat2.x = dot(vec3<f32>(x_3190.x, x_3190.y, x_3190.z), vec3<f32>(x_3192.x, x_3192.y, x_3192.z));
    let x_3197 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3197, 0.0f, 1.0f);
    let x_3201 : f32 = u_xlat2.x;
    let x_3202 : f32 = u_xlat66;
    u_xlat2.x = (x_3201 * x_3202);
    let x_3205 : vec4<f32> = u_xlat2;
    let x_3207 : vec4<f32> = u_xlat11;
    let x_3209 : vec3<f32> = (vec3<f32>(x_3205.x, x_3205.x, x_3205.x) * vec3<f32>(x_3207.x, x_3207.y, x_3207.z));
    let x_3210 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3209.x, x_3209.y, x_3209.z, x_3210.w);
    let x_3212 : vec4<f32> = u_xlat9;
    let x_3214 : f32 = u_xlat68;
    let x_3217 : vec3<f32> = u_xlat4;
    let x_3218 : vec3<f32> = ((vec3<f32>(x_3212.x, x_3212.y, x_3212.z) * vec3<f32>(x_3214, x_3214, x_3214)) + x_3217);
    let x_3219 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3218.x, x_3218.y, x_3218.z, x_3219.w);
    let x_3221 : vec4<f32> = u_xlat9;
    let x_3223 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3221.x, x_3221.y, x_3221.z), vec3<f32>(x_3223.x, x_3223.y, x_3223.z));
    let x_3228 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_3228, 1.17549435e-37f);
    let x_3232 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_3232);
    let x_3235 : vec4<f32> = u_xlat2;
    let x_3237 : vec4<f32> = u_xlat9;
    let x_3239 : vec3<f32> = (vec3<f32>(x_3235.x, x_3235.x, x_3235.x) * vec3<f32>(x_3237.x, x_3237.y, x_3237.z));
    let x_3240 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3239.x, x_3239.y, x_3239.z, x_3240.w);
    let x_3242 : vec4<f32> = u_xlat1;
    let x_3244 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3242.x, x_3242.y, x_3242.z), vec3<f32>(x_3244.x, x_3244.y, x_3244.z));
    let x_3249 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3249, 0.0f, 1.0f);
    let x_3252 : vec4<f32> = u_xlat10;
    let x_3254 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3252.x, x_3252.y, x_3252.z), vec3<f32>(x_3254.x, x_3254.y, x_3254.z));
    let x_3257 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3257, 0.0f, 1.0f);
    let x_3260 : f32 = u_xlat2.x;
    let x_3262 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3260 * x_3262);
    let x_3266 : f32 = u_xlat2.x;
    let x_3268 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_3266 * x_3268) + 1.000010014f);
    let x_3272 : f32 = u_xlat66;
    let x_3273 : f32 = u_xlat66;
    u_xlat66 = (x_3272 * x_3273);
    let x_3276 : f32 = u_xlat2.x;
    let x_3278 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3276 * x_3278);
    let x_3281 : f32 = u_xlat66;
    u_xlat66 = max(x_3281, 0.100000001f);
    let x_3284 : f32 = u_xlat2.x;
    let x_3285 : f32 = u_xlat66;
    u_xlat2.x = (x_3284 * x_3285);
    let x_3288 : f32 = u_xlat23;
    let x_3290 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3288 * x_3290);
    let x_3293 : f32 = u_xlat65;
    let x_3295 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3293 / x_3295);
    let x_3298 : vec4<f32> = u_xlat0;
    let x_3300 : vec4<f32> = u_xlat2;
    let x_3303 : vec3<f32> = u_xlat7;
    let x_3304 : vec3<f32> = ((vec3<f32>(x_3298.x, x_3298.y, x_3298.z) * vec3<f32>(x_3300.x, x_3300.x, x_3300.x)) + x_3303);
    let x_3305 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3304.x, x_3304.y, x_3304.z, x_3305.w);
    let x_3307 : vec4<f32> = u_xlat9;
    let x_3309 : vec4<f32> = u_xlat11;
    let x_3312 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_3307.x, x_3307.y, x_3307.z) * vec3<f32>(x_3309.x, x_3309.y, x_3309.z)) + x_3312);

    continuing {
      let x_3314 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3314 + bitcast<u32>(1i));
    }
  }
  let x_3316 : vec4<f32> = u_xlat5;
  let x_3318 : f32 = u_xlat44;
  let x_3321 : vec4<f32> = u_xlat3;
  let x_3323 : vec3<f32> = ((vec3<f32>(x_3316.x, x_3316.y, x_3316.z) * vec3<f32>(x_3318, x_3318, x_3318)) + vec3<f32>(x_3321.x, x_3321.y, x_3321.z));
  let x_3324 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3323.x, x_3323.y, x_3323.z, x_3324.w);
  let x_3328 : vec3<f32> = u_xlat29;
  let x_3329 : vec4<f32> = u_xlat0;
  let x_3331 : vec3<f32> = (x_3328 + vec3<f32>(x_3329.x, x_3329.y, x_3329.z));
  let x_3332 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3331.x, x_3331.y, x_3331.z, x_3332.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0);
}

