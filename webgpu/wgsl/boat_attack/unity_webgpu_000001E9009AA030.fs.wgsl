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

@group(1) @binding(3) var<uniform> x_747 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2047 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2493 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2606 : AdditionalLightsCookies;

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
  var x_487 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat64 : f32;
  var u_xlat23 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat44 : f32;
  var u_xlatb67 : bool;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb26 : vec2<bool>;
  var u_xlat26 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat47 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb47 : bool;
  var x_2130 : f32;
  var x_2141 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlatu64 : u32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat30 : vec3<f32>;
  var u_xlatu10 : u32;
  var u_xlati31 : i32;
  var u_xlati10 : i32;
  var u_xlati52 : i32;
  var u_xlat31 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlatb53 : vec2<bool>;
  var u_xlat53 : vec2<f32>;
  var x_2925 : f32;
  var x_2938 : f32;
  var u_xlat73 : f32;
  var x_3000 : f32;
  var x_3011 : vec3<f32>;
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
  let x_477 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_477;
  let x_480 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_480;
  let x_484 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_484;
  let x_486 : bool = u_xlatb63;
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
  u_xlat63 = (x_498 * x_500);
  let x_503 : f32 = x_44.unity_MatrixV[0i].z;
  let x_505 : f32 = vs_INTERP0.x;
  let x_507 : f32 = u_xlat63;
  u_xlat63 = ((x_503 * x_505) + x_507);
  let x_510 : f32 = x_44.unity_MatrixV[2i].z;
  let x_512 : f32 = vs_INTERP0.z;
  let x_514 : f32 = u_xlat63;
  u_xlat63 = ((x_510 * x_512) + x_514);
  let x_516 : f32 = u_xlat63;
  let x_518 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_516 + x_518);
  let x_520 : f32 = u_xlat63;
  let x_524 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_520) + -(x_524));
  let x_527 : f32 = u_xlat63;
  u_xlat63 = max(x_527, 0.0f);
  let x_529 : f32 = u_xlat63;
  let x_532 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_529 * x_532);
  u_xlat1.w = 1.0f;
  let x_538 : vec4<f32> = x_359.unity_SHAr;
  let x_539 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_538, x_539);
  let x_544 : vec4<f32> = x_359.unity_SHAg;
  let x_545 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_544, x_545);
  let x_550 : vec4<f32> = x_359.unity_SHAb;
  let x_551 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_550, x_551);
  let x_555 : vec4<f32> = u_xlat1;
  let x_557 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_555.y, x_555.z, x_555.z, x_555.x) * vec4<f32>(x_557.x, x_557.y, x_557.z, x_557.z));
  let x_563 : vec4<f32> = x_359.unity_SHBr;
  let x_564 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_563, x_564);
  let x_569 : vec4<f32> = x_359.unity_SHBg;
  let x_570 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_569, x_570);
  let x_575 : vec4<f32> = x_359.unity_SHBb;
  let x_576 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_575, x_576);
  let x_581 : f32 = u_xlat1.y;
  let x_583 : f32 = u_xlat1.y;
  u_xlat64 = (x_581 * x_583);
  let x_586 : f32 = u_xlat1.x;
  let x_588 : f32 = u_xlat1.x;
  let x_590 : f32 = u_xlat64;
  u_xlat64 = ((x_586 * x_588) + -(x_590));
  let x_595 : vec4<f32> = x_359.unity_SHC;
  let x_597 : f32 = u_xlat64;
  let x_600 : vec3<f32> = u_xlat6;
  let x_601 : vec3<f32> = ((vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(x_597, x_597, x_597)) + x_600);
  let x_602 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec3<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_604 + vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_608, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_613 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_614 : vec2<f32> = vec2<f32>(x_613.x, x_613.y);
  let x_618 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_614.x, x_614.y));
  let x_619 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat5;
  let x_623 : vec4<f32> = hlslcc_FragCoord;
  let x_625 : vec2<f32> = (vec2<f32>(x_621.x, x_621.y) * vec2<f32>(x_623.x, x_623.y));
  let x_626 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
  let x_629 : f32 = u_xlat5.y;
  let x_632 : f32 = x_44.x_ScaleBiasRt.x;
  let x_635 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat64 = ((x_629 * x_632) + x_635);
  let x_637 : f32 = u_xlat64;
  u_xlat5.z = (-(x_637) + 1.0f);
  let x_641 : vec4<f32> = u_xlat2;
  let x_642 : vec2<f32> = vec2<f32>(x_641.x, x_641.y);
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat2;
  let x_649 : vec2<f32> = clamp(vec2<f32>(x_645.x, x_645.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_650 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
  let x_653 : f32 = u_xlat2.x;
  u_xlat64 = ((-(x_653) * 0.959999979f) + 0.959999979f);
  let x_658 : f32 = u_xlat64;
  let x_661 : f32 = u_xlat2.y;
  u_xlat65 = (-(x_658) + x_661);
  let x_663 : vec4<f32> = u_xlat0;
  let x_665 : f32 = u_xlat64;
  u_xlat6 = (vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665, x_665, x_665));
  let x_668 : vec4<f32> = u_xlat0;
  let x_672 : vec3<f32> = (vec3<f32>(x_668.x, x_668.y, x_668.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat2;
  let x_677 : vec4<f32> = u_xlat0;
  let x_682 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.x, x_675.x) * vec3<f32>(x_677.x, x_677.y, x_677.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_683 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_686 : f32 = u_xlat2.y;
  u_xlat64 = (-(x_686) + 1.0f);
  let x_689 : f32 = u_xlat64;
  let x_690 : f32 = u_xlat64;
  u_xlat2.x = (x_689 * x_690);
  let x_694 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_694, 0.0078125f);
  let x_700 : f32 = u_xlat2.x;
  let x_702 : f32 = u_xlat2.x;
  u_xlat23 = (x_700 * x_702);
  let x_704 : f32 = u_xlat65;
  u_xlat65 = (x_704 + 1.0f);
  let x_706 : f32 = u_xlat65;
  u_xlat65 = min(x_706, 1.0f);
  let x_710 : f32 = u_xlat2.x;
  u_xlat66 = ((x_710 * 4.0f) + 2.0f);
  let x_720 : vec4<f32> = u_xlat5;
  let x_723 : f32 = x_44.x_GlobalMipBias.x;
  let x_724 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_720.x, x_720.z), x_723);
  u_xlat67 = x_724.x;
  let x_726 : f32 = u_xlat67;
  u_xlat5.x = (x_726 + -1.0f);
  let x_731 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_733 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_731 * x_733) + 1.0f);
  let x_739 : f32 = u_xlat2.z;
  let x_740 : f32 = u_xlat67;
  u_xlat44 = min(x_739, x_740);
  let x_749 : f32 = x_747.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_749);
  let x_751 : bool = u_xlatb67;
  if (x_751) {
    let x_755 : f32 = x_747.x_MainLightShadowParams.y;
    u_xlatb67 = (x_755 == 1.0f);
    let x_757 : bool = u_xlatb67;
    if (x_757) {
      let x_762 : vec4<f32> = vs_INTERP8;
      let x_765 : vec4<f32> = x_747.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_762.x, x_762.y, x_762.x, x_762.y) + x_765);
      let x_768 : vec4<f32> = u_xlat7;
      let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
      let x_771 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_769.x, x_769.y, x_771);
      let x_784 : vec3<f32> = txVec0;
      let x_786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_784.xy, x_784.z);
      u_xlat8.x = x_786;
      let x_789 : vec4<f32> = u_xlat7;
      let x_790 : vec2<f32> = vec2<f32>(x_789.z, x_789.w);
      let x_792 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_790.x, x_790.y, x_792);
      let x_799 : vec3<f32> = txVec1;
      let x_801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_799.xy, x_799.z);
      u_xlat8.y = x_801;
      let x_803 : vec4<f32> = vs_INTERP8;
      let x_806 : vec4<f32> = x_747.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y) + x_806);
      let x_809 : vec4<f32> = u_xlat7;
      let x_810 : vec2<f32> = vec2<f32>(x_809.x, x_809.y);
      let x_812 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_810.x, x_810.y, x_812);
      let x_819 : vec3<f32> = txVec2;
      let x_821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_819.xy, x_819.z);
      u_xlat8.z = x_821;
      let x_824 : vec4<f32> = u_xlat7;
      let x_825 : vec2<f32> = vec2<f32>(x_824.z, x_824.w);
      let x_827 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_825.x, x_825.y, x_827);
      let x_834 : vec3<f32> = txVec3;
      let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_834.xy, x_834.z);
      u_xlat8.w = x_836;
      let x_838 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_838, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_845 : f32 = x_747.x_MainLightShadowParams.y;
      u_xlatb26.x = (x_845 == 2.0f);
      let x_849 : bool = u_xlatb26.x;
      if (x_849) {
        let x_853 : vec4<f32> = vs_INTERP8;
        let x_856 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_861 : vec2<f32> = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_856.z, x_856.w)) + vec2<f32>(0.5f, 0.5f));
        let x_862 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_861.x, x_861.y, x_862.z);
        let x_864 : vec3<f32> = u_xlat26;
        let x_866 : vec2<f32> = floor(vec2<f32>(x_864.x, x_864.y));
        let x_867 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_866.x, x_866.y, x_867.z);
        let x_869 : vec4<f32> = vs_INTERP8;
        let x_872 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_875 : vec3<f32> = u_xlat26;
        let x_878 : vec2<f32> = ((vec2<f32>(x_869.x, x_869.y) * vec2<f32>(x_872.z, x_872.w)) + -(vec2<f32>(x_875.x, x_875.y)));
        let x_879 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_881.x, x_881.x, x_881.y, x_881.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_886 : vec4<f32> = u_xlat8;
        let x_888 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_886.x, x_886.x, x_886.z, x_886.z) * vec4<f32>(x_888.x, x_888.x, x_888.z, x_888.z));
        let x_892 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_892.y, x_892.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_897 : vec4<f32> = u_xlat9;
        let x_900 : vec4<f32> = u_xlat7;
        let x_903 : vec2<f32> = ((vec2<f32>(x_897.x, x_897.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_900.x, x_900.y)));
        let x_904 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_903.x, x_904.y, x_903.y, x_904.w);
        let x_906 : vec4<f32> = u_xlat7;
        let x_909 : vec2<f32> = (-(vec2<f32>(x_906.x, x_906.y)) + vec2<f32>(1.0f, 1.0f));
        let x_910 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_909.x, x_909.y, x_910.z, x_910.w);
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_913.x, x_913.y), vec2<f32>(0.0f, 0.0f));
        let x_917 : vec2<f32> = u_xlat51;
        let x_919 : vec2<f32> = u_xlat51;
        let x_921 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_917) * x_919) + vec2<f32>(x_921.x, x_921.y));
        let x_924 : vec4<f32> = u_xlat7;
        let x_926 : vec2<f32> = max(vec2<f32>(x_924.x, x_924.y), vec2<f32>(0.0f, 0.0f));
        let x_927 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec4<f32> = u_xlat7;
        let x_932 : vec4<f32> = u_xlat7;
        let x_935 : vec4<f32> = u_xlat8;
        let x_937 : vec2<f32> = ((-(vec2<f32>(x_929.x, x_929.y)) * vec2<f32>(x_932.x, x_932.y)) + vec2<f32>(x_935.y, x_935.w));
        let x_938 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_940 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_940 + vec2<f32>(1.0f, 1.0f));
        let x_942 : vec4<f32> = u_xlat7;
        let x_944 : vec2<f32> = (vec2<f32>(x_942.x, x_942.y) + vec2<f32>(1.0f, 1.0f));
        let x_945 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
        let x_948 : vec4<f32> = u_xlat8;
        let x_952 : vec2<f32> = (vec2<f32>(x_948.x, x_948.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_953 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_956 : vec4<f32> = u_xlat9;
        let x_958 : vec2<f32> = (vec2<f32>(x_956.x, x_956.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_959 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_961 : vec2<f32> = u_xlat51;
        let x_962 : vec2<f32> = (x_961 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_963 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_966 : vec4<f32> = u_xlat7;
        let x_968 : vec2<f32> = (vec2<f32>(x_966.x, x_966.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_969 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat8;
        let x_973 : vec2<f32> = (vec2<f32>(x_971.y, x_971.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_974 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_977 : f32 = u_xlat9.x;
        u_xlat10.z = x_977;
        let x_980 : f32 = u_xlat7.x;
        u_xlat10.w = x_980;
        let x_983 : f32 = u_xlat12.x;
        u_xlat11.z = x_983;
        let x_986 : f32 = u_xlat49.x;
        u_xlat11.w = x_986;
        let x_988 : vec4<f32> = u_xlat10;
        let x_990 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_988.z, x_988.w, x_988.x, x_988.z) + vec4<f32>(x_990.z, x_990.w, x_990.x, x_990.z));
        let x_994 : f32 = u_xlat10.y;
        u_xlat9.z = x_994;
        let x_997 : f32 = u_xlat7.y;
        u_xlat9.w = x_997;
        let x_1000 : f32 = u_xlat11.y;
        u_xlat12.z = x_1000;
        let x_1003 : f32 = u_xlat49.y;
        u_xlat12.w = x_1003;
        let x_1005 : vec4<f32> = u_xlat9;
        let x_1007 : vec4<f32> = u_xlat12;
        let x_1009 : vec3<f32> = (vec3<f32>(x_1005.z, x_1005.y, x_1005.w) + vec3<f32>(x_1007.z, x_1007.y, x_1007.w));
        let x_1010 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
        let x_1012 : vec4<f32> = u_xlat11;
        let x_1014 : vec4<f32> = u_xlat8;
        let x_1016 : vec3<f32> = (vec3<f32>(x_1012.x, x_1012.z, x_1012.w) / vec3<f32>(x_1014.z, x_1014.w, x_1014.y));
        let x_1017 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
        let x_1019 : vec4<f32> = u_xlat9;
        let x_1025 : vec3<f32> = (vec3<f32>(x_1019.x, x_1019.y, x_1019.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1026 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat12;
        let x_1030 : vec4<f32> = u_xlat7;
        let x_1032 : vec3<f32> = (vec3<f32>(x_1028.z, x_1028.y, x_1028.w) / vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
        let x_1033 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
        let x_1035 : vec4<f32> = u_xlat10;
        let x_1037 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.y, x_1035.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1038 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
        let x_1040 : vec4<f32> = u_xlat9;
        let x_1043 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1045 : vec3<f32> = (vec3<f32>(x_1040.y, x_1040.x, x_1040.z) * vec3<f32>(x_1043.x, x_1043.x, x_1043.x));
        let x_1046 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
        let x_1048 : vec4<f32> = u_xlat10;
        let x_1051 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1053 : vec3<f32> = (vec3<f32>(x_1048.x, x_1048.y, x_1048.z) * vec3<f32>(x_1051.y, x_1051.y, x_1051.y));
        let x_1054 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
        let x_1057 : f32 = u_xlat10.x;
        u_xlat9.w = x_1057;
        let x_1059 : vec3<f32> = u_xlat26;
        let x_1062 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y) * vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y)) + vec4<f32>(x_1065.y, x_1065.w, x_1065.x, x_1065.w));
        let x_1068 : vec3<f32> = u_xlat26;
        let x_1071 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1076 : vec2<f32> = ((vec2<f32>(x_1068.x, x_1068.y) * vec2<f32>(x_1071.x, x_1071.y)) + vec2<f32>(x_1074.z, x_1074.w));
        let x_1077 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1080 : f32 = u_xlat9.y;
        u_xlat10.w = x_1080;
        let x_1082 : vec4<f32> = u_xlat10;
        let x_1083 : vec2<f32> = vec2<f32>(x_1082.y, x_1082.z);
        let x_1084 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1084.x, x_1083.x, x_1084.z, x_1083.y);
        let x_1087 : vec3<f32> = u_xlat26;
        let x_1090 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y) * vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y)) + vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1093.y));
        let x_1096 : vec3<f32> = u_xlat26;
        let x_1099 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1102 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y) * vec4<f32>(x_1099.x, x_1099.y, x_1099.x, x_1099.y)) + vec4<f32>(x_1102.w, x_1102.y, x_1102.w, x_1102.z));
        let x_1105 : vec3<f32> = u_xlat26;
        let x_1108 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1111 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1105.x, x_1105.y, x_1105.x, x_1105.y) * vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y)) + vec4<f32>(x_1111.x, x_1111.w, x_1111.z, x_1111.w));
        let x_1115 : vec4<f32> = u_xlat7;
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1115.x, x_1115.x, x_1115.x, x_1115.y) * vec4<f32>(x_1117.z, x_1117.w, x_1117.y, x_1117.z));
        let x_1121 : vec4<f32> = u_xlat7;
        let x_1123 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1121.y, x_1121.y, x_1121.z, x_1121.z) * x_1123);
        let x_1126 : f32 = u_xlat7.z;
        let x_1128 : f32 = u_xlat8.y;
        u_xlat26.x = (x_1126 * x_1128);
        let x_1132 : vec4<f32> = u_xlat11;
        let x_1133 : vec2<f32> = vec2<f32>(x_1132.x, x_1132.y);
        let x_1135 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1133.x, x_1133.y, x_1135);
        let x_1143 : vec3<f32> = txVec4;
        let x_1145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1143.xy, x_1143.z);
        u_xlat47 = x_1145;
        let x_1147 : vec4<f32> = u_xlat11;
        let x_1148 : vec2<f32> = vec2<f32>(x_1147.z, x_1147.w);
        let x_1150 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1148.x, x_1148.y, x_1150);
        let x_1158 : vec3<f32> = txVec5;
        let x_1160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1158.xy, x_1158.z);
        u_xlat68 = x_1160;
        let x_1161 : f32 = u_xlat68;
        let x_1163 : f32 = u_xlat14.y;
        u_xlat68 = (x_1161 * x_1163);
        let x_1166 : f32 = u_xlat14.x;
        let x_1167 : f32 = u_xlat47;
        let x_1169 : f32 = u_xlat68;
        u_xlat47 = ((x_1166 * x_1167) + x_1169);
        let x_1172 : vec4<f32> = u_xlat12;
        let x_1173 : vec2<f32> = vec2<f32>(x_1172.x, x_1172.y);
        let x_1175 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1173.x, x_1173.y, x_1175);
        let x_1182 : vec3<f32> = txVec6;
        let x_1184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1182.xy, x_1182.z);
        u_xlat68 = x_1184;
        let x_1186 : f32 = u_xlat14.z;
        let x_1187 : f32 = u_xlat68;
        let x_1189 : f32 = u_xlat47;
        u_xlat47 = ((x_1186 * x_1187) + x_1189);
        let x_1192 : vec4<f32> = u_xlat10;
        let x_1193 : vec2<f32> = vec2<f32>(x_1192.x, x_1192.y);
        let x_1195 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1193.x, x_1193.y, x_1195);
        let x_1202 : vec3<f32> = txVec7;
        let x_1204 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1202.xy, x_1202.z);
        u_xlat68 = x_1204;
        let x_1206 : f32 = u_xlat14.w;
        let x_1207 : f32 = u_xlat68;
        let x_1209 : f32 = u_xlat47;
        u_xlat47 = ((x_1206 * x_1207) + x_1209);
        let x_1212 : vec4<f32> = u_xlat13;
        let x_1213 : vec2<f32> = vec2<f32>(x_1212.x, x_1212.y);
        let x_1215 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1213.x, x_1213.y, x_1215);
        let x_1222 : vec3<f32> = txVec8;
        let x_1224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1222.xy, x_1222.z);
        u_xlat68 = x_1224;
        let x_1226 : f32 = u_xlat15.x;
        let x_1227 : f32 = u_xlat68;
        let x_1229 : f32 = u_xlat47;
        u_xlat47 = ((x_1226 * x_1227) + x_1229);
        let x_1232 : vec4<f32> = u_xlat13;
        let x_1233 : vec2<f32> = vec2<f32>(x_1232.z, x_1232.w);
        let x_1235 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1233.x, x_1233.y, x_1235);
        let x_1242 : vec3<f32> = txVec9;
        let x_1244 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1242.xy, x_1242.z);
        u_xlat68 = x_1244;
        let x_1246 : f32 = u_xlat15.y;
        let x_1247 : f32 = u_xlat68;
        let x_1249 : f32 = u_xlat47;
        u_xlat47 = ((x_1246 * x_1247) + x_1249);
        let x_1252 : vec4<f32> = u_xlat10;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.z, x_1252.w);
        let x_1255 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec10;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1262.xy, x_1262.z);
        u_xlat68 = x_1264;
        let x_1266 : f32 = u_xlat15.z;
        let x_1267 : f32 = u_xlat68;
        let x_1269 : f32 = u_xlat47;
        u_xlat47 = ((x_1266 * x_1267) + x_1269);
        let x_1272 : vec4<f32> = u_xlat9;
        let x_1273 : vec2<f32> = vec2<f32>(x_1272.x, x_1272.y);
        let x_1275 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1273.x, x_1273.y, x_1275);
        let x_1282 : vec3<f32> = txVec11;
        let x_1284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1282.xy, x_1282.z);
        u_xlat68 = x_1284;
        let x_1286 : f32 = u_xlat15.w;
        let x_1287 : f32 = u_xlat68;
        let x_1289 : f32 = u_xlat47;
        u_xlat47 = ((x_1286 * x_1287) + x_1289);
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.z, x_1292.w);
        let x_1295 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec12;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1302.xy, x_1302.z);
        u_xlat68 = x_1304;
        let x_1306 : f32 = u_xlat26.x;
        let x_1307 : f32 = u_xlat68;
        let x_1309 : f32 = u_xlat47;
        u_xlat67 = ((x_1306 * x_1307) + x_1309);
      } else {
        let x_1312 : vec4<f32> = vs_INTERP8;
        let x_1315 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1318 : vec2<f32> = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(x_1315.z, x_1315.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1319 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1318.x, x_1318.y, x_1319.z);
        let x_1321 : vec3<f32> = u_xlat26;
        let x_1323 : vec2<f32> = floor(vec2<f32>(x_1321.x, x_1321.y));
        let x_1324 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1323.x, x_1323.y, x_1324.z);
        let x_1326 : vec4<f32> = vs_INTERP8;
        let x_1329 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1332 : vec3<f32> = u_xlat26;
        let x_1335 : vec2<f32> = ((vec2<f32>(x_1326.x, x_1326.y) * vec2<f32>(x_1329.z, x_1329.w)) + -(vec2<f32>(x_1332.x, x_1332.y)));
        let x_1336 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1335.x, x_1335.y, x_1336.z, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1338.x, x_1338.x, x_1338.y, x_1338.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1343 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1341.x, x_1341.x, x_1341.z, x_1341.z) * vec4<f32>(x_1343.x, x_1343.x, x_1343.z, x_1343.z));
        let x_1346 : vec4<f32> = u_xlat9;
        let x_1350 : vec2<f32> = (vec2<f32>(x_1346.y, x_1346.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1351 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1351.x, x_1350.x, x_1351.z, x_1350.y);
        let x_1353 : vec4<f32> = u_xlat9;
        let x_1356 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1353.x, x_1353.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1356.x, x_1356.y)));
        let x_1360 : vec4<f32> = u_xlat7;
        let x_1363 : vec2<f32> = (-(vec2<f32>(x_1360.x, x_1360.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1364 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1363.x, x_1364.y, x_1363.y, x_1364.w);
        let x_1366 : vec4<f32> = u_xlat7;
        let x_1368 : vec2<f32> = min(vec2<f32>(x_1366.x, x_1366.y), vec2<f32>(0.0f, 0.0f));
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1368.x, x_1368.y, x_1369.z, x_1369.w);
        let x_1371 : vec4<f32> = u_xlat9;
        let x_1374 : vec4<f32> = u_xlat9;
        let x_1377 : vec4<f32> = u_xlat8;
        let x_1379 : vec2<f32> = ((-(vec2<f32>(x_1371.x, x_1371.y)) * vec2<f32>(x_1374.x, x_1374.y)) + vec2<f32>(x_1377.x, x_1377.z));
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1379.x, x_1380.y, x_1379.y, x_1380.w);
        let x_1382 : vec4<f32> = u_xlat7;
        let x_1384 : vec2<f32> = max(vec2<f32>(x_1382.x, x_1382.y), vec2<f32>(0.0f, 0.0f));
        let x_1385 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1384.x, x_1384.y, x_1385.z, x_1385.w);
        let x_1387 : vec4<f32> = u_xlat9;
        let x_1390 : vec4<f32> = u_xlat9;
        let x_1393 : vec4<f32> = u_xlat8;
        let x_1395 : vec2<f32> = ((-(vec2<f32>(x_1387.x, x_1387.y)) * vec2<f32>(x_1390.x, x_1390.y)) + vec2<f32>(x_1393.y, x_1393.w));
        let x_1396 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1396.x, x_1395.x, x_1396.z, x_1395.y);
        let x_1398 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1398 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1402 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1402 * 0.081632003f);
        let x_1406 : vec2<f32> = u_xlat49;
        let x_1409 : vec2<f32> = (vec2<f32>(x_1406.y, x_1406.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1410 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1409.x, x_1409.y, x_1410.z, x_1410.w);
        let x_1412 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1412.x, x_1412.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1416 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1416 * 0.081632003f);
        let x_1420 : f32 = u_xlat11.y;
        u_xlat9.x = x_1420;
        let x_1422 : vec4<f32> = u_xlat7;
        let x_1429 : vec2<f32> = ((vec2<f32>(x_1422.x, x_1422.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1430 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1430.x, x_1429.x, x_1430.z, x_1429.y);
        let x_1432 : vec4<f32> = u_xlat7;
        let x_1436 : vec2<f32> = ((vec2<f32>(x_1432.x, x_1432.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1437 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1436.x, x_1437.y, x_1436.y, x_1437.w);
        let x_1440 : f32 = u_xlat49.x;
        u_xlat8.y = x_1440;
        let x_1443 : f32 = u_xlat10.y;
        u_xlat8.w = x_1443;
        let x_1445 : vec4<f32> = u_xlat8;
        let x_1446 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1445 + x_1446);
        let x_1448 : vec4<f32> = u_xlat7;
        let x_1451 : vec2<f32> = ((vec2<f32>(x_1448.y, x_1448.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1452 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1452.x, x_1451.x, x_1452.z, x_1451.y);
        let x_1454 : vec4<f32> = u_xlat7;
        let x_1457 : vec2<f32> = ((vec2<f32>(x_1454.y, x_1454.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1458 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1457.x, x_1458.y, x_1457.y, x_1458.w);
        let x_1461 : f32 = u_xlat49.y;
        u_xlat10.y = x_1461;
        let x_1463 : vec4<f32> = u_xlat10;
        let x_1464 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1463 + x_1464);
        let x_1466 : vec4<f32> = u_xlat8;
        let x_1467 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1466 / x_1467);
        let x_1469 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1469 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1475 : vec4<f32> = u_xlat10;
        let x_1476 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1475 / x_1476);
        let x_1478 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1478 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1480 : vec4<f32> = u_xlat8;
        let x_1483 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1480.w, x_1480.x, x_1480.y, x_1480.z) * vec4<f32>(x_1483.x, x_1483.x, x_1483.x, x_1483.x));
        let x_1486 : vec4<f32> = u_xlat10;
        let x_1489 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1486.x, x_1486.w, x_1486.y, x_1486.z) * vec4<f32>(x_1489.y, x_1489.y, x_1489.y, x_1489.y));
        let x_1492 : vec4<f32> = u_xlat8;
        let x_1493 : vec3<f32> = vec3<f32>(x_1492.y, x_1492.z, x_1492.w);
        let x_1494 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1493.x, x_1494.y, x_1493.y, x_1493.z);
        let x_1497 : f32 = u_xlat10.x;
        u_xlat11.y = x_1497;
        let x_1499 : vec3<f32> = u_xlat26;
        let x_1502 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1505 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1499.x, x_1499.y, x_1499.x, x_1499.y) * vec4<f32>(x_1502.x, x_1502.y, x_1502.x, x_1502.y)) + vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1505.y));
        let x_1508 : vec3<f32> = u_xlat26;
        let x_1511 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1514 : vec4<f32> = u_xlat11;
        let x_1516 : vec2<f32> = ((vec2<f32>(x_1508.x, x_1508.y) * vec2<f32>(x_1511.x, x_1511.y)) + vec2<f32>(x_1514.w, x_1514.y));
        let x_1517 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1516.x, x_1516.y, x_1517.z, x_1517.w);
        let x_1520 : f32 = u_xlat11.y;
        u_xlat8.y = x_1520;
        let x_1523 : f32 = u_xlat10.z;
        u_xlat11.y = x_1523;
        let x_1525 : vec3<f32> = u_xlat26;
        let x_1528 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1531 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.y) * vec4<f32>(x_1528.x, x_1528.y, x_1528.x, x_1528.y)) + vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1531.y));
        let x_1535 : vec3<f32> = u_xlat26;
        let x_1538 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1541 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1535.x, x_1535.y) * vec2<f32>(x_1538.x, x_1538.y)) + vec2<f32>(x_1541.w, x_1541.y));
        let x_1545 : f32 = u_xlat11.y;
        u_xlat8.z = x_1545;
        let x_1547 : vec3<f32> = u_xlat26;
        let x_1550 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1553 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1547.x, x_1547.y, x_1547.x, x_1547.y) * vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.y)) + vec4<f32>(x_1553.x, x_1553.y, x_1553.x, x_1553.z));
        let x_1557 : f32 = u_xlat10.w;
        u_xlat11.y = x_1557;
        let x_1560 : vec3<f32> = u_xlat26;
        let x_1563 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1566 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1560.x, x_1560.y, x_1560.x, x_1560.y) * vec4<f32>(x_1563.x, x_1563.y, x_1563.x, x_1563.y)) + vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1566.y));
        let x_1570 : vec3<f32> = u_xlat26;
        let x_1573 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1576 : vec4<f32> = u_xlat11;
        let x_1578 : vec2<f32> = ((vec2<f32>(x_1570.x, x_1570.y) * vec2<f32>(x_1573.x, x_1573.y)) + vec2<f32>(x_1576.w, x_1576.y));
        let x_1579 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1578.x, x_1578.y, x_1579.z);
        let x_1582 : f32 = u_xlat11.y;
        u_xlat8.w = x_1582;
        let x_1585 : vec3<f32> = u_xlat26;
        let x_1588 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1591 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1585.x, x_1585.y) * vec2<f32>(x_1588.x, x_1588.y)) + vec2<f32>(x_1591.x, x_1591.w));
        let x_1594 : vec4<f32> = u_xlat11;
        let x_1595 : vec3<f32> = vec3<f32>(x_1594.x, x_1594.z, x_1594.w);
        let x_1596 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1595.x, x_1596.y, x_1595.y, x_1595.z);
        let x_1598 : vec3<f32> = u_xlat26;
        let x_1601 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1604 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1598.x, x_1598.y, x_1598.x, x_1598.y) * vec4<f32>(x_1601.x, x_1601.y, x_1601.x, x_1601.y)) + vec4<f32>(x_1604.x, x_1604.y, x_1604.z, x_1604.y));
        let x_1608 : vec3<f32> = u_xlat26;
        let x_1611 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1614 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1608.x, x_1608.y) * vec2<f32>(x_1611.x, x_1611.y)) + vec2<f32>(x_1614.w, x_1614.y));
        let x_1618 : f32 = u_xlat8.x;
        u_xlat10.x = x_1618;
        let x_1620 : vec3<f32> = u_xlat26;
        let x_1623 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1626 : vec4<f32> = u_xlat10;
        let x_1628 : vec2<f32> = ((vec2<f32>(x_1620.x, x_1620.y) * vec2<f32>(x_1623.x, x_1623.y)) + vec2<f32>(x_1626.x, x_1626.y));
        let x_1629 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1628.x, x_1628.y, x_1629.z);
        let x_1632 : vec4<f32> = u_xlat7;
        let x_1634 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1632.x, x_1632.x, x_1632.x, x_1632.x) * x_1634);
        let x_1637 : vec4<f32> = u_xlat7;
        let x_1639 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1637.y, x_1637.y, x_1637.y, x_1637.y) * x_1639);
        let x_1642 : vec4<f32> = u_xlat7;
        let x_1644 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1642.z, x_1642.z, x_1642.z, x_1642.z) * x_1644);
        let x_1646 : vec4<f32> = u_xlat7;
        let x_1648 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1646.w, x_1646.w, x_1646.w, x_1646.w) * x_1648);
        let x_1651 : vec4<f32> = u_xlat12;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.x, x_1651.y);
        let x_1654 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec13;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1661.xy, x_1661.z);
        u_xlat68 = x_1663;
        let x_1665 : vec4<f32> = u_xlat12;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.z, x_1665.w);
        let x_1668 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1676 : vec3<f32> = txVec14;
        let x_1678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1676.xy, x_1676.z);
        u_xlat69 = x_1678;
        let x_1679 : f32 = u_xlat69;
        let x_1681 : f32 = u_xlat18.y;
        u_xlat69 = (x_1679 * x_1681);
        let x_1684 : f32 = u_xlat18.x;
        let x_1685 : f32 = u_xlat68;
        let x_1687 : f32 = u_xlat69;
        u_xlat68 = ((x_1684 * x_1685) + x_1687);
        let x_1690 : vec4<f32> = u_xlat13;
        let x_1691 : vec2<f32> = vec2<f32>(x_1690.x, x_1690.y);
        let x_1693 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1700 : vec3<f32> = txVec15;
        let x_1702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1700.xy, x_1700.z);
        u_xlat69 = x_1702;
        let x_1704 : f32 = u_xlat18.z;
        let x_1705 : f32 = u_xlat69;
        let x_1707 : f32 = u_xlat68;
        u_xlat68 = ((x_1704 * x_1705) + x_1707);
        let x_1710 : vec4<f32> = u_xlat15;
        let x_1711 : vec2<f32> = vec2<f32>(x_1710.x, x_1710.y);
        let x_1713 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
        let x_1720 : vec3<f32> = txVec16;
        let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1720.xy, x_1720.z);
        u_xlat69 = x_1722;
        let x_1724 : f32 = u_xlat18.w;
        let x_1725 : f32 = u_xlat69;
        let x_1727 : f32 = u_xlat68;
        u_xlat68 = ((x_1724 * x_1725) + x_1727);
        let x_1730 : vec4<f32> = u_xlat14;
        let x_1731 : vec2<f32> = vec2<f32>(x_1730.x, x_1730.y);
        let x_1733 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1731.x, x_1731.y, x_1733);
        let x_1740 : vec3<f32> = txVec17;
        let x_1742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1740.xy, x_1740.z);
        u_xlat69 = x_1742;
        let x_1744 : f32 = u_xlat19.x;
        let x_1745 : f32 = u_xlat69;
        let x_1747 : f32 = u_xlat68;
        u_xlat68 = ((x_1744 * x_1745) + x_1747);
        let x_1750 : vec4<f32> = u_xlat14;
        let x_1751 : vec2<f32> = vec2<f32>(x_1750.z, x_1750.w);
        let x_1753 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1751.x, x_1751.y, x_1753);
        let x_1760 : vec3<f32> = txVec18;
        let x_1762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1760.xy, x_1760.z);
        u_xlat69 = x_1762;
        let x_1764 : f32 = u_xlat19.y;
        let x_1765 : f32 = u_xlat69;
        let x_1767 : f32 = u_xlat68;
        u_xlat68 = ((x_1764 * x_1765) + x_1767);
        let x_1770 : vec2<f32> = u_xlat55;
        let x_1772 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1770.x, x_1770.y, x_1772);
        let x_1779 : vec3<f32> = txVec19;
        let x_1781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1779.xy, x_1779.z);
        u_xlat69 = x_1781;
        let x_1783 : f32 = u_xlat19.z;
        let x_1784 : f32 = u_xlat69;
        let x_1786 : f32 = u_xlat68;
        u_xlat68 = ((x_1783 * x_1784) + x_1786);
        let x_1789 : vec4<f32> = u_xlat15;
        let x_1790 : vec2<f32> = vec2<f32>(x_1789.z, x_1789.w);
        let x_1792 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1790.x, x_1790.y, x_1792);
        let x_1799 : vec3<f32> = txVec20;
        let x_1801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1799.xy, x_1799.z);
        u_xlat69 = x_1801;
        let x_1803 : f32 = u_xlat19.w;
        let x_1804 : f32 = u_xlat69;
        let x_1806 : f32 = u_xlat68;
        u_xlat68 = ((x_1803 * x_1804) + x_1806);
        let x_1809 : vec4<f32> = u_xlat16;
        let x_1810 : vec2<f32> = vec2<f32>(x_1809.x, x_1809.y);
        let x_1812 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1810.x, x_1810.y, x_1812);
        let x_1819 : vec3<f32> = txVec21;
        let x_1821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1819.xy, x_1819.z);
        u_xlat69 = x_1821;
        let x_1823 : f32 = u_xlat20.x;
        let x_1824 : f32 = u_xlat69;
        let x_1826 : f32 = u_xlat68;
        u_xlat68 = ((x_1823 * x_1824) + x_1826);
        let x_1829 : vec4<f32> = u_xlat16;
        let x_1830 : vec2<f32> = vec2<f32>(x_1829.z, x_1829.w);
        let x_1832 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
        let x_1839 : vec3<f32> = txVec22;
        let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1839.xy, x_1839.z);
        u_xlat69 = x_1841;
        let x_1843 : f32 = u_xlat20.y;
        let x_1844 : f32 = u_xlat69;
        let x_1846 : f32 = u_xlat68;
        u_xlat68 = ((x_1843 * x_1844) + x_1846);
        let x_1849 : vec3<f32> = u_xlat29;
        let x_1850 : vec2<f32> = vec2<f32>(x_1849.x, x_1849.y);
        let x_1852 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1850.x, x_1850.y, x_1852);
        let x_1859 : vec3<f32> = txVec23;
        let x_1861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1859.xy, x_1859.z);
        u_xlat69 = x_1861;
        let x_1863 : f32 = u_xlat20.z;
        let x_1864 : f32 = u_xlat69;
        let x_1866 : f32 = u_xlat68;
        u_xlat68 = ((x_1863 * x_1864) + x_1866);
        let x_1869 : vec2<f32> = u_xlat17;
        let x_1871 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
        let x_1878 : vec3<f32> = txVec24;
        let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1878.xy, x_1878.z);
        u_xlat69 = x_1880;
        let x_1882 : f32 = u_xlat20.w;
        let x_1883 : f32 = u_xlat69;
        let x_1885 : f32 = u_xlat68;
        u_xlat68 = ((x_1882 * x_1883) + x_1885);
        let x_1888 : vec4<f32> = u_xlat11;
        let x_1889 : vec2<f32> = vec2<f32>(x_1888.x, x_1888.y);
        let x_1891 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1889.x, x_1889.y, x_1891);
        let x_1898 : vec3<f32> = txVec25;
        let x_1900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1898.xy, x_1898.z);
        u_xlat69 = x_1900;
        let x_1902 : f32 = u_xlat7.x;
        let x_1903 : f32 = u_xlat69;
        let x_1905 : f32 = u_xlat68;
        u_xlat68 = ((x_1902 * x_1903) + x_1905);
        let x_1908 : vec4<f32> = u_xlat11;
        let x_1909 : vec2<f32> = vec2<f32>(x_1908.z, x_1908.w);
        let x_1911 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1909.x, x_1909.y, x_1911);
        let x_1918 : vec3<f32> = txVec26;
        let x_1920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1918.xy, x_1918.z);
        u_xlat69 = x_1920;
        let x_1922 : f32 = u_xlat7.y;
        let x_1923 : f32 = u_xlat69;
        let x_1925 : f32 = u_xlat68;
        u_xlat68 = ((x_1922 * x_1923) + x_1925);
        let x_1928 : vec2<f32> = u_xlat52;
        let x_1930 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
        let x_1937 : vec3<f32> = txVec27;
        let x_1939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1937.xy, x_1937.z);
        u_xlat69 = x_1939;
        let x_1941 : f32 = u_xlat7.z;
        let x_1942 : f32 = u_xlat69;
        let x_1944 : f32 = u_xlat68;
        u_xlat68 = ((x_1941 * x_1942) + x_1944);
        let x_1947 : vec3<f32> = u_xlat26;
        let x_1948 : vec2<f32> = vec2<f32>(x_1947.x, x_1947.y);
        let x_1950 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1948.x, x_1948.y, x_1950);
        let x_1957 : vec3<f32> = txVec28;
        let x_1959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1957.xy, x_1957.z);
        u_xlat26.x = x_1959;
        let x_1962 : f32 = u_xlat7.w;
        let x_1964 : f32 = u_xlat26.x;
        let x_1966 : f32 = u_xlat68;
        u_xlat67 = ((x_1962 * x_1964) + x_1966);
      }
    }
  } else {
    let x_1970 : vec4<f32> = vs_INTERP8;
    let x_1971 : vec2<f32> = vec2<f32>(x_1970.x, x_1970.y);
    let x_1973 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1971.x, x_1971.y, x_1973);
    let x_1980 : vec3<f32> = txVec29;
    let x_1982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1980.xy, x_1980.z);
    u_xlat67 = x_1982;
  }
  let x_1984 : f32 = x_747.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1984) + 1.0f);
  let x_1988 : f32 = u_xlat67;
  let x_1990 : f32 = x_747.x_MainLightShadowParams.x;
  let x_1993 : f32 = u_xlat26.x;
  u_xlat67 = ((x_1988 * x_1990) + x_1993);
  let x_1996 : f32 = vs_INTERP8.z;
  u_xlatb26.x = (0.0f >= x_1996);
  let x_2001 : f32 = vs_INTERP8.z;
  u_xlatb47 = (x_2001 >= 1.0f);
  let x_2003 : bool = u_xlatb47;
  let x_2005 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_2003 | x_2005);
  let x_2009 : bool = u_xlatb26.x;
  let x_2010 : f32 = u_xlat67;
  u_xlat67 = select(x_2010, 1.0f, x_2009);
  let x_2012 : vec3<f32> = vs_INTERP0;
  let x_2014 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_2012 + -(x_2014));
  let x_2017 : vec3<f32> = u_xlat26;
  let x_2018 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_2017, x_2018);
  let x_2022 : f32 = u_xlat26.x;
  let x_2024 : f32 = x_747.x_MainLightShadowParams.z;
  let x_2027 : f32 = x_747.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_2022 * x_2024) + x_2027);
  let x_2031 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2031, 0.0f, 1.0f);
  let x_2034 : f32 = u_xlat67;
  u_xlat47 = (-(x_2034) + 1.0f);
  let x_2038 : f32 = u_xlat26.x;
  let x_2039 : f32 = u_xlat47;
  let x_2041 : f32 = u_xlat67;
  u_xlat67 = ((x_2038 * x_2039) + x_2041);
  let x_2049 : f32 = x_2047.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_2049 == -1.0f));
  let x_2053 : bool = u_xlatb26.x;
  if (x_2053) {
    let x_2056 : vec3<f32> = vs_INTERP0;
    let x_2059 : vec4<f32> = x_2047.x_MainLightWorldToLight[1i];
    let x_2061 : vec2<f32> = (vec2<f32>(x_2056.y, x_2056.y) * vec2<f32>(x_2059.x, x_2059.y));
    let x_2062 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2061.x, x_2061.y, x_2062.z);
    let x_2065 : vec4<f32> = x_2047.x_MainLightWorldToLight[0i];
    let x_2067 : vec3<f32> = vs_INTERP0;
    let x_2070 : vec3<f32> = u_xlat26;
    let x_2072 : vec2<f32> = ((vec2<f32>(x_2065.x, x_2065.y) * vec2<f32>(x_2067.x, x_2067.x)) + vec2<f32>(x_2070.x, x_2070.y));
    let x_2073 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2072.x, x_2072.y, x_2073.z);
    let x_2076 : vec4<f32> = x_2047.x_MainLightWorldToLight[2i];
    let x_2078 : vec3<f32> = vs_INTERP0;
    let x_2081 : vec3<f32> = u_xlat26;
    let x_2083 : vec2<f32> = ((vec2<f32>(x_2076.x, x_2076.y) * vec2<f32>(x_2078.z, x_2078.z)) + vec2<f32>(x_2081.x, x_2081.y));
    let x_2084 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2083.x, x_2083.y, x_2084.z);
    let x_2086 : vec3<f32> = u_xlat26;
    let x_2089 : vec4<f32> = x_2047.x_MainLightWorldToLight[3i];
    let x_2091 : vec2<f32> = (vec2<f32>(x_2086.x, x_2086.y) + vec2<f32>(x_2089.x, x_2089.y));
    let x_2092 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2091.x, x_2091.y, x_2092.z);
    let x_2094 : vec3<f32> = u_xlat26;
    let x_2097 : vec2<f32> = ((vec2<f32>(x_2094.x, x_2094.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2098 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2097.x, x_2097.y, x_2098.z);
    let x_2105 : vec3<f32> = u_xlat26;
    let x_2108 : f32 = x_44.x_GlobalMipBias.x;
    let x_2109 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2105.x, x_2105.y), x_2108);
    u_xlat7 = x_2109;
    let x_2111 : f32 = x_2047.x_MainLightCookieTextureFormat;
    let x_2113 : f32 = x_2047.x_MainLightCookieTextureFormat;
    let x_2115 : f32 = x_2047.x_MainLightCookieTextureFormat;
    let x_2117 : f32 = x_2047.x_MainLightCookieTextureFormat;
    let x_2118 : vec4<f32> = vec4<f32>(x_2111, x_2113, x_2115, x_2117);
    let x_2126 : vec4<bool> = (vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2118.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_2126.x, x_2126.y);
    let x_2129 : bool = u_xlatb26.y;
    if (x_2129) {
      let x_2134 : f32 = u_xlat7.w;
      x_2130 = x_2134;
    } else {
      let x_2137 : f32 = u_xlat7.x;
      x_2130 = x_2137;
    }
    let x_2138 : f32 = x_2130;
    u_xlat47 = x_2138;
    let x_2140 : bool = u_xlatb26.x;
    if (x_2140) {
      let x_2144 : vec4<f32> = u_xlat7;
      x_2141 = vec3<f32>(x_2144.x, x_2144.y, x_2144.z);
    } else {
      let x_2147 : f32 = u_xlat47;
      x_2141 = vec3<f32>(x_2147, x_2147, x_2147);
    }
    let x_2149 : vec3<f32> = x_2141;
    u_xlat26 = x_2149;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_2154 : vec3<f32> = u_xlat26;
  let x_2156 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (x_2154 * vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
  let x_2159 : vec4<f32> = u_xlat5;
  let x_2161 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2159.x, x_2159.x, x_2159.x) * x_2161);
  let x_2163 : vec4<f32> = u_xlat3;
  let x_2166 : vec4<f32> = u_xlat1;
  u_xlat69 = dot(-(vec3<f32>(x_2163.x, x_2163.y, x_2163.z)), vec3<f32>(x_2166.x, x_2166.y, x_2166.z));
  let x_2169 : f32 = u_xlat69;
  let x_2170 : f32 = u_xlat69;
  u_xlat69 = (x_2169 + x_2170);
  let x_2172 : vec4<f32> = u_xlat1;
  let x_2174 : f32 = u_xlat69;
  let x_2178 : vec4<f32> = u_xlat3;
  let x_2181 : vec3<f32> = ((vec3<f32>(x_2172.x, x_2172.y, x_2172.z) * -(vec3<f32>(x_2174, x_2174, x_2174))) + -(vec3<f32>(x_2178.x, x_2178.y, x_2178.z)));
  let x_2182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2181.x, x_2181.y, x_2181.z, x_2182.w);
  let x_2184 : vec4<f32> = u_xlat1;
  let x_2186 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_2184.x, x_2184.y, x_2184.z), vec3<f32>(x_2186.x, x_2186.y, x_2186.z));
  let x_2189 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2189, 0.0f, 1.0f);
  let x_2191 : f32 = u_xlat69;
  u_xlat69 = (-(x_2191) + 1.0f);
  let x_2194 : f32 = u_xlat69;
  let x_2195 : f32 = u_xlat69;
  u_xlat69 = (x_2194 * x_2195);
  let x_2197 : f32 = u_xlat69;
  let x_2198 : f32 = u_xlat69;
  u_xlat69 = (x_2197 * x_2198);
  let x_2201 : f32 = u_xlat64;
  u_xlat70 = ((-(x_2201) * 0.699999988f) + 1.700000048f);
  let x_2207 : f32 = u_xlat64;
  let x_2208 : f32 = u_xlat70;
  u_xlat64 = (x_2207 * x_2208);
  let x_2210 : f32 = u_xlat64;
  u_xlat64 = (x_2210 * 6.0f);
  let x_2220 : vec4<f32> = u_xlat7;
  let x_2222 : f32 = u_xlat64;
  let x_2223 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2220.x, x_2220.y, x_2220.z), x_2222);
  u_xlat7 = x_2223;
  let x_2225 : f32 = u_xlat7.w;
  u_xlat64 = (x_2225 + -1.0f);
  let x_2228 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2229 : f32 = u_xlat64;
  u_xlat64 = ((x_2228 * x_2229) + 1.0f);
  let x_2232 : f32 = u_xlat64;
  u_xlat64 = max(x_2232, 0.0f);
  let x_2234 : f32 = u_xlat64;
  u_xlat64 = log2(x_2234);
  let x_2236 : f32 = u_xlat64;
  let x_2238 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat64 = (x_2236 * x_2238);
  let x_2240 : f32 = u_xlat64;
  u_xlat64 = exp2(x_2240);
  let x_2242 : f32 = u_xlat64;
  let x_2244 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat64 = (x_2242 * x_2244);
  let x_2246 : vec4<f32> = u_xlat7;
  let x_2248 : f32 = u_xlat64;
  let x_2250 : vec3<f32> = (vec3<f32>(x_2246.x, x_2246.y, x_2246.z) * vec3<f32>(x_2248, x_2248, x_2248));
  let x_2251 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
  let x_2253 : vec4<f32> = u_xlat2;
  let x_2255 : vec4<f32> = u_xlat2;
  let x_2259 : vec2<f32> = ((vec2<f32>(x_2253.x, x_2253.x) * vec2<f32>(x_2255.x, x_2255.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2260 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2259.x, x_2259.y, x_2260.z, x_2260.w);
  let x_2263 : f32 = u_xlat8.y;
  u_xlat64 = (1.0f / x_2263);
  let x_2265 : vec4<f32> = u_xlat0;
  let x_2268 : f32 = u_xlat65;
  u_xlat29 = (-(vec3<f32>(x_2265.x, x_2265.y, x_2265.z)) + vec3<f32>(x_2268, x_2268, x_2268));
  let x_2271 : f32 = u_xlat69;
  let x_2273 : vec3<f32> = u_xlat29;
  let x_2275 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2271, x_2271, x_2271) * x_2273) + vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
  let x_2278 : f32 = u_xlat64;
  let x_2280 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2278, x_2278, x_2278) * x_2280);
  let x_2282 : vec4<f32> = u_xlat7;
  let x_2284 : vec3<f32> = u_xlat29;
  let x_2285 : vec3<f32> = (vec3<f32>(x_2282.x, x_2282.y, x_2282.z) * x_2284);
  let x_2286 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
  let x_2288 : vec3<f32> = u_xlat4;
  let x_2289 : vec3<f32> = u_xlat6;
  let x_2291 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_2288 * x_2289) + vec3<f32>(x_2291.x, x_2291.y, x_2291.z));
  let x_2294 : f32 = u_xlat67;
  let x_2297 : f32 = x_359.unity_LightData.z;
  u_xlat64 = (x_2294 * x_2297);
  let x_2299 : vec4<f32> = u_xlat1;
  let x_2302 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2299.x, x_2299.y, x_2299.z), vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
  let x_2307 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2307, 0.0f, 1.0f);
  let x_2310 : f32 = u_xlat64;
  let x_2312 : f32 = u_xlat2.x;
  u_xlat64 = (x_2310 * x_2312);
  let x_2314 : f32 = u_xlat64;
  let x_2316 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2314, x_2314, x_2314) * x_2316);
  let x_2318 : vec4<f32> = u_xlat3;
  let x_2321 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2323 : vec3<f32> = (vec3<f32>(x_2318.x, x_2318.y, x_2318.z) + vec3<f32>(x_2321.x, x_2321.y, x_2321.z));
  let x_2324 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
  let x_2326 : vec4<f32> = u_xlat7;
  let x_2328 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2326.x, x_2326.y, x_2326.z), vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
  let x_2331 : f32 = u_xlat64;
  u_xlat64 = max(x_2331, 1.17549435e-37f);
  let x_2334 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_2334);
  let x_2336 : f32 = u_xlat64;
  let x_2338 : vec4<f32> = u_xlat7;
  let x_2340 : vec3<f32> = (vec3<f32>(x_2336, x_2336, x_2336) * vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
  let x_2343 : vec4<f32> = u_xlat1;
  let x_2345 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2343.x, x_2343.y, x_2343.z), vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
  let x_2348 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2348, 0.0f, 1.0f);
  let x_2351 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2353 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_2351.x, x_2351.y, x_2351.z), vec3<f32>(x_2353.x, x_2353.y, x_2353.z));
  let x_2358 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2358, 0.0f, 1.0f);
  let x_2361 : f32 = u_xlat64;
  let x_2362 : f32 = u_xlat64;
  u_xlat64 = (x_2361 * x_2362);
  let x_2364 : f32 = u_xlat64;
  let x_2366 : f32 = u_xlat8.x;
  u_xlat64 = ((x_2364 * x_2366) + 1.000010014f);
  let x_2371 : f32 = u_xlat2.x;
  let x_2373 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2371 * x_2373);
  let x_2376 : f32 = u_xlat64;
  let x_2377 : f32 = u_xlat64;
  u_xlat64 = (x_2376 * x_2377);
  let x_2380 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2380, 0.100000001f);
  let x_2384 : f32 = u_xlat64;
  let x_2386 : f32 = u_xlat2.x;
  u_xlat64 = (x_2384 * x_2386);
  let x_2388 : f32 = u_xlat66;
  let x_2389 : f32 = u_xlat64;
  u_xlat64 = (x_2388 * x_2389);
  let x_2391 : f32 = u_xlat23;
  let x_2392 : f32 = u_xlat64;
  u_xlat64 = (x_2391 / x_2392);
  let x_2394 : vec4<f32> = u_xlat0;
  let x_2396 : f32 = u_xlat64;
  let x_2399 : vec3<f32> = u_xlat6;
  let x_2400 : vec3<f32> = ((vec3<f32>(x_2394.x, x_2394.y, x_2394.z) * vec3<f32>(x_2396, x_2396, x_2396)) + x_2399);
  let x_2401 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2400.x, x_2400.y, x_2400.z, x_2401.w);
  let x_2403 : vec3<f32> = u_xlat26;
  let x_2404 : vec4<f32> = u_xlat7;
  u_xlat26 = (x_2403 * vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
  let x_2408 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2410 : f32 = x_359.unity_LightData.y;
  u_xlat64 = min(x_2408, x_2410);
  let x_2414 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_2414));
  let x_2420 : f32 = x_2047.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2422 : f32 = x_2047.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2424 : f32 = x_2047.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2426 : f32 = x_2047.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2427 : vec4<f32> = vec4<f32>(x_2420, x_2422, x_2424, x_2426);
  let x_2434 : vec4<bool> = (vec4<f32>(x_2427.x, x_2427.y, x_2427.z, x_2427.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2435 : vec2<bool> = vec2<bool>(x_2434.x, x_2434.w);
  let x_2436 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2435.x, x_2436.y, x_2436.z, x_2435.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2447 : u32 = u_xlatu_loop_1;
    let x_2448 : u32 = u_xlatu64;
    if ((x_2447 < x_2448)) {
    } else {
      break;
    }
    let x_2451 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2451 >> 2u);
    let x_2455 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2455 & 3u));
    let x_2458 : u32 = u_xlatu69;
    let x_2461 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2458)];
    let x_2471 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2476 : vec4<u32> = indexable[x_2471];
    u_xlat69 = dot(x_2461, bitcast<vec4<f32>>(x_2476));
    let x_2479 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2479));
    let x_2482 : vec3<f32> = vs_INTERP0;
    let x_2494 : u32 = u_xlatu69;
    let x_2497 : vec4<f32> = x_2493.x_AdditionalLightsPosition[bitcast<i32>(x_2494)];
    let x_2500 : u32 = u_xlatu69;
    let x_2503 : vec4<f32> = x_2493.x_AdditionalLightsPosition[bitcast<i32>(x_2500)];
    u_xlat29 = ((-(x_2482) * vec3<f32>(x_2497.w, x_2497.w, x_2497.w)) + vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
    let x_2506 : vec3<f32> = u_xlat29;
    let x_2507 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_2506, x_2507);
    let x_2509 : f32 = u_xlat70;
    u_xlat70 = max(x_2509, 6.10351562e-05f);
    let x_2512 : f32 = u_xlat70;
    u_xlat9.x = inverseSqrt(x_2512);
    let x_2516 : vec3<f32> = u_xlat29;
    let x_2517 : vec4<f32> = u_xlat9;
    u_xlat30 = (x_2516 * vec3<f32>(x_2517.x, x_2517.x, x_2517.x));
    let x_2520 : f32 = u_xlat70;
    u_xlat10.x = (1.0f / x_2520);
    let x_2523 : f32 = u_xlat70;
    let x_2524 : u32 = u_xlatu69;
    let x_2527 : f32 = x_2493.x_AdditionalLightsAttenuation[bitcast<i32>(x_2524)].x;
    u_xlat70 = (x_2523 * x_2527);
    let x_2529 : f32 = u_xlat70;
    let x_2531 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2529) * x_2531) + 1.0f);
    let x_2534 : f32 = u_xlat70;
    u_xlat70 = max(x_2534, 0.0f);
    let x_2536 : f32 = u_xlat70;
    let x_2537 : f32 = u_xlat70;
    u_xlat70 = (x_2536 * x_2537);
    let x_2539 : f32 = u_xlat70;
    let x_2541 : f32 = u_xlat10.x;
    u_xlat70 = (x_2539 * x_2541);
    let x_2543 : u32 = u_xlatu69;
    let x_2546 : vec4<f32> = x_2493.x_AdditionalLightsSpotDir[bitcast<i32>(x_2543)];
    let x_2548 : vec3<f32> = u_xlat30;
    u_xlat10.x = dot(vec3<f32>(x_2546.x, x_2546.y, x_2546.z), x_2548);
    let x_2552 : f32 = u_xlat10.x;
    let x_2553 : u32 = u_xlatu69;
    let x_2556 : f32 = x_2493.x_AdditionalLightsAttenuation[bitcast<i32>(x_2553)].z;
    let x_2558 : u32 = u_xlatu69;
    let x_2561 : f32 = x_2493.x_AdditionalLightsAttenuation[bitcast<i32>(x_2558)].w;
    u_xlat10.x = ((x_2552 * x_2556) + x_2561);
    let x_2565 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2565, 0.0f, 1.0f);
    let x_2569 : f32 = u_xlat10.x;
    let x_2571 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2569 * x_2571);
    let x_2574 : f32 = u_xlat70;
    let x_2576 : f32 = u_xlat10.x;
    u_xlat70 = (x_2574 * x_2576);
    let x_2579 : u32 = u_xlatu69;
    u_xlatu10 = (x_2579 >> 5u);
    let x_2582 : u32 = u_xlatu69;
    u_xlati31 = (1i << bitcast<u32>((bitcast<i32>(x_2582) & 31i)));
    let x_2588 : i32 = u_xlati31;
    let x_2590 : u32 = u_xlatu10;
    let x_2593 : f32 = x_2047.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2590)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_2588) & bitcast<u32>(x_2593)));
    let x_2597 : i32 = u_xlati10;
    if ((x_2597 != 0i)) {
      let x_2607 : u32 = u_xlatu69;
      let x_2610 : f32 = x_2606.x_AdditionalLightsLightTypes[bitcast<i32>(x_2607)].el;
      u_xlati10 = i32(x_2610);
      let x_2612 : i32 = u_xlati10;
      u_xlati31 = select(1i, 0i, (x_2612 != 0i));
      let x_2616 : u32 = u_xlatu69;
      u_xlati52 = (bitcast<i32>(x_2616) << bitcast<u32>(2i));
      let x_2619 : i32 = u_xlati31;
      if ((x_2619 != 0i)) {
        let x_2623 : vec3<f32> = vs_INTERP0;
        let x_2625 : i32 = u_xlati52;
        let x_2628 : i32 = u_xlati52;
        let x_2632 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[((x_2625 + 1i) / 4i)][((x_2628 + 1i) % 4i)];
        let x_2634 : vec3<f32> = (vec3<f32>(x_2623.y, x_2623.y, x_2623.y) * vec3<f32>(x_2632.x, x_2632.y, x_2632.w));
        let x_2635 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2634.x, x_2634.y, x_2634.z, x_2635.w);
        let x_2637 : i32 = u_xlati52;
        let x_2639 : i32 = u_xlati52;
        let x_2642 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[(x_2637 / 4i)][(x_2639 % 4i)];
        let x_2644 : vec3<f32> = vs_INTERP0;
        let x_2647 : vec4<f32> = u_xlat11;
        let x_2649 : vec3<f32> = ((vec3<f32>(x_2642.x, x_2642.y, x_2642.w) * vec3<f32>(x_2644.x, x_2644.x, x_2644.x)) + vec3<f32>(x_2647.x, x_2647.y, x_2647.z));
        let x_2650 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2649.x, x_2649.y, x_2649.z, x_2650.w);
        let x_2652 : i32 = u_xlati52;
        let x_2655 : i32 = u_xlati52;
        let x_2659 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[((x_2652 + 2i) / 4i)][((x_2655 + 2i) % 4i)];
        let x_2661 : vec3<f32> = vs_INTERP0;
        let x_2664 : vec4<f32> = u_xlat11;
        let x_2666 : vec3<f32> = ((vec3<f32>(x_2659.x, x_2659.y, x_2659.w) * vec3<f32>(x_2661.z, x_2661.z, x_2661.z)) + vec3<f32>(x_2664.x, x_2664.y, x_2664.z));
        let x_2667 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2667.w);
        let x_2669 : vec4<f32> = u_xlat11;
        let x_2671 : i32 = u_xlati52;
        let x_2674 : i32 = u_xlati52;
        let x_2678 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[((x_2671 + 3i) / 4i)][((x_2674 + 3i) % 4i)];
        let x_2680 : vec3<f32> = (vec3<f32>(x_2669.x, x_2669.y, x_2669.z) + vec3<f32>(x_2678.x, x_2678.y, x_2678.w));
        let x_2681 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
        let x_2684 : vec4<f32> = u_xlat11;
        let x_2686 : vec4<f32> = u_xlat11;
        let x_2688 : vec2<f32> = (vec2<f32>(x_2684.x, x_2684.y) / vec2<f32>(x_2686.z, x_2686.z));
        let x_2689 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2688.x, x_2689.y, x_2688.y);
        let x_2691 : vec3<f32> = u_xlat31;
        let x_2694 : vec2<f32> = ((vec2<f32>(x_2691.x, x_2691.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2695 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2694.x, x_2695.y, x_2694.y);
        let x_2697 : vec3<f32> = u_xlat31;
        let x_2701 : vec2<f32> = clamp(vec2<f32>(x_2697.x, x_2697.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2702 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2701.x, x_2702.y, x_2701.y);
        let x_2704 : u32 = u_xlatu69;
        let x_2707 : vec4<f32> = x_2606.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2704)];
        let x_2709 : vec3<f32> = u_xlat31;
        let x_2712 : u32 = u_xlatu69;
        let x_2715 : vec4<f32> = x_2606.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2712)];
        let x_2717 : vec2<f32> = ((vec2<f32>(x_2707.x, x_2707.y) * vec2<f32>(x_2709.x, x_2709.z)) + vec2<f32>(x_2715.z, x_2715.w));
        let x_2718 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2717.x, x_2718.y, x_2717.y);
      } else {
        let x_2722 : i32 = u_xlati10;
        u_xlatb10 = (x_2722 == 1i);
        let x_2724 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_2724);
        let x_2726 : i32 = u_xlati10;
        if ((x_2726 != 0i)) {
          let x_2730 : vec3<f32> = vs_INTERP0;
          let x_2732 : i32 = u_xlati52;
          let x_2735 : i32 = u_xlati52;
          let x_2739 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[((x_2732 + 1i) / 4i)][((x_2735 + 1i) % 4i)];
          let x_2741 : vec2<f32> = (vec2<f32>(x_2730.y, x_2730.y) * vec2<f32>(x_2739.x, x_2739.y));
          let x_2742 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2741.x, x_2741.y, x_2742.z, x_2742.w);
          let x_2744 : i32 = u_xlati52;
          let x_2746 : i32 = u_xlati52;
          let x_2749 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[(x_2744 / 4i)][(x_2746 % 4i)];
          let x_2751 : vec3<f32> = vs_INTERP0;
          let x_2754 : vec4<f32> = u_xlat11;
          let x_2756 : vec2<f32> = ((vec2<f32>(x_2749.x, x_2749.y) * vec2<f32>(x_2751.x, x_2751.x)) + vec2<f32>(x_2754.x, x_2754.y));
          let x_2757 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2756.x, x_2756.y, x_2757.z, x_2757.w);
          let x_2759 : i32 = u_xlati52;
          let x_2762 : i32 = u_xlati52;
          let x_2766 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[((x_2759 + 2i) / 4i)][((x_2762 + 2i) % 4i)];
          let x_2768 : vec3<f32> = vs_INTERP0;
          let x_2771 : vec4<f32> = u_xlat11;
          let x_2773 : vec2<f32> = ((vec2<f32>(x_2766.x, x_2766.y) * vec2<f32>(x_2768.z, x_2768.z)) + vec2<f32>(x_2771.x, x_2771.y));
          let x_2774 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2773.x, x_2773.y, x_2774.z, x_2774.w);
          let x_2776 : vec4<f32> = u_xlat11;
          let x_2778 : i32 = u_xlati52;
          let x_2781 : i32 = u_xlati52;
          let x_2785 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[((x_2778 + 3i) / 4i)][((x_2781 + 3i) % 4i)];
          let x_2787 : vec2<f32> = (vec2<f32>(x_2776.x, x_2776.y) + vec2<f32>(x_2785.x, x_2785.y));
          let x_2788 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2787.x, x_2787.y, x_2788.z, x_2788.w);
          let x_2790 : vec4<f32> = u_xlat11;
          let x_2793 : vec2<f32> = ((vec2<f32>(x_2790.x, x_2790.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2794 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2793.x, x_2793.y, x_2794.z, x_2794.w);
          let x_2796 : vec4<f32> = u_xlat11;
          let x_2798 : vec2<f32> = fract(vec2<f32>(x_2796.x, x_2796.y));
          let x_2799 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2798.x, x_2798.y, x_2799.z, x_2799.w);
          let x_2801 : u32 = u_xlatu69;
          let x_2804 : vec4<f32> = x_2606.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2801)];
          let x_2806 : vec4<f32> = u_xlat11;
          let x_2809 : u32 = u_xlatu69;
          let x_2812 : vec4<f32> = x_2606.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2809)];
          let x_2814 : vec2<f32> = ((vec2<f32>(x_2804.x, x_2804.y) * vec2<f32>(x_2806.x, x_2806.y)) + vec2<f32>(x_2812.z, x_2812.w));
          let x_2815 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2814.x, x_2815.y, x_2814.y);
        } else {
          let x_2818 : vec3<f32> = vs_INTERP0;
          let x_2820 : i32 = u_xlati52;
          let x_2823 : i32 = u_xlati52;
          let x_2827 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[((x_2820 + 1i) / 4i)][((x_2823 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2818.y, x_2818.y, x_2818.y, x_2818.y) * x_2827);
          let x_2829 : i32 = u_xlati52;
          let x_2831 : i32 = u_xlati52;
          let x_2834 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[(x_2829 / 4i)][(x_2831 % 4i)];
          let x_2835 : vec3<f32> = vs_INTERP0;
          let x_2838 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2834 * vec4<f32>(x_2835.x, x_2835.x, x_2835.x, x_2835.x)) + x_2838);
          let x_2840 : i32 = u_xlati52;
          let x_2843 : i32 = u_xlati52;
          let x_2847 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[((x_2840 + 2i) / 4i)][((x_2843 + 2i) % 4i)];
          let x_2848 : vec3<f32> = vs_INTERP0;
          let x_2851 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2847 * vec4<f32>(x_2848.z, x_2848.z, x_2848.z, x_2848.z)) + x_2851);
          let x_2853 : vec4<f32> = u_xlat11;
          let x_2854 : i32 = u_xlati52;
          let x_2857 : i32 = u_xlati52;
          let x_2861 : vec4<f32> = x_2606.x_AdditionalLightsWorldToLights[((x_2854 + 3i) / 4i)][((x_2857 + 3i) % 4i)];
          u_xlat11 = (x_2853 + x_2861);
          let x_2863 : vec4<f32> = u_xlat11;
          let x_2865 : vec4<f32> = u_xlat11;
          let x_2867 : vec3<f32> = (vec3<f32>(x_2863.x, x_2863.y, x_2863.z) / vec3<f32>(x_2865.w, x_2865.w, x_2865.w));
          let x_2868 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2867.x, x_2867.y, x_2867.z, x_2868.w);
          let x_2870 : vec4<f32> = u_xlat11;
          let x_2872 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_2870.x, x_2870.y, x_2870.z), vec3<f32>(x_2872.x, x_2872.y, x_2872.z));
          let x_2877 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_2877);
          let x_2880 : vec4<f32> = u_xlat10;
          let x_2882 : vec4<f32> = u_xlat11;
          let x_2884 : vec3<f32> = (vec3<f32>(x_2880.x, x_2880.x, x_2880.x) * vec3<f32>(x_2882.x, x_2882.y, x_2882.z));
          let x_2885 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2884.x, x_2884.y, x_2884.z, x_2885.w);
          let x_2887 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_2887.x, x_2887.y, x_2887.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2893 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_2893, 0.000001f);
          let x_2898 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_2898);
          let x_2901 : vec4<f32> = u_xlat10;
          let x_2903 : vec4<f32> = u_xlat11;
          let x_2905 : vec3<f32> = (vec3<f32>(x_2901.x, x_2901.x, x_2901.x) * vec3<f32>(x_2903.z, x_2903.x, x_2903.y));
          let x_2906 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2905.x, x_2905.y, x_2905.z, x_2906.w);
          let x_2909 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2909);
          let x_2913 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2913, 0.0f, 1.0f);
          let x_2917 : vec4<f32> = u_xlat12;
          let x_2920 : vec4<bool> = (vec4<f32>(x_2917.y, x_2917.z, x_2917.y, x_2917.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2920.x, x_2920.y);
          let x_2924 : bool = u_xlatb53.x;
          if (x_2924) {
            let x_2929 : f32 = u_xlat12.x;
            x_2925 = x_2929;
          } else {
            let x_2932 : f32 = u_xlat12.x;
            x_2925 = -(x_2932);
          }
          let x_2934 : f32 = x_2925;
          u_xlat53.x = x_2934;
          let x_2937 : bool = u_xlatb53.y;
          if (x_2937) {
            let x_2942 : f32 = u_xlat12.x;
            x_2938 = x_2942;
          } else {
            let x_2945 : f32 = u_xlat12.x;
            x_2938 = -(x_2945);
          }
          let x_2947 : f32 = x_2938;
          u_xlat53.y = x_2947;
          let x_2949 : vec4<f32> = u_xlat11;
          let x_2951 : vec4<f32> = u_xlat10;
          let x_2954 : vec2<f32> = u_xlat53;
          let x_2955 : vec2<f32> = ((vec2<f32>(x_2949.x, x_2949.y) * vec2<f32>(x_2951.x, x_2951.x)) + x_2954);
          let x_2956 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2955.x, x_2956.y, x_2955.y, x_2956.w);
          let x_2958 : vec4<f32> = u_xlat10;
          let x_2961 : vec2<f32> = ((vec2<f32>(x_2958.x, x_2958.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2962 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2961.x, x_2962.y, x_2961.y, x_2962.w);
          let x_2964 : vec4<f32> = u_xlat10;
          let x_2968 : vec2<f32> = clamp(vec2<f32>(x_2964.x, x_2964.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2969 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2968.x, x_2969.y, x_2968.y, x_2969.w);
          let x_2971 : u32 = u_xlatu69;
          let x_2974 : vec4<f32> = x_2606.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2971)];
          let x_2976 : vec4<f32> = u_xlat10;
          let x_2979 : u32 = u_xlatu69;
          let x_2982 : vec4<f32> = x_2606.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2979)];
          let x_2984 : vec2<f32> = ((vec2<f32>(x_2974.x, x_2974.y) * vec2<f32>(x_2976.x, x_2976.z)) + vec2<f32>(x_2982.z, x_2982.w));
          let x_2985 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2984.x, x_2985.y, x_2984.y);
        }
      }
      let x_2992 : vec3<f32> = u_xlat31;
      let x_2995 : f32 = x_44.x_GlobalMipBias.x;
      let x_2996 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2992.x, x_2992.z), x_2995);
      u_xlat10 = x_2996;
      let x_2999 : bool = u_xlatb2.w;
      if (x_2999) {
        let x_3004 : f32 = u_xlat10.w;
        x_3000 = x_3004;
      } else {
        let x_3007 : f32 = u_xlat10.x;
        x_3000 = x_3007;
      }
      let x_3008 : f32 = x_3000;
      u_xlat73 = x_3008;
      let x_3010 : bool = u_xlatb2.x;
      if (x_3010) {
        let x_3014 : vec4<f32> = u_xlat10;
        x_3011 = vec3<f32>(x_3014.x, x_3014.y, x_3014.z);
      } else {
        let x_3017 : f32 = u_xlat73;
        x_3011 = vec3<f32>(x_3017, x_3017, x_3017);
      }
      let x_3019 : vec3<f32> = x_3011;
      let x_3020 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3019.x, x_3019.y, x_3019.z, x_3020.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_3026 : vec4<f32> = u_xlat10;
    let x_3028 : u32 = u_xlatu69;
    let x_3031 : vec4<f32> = x_2493.x_AdditionalLightsColor[bitcast<i32>(x_3028)];
    let x_3033 : vec3<f32> = (vec3<f32>(x_3026.x, x_3026.y, x_3026.z) * vec3<f32>(x_3031.x, x_3031.y, x_3031.z));
    let x_3034 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3033.x, x_3033.y, x_3033.z, x_3034.w);
    let x_3036 : vec4<f32> = u_xlat5;
    let x_3038 : vec4<f32> = u_xlat10;
    let x_3040 : vec3<f32> = (vec3<f32>(x_3036.x, x_3036.x, x_3036.x) * vec3<f32>(x_3038.x, x_3038.y, x_3038.z));
    let x_3041 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3040.x, x_3040.y, x_3040.z, x_3041.w);
    let x_3043 : vec4<f32> = u_xlat1;
    let x_3045 : vec3<f32> = u_xlat30;
    u_xlat69 = dot(vec3<f32>(x_3043.x, x_3043.y, x_3043.z), x_3045);
    let x_3047 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3047, 0.0f, 1.0f);
    let x_3049 : f32 = u_xlat69;
    let x_3050 : f32 = u_xlat70;
    u_xlat69 = (x_3049 * x_3050);
    let x_3052 : f32 = u_xlat69;
    let x_3054 : vec4<f32> = u_xlat10;
    let x_3056 : vec3<f32> = (vec3<f32>(x_3052, x_3052, x_3052) * vec3<f32>(x_3054.x, x_3054.y, x_3054.z));
    let x_3057 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3056.x, x_3056.y, x_3056.z, x_3057.w);
    let x_3059 : vec3<f32> = u_xlat29;
    let x_3060 : vec4<f32> = u_xlat9;
    let x_3063 : vec4<f32> = u_xlat3;
    u_xlat29 = ((x_3059 * vec3<f32>(x_3060.x, x_3060.x, x_3060.x)) + vec3<f32>(x_3063.x, x_3063.y, x_3063.z));
    let x_3066 : vec3<f32> = u_xlat29;
    let x_3067 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(x_3066, x_3067);
    let x_3069 : f32 = u_xlat69;
    u_xlat69 = max(x_3069, 1.17549435e-37f);
    let x_3071 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_3071);
    let x_3073 : f32 = u_xlat69;
    let x_3075 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_3073, x_3073, x_3073) * x_3075);
    let x_3077 : vec4<f32> = u_xlat1;
    let x_3079 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(vec3<f32>(x_3077.x, x_3077.y, x_3077.z), x_3079);
    let x_3081 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3081, 0.0f, 1.0f);
    let x_3083 : vec3<f32> = u_xlat30;
    let x_3084 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_3083, x_3084);
    let x_3086 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3086, 0.0f, 1.0f);
    let x_3088 : f32 = u_xlat69;
    let x_3089 : f32 = u_xlat69;
    u_xlat69 = (x_3088 * x_3089);
    let x_3091 : f32 = u_xlat69;
    let x_3093 : f32 = u_xlat8.x;
    u_xlat69 = ((x_3091 * x_3093) + 1.000010014f);
    let x_3096 : f32 = u_xlat70;
    let x_3097 : f32 = u_xlat70;
    u_xlat70 = (x_3096 * x_3097);
    let x_3099 : f32 = u_xlat69;
    let x_3100 : f32 = u_xlat69;
    u_xlat69 = (x_3099 * x_3100);
    let x_3102 : f32 = u_xlat70;
    u_xlat70 = max(x_3102, 0.100000001f);
    let x_3104 : f32 = u_xlat69;
    let x_3105 : f32 = u_xlat70;
    u_xlat69 = (x_3104 * x_3105);
    let x_3107 : f32 = u_xlat66;
    let x_3108 : f32 = u_xlat69;
    u_xlat69 = (x_3107 * x_3108);
    let x_3110 : f32 = u_xlat23;
    let x_3111 : f32 = u_xlat69;
    u_xlat69 = (x_3110 / x_3111);
    let x_3113 : vec4<f32> = u_xlat0;
    let x_3115 : f32 = u_xlat69;
    let x_3118 : vec3<f32> = u_xlat6;
    u_xlat29 = ((vec3<f32>(x_3113.x, x_3113.y, x_3113.z) * vec3<f32>(x_3115, x_3115, x_3115)) + x_3118);
    let x_3120 : vec3<f32> = u_xlat29;
    let x_3121 : vec4<f32> = u_xlat10;
    let x_3124 : vec4<f32> = u_xlat7;
    let x_3126 : vec3<f32> = ((x_3120 * vec3<f32>(x_3121.x, x_3121.y, x_3121.z)) + vec3<f32>(x_3124.x, x_3124.y, x_3124.z));
    let x_3127 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3126.x, x_3126.y, x_3126.z, x_3127.w);

    continuing {
      let x_3129 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3129 + bitcast<u32>(1i));
    }
  }
  let x_3131 : vec3<f32> = u_xlat4;
  let x_3132 : f32 = u_xlat44;
  let x_3135 : vec3<f32> = u_xlat26;
  let x_3136 : vec3<f32> = ((x_3131 * vec3<f32>(x_3132, x_3132, x_3132)) + x_3135);
  let x_3137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3136.x, x_3136.y, x_3136.z, x_3137.w);
  let x_3139 : vec4<f32> = u_xlat7;
  let x_3141 : vec4<f32> = u_xlat0;
  let x_3143 : vec3<f32> = (vec3<f32>(x_3139.x, x_3139.y, x_3139.z) + vec3<f32>(x_3141.x, x_3141.y, x_3141.z));
  let x_3144 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3143.x, x_3143.y, x_3143.z, x_3144.w);
  let x_3146 : f32 = u_xlat63;
  let x_3147 : f32 = u_xlat63;
  u_xlat63 = (x_3146 * -(x_3147));
  let x_3150 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3150);
  let x_3152 : vec4<f32> = u_xlat0;
  let x_3156 : vec4<f32> = x_44.unity_FogColor;
  let x_3159 : vec3<f32> = (vec3<f32>(x_3152.x, x_3152.y, x_3152.z) + -(vec3<f32>(x_3156.x, x_3156.y, x_3156.z)));
  let x_3160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3159.x, x_3159.y, x_3159.z, x_3160.w);
  let x_3164 : f32 = u_xlat63;
  let x_3166 : vec4<f32> = u_xlat0;
  let x_3170 : vec4<f32> = x_44.unity_FogColor;
  let x_3172 : vec3<f32> = ((vec3<f32>(x_3164, x_3164, x_3164) * vec3<f32>(x_3166.x, x_3166.y, x_3166.z)) + vec3<f32>(x_3170.x, x_3170.y, x_3170.z));
  let x_3173 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3173.w);
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

