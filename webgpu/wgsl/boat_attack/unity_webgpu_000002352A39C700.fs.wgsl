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

@group(1) @binding(4) var<uniform> x_2049 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2495 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2608 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_2132 : f32;
  var x_2143 : vec3<f32>;
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
  var x_2927 : f32;
  var x_2940 : f32;
  var u_xlat73 : f32;
  var x_3002 : f32;
  var x_3013 : vec3<f32>;
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
      let x_766 : vec4<f32> = x_747.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_762.x, x_762.y, x_762.x, x_762.y) + x_766);
      let x_769 : vec4<f32> = u_xlat7;
      let x_770 : vec2<f32> = vec2<f32>(x_769.x, x_769.y);
      let x_772 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_770.x, x_770.y, x_772);
      let x_785 : vec3<f32> = txVec0;
      let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_785.xy, x_785.z);
      u_xlat8.x = x_787;
      let x_790 : vec4<f32> = u_xlat7;
      let x_791 : vec2<f32> = vec2<f32>(x_790.z, x_790.w);
      let x_793 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_791.x, x_791.y, x_793);
      let x_800 : vec3<f32> = txVec1;
      let x_802 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_800.xy, x_800.z);
      u_xlat8.y = x_802;
      let x_804 : vec4<f32> = vs_INTERP8;
      let x_808 : vec4<f32> = x_747.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_804.x, x_804.y, x_804.x, x_804.y) + x_808);
      let x_811 : vec4<f32> = u_xlat7;
      let x_812 : vec2<f32> = vec2<f32>(x_811.x, x_811.y);
      let x_814 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_812.x, x_812.y, x_814);
      let x_821 : vec3<f32> = txVec2;
      let x_823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_821.xy, x_821.z);
      u_xlat8.z = x_823;
      let x_826 : vec4<f32> = u_xlat7;
      let x_827 : vec2<f32> = vec2<f32>(x_826.z, x_826.w);
      let x_829 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_827.x, x_827.y, x_829);
      let x_836 : vec3<f32> = txVec3;
      let x_838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_836.xy, x_836.z);
      u_xlat8.w = x_838;
      let x_840 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_840, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_847 : f32 = x_747.x_MainLightShadowParams.y;
      u_xlatb26.x = (x_847 == 2.0f);
      let x_851 : bool = u_xlatb26.x;
      if (x_851) {
        let x_855 : vec4<f32> = vs_INTERP8;
        let x_858 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_863 : vec2<f32> = ((vec2<f32>(x_855.x, x_855.y) * vec2<f32>(x_858.z, x_858.w)) + vec2<f32>(0.5f, 0.5f));
        let x_864 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_863.x, x_863.y, x_864.z);
        let x_866 : vec3<f32> = u_xlat26;
        let x_868 : vec2<f32> = floor(vec2<f32>(x_866.x, x_866.y));
        let x_869 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_868.x, x_868.y, x_869.z);
        let x_871 : vec4<f32> = vs_INTERP8;
        let x_874 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_877 : vec3<f32> = u_xlat26;
        let x_880 : vec2<f32> = ((vec2<f32>(x_871.x, x_871.y) * vec2<f32>(x_874.z, x_874.w)) + -(vec2<f32>(x_877.x, x_877.y)));
        let x_881 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
        let x_883 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_883.x, x_883.x, x_883.y, x_883.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_888 : vec4<f32> = u_xlat8;
        let x_890 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_888.x, x_888.x, x_888.z, x_888.z) * vec4<f32>(x_890.x, x_890.x, x_890.z, x_890.z));
        let x_894 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_894.y, x_894.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_899 : vec4<f32> = u_xlat9;
        let x_902 : vec4<f32> = u_xlat7;
        let x_905 : vec2<f32> = ((vec2<f32>(x_899.x, x_899.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_902.x, x_902.y)));
        let x_906 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_905.x, x_906.y, x_905.y, x_906.w);
        let x_908 : vec4<f32> = u_xlat7;
        let x_911 : vec2<f32> = (-(vec2<f32>(x_908.x, x_908.y)) + vec2<f32>(1.0f, 1.0f));
        let x_912 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_915 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_915.x, x_915.y), vec2<f32>(0.0f, 0.0f));
        let x_919 : vec2<f32> = u_xlat51;
        let x_921 : vec2<f32> = u_xlat51;
        let x_923 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_919) * x_921) + vec2<f32>(x_923.x, x_923.y));
        let x_926 : vec4<f32> = u_xlat7;
        let x_928 : vec2<f32> = max(vec2<f32>(x_926.x, x_926.y), vec2<f32>(0.0f, 0.0f));
        let x_929 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_931 : vec4<f32> = u_xlat7;
        let x_934 : vec4<f32> = u_xlat7;
        let x_937 : vec4<f32> = u_xlat8;
        let x_939 : vec2<f32> = ((-(vec2<f32>(x_931.x, x_931.y)) * vec2<f32>(x_934.x, x_934.y)) + vec2<f32>(x_937.y, x_937.w));
        let x_940 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_942 + vec2<f32>(1.0f, 1.0f));
        let x_944 : vec4<f32> = u_xlat7;
        let x_946 : vec2<f32> = (vec2<f32>(x_944.x, x_944.y) + vec2<f32>(1.0f, 1.0f));
        let x_947 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
        let x_950 : vec4<f32> = u_xlat8;
        let x_954 : vec2<f32> = (vec2<f32>(x_950.x, x_950.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_955 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_958 : vec4<f32> = u_xlat9;
        let x_960 : vec2<f32> = (vec2<f32>(x_958.x, x_958.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_961 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
        let x_963 : vec2<f32> = u_xlat51;
        let x_964 : vec2<f32> = (x_963 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_965 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_964.x, x_964.y, x_965.z, x_965.w);
        let x_968 : vec4<f32> = u_xlat7;
        let x_970 : vec2<f32> = (vec2<f32>(x_968.x, x_968.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_971 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec4<f32> = u_xlat8;
        let x_975 : vec2<f32> = (vec2<f32>(x_973.y, x_973.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_976 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_979 : f32 = u_xlat9.x;
        u_xlat10.z = x_979;
        let x_982 : f32 = u_xlat7.x;
        u_xlat10.w = x_982;
        let x_985 : f32 = u_xlat12.x;
        u_xlat11.z = x_985;
        let x_988 : f32 = u_xlat49.x;
        u_xlat11.w = x_988;
        let x_990 : vec4<f32> = u_xlat10;
        let x_992 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_990.z, x_990.w, x_990.x, x_990.z) + vec4<f32>(x_992.z, x_992.w, x_992.x, x_992.z));
        let x_996 : f32 = u_xlat10.y;
        u_xlat9.z = x_996;
        let x_999 : f32 = u_xlat7.y;
        u_xlat9.w = x_999;
        let x_1002 : f32 = u_xlat11.y;
        u_xlat12.z = x_1002;
        let x_1005 : f32 = u_xlat49.y;
        u_xlat12.w = x_1005;
        let x_1007 : vec4<f32> = u_xlat9;
        let x_1009 : vec4<f32> = u_xlat12;
        let x_1011 : vec3<f32> = (vec3<f32>(x_1007.z, x_1007.y, x_1007.w) + vec3<f32>(x_1009.z, x_1009.y, x_1009.w));
        let x_1012 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
        let x_1014 : vec4<f32> = u_xlat11;
        let x_1016 : vec4<f32> = u_xlat8;
        let x_1018 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.z, x_1014.w) / vec3<f32>(x_1016.z, x_1016.w, x_1016.y));
        let x_1019 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat9;
        let x_1027 : vec3<f32> = (vec3<f32>(x_1021.x, x_1021.y, x_1021.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1028 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
        let x_1030 : vec4<f32> = u_xlat12;
        let x_1032 : vec4<f32> = u_xlat7;
        let x_1034 : vec3<f32> = (vec3<f32>(x_1030.z, x_1030.y, x_1030.w) / vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
        let x_1035 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
        let x_1037 : vec4<f32> = u_xlat10;
        let x_1039 : vec3<f32> = (vec3<f32>(x_1037.x, x_1037.y, x_1037.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1040 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
        let x_1042 : vec4<f32> = u_xlat9;
        let x_1045 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1047 : vec3<f32> = (vec3<f32>(x_1042.y, x_1042.x, x_1042.z) * vec3<f32>(x_1045.x, x_1045.x, x_1045.x));
        let x_1048 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
        let x_1050 : vec4<f32> = u_xlat10;
        let x_1053 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1055 : vec3<f32> = (vec3<f32>(x_1050.x, x_1050.y, x_1050.z) * vec3<f32>(x_1053.y, x_1053.y, x_1053.y));
        let x_1056 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
        let x_1059 : f32 = u_xlat10.x;
        u_xlat9.w = x_1059;
        let x_1061 : vec3<f32> = u_xlat26;
        let x_1064 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1067 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1061.x, x_1061.y, x_1061.x, x_1061.y) * vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y)) + vec4<f32>(x_1067.y, x_1067.w, x_1067.x, x_1067.w));
        let x_1070 : vec3<f32> = u_xlat26;
        let x_1073 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1076 : vec4<f32> = u_xlat9;
        let x_1078 : vec2<f32> = ((vec2<f32>(x_1070.x, x_1070.y) * vec2<f32>(x_1073.x, x_1073.y)) + vec2<f32>(x_1076.z, x_1076.w));
        let x_1079 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1078.x, x_1078.y, x_1079.z, x_1079.w);
        let x_1082 : f32 = u_xlat9.y;
        u_xlat10.w = x_1082;
        let x_1084 : vec4<f32> = u_xlat10;
        let x_1085 : vec2<f32> = vec2<f32>(x_1084.y, x_1084.z);
        let x_1086 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1086.x, x_1085.x, x_1086.z, x_1085.y);
        let x_1089 : vec3<f32> = u_xlat26;
        let x_1092 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1095.y));
        let x_1098 : vec3<f32> = u_xlat26;
        let x_1101 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1104 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y) * vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y)) + vec4<f32>(x_1104.w, x_1104.y, x_1104.w, x_1104.z));
        let x_1107 : vec3<f32> = u_xlat26;
        let x_1110 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y) * vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y)) + vec4<f32>(x_1113.x, x_1113.w, x_1113.z, x_1113.w));
        let x_1117 : vec4<f32> = u_xlat7;
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1117.x, x_1117.x, x_1117.x, x_1117.y) * vec4<f32>(x_1119.z, x_1119.w, x_1119.y, x_1119.z));
        let x_1123 : vec4<f32> = u_xlat7;
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1123.y, x_1123.y, x_1123.z, x_1123.z) * x_1125);
        let x_1128 : f32 = u_xlat7.z;
        let x_1130 : f32 = u_xlat8.y;
        u_xlat26.x = (x_1128 * x_1130);
        let x_1134 : vec4<f32> = u_xlat11;
        let x_1135 : vec2<f32> = vec2<f32>(x_1134.x, x_1134.y);
        let x_1137 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1145 : vec3<f32> = txVec4;
        let x_1147 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1145.xy, x_1145.z);
        u_xlat47 = x_1147;
        let x_1149 : vec4<f32> = u_xlat11;
        let x_1150 : vec2<f32> = vec2<f32>(x_1149.z, x_1149.w);
        let x_1152 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1150.x, x_1150.y, x_1152);
        let x_1160 : vec3<f32> = txVec5;
        let x_1162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1160.xy, x_1160.z);
        u_xlat68 = x_1162;
        let x_1163 : f32 = u_xlat68;
        let x_1165 : f32 = u_xlat14.y;
        u_xlat68 = (x_1163 * x_1165);
        let x_1168 : f32 = u_xlat14.x;
        let x_1169 : f32 = u_xlat47;
        let x_1171 : f32 = u_xlat68;
        u_xlat47 = ((x_1168 * x_1169) + x_1171);
        let x_1174 : vec4<f32> = u_xlat12;
        let x_1175 : vec2<f32> = vec2<f32>(x_1174.x, x_1174.y);
        let x_1177 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1184 : vec3<f32> = txVec6;
        let x_1186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1184.xy, x_1184.z);
        u_xlat68 = x_1186;
        let x_1188 : f32 = u_xlat14.z;
        let x_1189 : f32 = u_xlat68;
        let x_1191 : f32 = u_xlat47;
        u_xlat47 = ((x_1188 * x_1189) + x_1191);
        let x_1194 : vec4<f32> = u_xlat10;
        let x_1195 : vec2<f32> = vec2<f32>(x_1194.x, x_1194.y);
        let x_1197 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1195.x, x_1195.y, x_1197);
        let x_1204 : vec3<f32> = txVec7;
        let x_1206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1204.xy, x_1204.z);
        u_xlat68 = x_1206;
        let x_1208 : f32 = u_xlat14.w;
        let x_1209 : f32 = u_xlat68;
        let x_1211 : f32 = u_xlat47;
        u_xlat47 = ((x_1208 * x_1209) + x_1211);
        let x_1214 : vec4<f32> = u_xlat13;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec8;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1224.xy, x_1224.z);
        u_xlat68 = x_1226;
        let x_1228 : f32 = u_xlat15.x;
        let x_1229 : f32 = u_xlat68;
        let x_1231 : f32 = u_xlat47;
        u_xlat47 = ((x_1228 * x_1229) + x_1231);
        let x_1234 : vec4<f32> = u_xlat13;
        let x_1235 : vec2<f32> = vec2<f32>(x_1234.z, x_1234.w);
        let x_1237 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1244 : vec3<f32> = txVec9;
        let x_1246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1244.xy, x_1244.z);
        u_xlat68 = x_1246;
        let x_1248 : f32 = u_xlat15.y;
        let x_1249 : f32 = u_xlat68;
        let x_1251 : f32 = u_xlat47;
        u_xlat47 = ((x_1248 * x_1249) + x_1251);
        let x_1254 : vec4<f32> = u_xlat10;
        let x_1255 : vec2<f32> = vec2<f32>(x_1254.z, x_1254.w);
        let x_1257 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1255.x, x_1255.y, x_1257);
        let x_1264 : vec3<f32> = txVec10;
        let x_1266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1264.xy, x_1264.z);
        u_xlat68 = x_1266;
        let x_1268 : f32 = u_xlat15.z;
        let x_1269 : f32 = u_xlat68;
        let x_1271 : f32 = u_xlat47;
        u_xlat47 = ((x_1268 * x_1269) + x_1271);
        let x_1274 : vec4<f32> = u_xlat9;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.x, x_1274.y);
        let x_1277 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec11;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1284.xy, x_1284.z);
        u_xlat68 = x_1286;
        let x_1288 : f32 = u_xlat15.w;
        let x_1289 : f32 = u_xlat68;
        let x_1291 : f32 = u_xlat47;
        u_xlat47 = ((x_1288 * x_1289) + x_1291);
        let x_1294 : vec4<f32> = u_xlat9;
        let x_1295 : vec2<f32> = vec2<f32>(x_1294.z, x_1294.w);
        let x_1297 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1295.x, x_1295.y, x_1297);
        let x_1304 : vec3<f32> = txVec12;
        let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1304.xy, x_1304.z);
        u_xlat68 = x_1306;
        let x_1308 : f32 = u_xlat26.x;
        let x_1309 : f32 = u_xlat68;
        let x_1311 : f32 = u_xlat47;
        u_xlat67 = ((x_1308 * x_1309) + x_1311);
      } else {
        let x_1314 : vec4<f32> = vs_INTERP8;
        let x_1317 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1320 : vec2<f32> = ((vec2<f32>(x_1314.x, x_1314.y) * vec2<f32>(x_1317.z, x_1317.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1321 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1320.x, x_1320.y, x_1321.z);
        let x_1323 : vec3<f32> = u_xlat26;
        let x_1325 : vec2<f32> = floor(vec2<f32>(x_1323.x, x_1323.y));
        let x_1326 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1325.x, x_1325.y, x_1326.z);
        let x_1328 : vec4<f32> = vs_INTERP8;
        let x_1331 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1334 : vec3<f32> = u_xlat26;
        let x_1337 : vec2<f32> = ((vec2<f32>(x_1328.x, x_1328.y) * vec2<f32>(x_1331.z, x_1331.w)) + -(vec2<f32>(x_1334.x, x_1334.y)));
        let x_1338 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1340 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1340.x, x_1340.x, x_1340.y, x_1340.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1343 : vec4<f32> = u_xlat8;
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1343.x, x_1343.x, x_1343.z, x_1343.z) * vec4<f32>(x_1345.x, x_1345.x, x_1345.z, x_1345.z));
        let x_1348 : vec4<f32> = u_xlat9;
        let x_1352 : vec2<f32> = (vec2<f32>(x_1348.y, x_1348.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1353 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1353.x, x_1352.x, x_1353.z, x_1352.y);
        let x_1355 : vec4<f32> = u_xlat9;
        let x_1358 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1355.x, x_1355.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1358.x, x_1358.y)));
        let x_1362 : vec4<f32> = u_xlat7;
        let x_1365 : vec2<f32> = (-(vec2<f32>(x_1362.x, x_1362.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1366 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1365.x, x_1366.y, x_1365.y, x_1366.w);
        let x_1368 : vec4<f32> = u_xlat7;
        let x_1370 : vec2<f32> = min(vec2<f32>(x_1368.x, x_1368.y), vec2<f32>(0.0f, 0.0f));
        let x_1371 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1370.x, x_1370.y, x_1371.z, x_1371.w);
        let x_1373 : vec4<f32> = u_xlat9;
        let x_1376 : vec4<f32> = u_xlat9;
        let x_1379 : vec4<f32> = u_xlat8;
        let x_1381 : vec2<f32> = ((-(vec2<f32>(x_1373.x, x_1373.y)) * vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(x_1379.x, x_1379.z));
        let x_1382 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1381.x, x_1382.y, x_1381.y, x_1382.w);
        let x_1384 : vec4<f32> = u_xlat7;
        let x_1386 : vec2<f32> = max(vec2<f32>(x_1384.x, x_1384.y), vec2<f32>(0.0f, 0.0f));
        let x_1387 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1386.x, x_1386.y, x_1387.z, x_1387.w);
        let x_1389 : vec4<f32> = u_xlat9;
        let x_1392 : vec4<f32> = u_xlat9;
        let x_1395 : vec4<f32> = u_xlat8;
        let x_1397 : vec2<f32> = ((-(vec2<f32>(x_1389.x, x_1389.y)) * vec2<f32>(x_1392.x, x_1392.y)) + vec2<f32>(x_1395.y, x_1395.w));
        let x_1398 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1398.x, x_1397.x, x_1398.z, x_1397.y);
        let x_1400 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1400 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1404 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1404 * 0.081632003f);
        let x_1408 : vec2<f32> = u_xlat49;
        let x_1411 : vec2<f32> = (vec2<f32>(x_1408.y, x_1408.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1412 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1411.x, x_1411.y, x_1412.z, x_1412.w);
        let x_1414 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1414.x, x_1414.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1418 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1418 * 0.081632003f);
        let x_1422 : f32 = u_xlat11.y;
        u_xlat9.x = x_1422;
        let x_1424 : vec4<f32> = u_xlat7;
        let x_1431 : vec2<f32> = ((vec2<f32>(x_1424.x, x_1424.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1432 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1432.x, x_1431.x, x_1432.z, x_1431.y);
        let x_1434 : vec4<f32> = u_xlat7;
        let x_1438 : vec2<f32> = ((vec2<f32>(x_1434.x, x_1434.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1439 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1438.x, x_1439.y, x_1438.y, x_1439.w);
        let x_1442 : f32 = u_xlat49.x;
        u_xlat8.y = x_1442;
        let x_1445 : f32 = u_xlat10.y;
        u_xlat8.w = x_1445;
        let x_1447 : vec4<f32> = u_xlat8;
        let x_1448 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1447 + x_1448);
        let x_1450 : vec4<f32> = u_xlat7;
        let x_1453 : vec2<f32> = ((vec2<f32>(x_1450.y, x_1450.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1454 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1454.x, x_1453.x, x_1454.z, x_1453.y);
        let x_1456 : vec4<f32> = u_xlat7;
        let x_1459 : vec2<f32> = ((vec2<f32>(x_1456.y, x_1456.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1460 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1459.x, x_1460.y, x_1459.y, x_1460.w);
        let x_1463 : f32 = u_xlat49.y;
        u_xlat10.y = x_1463;
        let x_1465 : vec4<f32> = u_xlat10;
        let x_1466 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1465 + x_1466);
        let x_1468 : vec4<f32> = u_xlat8;
        let x_1469 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1468 / x_1469);
        let x_1471 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1471 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1477 : vec4<f32> = u_xlat10;
        let x_1478 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1477 / x_1478);
        let x_1480 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1480 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1482 : vec4<f32> = u_xlat8;
        let x_1485 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1482.w, x_1482.x, x_1482.y, x_1482.z) * vec4<f32>(x_1485.x, x_1485.x, x_1485.x, x_1485.x));
        let x_1488 : vec4<f32> = u_xlat10;
        let x_1491 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1488.x, x_1488.w, x_1488.y, x_1488.z) * vec4<f32>(x_1491.y, x_1491.y, x_1491.y, x_1491.y));
        let x_1494 : vec4<f32> = u_xlat8;
        let x_1495 : vec3<f32> = vec3<f32>(x_1494.y, x_1494.z, x_1494.w);
        let x_1496 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1495.x, x_1496.y, x_1495.y, x_1495.z);
        let x_1499 : f32 = u_xlat10.x;
        u_xlat11.y = x_1499;
        let x_1501 : vec3<f32> = u_xlat26;
        let x_1504 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1507 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1501.x, x_1501.y, x_1501.x, x_1501.y) * vec4<f32>(x_1504.x, x_1504.y, x_1504.x, x_1504.y)) + vec4<f32>(x_1507.x, x_1507.y, x_1507.z, x_1507.y));
        let x_1510 : vec3<f32> = u_xlat26;
        let x_1513 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1516 : vec4<f32> = u_xlat11;
        let x_1518 : vec2<f32> = ((vec2<f32>(x_1510.x, x_1510.y) * vec2<f32>(x_1513.x, x_1513.y)) + vec2<f32>(x_1516.w, x_1516.y));
        let x_1519 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1518.x, x_1518.y, x_1519.z, x_1519.w);
        let x_1522 : f32 = u_xlat11.y;
        u_xlat8.y = x_1522;
        let x_1525 : f32 = u_xlat10.z;
        u_xlat11.y = x_1525;
        let x_1527 : vec3<f32> = u_xlat26;
        let x_1530 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1533 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1527.x, x_1527.y, x_1527.x, x_1527.y) * vec4<f32>(x_1530.x, x_1530.y, x_1530.x, x_1530.y)) + vec4<f32>(x_1533.x, x_1533.y, x_1533.z, x_1533.y));
        let x_1537 : vec3<f32> = u_xlat26;
        let x_1540 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1543 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1537.x, x_1537.y) * vec2<f32>(x_1540.x, x_1540.y)) + vec2<f32>(x_1543.w, x_1543.y));
        let x_1547 : f32 = u_xlat11.y;
        u_xlat8.z = x_1547;
        let x_1549 : vec3<f32> = u_xlat26;
        let x_1552 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1555 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1549.x, x_1549.y, x_1549.x, x_1549.y) * vec4<f32>(x_1552.x, x_1552.y, x_1552.x, x_1552.y)) + vec4<f32>(x_1555.x, x_1555.y, x_1555.x, x_1555.z));
        let x_1559 : f32 = u_xlat10.w;
        u_xlat11.y = x_1559;
        let x_1562 : vec3<f32> = u_xlat26;
        let x_1565 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1568 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1562.x, x_1562.y, x_1562.x, x_1562.y) * vec4<f32>(x_1565.x, x_1565.y, x_1565.x, x_1565.y)) + vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1568.y));
        let x_1572 : vec3<f32> = u_xlat26;
        let x_1575 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1578 : vec4<f32> = u_xlat11;
        let x_1580 : vec2<f32> = ((vec2<f32>(x_1572.x, x_1572.y) * vec2<f32>(x_1575.x, x_1575.y)) + vec2<f32>(x_1578.w, x_1578.y));
        let x_1581 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1580.x, x_1580.y, x_1581.z);
        let x_1584 : f32 = u_xlat11.y;
        u_xlat8.w = x_1584;
        let x_1587 : vec3<f32> = u_xlat26;
        let x_1590 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1593 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1587.x, x_1587.y) * vec2<f32>(x_1590.x, x_1590.y)) + vec2<f32>(x_1593.x, x_1593.w));
        let x_1596 : vec4<f32> = u_xlat11;
        let x_1597 : vec3<f32> = vec3<f32>(x_1596.x, x_1596.z, x_1596.w);
        let x_1598 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1597.x, x_1598.y, x_1597.y, x_1597.z);
        let x_1600 : vec3<f32> = u_xlat26;
        let x_1603 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1606 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1600.x, x_1600.y, x_1600.x, x_1600.y) * vec4<f32>(x_1603.x, x_1603.y, x_1603.x, x_1603.y)) + vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1606.y));
        let x_1610 : vec3<f32> = u_xlat26;
        let x_1613 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1616 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1610.x, x_1610.y) * vec2<f32>(x_1613.x, x_1613.y)) + vec2<f32>(x_1616.w, x_1616.y));
        let x_1620 : f32 = u_xlat8.x;
        u_xlat10.x = x_1620;
        let x_1622 : vec3<f32> = u_xlat26;
        let x_1625 : vec4<f32> = x_747.x_MainLightShadowmapSize;
        let x_1628 : vec4<f32> = u_xlat10;
        let x_1630 : vec2<f32> = ((vec2<f32>(x_1622.x, x_1622.y) * vec2<f32>(x_1625.x, x_1625.y)) + vec2<f32>(x_1628.x, x_1628.y));
        let x_1631 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1630.x, x_1630.y, x_1631.z);
        let x_1634 : vec4<f32> = u_xlat7;
        let x_1636 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1634.x, x_1634.x, x_1634.x, x_1634.x) * x_1636);
        let x_1639 : vec4<f32> = u_xlat7;
        let x_1641 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1639.y, x_1639.y, x_1639.y, x_1639.y) * x_1641);
        let x_1644 : vec4<f32> = u_xlat7;
        let x_1646 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1644.z, x_1644.z, x_1644.z, x_1644.z) * x_1646);
        let x_1648 : vec4<f32> = u_xlat7;
        let x_1650 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1648.w, x_1648.w, x_1648.w, x_1648.w) * x_1650);
        let x_1653 : vec4<f32> = u_xlat12;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.x, x_1653.y);
        let x_1656 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec13;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat68 = x_1665;
        let x_1667 : vec4<f32> = u_xlat12;
        let x_1668 : vec2<f32> = vec2<f32>(x_1667.z, x_1667.w);
        let x_1670 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1678 : vec3<f32> = txVec14;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1678.xy, x_1678.z);
        u_xlat69 = x_1680;
        let x_1681 : f32 = u_xlat69;
        let x_1683 : f32 = u_xlat18.y;
        u_xlat69 = (x_1681 * x_1683);
        let x_1686 : f32 = u_xlat18.x;
        let x_1687 : f32 = u_xlat68;
        let x_1689 : f32 = u_xlat69;
        u_xlat68 = ((x_1686 * x_1687) + x_1689);
        let x_1692 : vec4<f32> = u_xlat13;
        let x_1693 : vec2<f32> = vec2<f32>(x_1692.x, x_1692.y);
        let x_1695 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1702 : vec3<f32> = txVec15;
        let x_1704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1702.xy, x_1702.z);
        u_xlat69 = x_1704;
        let x_1706 : f32 = u_xlat18.z;
        let x_1707 : f32 = u_xlat69;
        let x_1709 : f32 = u_xlat68;
        u_xlat68 = ((x_1706 * x_1707) + x_1709);
        let x_1712 : vec4<f32> = u_xlat15;
        let x_1713 : vec2<f32> = vec2<f32>(x_1712.x, x_1712.y);
        let x_1715 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
        let x_1722 : vec3<f32> = txVec16;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1722.xy, x_1722.z);
        u_xlat69 = x_1724;
        let x_1726 : f32 = u_xlat18.w;
        let x_1727 : f32 = u_xlat69;
        let x_1729 : f32 = u_xlat68;
        u_xlat68 = ((x_1726 * x_1727) + x_1729);
        let x_1732 : vec4<f32> = u_xlat14;
        let x_1733 : vec2<f32> = vec2<f32>(x_1732.x, x_1732.y);
        let x_1735 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1733.x, x_1733.y, x_1735);
        let x_1742 : vec3<f32> = txVec17;
        let x_1744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1742.xy, x_1742.z);
        u_xlat69 = x_1744;
        let x_1746 : f32 = u_xlat19.x;
        let x_1747 : f32 = u_xlat69;
        let x_1749 : f32 = u_xlat68;
        u_xlat68 = ((x_1746 * x_1747) + x_1749);
        let x_1752 : vec4<f32> = u_xlat14;
        let x_1753 : vec2<f32> = vec2<f32>(x_1752.z, x_1752.w);
        let x_1755 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1753.x, x_1753.y, x_1755);
        let x_1762 : vec3<f32> = txVec18;
        let x_1764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1762.xy, x_1762.z);
        u_xlat69 = x_1764;
        let x_1766 : f32 = u_xlat19.y;
        let x_1767 : f32 = u_xlat69;
        let x_1769 : f32 = u_xlat68;
        u_xlat68 = ((x_1766 * x_1767) + x_1769);
        let x_1772 : vec2<f32> = u_xlat55;
        let x_1774 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1772.x, x_1772.y, x_1774);
        let x_1781 : vec3<f32> = txVec19;
        let x_1783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1781.xy, x_1781.z);
        u_xlat69 = x_1783;
        let x_1785 : f32 = u_xlat19.z;
        let x_1786 : f32 = u_xlat69;
        let x_1788 : f32 = u_xlat68;
        u_xlat68 = ((x_1785 * x_1786) + x_1788);
        let x_1791 : vec4<f32> = u_xlat15;
        let x_1792 : vec2<f32> = vec2<f32>(x_1791.z, x_1791.w);
        let x_1794 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1792.x, x_1792.y, x_1794);
        let x_1801 : vec3<f32> = txVec20;
        let x_1803 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1801.xy, x_1801.z);
        u_xlat69 = x_1803;
        let x_1805 : f32 = u_xlat19.w;
        let x_1806 : f32 = u_xlat69;
        let x_1808 : f32 = u_xlat68;
        u_xlat68 = ((x_1805 * x_1806) + x_1808);
        let x_1811 : vec4<f32> = u_xlat16;
        let x_1812 : vec2<f32> = vec2<f32>(x_1811.x, x_1811.y);
        let x_1814 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1812.x, x_1812.y, x_1814);
        let x_1821 : vec3<f32> = txVec21;
        let x_1823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1821.xy, x_1821.z);
        u_xlat69 = x_1823;
        let x_1825 : f32 = u_xlat20.x;
        let x_1826 : f32 = u_xlat69;
        let x_1828 : f32 = u_xlat68;
        u_xlat68 = ((x_1825 * x_1826) + x_1828);
        let x_1831 : vec4<f32> = u_xlat16;
        let x_1832 : vec2<f32> = vec2<f32>(x_1831.z, x_1831.w);
        let x_1834 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1832.x, x_1832.y, x_1834);
        let x_1841 : vec3<f32> = txVec22;
        let x_1843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1841.xy, x_1841.z);
        u_xlat69 = x_1843;
        let x_1845 : f32 = u_xlat20.y;
        let x_1846 : f32 = u_xlat69;
        let x_1848 : f32 = u_xlat68;
        u_xlat68 = ((x_1845 * x_1846) + x_1848);
        let x_1851 : vec3<f32> = u_xlat29;
        let x_1852 : vec2<f32> = vec2<f32>(x_1851.x, x_1851.y);
        let x_1854 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1852.x, x_1852.y, x_1854);
        let x_1861 : vec3<f32> = txVec23;
        let x_1863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1861.xy, x_1861.z);
        u_xlat69 = x_1863;
        let x_1865 : f32 = u_xlat20.z;
        let x_1866 : f32 = u_xlat69;
        let x_1868 : f32 = u_xlat68;
        u_xlat68 = ((x_1865 * x_1866) + x_1868);
        let x_1871 : vec2<f32> = u_xlat17;
        let x_1873 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec24;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1880.xy, x_1880.z);
        u_xlat69 = x_1882;
        let x_1884 : f32 = u_xlat20.w;
        let x_1885 : f32 = u_xlat69;
        let x_1887 : f32 = u_xlat68;
        u_xlat68 = ((x_1884 * x_1885) + x_1887);
        let x_1890 : vec4<f32> = u_xlat11;
        let x_1891 : vec2<f32> = vec2<f32>(x_1890.x, x_1890.y);
        let x_1893 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1891.x, x_1891.y, x_1893);
        let x_1900 : vec3<f32> = txVec25;
        let x_1902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1900.xy, x_1900.z);
        u_xlat69 = x_1902;
        let x_1904 : f32 = u_xlat7.x;
        let x_1905 : f32 = u_xlat69;
        let x_1907 : f32 = u_xlat68;
        u_xlat68 = ((x_1904 * x_1905) + x_1907);
        let x_1910 : vec4<f32> = u_xlat11;
        let x_1911 : vec2<f32> = vec2<f32>(x_1910.z, x_1910.w);
        let x_1913 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1911.x, x_1911.y, x_1913);
        let x_1920 : vec3<f32> = txVec26;
        let x_1922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1920.xy, x_1920.z);
        u_xlat69 = x_1922;
        let x_1924 : f32 = u_xlat7.y;
        let x_1925 : f32 = u_xlat69;
        let x_1927 : f32 = u_xlat68;
        u_xlat68 = ((x_1924 * x_1925) + x_1927);
        let x_1930 : vec2<f32> = u_xlat52;
        let x_1932 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1930.x, x_1930.y, x_1932);
        let x_1939 : vec3<f32> = txVec27;
        let x_1941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1939.xy, x_1939.z);
        u_xlat69 = x_1941;
        let x_1943 : f32 = u_xlat7.z;
        let x_1944 : f32 = u_xlat69;
        let x_1946 : f32 = u_xlat68;
        u_xlat68 = ((x_1943 * x_1944) + x_1946);
        let x_1949 : vec3<f32> = u_xlat26;
        let x_1950 : vec2<f32> = vec2<f32>(x_1949.x, x_1949.y);
        let x_1952 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1950.x, x_1950.y, x_1952);
        let x_1959 : vec3<f32> = txVec28;
        let x_1961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1959.xy, x_1959.z);
        u_xlat26.x = x_1961;
        let x_1964 : f32 = u_xlat7.w;
        let x_1966 : f32 = u_xlat26.x;
        let x_1968 : f32 = u_xlat68;
        u_xlat67 = ((x_1964 * x_1966) + x_1968);
      }
    }
  } else {
    let x_1972 : vec4<f32> = vs_INTERP8;
    let x_1973 : vec2<f32> = vec2<f32>(x_1972.x, x_1972.y);
    let x_1975 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1973.x, x_1973.y, x_1975);
    let x_1982 : vec3<f32> = txVec29;
    let x_1984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1982.xy, x_1982.z);
    u_xlat67 = x_1984;
  }
  let x_1986 : f32 = x_747.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1986) + 1.0f);
  let x_1990 : f32 = u_xlat67;
  let x_1992 : f32 = x_747.x_MainLightShadowParams.x;
  let x_1995 : f32 = u_xlat26.x;
  u_xlat67 = ((x_1990 * x_1992) + x_1995);
  let x_1998 : f32 = vs_INTERP8.z;
  u_xlatb26.x = (0.0f >= x_1998);
  let x_2003 : f32 = vs_INTERP8.z;
  u_xlatb47 = (x_2003 >= 1.0f);
  let x_2005 : bool = u_xlatb47;
  let x_2007 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_2005 | x_2007);
  let x_2011 : bool = u_xlatb26.x;
  let x_2012 : f32 = u_xlat67;
  u_xlat67 = select(x_2012, 1.0f, x_2011);
  let x_2014 : vec3<f32> = vs_INTERP0;
  let x_2016 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_2014 + -(x_2016));
  let x_2019 : vec3<f32> = u_xlat26;
  let x_2020 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_2019, x_2020);
  let x_2024 : f32 = u_xlat26.x;
  let x_2026 : f32 = x_747.x_MainLightShadowParams.z;
  let x_2029 : f32 = x_747.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_2024 * x_2026) + x_2029);
  let x_2033 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2033, 0.0f, 1.0f);
  let x_2036 : f32 = u_xlat67;
  u_xlat47 = (-(x_2036) + 1.0f);
  let x_2040 : f32 = u_xlat26.x;
  let x_2041 : f32 = u_xlat47;
  let x_2043 : f32 = u_xlat67;
  u_xlat67 = ((x_2040 * x_2041) + x_2043);
  let x_2051 : f32 = x_2049.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_2051 == -1.0f));
  let x_2055 : bool = u_xlatb26.x;
  if (x_2055) {
    let x_2058 : vec3<f32> = vs_INTERP0;
    let x_2061 : vec4<f32> = x_2049.x_MainLightWorldToLight[1i];
    let x_2063 : vec2<f32> = (vec2<f32>(x_2058.y, x_2058.y) * vec2<f32>(x_2061.x, x_2061.y));
    let x_2064 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2063.x, x_2063.y, x_2064.z);
    let x_2067 : vec4<f32> = x_2049.x_MainLightWorldToLight[0i];
    let x_2069 : vec3<f32> = vs_INTERP0;
    let x_2072 : vec3<f32> = u_xlat26;
    let x_2074 : vec2<f32> = ((vec2<f32>(x_2067.x, x_2067.y) * vec2<f32>(x_2069.x, x_2069.x)) + vec2<f32>(x_2072.x, x_2072.y));
    let x_2075 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2074.x, x_2074.y, x_2075.z);
    let x_2078 : vec4<f32> = x_2049.x_MainLightWorldToLight[2i];
    let x_2080 : vec3<f32> = vs_INTERP0;
    let x_2083 : vec3<f32> = u_xlat26;
    let x_2085 : vec2<f32> = ((vec2<f32>(x_2078.x, x_2078.y) * vec2<f32>(x_2080.z, x_2080.z)) + vec2<f32>(x_2083.x, x_2083.y));
    let x_2086 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2085.x, x_2085.y, x_2086.z);
    let x_2088 : vec3<f32> = u_xlat26;
    let x_2091 : vec4<f32> = x_2049.x_MainLightWorldToLight[3i];
    let x_2093 : vec2<f32> = (vec2<f32>(x_2088.x, x_2088.y) + vec2<f32>(x_2091.x, x_2091.y));
    let x_2094 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2093.x, x_2093.y, x_2094.z);
    let x_2096 : vec3<f32> = u_xlat26;
    let x_2099 : vec2<f32> = ((vec2<f32>(x_2096.x, x_2096.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2100 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2099.x, x_2099.y, x_2100.z);
    let x_2107 : vec3<f32> = u_xlat26;
    let x_2110 : f32 = x_44.x_GlobalMipBias.x;
    let x_2111 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2107.x, x_2107.y), x_2110);
    u_xlat7 = x_2111;
    let x_2113 : f32 = x_2049.x_MainLightCookieTextureFormat;
    let x_2115 : f32 = x_2049.x_MainLightCookieTextureFormat;
    let x_2117 : f32 = x_2049.x_MainLightCookieTextureFormat;
    let x_2119 : f32 = x_2049.x_MainLightCookieTextureFormat;
    let x_2120 : vec4<f32> = vec4<f32>(x_2113, x_2115, x_2117, x_2119);
    let x_2128 : vec4<bool> = (vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2120.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_2128.x, x_2128.y);
    let x_2131 : bool = u_xlatb26.y;
    if (x_2131) {
      let x_2136 : f32 = u_xlat7.w;
      x_2132 = x_2136;
    } else {
      let x_2139 : f32 = u_xlat7.x;
      x_2132 = x_2139;
    }
    let x_2140 : f32 = x_2132;
    u_xlat47 = x_2140;
    let x_2142 : bool = u_xlatb26.x;
    if (x_2142) {
      let x_2146 : vec4<f32> = u_xlat7;
      x_2143 = vec3<f32>(x_2146.x, x_2146.y, x_2146.z);
    } else {
      let x_2149 : f32 = u_xlat47;
      x_2143 = vec3<f32>(x_2149, x_2149, x_2149);
    }
    let x_2151 : vec3<f32> = x_2143;
    u_xlat26 = x_2151;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_2156 : vec3<f32> = u_xlat26;
  let x_2158 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (x_2156 * vec3<f32>(x_2158.x, x_2158.y, x_2158.z));
  let x_2161 : vec4<f32> = u_xlat5;
  let x_2163 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2161.x, x_2161.x, x_2161.x) * x_2163);
  let x_2165 : vec4<f32> = u_xlat3;
  let x_2168 : vec4<f32> = u_xlat1;
  u_xlat69 = dot(-(vec3<f32>(x_2165.x, x_2165.y, x_2165.z)), vec3<f32>(x_2168.x, x_2168.y, x_2168.z));
  let x_2171 : f32 = u_xlat69;
  let x_2172 : f32 = u_xlat69;
  u_xlat69 = (x_2171 + x_2172);
  let x_2174 : vec4<f32> = u_xlat1;
  let x_2176 : f32 = u_xlat69;
  let x_2180 : vec4<f32> = u_xlat3;
  let x_2183 : vec3<f32> = ((vec3<f32>(x_2174.x, x_2174.y, x_2174.z) * -(vec3<f32>(x_2176, x_2176, x_2176))) + -(vec3<f32>(x_2180.x, x_2180.y, x_2180.z)));
  let x_2184 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2184.w);
  let x_2186 : vec4<f32> = u_xlat1;
  let x_2188 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_2186.x, x_2186.y, x_2186.z), vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
  let x_2191 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2191, 0.0f, 1.0f);
  let x_2193 : f32 = u_xlat69;
  u_xlat69 = (-(x_2193) + 1.0f);
  let x_2196 : f32 = u_xlat69;
  let x_2197 : f32 = u_xlat69;
  u_xlat69 = (x_2196 * x_2197);
  let x_2199 : f32 = u_xlat69;
  let x_2200 : f32 = u_xlat69;
  u_xlat69 = (x_2199 * x_2200);
  let x_2203 : f32 = u_xlat64;
  u_xlat70 = ((-(x_2203) * 0.699999988f) + 1.700000048f);
  let x_2209 : f32 = u_xlat64;
  let x_2210 : f32 = u_xlat70;
  u_xlat64 = (x_2209 * x_2210);
  let x_2212 : f32 = u_xlat64;
  u_xlat64 = (x_2212 * 6.0f);
  let x_2222 : vec4<f32> = u_xlat7;
  let x_2224 : f32 = u_xlat64;
  let x_2225 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2222.x, x_2222.y, x_2222.z), x_2224);
  u_xlat7 = x_2225;
  let x_2227 : f32 = u_xlat7.w;
  u_xlat64 = (x_2227 + -1.0f);
  let x_2230 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2231 : f32 = u_xlat64;
  u_xlat64 = ((x_2230 * x_2231) + 1.0f);
  let x_2234 : f32 = u_xlat64;
  u_xlat64 = max(x_2234, 0.0f);
  let x_2236 : f32 = u_xlat64;
  u_xlat64 = log2(x_2236);
  let x_2238 : f32 = u_xlat64;
  let x_2240 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat64 = (x_2238 * x_2240);
  let x_2242 : f32 = u_xlat64;
  u_xlat64 = exp2(x_2242);
  let x_2244 : f32 = u_xlat64;
  let x_2246 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat64 = (x_2244 * x_2246);
  let x_2248 : vec4<f32> = u_xlat7;
  let x_2250 : f32 = u_xlat64;
  let x_2252 : vec3<f32> = (vec3<f32>(x_2248.x, x_2248.y, x_2248.z) * vec3<f32>(x_2250, x_2250, x_2250));
  let x_2253 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2252.x, x_2252.y, x_2252.z, x_2253.w);
  let x_2255 : vec4<f32> = u_xlat2;
  let x_2257 : vec4<f32> = u_xlat2;
  let x_2261 : vec2<f32> = ((vec2<f32>(x_2255.x, x_2255.x) * vec2<f32>(x_2257.x, x_2257.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2262 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2261.x, x_2261.y, x_2262.z, x_2262.w);
  let x_2265 : f32 = u_xlat8.y;
  u_xlat64 = (1.0f / x_2265);
  let x_2267 : vec4<f32> = u_xlat0;
  let x_2270 : f32 = u_xlat65;
  u_xlat29 = (-(vec3<f32>(x_2267.x, x_2267.y, x_2267.z)) + vec3<f32>(x_2270, x_2270, x_2270));
  let x_2273 : f32 = u_xlat69;
  let x_2275 : vec3<f32> = u_xlat29;
  let x_2277 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2273, x_2273, x_2273) * x_2275) + vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
  let x_2280 : f32 = u_xlat64;
  let x_2282 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2280, x_2280, x_2280) * x_2282);
  let x_2284 : vec4<f32> = u_xlat7;
  let x_2286 : vec3<f32> = u_xlat29;
  let x_2287 : vec3<f32> = (vec3<f32>(x_2284.x, x_2284.y, x_2284.z) * x_2286);
  let x_2288 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
  let x_2290 : vec3<f32> = u_xlat4;
  let x_2291 : vec3<f32> = u_xlat6;
  let x_2293 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_2290 * x_2291) + vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
  let x_2296 : f32 = u_xlat67;
  let x_2299 : f32 = x_359.unity_LightData.z;
  u_xlat64 = (x_2296 * x_2299);
  let x_2301 : vec4<f32> = u_xlat1;
  let x_2304 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2301.x, x_2301.y, x_2301.z), vec3<f32>(x_2304.x, x_2304.y, x_2304.z));
  let x_2309 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2309, 0.0f, 1.0f);
  let x_2312 : f32 = u_xlat64;
  let x_2314 : f32 = u_xlat2.x;
  u_xlat64 = (x_2312 * x_2314);
  let x_2316 : f32 = u_xlat64;
  let x_2318 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2316, x_2316, x_2316) * x_2318);
  let x_2320 : vec4<f32> = u_xlat3;
  let x_2323 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2325 : vec3<f32> = (vec3<f32>(x_2320.x, x_2320.y, x_2320.z) + vec3<f32>(x_2323.x, x_2323.y, x_2323.z));
  let x_2326 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2326.w);
  let x_2328 : vec4<f32> = u_xlat7;
  let x_2330 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2328.x, x_2328.y, x_2328.z), vec3<f32>(x_2330.x, x_2330.y, x_2330.z));
  let x_2333 : f32 = u_xlat64;
  u_xlat64 = max(x_2333, 1.17549435e-37f);
  let x_2336 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_2336);
  let x_2338 : f32 = u_xlat64;
  let x_2340 : vec4<f32> = u_xlat7;
  let x_2342 : vec3<f32> = (vec3<f32>(x_2338, x_2338, x_2338) * vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
  let x_2343 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
  let x_2345 : vec4<f32> = u_xlat1;
  let x_2347 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2345.x, x_2345.y, x_2345.z), vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
  let x_2350 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2350, 0.0f, 1.0f);
  let x_2353 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2355 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_2353.x, x_2353.y, x_2353.z), vec3<f32>(x_2355.x, x_2355.y, x_2355.z));
  let x_2360 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2360, 0.0f, 1.0f);
  let x_2363 : f32 = u_xlat64;
  let x_2364 : f32 = u_xlat64;
  u_xlat64 = (x_2363 * x_2364);
  let x_2366 : f32 = u_xlat64;
  let x_2368 : f32 = u_xlat8.x;
  u_xlat64 = ((x_2366 * x_2368) + 1.000010014f);
  let x_2373 : f32 = u_xlat2.x;
  let x_2375 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2373 * x_2375);
  let x_2378 : f32 = u_xlat64;
  let x_2379 : f32 = u_xlat64;
  u_xlat64 = (x_2378 * x_2379);
  let x_2382 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2382, 0.100000001f);
  let x_2386 : f32 = u_xlat64;
  let x_2388 : f32 = u_xlat2.x;
  u_xlat64 = (x_2386 * x_2388);
  let x_2390 : f32 = u_xlat66;
  let x_2391 : f32 = u_xlat64;
  u_xlat64 = (x_2390 * x_2391);
  let x_2393 : f32 = u_xlat23;
  let x_2394 : f32 = u_xlat64;
  u_xlat64 = (x_2393 / x_2394);
  let x_2396 : vec4<f32> = u_xlat0;
  let x_2398 : f32 = u_xlat64;
  let x_2401 : vec3<f32> = u_xlat6;
  let x_2402 : vec3<f32> = ((vec3<f32>(x_2396.x, x_2396.y, x_2396.z) * vec3<f32>(x_2398, x_2398, x_2398)) + x_2401);
  let x_2403 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
  let x_2405 : vec3<f32> = u_xlat26;
  let x_2406 : vec4<f32> = u_xlat7;
  u_xlat26 = (x_2405 * vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
  let x_2410 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2412 : f32 = x_359.unity_LightData.y;
  u_xlat64 = min(x_2410, x_2412);
  let x_2416 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_2416));
  let x_2422 : f32 = x_2049.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2424 : f32 = x_2049.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2426 : f32 = x_2049.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2428 : f32 = x_2049.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2429 : vec4<f32> = vec4<f32>(x_2422, x_2424, x_2426, x_2428);
  let x_2436 : vec4<bool> = (vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2429.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2437 : vec2<bool> = vec2<bool>(x_2436.x, x_2436.w);
  let x_2438 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2437.x, x_2438.y, x_2438.z, x_2437.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2449 : u32 = u_xlatu_loop_1;
    let x_2450 : u32 = u_xlatu64;
    if ((x_2449 < x_2450)) {
    } else {
      break;
    }
    let x_2453 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2453 >> 2u);
    let x_2457 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2457 & 3u));
    let x_2460 : u32 = u_xlatu69;
    let x_2463 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2460)];
    let x_2473 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2478 : vec4<u32> = indexable[x_2473];
    u_xlat69 = dot(x_2463, bitcast<vec4<f32>>(x_2478));
    let x_2481 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2481));
    let x_2484 : vec3<f32> = vs_INTERP0;
    let x_2496 : u32 = u_xlatu69;
    let x_2499 : vec4<f32> = x_2495.x_AdditionalLightsPosition[bitcast<i32>(x_2496)];
    let x_2502 : u32 = u_xlatu69;
    let x_2505 : vec4<f32> = x_2495.x_AdditionalLightsPosition[bitcast<i32>(x_2502)];
    u_xlat29 = ((-(x_2484) * vec3<f32>(x_2499.w, x_2499.w, x_2499.w)) + vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
    let x_2508 : vec3<f32> = u_xlat29;
    let x_2509 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_2508, x_2509);
    let x_2511 : f32 = u_xlat70;
    u_xlat70 = max(x_2511, 6.10351562e-05f);
    let x_2514 : f32 = u_xlat70;
    u_xlat9.x = inverseSqrt(x_2514);
    let x_2518 : vec3<f32> = u_xlat29;
    let x_2519 : vec4<f32> = u_xlat9;
    u_xlat30 = (x_2518 * vec3<f32>(x_2519.x, x_2519.x, x_2519.x));
    let x_2522 : f32 = u_xlat70;
    u_xlat10.x = (1.0f / x_2522);
    let x_2525 : f32 = u_xlat70;
    let x_2526 : u32 = u_xlatu69;
    let x_2529 : f32 = x_2495.x_AdditionalLightsAttenuation[bitcast<i32>(x_2526)].x;
    u_xlat70 = (x_2525 * x_2529);
    let x_2531 : f32 = u_xlat70;
    let x_2533 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2531) * x_2533) + 1.0f);
    let x_2536 : f32 = u_xlat70;
    u_xlat70 = max(x_2536, 0.0f);
    let x_2538 : f32 = u_xlat70;
    let x_2539 : f32 = u_xlat70;
    u_xlat70 = (x_2538 * x_2539);
    let x_2541 : f32 = u_xlat70;
    let x_2543 : f32 = u_xlat10.x;
    u_xlat70 = (x_2541 * x_2543);
    let x_2545 : u32 = u_xlatu69;
    let x_2548 : vec4<f32> = x_2495.x_AdditionalLightsSpotDir[bitcast<i32>(x_2545)];
    let x_2550 : vec3<f32> = u_xlat30;
    u_xlat10.x = dot(vec3<f32>(x_2548.x, x_2548.y, x_2548.z), x_2550);
    let x_2554 : f32 = u_xlat10.x;
    let x_2555 : u32 = u_xlatu69;
    let x_2558 : f32 = x_2495.x_AdditionalLightsAttenuation[bitcast<i32>(x_2555)].z;
    let x_2560 : u32 = u_xlatu69;
    let x_2563 : f32 = x_2495.x_AdditionalLightsAttenuation[bitcast<i32>(x_2560)].w;
    u_xlat10.x = ((x_2554 * x_2558) + x_2563);
    let x_2567 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2567, 0.0f, 1.0f);
    let x_2571 : f32 = u_xlat10.x;
    let x_2573 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2571 * x_2573);
    let x_2576 : f32 = u_xlat70;
    let x_2578 : f32 = u_xlat10.x;
    u_xlat70 = (x_2576 * x_2578);
    let x_2581 : u32 = u_xlatu69;
    u_xlatu10 = (x_2581 >> 5u);
    let x_2584 : u32 = u_xlatu69;
    u_xlati31 = (1i << bitcast<u32>((bitcast<i32>(x_2584) & 31i)));
    let x_2590 : i32 = u_xlati31;
    let x_2592 : u32 = u_xlatu10;
    let x_2595 : f32 = x_2049.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2592)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_2590) & bitcast<u32>(x_2595)));
    let x_2599 : i32 = u_xlati10;
    if ((x_2599 != 0i)) {
      let x_2609 : u32 = u_xlatu69;
      let x_2612 : f32 = x_2608.x_AdditionalLightsLightTypes[bitcast<i32>(x_2609)].el;
      u_xlati10 = i32(x_2612);
      let x_2614 : i32 = u_xlati10;
      u_xlati31 = select(1i, 0i, (x_2614 != 0i));
      let x_2618 : u32 = u_xlatu69;
      u_xlati52 = (bitcast<i32>(x_2618) << bitcast<u32>(2i));
      let x_2621 : i32 = u_xlati31;
      if ((x_2621 != 0i)) {
        let x_2625 : vec3<f32> = vs_INTERP0;
        let x_2627 : i32 = u_xlati52;
        let x_2630 : i32 = u_xlati52;
        let x_2634 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[((x_2627 + 1i) / 4i)][((x_2630 + 1i) % 4i)];
        let x_2636 : vec3<f32> = (vec3<f32>(x_2625.y, x_2625.y, x_2625.y) * vec3<f32>(x_2634.x, x_2634.y, x_2634.w));
        let x_2637 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2636.x, x_2636.y, x_2636.z, x_2637.w);
        let x_2639 : i32 = u_xlati52;
        let x_2641 : i32 = u_xlati52;
        let x_2644 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[(x_2639 / 4i)][(x_2641 % 4i)];
        let x_2646 : vec3<f32> = vs_INTERP0;
        let x_2649 : vec4<f32> = u_xlat11;
        let x_2651 : vec3<f32> = ((vec3<f32>(x_2644.x, x_2644.y, x_2644.w) * vec3<f32>(x_2646.x, x_2646.x, x_2646.x)) + vec3<f32>(x_2649.x, x_2649.y, x_2649.z));
        let x_2652 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2651.x, x_2651.y, x_2651.z, x_2652.w);
        let x_2654 : i32 = u_xlati52;
        let x_2657 : i32 = u_xlati52;
        let x_2661 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[((x_2654 + 2i) / 4i)][((x_2657 + 2i) % 4i)];
        let x_2663 : vec3<f32> = vs_INTERP0;
        let x_2666 : vec4<f32> = u_xlat11;
        let x_2668 : vec3<f32> = ((vec3<f32>(x_2661.x, x_2661.y, x_2661.w) * vec3<f32>(x_2663.z, x_2663.z, x_2663.z)) + vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
        let x_2669 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
        let x_2671 : vec4<f32> = u_xlat11;
        let x_2673 : i32 = u_xlati52;
        let x_2676 : i32 = u_xlati52;
        let x_2680 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[((x_2673 + 3i) / 4i)][((x_2676 + 3i) % 4i)];
        let x_2682 : vec3<f32> = (vec3<f32>(x_2671.x, x_2671.y, x_2671.z) + vec3<f32>(x_2680.x, x_2680.y, x_2680.w));
        let x_2683 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2682.x, x_2682.y, x_2682.z, x_2683.w);
        let x_2686 : vec4<f32> = u_xlat11;
        let x_2688 : vec4<f32> = u_xlat11;
        let x_2690 : vec2<f32> = (vec2<f32>(x_2686.x, x_2686.y) / vec2<f32>(x_2688.z, x_2688.z));
        let x_2691 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2690.x, x_2691.y, x_2690.y);
        let x_2693 : vec3<f32> = u_xlat31;
        let x_2696 : vec2<f32> = ((vec2<f32>(x_2693.x, x_2693.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2697 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2696.x, x_2697.y, x_2696.y);
        let x_2699 : vec3<f32> = u_xlat31;
        let x_2703 : vec2<f32> = clamp(vec2<f32>(x_2699.x, x_2699.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2704 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2703.x, x_2704.y, x_2703.y);
        let x_2706 : u32 = u_xlatu69;
        let x_2709 : vec4<f32> = x_2608.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2706)];
        let x_2711 : vec3<f32> = u_xlat31;
        let x_2714 : u32 = u_xlatu69;
        let x_2717 : vec4<f32> = x_2608.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2714)];
        let x_2719 : vec2<f32> = ((vec2<f32>(x_2709.x, x_2709.y) * vec2<f32>(x_2711.x, x_2711.z)) + vec2<f32>(x_2717.z, x_2717.w));
        let x_2720 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2719.x, x_2720.y, x_2719.y);
      } else {
        let x_2724 : i32 = u_xlati10;
        u_xlatb10 = (x_2724 == 1i);
        let x_2726 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_2726);
        let x_2728 : i32 = u_xlati10;
        if ((x_2728 != 0i)) {
          let x_2732 : vec3<f32> = vs_INTERP0;
          let x_2734 : i32 = u_xlati52;
          let x_2737 : i32 = u_xlati52;
          let x_2741 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[((x_2734 + 1i) / 4i)][((x_2737 + 1i) % 4i)];
          let x_2743 : vec2<f32> = (vec2<f32>(x_2732.y, x_2732.y) * vec2<f32>(x_2741.x, x_2741.y));
          let x_2744 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2743.x, x_2743.y, x_2744.z, x_2744.w);
          let x_2746 : i32 = u_xlati52;
          let x_2748 : i32 = u_xlati52;
          let x_2751 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[(x_2746 / 4i)][(x_2748 % 4i)];
          let x_2753 : vec3<f32> = vs_INTERP0;
          let x_2756 : vec4<f32> = u_xlat11;
          let x_2758 : vec2<f32> = ((vec2<f32>(x_2751.x, x_2751.y) * vec2<f32>(x_2753.x, x_2753.x)) + vec2<f32>(x_2756.x, x_2756.y));
          let x_2759 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2758.x, x_2758.y, x_2759.z, x_2759.w);
          let x_2761 : i32 = u_xlati52;
          let x_2764 : i32 = u_xlati52;
          let x_2768 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[((x_2761 + 2i) / 4i)][((x_2764 + 2i) % 4i)];
          let x_2770 : vec3<f32> = vs_INTERP0;
          let x_2773 : vec4<f32> = u_xlat11;
          let x_2775 : vec2<f32> = ((vec2<f32>(x_2768.x, x_2768.y) * vec2<f32>(x_2770.z, x_2770.z)) + vec2<f32>(x_2773.x, x_2773.y));
          let x_2776 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2775.x, x_2775.y, x_2776.z, x_2776.w);
          let x_2778 : vec4<f32> = u_xlat11;
          let x_2780 : i32 = u_xlati52;
          let x_2783 : i32 = u_xlati52;
          let x_2787 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[((x_2780 + 3i) / 4i)][((x_2783 + 3i) % 4i)];
          let x_2789 : vec2<f32> = (vec2<f32>(x_2778.x, x_2778.y) + vec2<f32>(x_2787.x, x_2787.y));
          let x_2790 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2789.x, x_2789.y, x_2790.z, x_2790.w);
          let x_2792 : vec4<f32> = u_xlat11;
          let x_2795 : vec2<f32> = ((vec2<f32>(x_2792.x, x_2792.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2796 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2795.x, x_2795.y, x_2796.z, x_2796.w);
          let x_2798 : vec4<f32> = u_xlat11;
          let x_2800 : vec2<f32> = fract(vec2<f32>(x_2798.x, x_2798.y));
          let x_2801 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2800.x, x_2800.y, x_2801.z, x_2801.w);
          let x_2803 : u32 = u_xlatu69;
          let x_2806 : vec4<f32> = x_2608.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2803)];
          let x_2808 : vec4<f32> = u_xlat11;
          let x_2811 : u32 = u_xlatu69;
          let x_2814 : vec4<f32> = x_2608.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2811)];
          let x_2816 : vec2<f32> = ((vec2<f32>(x_2806.x, x_2806.y) * vec2<f32>(x_2808.x, x_2808.y)) + vec2<f32>(x_2814.z, x_2814.w));
          let x_2817 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2816.x, x_2817.y, x_2816.y);
        } else {
          let x_2820 : vec3<f32> = vs_INTERP0;
          let x_2822 : i32 = u_xlati52;
          let x_2825 : i32 = u_xlati52;
          let x_2829 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[((x_2822 + 1i) / 4i)][((x_2825 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2820.y, x_2820.y, x_2820.y, x_2820.y) * x_2829);
          let x_2831 : i32 = u_xlati52;
          let x_2833 : i32 = u_xlati52;
          let x_2836 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[(x_2831 / 4i)][(x_2833 % 4i)];
          let x_2837 : vec3<f32> = vs_INTERP0;
          let x_2840 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2836 * vec4<f32>(x_2837.x, x_2837.x, x_2837.x, x_2837.x)) + x_2840);
          let x_2842 : i32 = u_xlati52;
          let x_2845 : i32 = u_xlati52;
          let x_2849 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[((x_2842 + 2i) / 4i)][((x_2845 + 2i) % 4i)];
          let x_2850 : vec3<f32> = vs_INTERP0;
          let x_2853 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2849 * vec4<f32>(x_2850.z, x_2850.z, x_2850.z, x_2850.z)) + x_2853);
          let x_2855 : vec4<f32> = u_xlat11;
          let x_2856 : i32 = u_xlati52;
          let x_2859 : i32 = u_xlati52;
          let x_2863 : vec4<f32> = x_2608.x_AdditionalLightsWorldToLights[((x_2856 + 3i) / 4i)][((x_2859 + 3i) % 4i)];
          u_xlat11 = (x_2855 + x_2863);
          let x_2865 : vec4<f32> = u_xlat11;
          let x_2867 : vec4<f32> = u_xlat11;
          let x_2869 : vec3<f32> = (vec3<f32>(x_2865.x, x_2865.y, x_2865.z) / vec3<f32>(x_2867.w, x_2867.w, x_2867.w));
          let x_2870 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2869.x, x_2869.y, x_2869.z, x_2870.w);
          let x_2872 : vec4<f32> = u_xlat11;
          let x_2874 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_2872.x, x_2872.y, x_2872.z), vec3<f32>(x_2874.x, x_2874.y, x_2874.z));
          let x_2879 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_2879);
          let x_2882 : vec4<f32> = u_xlat10;
          let x_2884 : vec4<f32> = u_xlat11;
          let x_2886 : vec3<f32> = (vec3<f32>(x_2882.x, x_2882.x, x_2882.x) * vec3<f32>(x_2884.x, x_2884.y, x_2884.z));
          let x_2887 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2886.x, x_2886.y, x_2886.z, x_2887.w);
          let x_2889 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_2889.x, x_2889.y, x_2889.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2895 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_2895, 0.000001f);
          let x_2900 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_2900);
          let x_2903 : vec4<f32> = u_xlat10;
          let x_2905 : vec4<f32> = u_xlat11;
          let x_2907 : vec3<f32> = (vec3<f32>(x_2903.x, x_2903.x, x_2903.x) * vec3<f32>(x_2905.z, x_2905.x, x_2905.y));
          let x_2908 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2907.x, x_2907.y, x_2907.z, x_2908.w);
          let x_2911 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2911);
          let x_2915 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2915, 0.0f, 1.0f);
          let x_2919 : vec4<f32> = u_xlat12;
          let x_2922 : vec4<bool> = (vec4<f32>(x_2919.y, x_2919.z, x_2919.y, x_2919.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2922.x, x_2922.y);
          let x_2926 : bool = u_xlatb53.x;
          if (x_2926) {
            let x_2931 : f32 = u_xlat12.x;
            x_2927 = x_2931;
          } else {
            let x_2934 : f32 = u_xlat12.x;
            x_2927 = -(x_2934);
          }
          let x_2936 : f32 = x_2927;
          u_xlat53.x = x_2936;
          let x_2939 : bool = u_xlatb53.y;
          if (x_2939) {
            let x_2944 : f32 = u_xlat12.x;
            x_2940 = x_2944;
          } else {
            let x_2947 : f32 = u_xlat12.x;
            x_2940 = -(x_2947);
          }
          let x_2949 : f32 = x_2940;
          u_xlat53.y = x_2949;
          let x_2951 : vec4<f32> = u_xlat11;
          let x_2953 : vec4<f32> = u_xlat10;
          let x_2956 : vec2<f32> = u_xlat53;
          let x_2957 : vec2<f32> = ((vec2<f32>(x_2951.x, x_2951.y) * vec2<f32>(x_2953.x, x_2953.x)) + x_2956);
          let x_2958 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2957.x, x_2958.y, x_2957.y, x_2958.w);
          let x_2960 : vec4<f32> = u_xlat10;
          let x_2963 : vec2<f32> = ((vec2<f32>(x_2960.x, x_2960.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2964 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2963.x, x_2964.y, x_2963.y, x_2964.w);
          let x_2966 : vec4<f32> = u_xlat10;
          let x_2970 : vec2<f32> = clamp(vec2<f32>(x_2966.x, x_2966.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2971 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2970.x, x_2971.y, x_2970.y, x_2971.w);
          let x_2973 : u32 = u_xlatu69;
          let x_2976 : vec4<f32> = x_2608.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2973)];
          let x_2978 : vec4<f32> = u_xlat10;
          let x_2981 : u32 = u_xlatu69;
          let x_2984 : vec4<f32> = x_2608.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2981)];
          let x_2986 : vec2<f32> = ((vec2<f32>(x_2976.x, x_2976.y) * vec2<f32>(x_2978.x, x_2978.z)) + vec2<f32>(x_2984.z, x_2984.w));
          let x_2987 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2986.x, x_2987.y, x_2986.y);
        }
      }
      let x_2994 : vec3<f32> = u_xlat31;
      let x_2997 : f32 = x_44.x_GlobalMipBias.x;
      let x_2998 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2994.x, x_2994.z), x_2997);
      u_xlat10 = x_2998;
      let x_3001 : bool = u_xlatb2.w;
      if (x_3001) {
        let x_3006 : f32 = u_xlat10.w;
        x_3002 = x_3006;
      } else {
        let x_3009 : f32 = u_xlat10.x;
        x_3002 = x_3009;
      }
      let x_3010 : f32 = x_3002;
      u_xlat73 = x_3010;
      let x_3012 : bool = u_xlatb2.x;
      if (x_3012) {
        let x_3016 : vec4<f32> = u_xlat10;
        x_3013 = vec3<f32>(x_3016.x, x_3016.y, x_3016.z);
      } else {
        let x_3019 : f32 = u_xlat73;
        x_3013 = vec3<f32>(x_3019, x_3019, x_3019);
      }
      let x_3021 : vec3<f32> = x_3013;
      let x_3022 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3021.x, x_3021.y, x_3021.z, x_3022.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_3028 : vec4<f32> = u_xlat10;
    let x_3030 : u32 = u_xlatu69;
    let x_3033 : vec4<f32> = x_2495.x_AdditionalLightsColor[bitcast<i32>(x_3030)];
    let x_3035 : vec3<f32> = (vec3<f32>(x_3028.x, x_3028.y, x_3028.z) * vec3<f32>(x_3033.x, x_3033.y, x_3033.z));
    let x_3036 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3035.x, x_3035.y, x_3035.z, x_3036.w);
    let x_3038 : vec4<f32> = u_xlat5;
    let x_3040 : vec4<f32> = u_xlat10;
    let x_3042 : vec3<f32> = (vec3<f32>(x_3038.x, x_3038.x, x_3038.x) * vec3<f32>(x_3040.x, x_3040.y, x_3040.z));
    let x_3043 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3042.x, x_3042.y, x_3042.z, x_3043.w);
    let x_3045 : vec4<f32> = u_xlat1;
    let x_3047 : vec3<f32> = u_xlat30;
    u_xlat69 = dot(vec3<f32>(x_3045.x, x_3045.y, x_3045.z), x_3047);
    let x_3049 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3049, 0.0f, 1.0f);
    let x_3051 : f32 = u_xlat69;
    let x_3052 : f32 = u_xlat70;
    u_xlat69 = (x_3051 * x_3052);
    let x_3054 : f32 = u_xlat69;
    let x_3056 : vec4<f32> = u_xlat10;
    let x_3058 : vec3<f32> = (vec3<f32>(x_3054, x_3054, x_3054) * vec3<f32>(x_3056.x, x_3056.y, x_3056.z));
    let x_3059 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3058.x, x_3058.y, x_3058.z, x_3059.w);
    let x_3061 : vec3<f32> = u_xlat29;
    let x_3062 : vec4<f32> = u_xlat9;
    let x_3065 : vec4<f32> = u_xlat3;
    u_xlat29 = ((x_3061 * vec3<f32>(x_3062.x, x_3062.x, x_3062.x)) + vec3<f32>(x_3065.x, x_3065.y, x_3065.z));
    let x_3068 : vec3<f32> = u_xlat29;
    let x_3069 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(x_3068, x_3069);
    let x_3071 : f32 = u_xlat69;
    u_xlat69 = max(x_3071, 1.17549435e-37f);
    let x_3073 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_3073);
    let x_3075 : f32 = u_xlat69;
    let x_3077 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_3075, x_3075, x_3075) * x_3077);
    let x_3079 : vec4<f32> = u_xlat1;
    let x_3081 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(vec3<f32>(x_3079.x, x_3079.y, x_3079.z), x_3081);
    let x_3083 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3083, 0.0f, 1.0f);
    let x_3085 : vec3<f32> = u_xlat30;
    let x_3086 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_3085, x_3086);
    let x_3088 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3088, 0.0f, 1.0f);
    let x_3090 : f32 = u_xlat69;
    let x_3091 : f32 = u_xlat69;
    u_xlat69 = (x_3090 * x_3091);
    let x_3093 : f32 = u_xlat69;
    let x_3095 : f32 = u_xlat8.x;
    u_xlat69 = ((x_3093 * x_3095) + 1.000010014f);
    let x_3098 : f32 = u_xlat70;
    let x_3099 : f32 = u_xlat70;
    u_xlat70 = (x_3098 * x_3099);
    let x_3101 : f32 = u_xlat69;
    let x_3102 : f32 = u_xlat69;
    u_xlat69 = (x_3101 * x_3102);
    let x_3104 : f32 = u_xlat70;
    u_xlat70 = max(x_3104, 0.100000001f);
    let x_3106 : f32 = u_xlat69;
    let x_3107 : f32 = u_xlat70;
    u_xlat69 = (x_3106 * x_3107);
    let x_3109 : f32 = u_xlat66;
    let x_3110 : f32 = u_xlat69;
    u_xlat69 = (x_3109 * x_3110);
    let x_3112 : f32 = u_xlat23;
    let x_3113 : f32 = u_xlat69;
    u_xlat69 = (x_3112 / x_3113);
    let x_3115 : vec4<f32> = u_xlat0;
    let x_3117 : f32 = u_xlat69;
    let x_3120 : vec3<f32> = u_xlat6;
    u_xlat29 = ((vec3<f32>(x_3115.x, x_3115.y, x_3115.z) * vec3<f32>(x_3117, x_3117, x_3117)) + x_3120);
    let x_3122 : vec3<f32> = u_xlat29;
    let x_3123 : vec4<f32> = u_xlat10;
    let x_3126 : vec4<f32> = u_xlat7;
    let x_3128 : vec3<f32> = ((x_3122 * vec3<f32>(x_3123.x, x_3123.y, x_3123.z)) + vec3<f32>(x_3126.x, x_3126.y, x_3126.z));
    let x_3129 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3128.x, x_3128.y, x_3128.z, x_3129.w);

    continuing {
      let x_3131 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3131 + bitcast<u32>(1i));
    }
  }
  let x_3133 : vec3<f32> = u_xlat4;
  let x_3134 : f32 = u_xlat44;
  let x_3137 : vec3<f32> = u_xlat26;
  let x_3138 : vec3<f32> = ((x_3133 * vec3<f32>(x_3134, x_3134, x_3134)) + x_3137);
  let x_3139 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3138.x, x_3138.y, x_3138.z, x_3139.w);
  let x_3141 : vec4<f32> = u_xlat7;
  let x_3143 : vec4<f32> = u_xlat0;
  let x_3145 : vec3<f32> = (vec3<f32>(x_3141.x, x_3141.y, x_3141.z) + vec3<f32>(x_3143.x, x_3143.y, x_3143.z));
  let x_3146 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3145.x, x_3145.y, x_3145.z, x_3146.w);
  let x_3148 : f32 = u_xlat63;
  let x_3149 : f32 = u_xlat63;
  u_xlat63 = (x_3148 * -(x_3149));
  let x_3152 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3152);
  let x_3154 : vec4<f32> = u_xlat0;
  let x_3158 : vec4<f32> = x_44.unity_FogColor;
  let x_3161 : vec3<f32> = (vec3<f32>(x_3154.x, x_3154.y, x_3154.z) + -(vec3<f32>(x_3158.x, x_3158.y, x_3158.z)));
  let x_3162 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3161.x, x_3161.y, x_3161.z, x_3162.w);
  let x_3166 : f32 = u_xlat63;
  let x_3168 : vec4<f32> = u_xlat0;
  let x_3172 : vec4<f32> = x_44.unity_FogColor;
  let x_3174 : vec3<f32> = ((vec3<f32>(x_3166, x_3166, x_3166) * vec3<f32>(x_3168.x, x_3168.y, x_3168.z)) + vec3<f32>(x_3172.x, x_3172.y, x_3172.z));
  let x_3175 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3174.x, x_3174.y, x_3174.z, x_3175.w);
  let x_3180 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3182 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_3180 & bitcast<u32>(x_3182));
  let x_3185 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3185);
  let x_3190 : f32 = u_xlat0.x;
  let x_3192 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3190 * x_3192);
  let x_3197 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3197, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3201 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3201.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

