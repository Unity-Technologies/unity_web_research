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

@group(1) @binding(3) var<uniform> x_727 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2025 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2474 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2587 : AdditionalLightsCookies;

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
  var u_xlat64 : f32;
  var u_xlat4 : vec4<f32>;
  var x_487 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat6 : vec3<f32>;
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
  var x_2108 : f32;
  var x_2119 : vec3<f32>;
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
  var x_2906 : f32;
  var x_2919 : f32;
  var u_xlat73 : f32;
  var x_2981 : f32;
  var x_2992 : vec3<f32>;
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
  u_xlat64 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat64;
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
    let x_493 : vec4<f32> = u_xlat4;
    x_487 = vec3<f32>(x_493.x, x_493.y, x_493.z);
  }
  let x_495 : vec3<f32> = x_487;
  let x_496 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = vs_INTERP0.y;
  let x_501 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_499 * x_501);
  let x_504 : f32 = x_44.unity_MatrixV[0i].z;
  let x_506 : f32 = vs_INTERP0.x;
  let x_508 : f32 = u_xlat63;
  u_xlat63 = ((x_504 * x_506) + x_508);
  let x_511 : f32 = x_44.unity_MatrixV[2i].z;
  let x_513 : f32 = vs_INTERP0.z;
  let x_515 : f32 = u_xlat63;
  u_xlat63 = ((x_511 * x_513) + x_515);
  let x_517 : f32 = u_xlat63;
  let x_519 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_517 + x_519);
  let x_521 : f32 = u_xlat63;
  let x_525 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_521) + -(x_525));
  let x_528 : f32 = u_xlat63;
  u_xlat63 = max(x_528, 0.0f);
  let x_530 : f32 = u_xlat63;
  let x_533 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_530 * x_533);
  let x_542 : vec2<f32> = vs_INTERP4;
  let x_544 : f32 = x_44.x_GlobalMipBias.x;
  let x_545 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_542, x_544);
  u_xlat4 = x_545;
  let x_551 : vec2<f32> = vs_INTERP4;
  let x_553 : f32 = x_44.x_GlobalMipBias.x;
  let x_554 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_551, x_553);
  u_xlat5 = vec3<f32>(x_554.x, x_554.y, x_554.z);
  let x_556 : vec4<f32> = u_xlat4;
  let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat1;
  let x_565 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(vec3<f32>(x_563.x, x_563.y, x_563.z), vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : f32 = u_xlat64;
  u_xlat64 = (x_568 + 0.5f);
  let x_571 : f32 = u_xlat64;
  let x_573 : vec3<f32> = u_xlat5;
  let x_574 : vec3<f32> = (vec3<f32>(x_571, x_571, x_571) * x_573);
  let x_575 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_578 : f32 = u_xlat4.w;
  u_xlat64 = max(x_578, 0.0001f);
  let x_581 : vec4<f32> = u_xlat4;
  let x_583 : f32 = u_xlat64;
  let x_585 : vec3<f32> = (vec3<f32>(x_581.x, x_581.y, x_581.z) / vec3<f32>(x_583, x_583, x_583));
  let x_586 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_591 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_592 : vec2<f32> = vec2<f32>(x_591.x, x_591.y);
  let x_596 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_592.x, x_592.y));
  let x_597 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_596.x, x_596.y, x_597.z);
  let x_599 : vec3<f32> = u_xlat5;
  let x_601 : vec4<f32> = hlslcc_FragCoord;
  let x_603 : vec2<f32> = (vec2<f32>(x_599.x, x_599.y) * vec2<f32>(x_601.x, x_601.y));
  let x_604 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_603.x, x_603.y, x_604.z);
  let x_607 : f32 = u_xlat5.y;
  let x_610 : f32 = x_44.x_ScaleBiasRt.x;
  let x_613 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat64 = ((x_607 * x_610) + x_613);
  let x_615 : f32 = u_xlat64;
  u_xlat5.z = (-(x_615) + 1.0f);
  let x_619 : vec4<f32> = u_xlat2;
  let x_620 : vec2<f32> = vec2<f32>(x_619.x, x_619.y);
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat2;
  let x_627 : vec2<f32> = clamp(vec2<f32>(x_623.x, x_623.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_628 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_628.w);
  let x_631 : f32 = u_xlat2.x;
  u_xlat64 = ((-(x_631) * 0.959999979f) + 0.959999979f);
  let x_637 : f32 = u_xlat64;
  let x_640 : f32 = u_xlat2.y;
  u_xlat65 = (-(x_637) + x_640);
  let x_643 : vec4<f32> = u_xlat0;
  let x_645 : f32 = u_xlat64;
  u_xlat6 = (vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_645, x_645, x_645));
  let x_648 : vec4<f32> = u_xlat0;
  let x_652 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_653 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat2;
  let x_657 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = ((vec3<f32>(x_655.x, x_655.x, x_655.x) * vec3<f32>(x_657.x, x_657.y, x_657.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_663 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_666 : f32 = u_xlat2.y;
  u_xlat64 = (-(x_666) + 1.0f);
  let x_669 : f32 = u_xlat64;
  let x_670 : f32 = u_xlat64;
  u_xlat2.x = (x_669 * x_670);
  let x_674 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_674, 0.0078125f);
  let x_680 : f32 = u_xlat2.x;
  let x_682 : f32 = u_xlat2.x;
  u_xlat23 = (x_680 * x_682);
  let x_684 : f32 = u_xlat65;
  u_xlat65 = (x_684 + 1.0f);
  let x_686 : f32 = u_xlat65;
  u_xlat65 = min(x_686, 1.0f);
  let x_690 : f32 = u_xlat2.x;
  u_xlat66 = ((x_690 * 4.0f) + 2.0f);
  let x_700 : vec3<f32> = u_xlat5;
  let x_703 : f32 = x_44.x_GlobalMipBias.x;
  let x_704 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_700.x, x_700.z), x_703);
  u_xlat67 = x_704.x;
  let x_706 : f32 = u_xlat67;
  u_xlat5.x = (x_706 + -1.0f);
  let x_711 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_713 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_711 * x_713) + 1.0f);
  let x_719 : f32 = u_xlat2.z;
  let x_720 : f32 = u_xlat67;
  u_xlat44 = min(x_719, x_720);
  let x_729 : f32 = x_727.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_729);
  let x_731 : bool = u_xlatb67;
  if (x_731) {
    let x_735 : f32 = x_727.x_MainLightShadowParams.y;
    u_xlatb67 = (x_735 == 1.0f);
    let x_737 : bool = u_xlatb67;
    if (x_737) {
      let x_742 : vec4<f32> = vs_INTERP8;
      let x_745 : vec4<f32> = x_727.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y) + x_745);
      let x_748 : vec4<f32> = u_xlat7;
      let x_749 : vec2<f32> = vec2<f32>(x_748.x, x_748.y);
      let x_751 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_749.x, x_749.y, x_751);
      let x_764 : vec3<f32> = txVec0;
      let x_766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_764.xy, x_764.z);
      u_xlat8.x = x_766;
      let x_769 : vec4<f32> = u_xlat7;
      let x_770 : vec2<f32> = vec2<f32>(x_769.z, x_769.w);
      let x_772 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_770.x, x_770.y, x_772);
      let x_779 : vec3<f32> = txVec1;
      let x_781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_779.xy, x_779.z);
      u_xlat8.y = x_781;
      let x_783 : vec4<f32> = vs_INTERP8;
      let x_786 : vec4<f32> = x_727.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y) + x_786);
      let x_789 : vec4<f32> = u_xlat7;
      let x_790 : vec2<f32> = vec2<f32>(x_789.x, x_789.y);
      let x_792 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_790.x, x_790.y, x_792);
      let x_799 : vec3<f32> = txVec2;
      let x_801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_799.xy, x_799.z);
      u_xlat8.z = x_801;
      let x_804 : vec4<f32> = u_xlat7;
      let x_805 : vec2<f32> = vec2<f32>(x_804.z, x_804.w);
      let x_807 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_805.x, x_805.y, x_807);
      let x_814 : vec3<f32> = txVec3;
      let x_816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_814.xy, x_814.z);
      u_xlat8.w = x_816;
      let x_818 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_818, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_825 : f32 = x_727.x_MainLightShadowParams.y;
      u_xlatb26.x = (x_825 == 2.0f);
      let x_829 : bool = u_xlatb26.x;
      if (x_829) {
        let x_833 : vec4<f32> = vs_INTERP8;
        let x_836 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_840 : vec2<f32> = ((vec2<f32>(x_833.x, x_833.y) * vec2<f32>(x_836.z, x_836.w)) + vec2<f32>(0.5f, 0.5f));
        let x_841 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_840.x, x_840.y, x_841.z);
        let x_843 : vec3<f32> = u_xlat26;
        let x_845 : vec2<f32> = floor(vec2<f32>(x_843.x, x_843.y));
        let x_846 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_845.x, x_845.y, x_846.z);
        let x_848 : vec4<f32> = vs_INTERP8;
        let x_851 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_854 : vec3<f32> = u_xlat26;
        let x_857 : vec2<f32> = ((vec2<f32>(x_848.x, x_848.y) * vec2<f32>(x_851.z, x_851.w)) + -(vec2<f32>(x_854.x, x_854.y)));
        let x_858 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
        let x_860 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_860.x, x_860.x, x_860.y, x_860.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_865 : vec4<f32> = u_xlat8;
        let x_867 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_865.x, x_865.x, x_865.z, x_865.z) * vec4<f32>(x_867.x, x_867.x, x_867.z, x_867.z));
        let x_871 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_871.y, x_871.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_876 : vec4<f32> = u_xlat9;
        let x_879 : vec4<f32> = u_xlat7;
        let x_882 : vec2<f32> = ((vec2<f32>(x_876.x, x_876.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_879.x, x_879.y)));
        let x_883 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_882.x, x_883.y, x_882.y, x_883.w);
        let x_885 : vec4<f32> = u_xlat7;
        let x_888 : vec2<f32> = (-(vec2<f32>(x_885.x, x_885.y)) + vec2<f32>(1.0f, 1.0f));
        let x_889 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
        let x_892 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_892.x, x_892.y), vec2<f32>(0.0f, 0.0f));
        let x_896 : vec2<f32> = u_xlat51;
        let x_898 : vec2<f32> = u_xlat51;
        let x_900 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_896) * x_898) + vec2<f32>(x_900.x, x_900.y));
        let x_903 : vec4<f32> = u_xlat7;
        let x_905 : vec2<f32> = max(vec2<f32>(x_903.x, x_903.y), vec2<f32>(0.0f, 0.0f));
        let x_906 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_908 : vec4<f32> = u_xlat7;
        let x_911 : vec4<f32> = u_xlat7;
        let x_914 : vec4<f32> = u_xlat8;
        let x_916 : vec2<f32> = ((-(vec2<f32>(x_908.x, x_908.y)) * vec2<f32>(x_911.x, x_911.y)) + vec2<f32>(x_914.y, x_914.w));
        let x_917 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_919 + vec2<f32>(1.0f, 1.0f));
        let x_921 : vec4<f32> = u_xlat7;
        let x_923 : vec2<f32> = (vec2<f32>(x_921.x, x_921.y) + vec2<f32>(1.0f, 1.0f));
        let x_924 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
        let x_927 : vec4<f32> = u_xlat8;
        let x_931 : vec2<f32> = (vec2<f32>(x_927.x, x_927.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_932 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_935 : vec4<f32> = u_xlat9;
        let x_937 : vec2<f32> = (vec2<f32>(x_935.x, x_935.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_938 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_940 : vec2<f32> = u_xlat51;
        let x_941 : vec2<f32> = (x_940 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_942 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_945 : vec4<f32> = u_xlat7;
        let x_947 : vec2<f32> = (vec2<f32>(x_945.x, x_945.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_948 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_947.x, x_947.y, x_948.z, x_948.w);
        let x_950 : vec4<f32> = u_xlat8;
        let x_952 : vec2<f32> = (vec2<f32>(x_950.y, x_950.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_953 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_956 : f32 = u_xlat9.x;
        u_xlat10.z = x_956;
        let x_959 : f32 = u_xlat7.x;
        u_xlat10.w = x_959;
        let x_962 : f32 = u_xlat12.x;
        u_xlat11.z = x_962;
        let x_965 : f32 = u_xlat49.x;
        u_xlat11.w = x_965;
        let x_967 : vec4<f32> = u_xlat10;
        let x_969 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_967.z, x_967.w, x_967.x, x_967.z) + vec4<f32>(x_969.z, x_969.w, x_969.x, x_969.z));
        let x_973 : f32 = u_xlat10.y;
        u_xlat9.z = x_973;
        let x_976 : f32 = u_xlat7.y;
        u_xlat9.w = x_976;
        let x_979 : f32 = u_xlat11.y;
        u_xlat12.z = x_979;
        let x_982 : f32 = u_xlat49.y;
        u_xlat12.w = x_982;
        let x_984 : vec4<f32> = u_xlat9;
        let x_986 : vec4<f32> = u_xlat12;
        let x_988 : vec3<f32> = (vec3<f32>(x_984.z, x_984.y, x_984.w) + vec3<f32>(x_986.z, x_986.y, x_986.w));
        let x_989 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat11;
        let x_993 : vec4<f32> = u_xlat8;
        let x_995 : vec3<f32> = (vec3<f32>(x_991.x, x_991.z, x_991.w) / vec3<f32>(x_993.z, x_993.w, x_993.y));
        let x_996 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat9;
        let x_1003 : vec3<f32> = (vec3<f32>(x_998.x, x_998.y, x_998.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1004 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
        let x_1006 : vec4<f32> = u_xlat12;
        let x_1008 : vec4<f32> = u_xlat7;
        let x_1010 : vec3<f32> = (vec3<f32>(x_1006.z, x_1006.y, x_1006.w) / vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
        let x_1011 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat10;
        let x_1015 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1016 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat9;
        let x_1021 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1023 : vec3<f32> = (vec3<f32>(x_1018.y, x_1018.x, x_1018.z) * vec3<f32>(x_1021.x, x_1021.x, x_1021.x));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
        let x_1026 : vec4<f32> = u_xlat10;
        let x_1029 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1031 : vec3<f32> = (vec3<f32>(x_1026.x, x_1026.y, x_1026.z) * vec3<f32>(x_1029.y, x_1029.y, x_1029.y));
        let x_1032 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
        let x_1035 : f32 = u_xlat10.x;
        u_xlat9.w = x_1035;
        let x_1037 : vec3<f32> = u_xlat26;
        let x_1040 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1043 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1037.x, x_1037.y, x_1037.x, x_1037.y) * vec4<f32>(x_1040.x, x_1040.y, x_1040.x, x_1040.y)) + vec4<f32>(x_1043.y, x_1043.w, x_1043.x, x_1043.w));
        let x_1046 : vec3<f32> = u_xlat26;
        let x_1049 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1052 : vec4<f32> = u_xlat9;
        let x_1054 : vec2<f32> = ((vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1049.x, x_1049.y)) + vec2<f32>(x_1052.z, x_1052.w));
        let x_1055 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1058 : f32 = u_xlat9.y;
        u_xlat10.w = x_1058;
        let x_1060 : vec4<f32> = u_xlat10;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.y, x_1060.z);
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1061.x, x_1062.z, x_1061.y);
        let x_1065 : vec3<f32> = u_xlat26;
        let x_1068 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1065.x, x_1065.y, x_1065.x, x_1065.y) * vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y)) + vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1071.y));
        let x_1074 : vec3<f32> = u_xlat26;
        let x_1077 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y) * vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y)) + vec4<f32>(x_1080.w, x_1080.y, x_1080.w, x_1080.z));
        let x_1083 : vec3<f32> = u_xlat26;
        let x_1086 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y) * vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y)) + vec4<f32>(x_1089.x, x_1089.w, x_1089.z, x_1089.w));
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1093.x, x_1093.x, x_1093.x, x_1093.y) * vec4<f32>(x_1095.z, x_1095.w, x_1095.y, x_1095.z));
        let x_1099 : vec4<f32> = u_xlat7;
        let x_1101 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1099.y, x_1099.y, x_1099.z, x_1099.z) * x_1101);
        let x_1104 : f32 = u_xlat7.z;
        let x_1106 : f32 = u_xlat8.y;
        u_xlat26.x = (x_1104 * x_1106);
        let x_1110 : vec4<f32> = u_xlat11;
        let x_1111 : vec2<f32> = vec2<f32>(x_1110.x, x_1110.y);
        let x_1113 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1111.x, x_1111.y, x_1113);
        let x_1121 : vec3<f32> = txVec4;
        let x_1123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1121.xy, x_1121.z);
        u_xlat47 = x_1123;
        let x_1125 : vec4<f32> = u_xlat11;
        let x_1126 : vec2<f32> = vec2<f32>(x_1125.z, x_1125.w);
        let x_1128 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1126.x, x_1126.y, x_1128);
        let x_1136 : vec3<f32> = txVec5;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1136.xy, x_1136.z);
        u_xlat68 = x_1138;
        let x_1139 : f32 = u_xlat68;
        let x_1141 : f32 = u_xlat14.y;
        u_xlat68 = (x_1139 * x_1141);
        let x_1144 : f32 = u_xlat14.x;
        let x_1145 : f32 = u_xlat47;
        let x_1147 : f32 = u_xlat68;
        u_xlat47 = ((x_1144 * x_1145) + x_1147);
        let x_1150 : vec4<f32> = u_xlat12;
        let x_1151 : vec2<f32> = vec2<f32>(x_1150.x, x_1150.y);
        let x_1153 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1151.x, x_1151.y, x_1153);
        let x_1160 : vec3<f32> = txVec6;
        let x_1162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1160.xy, x_1160.z);
        u_xlat68 = x_1162;
        let x_1164 : f32 = u_xlat14.z;
        let x_1165 : f32 = u_xlat68;
        let x_1167 : f32 = u_xlat47;
        u_xlat47 = ((x_1164 * x_1165) + x_1167);
        let x_1170 : vec4<f32> = u_xlat10;
        let x_1171 : vec2<f32> = vec2<f32>(x_1170.x, x_1170.y);
        let x_1173 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1171.x, x_1171.y, x_1173);
        let x_1180 : vec3<f32> = txVec7;
        let x_1182 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1180.xy, x_1180.z);
        u_xlat68 = x_1182;
        let x_1184 : f32 = u_xlat14.w;
        let x_1185 : f32 = u_xlat68;
        let x_1187 : f32 = u_xlat47;
        u_xlat47 = ((x_1184 * x_1185) + x_1187);
        let x_1190 : vec4<f32> = u_xlat13;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.x, x_1190.y);
        let x_1193 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1200 : vec3<f32> = txVec8;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1200.xy, x_1200.z);
        u_xlat68 = x_1202;
        let x_1204 : f32 = u_xlat15.x;
        let x_1205 : f32 = u_xlat68;
        let x_1207 : f32 = u_xlat47;
        u_xlat47 = ((x_1204 * x_1205) + x_1207);
        let x_1210 : vec4<f32> = u_xlat13;
        let x_1211 : vec2<f32> = vec2<f32>(x_1210.z, x_1210.w);
        let x_1213 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1211.x, x_1211.y, x_1213);
        let x_1220 : vec3<f32> = txVec9;
        let x_1222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1220.xy, x_1220.z);
        u_xlat68 = x_1222;
        let x_1224 : f32 = u_xlat15.y;
        let x_1225 : f32 = u_xlat68;
        let x_1227 : f32 = u_xlat47;
        u_xlat47 = ((x_1224 * x_1225) + x_1227);
        let x_1230 : vec4<f32> = u_xlat10;
        let x_1231 : vec2<f32> = vec2<f32>(x_1230.z, x_1230.w);
        let x_1233 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec10;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1240.xy, x_1240.z);
        u_xlat68 = x_1242;
        let x_1244 : f32 = u_xlat15.z;
        let x_1245 : f32 = u_xlat68;
        let x_1247 : f32 = u_xlat47;
        u_xlat47 = ((x_1244 * x_1245) + x_1247);
        let x_1250 : vec4<f32> = u_xlat9;
        let x_1251 : vec2<f32> = vec2<f32>(x_1250.x, x_1250.y);
        let x_1253 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1251.x, x_1251.y, x_1253);
        let x_1260 : vec3<f32> = txVec11;
        let x_1262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1260.xy, x_1260.z);
        u_xlat68 = x_1262;
        let x_1264 : f32 = u_xlat15.w;
        let x_1265 : f32 = u_xlat68;
        let x_1267 : f32 = u_xlat47;
        u_xlat47 = ((x_1264 * x_1265) + x_1267);
        let x_1270 : vec4<f32> = u_xlat9;
        let x_1271 : vec2<f32> = vec2<f32>(x_1270.z, x_1270.w);
        let x_1273 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1271.x, x_1271.y, x_1273);
        let x_1280 : vec3<f32> = txVec12;
        let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1280.xy, x_1280.z);
        u_xlat68 = x_1282;
        let x_1284 : f32 = u_xlat26.x;
        let x_1285 : f32 = u_xlat68;
        let x_1287 : f32 = u_xlat47;
        u_xlat67 = ((x_1284 * x_1285) + x_1287);
      } else {
        let x_1290 : vec4<f32> = vs_INTERP8;
        let x_1293 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1296 : vec2<f32> = ((vec2<f32>(x_1290.x, x_1290.y) * vec2<f32>(x_1293.z, x_1293.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1297 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1296.x, x_1296.y, x_1297.z);
        let x_1299 : vec3<f32> = u_xlat26;
        let x_1301 : vec2<f32> = floor(vec2<f32>(x_1299.x, x_1299.y));
        let x_1302 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1301.x, x_1301.y, x_1302.z);
        let x_1304 : vec4<f32> = vs_INTERP8;
        let x_1307 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1310 : vec3<f32> = u_xlat26;
        let x_1313 : vec2<f32> = ((vec2<f32>(x_1304.x, x_1304.y) * vec2<f32>(x_1307.z, x_1307.w)) + -(vec2<f32>(x_1310.x, x_1310.y)));
        let x_1314 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1316 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1316.x, x_1316.x, x_1316.y, x_1316.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1319 : vec4<f32> = u_xlat8;
        let x_1321 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1319.x, x_1319.x, x_1319.z, x_1319.z) * vec4<f32>(x_1321.x, x_1321.x, x_1321.z, x_1321.z));
        let x_1324 : vec4<f32> = u_xlat9;
        let x_1328 : vec2<f32> = (vec2<f32>(x_1324.y, x_1324.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1329 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1329.x, x_1328.x, x_1329.z, x_1328.y);
        let x_1331 : vec4<f32> = u_xlat9;
        let x_1334 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1331.x, x_1331.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1334.x, x_1334.y)));
        let x_1338 : vec4<f32> = u_xlat7;
        let x_1341 : vec2<f32> = (-(vec2<f32>(x_1338.x, x_1338.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1342 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1341.x, x_1342.y, x_1341.y, x_1342.w);
        let x_1344 : vec4<f32> = u_xlat7;
        let x_1346 : vec2<f32> = min(vec2<f32>(x_1344.x, x_1344.y), vec2<f32>(0.0f, 0.0f));
        let x_1347 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1346.x, x_1346.y, x_1347.z, x_1347.w);
        let x_1349 : vec4<f32> = u_xlat9;
        let x_1352 : vec4<f32> = u_xlat9;
        let x_1355 : vec4<f32> = u_xlat8;
        let x_1357 : vec2<f32> = ((-(vec2<f32>(x_1349.x, x_1349.y)) * vec2<f32>(x_1352.x, x_1352.y)) + vec2<f32>(x_1355.x, x_1355.z));
        let x_1358 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1357.x, x_1358.y, x_1357.y, x_1358.w);
        let x_1360 : vec4<f32> = u_xlat7;
        let x_1362 : vec2<f32> = max(vec2<f32>(x_1360.x, x_1360.y), vec2<f32>(0.0f, 0.0f));
        let x_1363 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1362.x, x_1362.y, x_1363.z, x_1363.w);
        let x_1365 : vec4<f32> = u_xlat9;
        let x_1368 : vec4<f32> = u_xlat9;
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1373 : vec2<f32> = ((-(vec2<f32>(x_1365.x, x_1365.y)) * vec2<f32>(x_1368.x, x_1368.y)) + vec2<f32>(x_1371.y, x_1371.w));
        let x_1374 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1374.x, x_1373.x, x_1374.z, x_1373.y);
        let x_1376 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1376 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1380 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1380 * 0.081632003f);
        let x_1384 : vec2<f32> = u_xlat49;
        let x_1387 : vec2<f32> = (vec2<f32>(x_1384.y, x_1384.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1388 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1387.x, x_1387.y, x_1388.z, x_1388.w);
        let x_1390 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1390.x, x_1390.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1394 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1394 * 0.081632003f);
        let x_1398 : f32 = u_xlat11.y;
        u_xlat9.x = x_1398;
        let x_1400 : vec4<f32> = u_xlat7;
        let x_1407 : vec2<f32> = ((vec2<f32>(x_1400.x, x_1400.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1408 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1408.x, x_1407.x, x_1408.z, x_1407.y);
        let x_1410 : vec4<f32> = u_xlat7;
        let x_1414 : vec2<f32> = ((vec2<f32>(x_1410.x, x_1410.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1415 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1414.x, x_1415.y, x_1414.y, x_1415.w);
        let x_1418 : f32 = u_xlat49.x;
        u_xlat8.y = x_1418;
        let x_1421 : f32 = u_xlat10.y;
        u_xlat8.w = x_1421;
        let x_1423 : vec4<f32> = u_xlat8;
        let x_1424 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1423 + x_1424);
        let x_1426 : vec4<f32> = u_xlat7;
        let x_1429 : vec2<f32> = ((vec2<f32>(x_1426.y, x_1426.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1430 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1430.x, x_1429.x, x_1430.z, x_1429.y);
        let x_1432 : vec4<f32> = u_xlat7;
        let x_1435 : vec2<f32> = ((vec2<f32>(x_1432.y, x_1432.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1436 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1435.x, x_1436.y, x_1435.y, x_1436.w);
        let x_1439 : f32 = u_xlat49.y;
        u_xlat10.y = x_1439;
        let x_1441 : vec4<f32> = u_xlat10;
        let x_1442 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1441 + x_1442);
        let x_1444 : vec4<f32> = u_xlat8;
        let x_1445 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1444 / x_1445);
        let x_1447 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1447 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1453 : vec4<f32> = u_xlat10;
        let x_1454 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1453 / x_1454);
        let x_1456 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1456 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1458 : vec4<f32> = u_xlat8;
        let x_1461 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1458.w, x_1458.x, x_1458.y, x_1458.z) * vec4<f32>(x_1461.x, x_1461.x, x_1461.x, x_1461.x));
        let x_1464 : vec4<f32> = u_xlat10;
        let x_1467 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1464.x, x_1464.w, x_1464.y, x_1464.z) * vec4<f32>(x_1467.y, x_1467.y, x_1467.y, x_1467.y));
        let x_1470 : vec4<f32> = u_xlat8;
        let x_1471 : vec3<f32> = vec3<f32>(x_1470.y, x_1470.z, x_1470.w);
        let x_1472 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1471.x, x_1472.y, x_1471.y, x_1471.z);
        let x_1475 : f32 = u_xlat10.x;
        u_xlat11.y = x_1475;
        let x_1477 : vec3<f32> = u_xlat26;
        let x_1480 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1483 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1477.x, x_1477.y, x_1477.x, x_1477.y) * vec4<f32>(x_1480.x, x_1480.y, x_1480.x, x_1480.y)) + vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1483.y));
        let x_1486 : vec3<f32> = u_xlat26;
        let x_1489 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat11;
        let x_1494 : vec2<f32> = ((vec2<f32>(x_1486.x, x_1486.y) * vec2<f32>(x_1489.x, x_1489.y)) + vec2<f32>(x_1492.w, x_1492.y));
        let x_1495 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1494.x, x_1494.y, x_1495.z, x_1495.w);
        let x_1498 : f32 = u_xlat11.y;
        u_xlat8.y = x_1498;
        let x_1501 : f32 = u_xlat10.z;
        u_xlat11.y = x_1501;
        let x_1503 : vec3<f32> = u_xlat26;
        let x_1506 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1509 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1503.x, x_1503.y, x_1503.x, x_1503.y) * vec4<f32>(x_1506.x, x_1506.y, x_1506.x, x_1506.y)) + vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1509.y));
        let x_1513 : vec3<f32> = u_xlat26;
        let x_1516 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1519 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1513.x, x_1513.y) * vec2<f32>(x_1516.x, x_1516.y)) + vec2<f32>(x_1519.w, x_1519.y));
        let x_1523 : f32 = u_xlat11.y;
        u_xlat8.z = x_1523;
        let x_1525 : vec3<f32> = u_xlat26;
        let x_1528 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1531 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.y) * vec4<f32>(x_1528.x, x_1528.y, x_1528.x, x_1528.y)) + vec4<f32>(x_1531.x, x_1531.y, x_1531.x, x_1531.z));
        let x_1535 : f32 = u_xlat10.w;
        u_xlat11.y = x_1535;
        let x_1538 : vec3<f32> = u_xlat26;
        let x_1541 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1544 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1538.x, x_1538.y, x_1538.x, x_1538.y) * vec4<f32>(x_1541.x, x_1541.y, x_1541.x, x_1541.y)) + vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1544.y));
        let x_1548 : vec3<f32> = u_xlat26;
        let x_1551 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1554 : vec4<f32> = u_xlat11;
        let x_1556 : vec2<f32> = ((vec2<f32>(x_1548.x, x_1548.y) * vec2<f32>(x_1551.x, x_1551.y)) + vec2<f32>(x_1554.w, x_1554.y));
        let x_1557 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1556.x, x_1556.y, x_1557.z);
        let x_1560 : f32 = u_xlat11.y;
        u_xlat8.w = x_1560;
        let x_1563 : vec3<f32> = u_xlat26;
        let x_1566 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1569 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1563.x, x_1563.y) * vec2<f32>(x_1566.x, x_1566.y)) + vec2<f32>(x_1569.x, x_1569.w));
        let x_1572 : vec4<f32> = u_xlat11;
        let x_1573 : vec3<f32> = vec3<f32>(x_1572.x, x_1572.z, x_1572.w);
        let x_1574 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1573.x, x_1574.y, x_1573.y, x_1573.z);
        let x_1576 : vec3<f32> = u_xlat26;
        let x_1579 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1582 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1576.x, x_1576.y, x_1576.x, x_1576.y) * vec4<f32>(x_1579.x, x_1579.y, x_1579.x, x_1579.y)) + vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1582.y));
        let x_1586 : vec3<f32> = u_xlat26;
        let x_1589 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1592 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(x_1589.x, x_1589.y)) + vec2<f32>(x_1592.w, x_1592.y));
        let x_1596 : f32 = u_xlat8.x;
        u_xlat10.x = x_1596;
        let x_1598 : vec3<f32> = u_xlat26;
        let x_1601 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1604 : vec4<f32> = u_xlat10;
        let x_1606 : vec2<f32> = ((vec2<f32>(x_1598.x, x_1598.y) * vec2<f32>(x_1601.x, x_1601.y)) + vec2<f32>(x_1604.x, x_1604.y));
        let x_1607 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1606.x, x_1606.y, x_1607.z);
        let x_1610 : vec4<f32> = u_xlat7;
        let x_1612 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1610.x, x_1610.x, x_1610.x, x_1610.x) * x_1612);
        let x_1615 : vec4<f32> = u_xlat7;
        let x_1617 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1615.y, x_1615.y, x_1615.y, x_1615.y) * x_1617);
        let x_1620 : vec4<f32> = u_xlat7;
        let x_1622 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1620.z, x_1620.z, x_1620.z, x_1620.z) * x_1622);
        let x_1624 : vec4<f32> = u_xlat7;
        let x_1626 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1624.w, x_1624.w, x_1624.w, x_1624.w) * x_1626);
        let x_1629 : vec4<f32> = u_xlat12;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec13;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1639.xy, x_1639.z);
        u_xlat68 = x_1641;
        let x_1643 : vec4<f32> = u_xlat12;
        let x_1644 : vec2<f32> = vec2<f32>(x_1643.z, x_1643.w);
        let x_1646 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
        let x_1654 : vec3<f32> = txVec14;
        let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1654.xy, x_1654.z);
        u_xlat69 = x_1656;
        let x_1657 : f32 = u_xlat69;
        let x_1659 : f32 = u_xlat18.y;
        u_xlat69 = (x_1657 * x_1659);
        let x_1662 : f32 = u_xlat18.x;
        let x_1663 : f32 = u_xlat68;
        let x_1665 : f32 = u_xlat69;
        u_xlat68 = ((x_1662 * x_1663) + x_1665);
        let x_1668 : vec4<f32> = u_xlat13;
        let x_1669 : vec2<f32> = vec2<f32>(x_1668.x, x_1668.y);
        let x_1671 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
        let x_1678 : vec3<f32> = txVec15;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1678.xy, x_1678.z);
        u_xlat69 = x_1680;
        let x_1682 : f32 = u_xlat18.z;
        let x_1683 : f32 = u_xlat69;
        let x_1685 : f32 = u_xlat68;
        u_xlat68 = ((x_1682 * x_1683) + x_1685);
        let x_1688 : vec4<f32> = u_xlat15;
        let x_1689 : vec2<f32> = vec2<f32>(x_1688.x, x_1688.y);
        let x_1691 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1689.x, x_1689.y, x_1691);
        let x_1698 : vec3<f32> = txVec16;
        let x_1700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1698.xy, x_1698.z);
        u_xlat69 = x_1700;
        let x_1702 : f32 = u_xlat18.w;
        let x_1703 : f32 = u_xlat69;
        let x_1705 : f32 = u_xlat68;
        u_xlat68 = ((x_1702 * x_1703) + x_1705);
        let x_1708 : vec4<f32> = u_xlat14;
        let x_1709 : vec2<f32> = vec2<f32>(x_1708.x, x_1708.y);
        let x_1711 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1709.x, x_1709.y, x_1711);
        let x_1718 : vec3<f32> = txVec17;
        let x_1720 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1718.xy, x_1718.z);
        u_xlat69 = x_1720;
        let x_1722 : f32 = u_xlat19.x;
        let x_1723 : f32 = u_xlat69;
        let x_1725 : f32 = u_xlat68;
        u_xlat68 = ((x_1722 * x_1723) + x_1725);
        let x_1728 : vec4<f32> = u_xlat14;
        let x_1729 : vec2<f32> = vec2<f32>(x_1728.z, x_1728.w);
        let x_1731 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
        let x_1738 : vec3<f32> = txVec18;
        let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1738.xy, x_1738.z);
        u_xlat69 = x_1740;
        let x_1742 : f32 = u_xlat19.y;
        let x_1743 : f32 = u_xlat69;
        let x_1745 : f32 = u_xlat68;
        u_xlat68 = ((x_1742 * x_1743) + x_1745);
        let x_1748 : vec2<f32> = u_xlat55;
        let x_1750 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1748.x, x_1748.y, x_1750);
        let x_1757 : vec3<f32> = txVec19;
        let x_1759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1757.xy, x_1757.z);
        u_xlat69 = x_1759;
        let x_1761 : f32 = u_xlat19.z;
        let x_1762 : f32 = u_xlat69;
        let x_1764 : f32 = u_xlat68;
        u_xlat68 = ((x_1761 * x_1762) + x_1764);
        let x_1767 : vec4<f32> = u_xlat15;
        let x_1768 : vec2<f32> = vec2<f32>(x_1767.z, x_1767.w);
        let x_1770 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1768.x, x_1768.y, x_1770);
        let x_1777 : vec3<f32> = txVec20;
        let x_1779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1777.xy, x_1777.z);
        u_xlat69 = x_1779;
        let x_1781 : f32 = u_xlat19.w;
        let x_1782 : f32 = u_xlat69;
        let x_1784 : f32 = u_xlat68;
        u_xlat68 = ((x_1781 * x_1782) + x_1784);
        let x_1787 : vec4<f32> = u_xlat16;
        let x_1788 : vec2<f32> = vec2<f32>(x_1787.x, x_1787.y);
        let x_1790 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1788.x, x_1788.y, x_1790);
        let x_1797 : vec3<f32> = txVec21;
        let x_1799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1797.xy, x_1797.z);
        u_xlat69 = x_1799;
        let x_1801 : f32 = u_xlat20.x;
        let x_1802 : f32 = u_xlat69;
        let x_1804 : f32 = u_xlat68;
        u_xlat68 = ((x_1801 * x_1802) + x_1804);
        let x_1807 : vec4<f32> = u_xlat16;
        let x_1808 : vec2<f32> = vec2<f32>(x_1807.z, x_1807.w);
        let x_1810 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec22;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1817.xy, x_1817.z);
        u_xlat69 = x_1819;
        let x_1821 : f32 = u_xlat20.y;
        let x_1822 : f32 = u_xlat69;
        let x_1824 : f32 = u_xlat68;
        u_xlat68 = ((x_1821 * x_1822) + x_1824);
        let x_1827 : vec3<f32> = u_xlat29;
        let x_1828 : vec2<f32> = vec2<f32>(x_1827.x, x_1827.y);
        let x_1830 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1828.x, x_1828.y, x_1830);
        let x_1837 : vec3<f32> = txVec23;
        let x_1839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1837.xy, x_1837.z);
        u_xlat69 = x_1839;
        let x_1841 : f32 = u_xlat20.z;
        let x_1842 : f32 = u_xlat69;
        let x_1844 : f32 = u_xlat68;
        u_xlat68 = ((x_1841 * x_1842) + x_1844);
        let x_1847 : vec2<f32> = u_xlat17;
        let x_1849 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1847.x, x_1847.y, x_1849);
        let x_1856 : vec3<f32> = txVec24;
        let x_1858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1856.xy, x_1856.z);
        u_xlat69 = x_1858;
        let x_1860 : f32 = u_xlat20.w;
        let x_1861 : f32 = u_xlat69;
        let x_1863 : f32 = u_xlat68;
        u_xlat68 = ((x_1860 * x_1861) + x_1863);
        let x_1866 : vec4<f32> = u_xlat11;
        let x_1867 : vec2<f32> = vec2<f32>(x_1866.x, x_1866.y);
        let x_1869 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1867.x, x_1867.y, x_1869);
        let x_1876 : vec3<f32> = txVec25;
        let x_1878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1876.xy, x_1876.z);
        u_xlat69 = x_1878;
        let x_1880 : f32 = u_xlat7.x;
        let x_1881 : f32 = u_xlat69;
        let x_1883 : f32 = u_xlat68;
        u_xlat68 = ((x_1880 * x_1881) + x_1883);
        let x_1886 : vec4<f32> = u_xlat11;
        let x_1887 : vec2<f32> = vec2<f32>(x_1886.z, x_1886.w);
        let x_1889 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1887.x, x_1887.y, x_1889);
        let x_1896 : vec3<f32> = txVec26;
        let x_1898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1896.xy, x_1896.z);
        u_xlat69 = x_1898;
        let x_1900 : f32 = u_xlat7.y;
        let x_1901 : f32 = u_xlat69;
        let x_1903 : f32 = u_xlat68;
        u_xlat68 = ((x_1900 * x_1901) + x_1903);
        let x_1906 : vec2<f32> = u_xlat52;
        let x_1908 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec27;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1915.xy, x_1915.z);
        u_xlat69 = x_1917;
        let x_1919 : f32 = u_xlat7.z;
        let x_1920 : f32 = u_xlat69;
        let x_1922 : f32 = u_xlat68;
        u_xlat68 = ((x_1919 * x_1920) + x_1922);
        let x_1925 : vec3<f32> = u_xlat26;
        let x_1926 : vec2<f32> = vec2<f32>(x_1925.x, x_1925.y);
        let x_1928 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1926.x, x_1926.y, x_1928);
        let x_1935 : vec3<f32> = txVec28;
        let x_1937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1935.xy, x_1935.z);
        u_xlat26.x = x_1937;
        let x_1940 : f32 = u_xlat7.w;
        let x_1942 : f32 = u_xlat26.x;
        let x_1944 : f32 = u_xlat68;
        u_xlat67 = ((x_1940 * x_1942) + x_1944);
      }
    }
  } else {
    let x_1948 : vec4<f32> = vs_INTERP8;
    let x_1949 : vec2<f32> = vec2<f32>(x_1948.x, x_1948.y);
    let x_1951 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1949.x, x_1949.y, x_1951);
    let x_1958 : vec3<f32> = txVec29;
    let x_1960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1958.xy, x_1958.z);
    u_xlat67 = x_1960;
  }
  let x_1962 : f32 = x_727.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1962) + 1.0f);
  let x_1966 : f32 = u_xlat67;
  let x_1968 : f32 = x_727.x_MainLightShadowParams.x;
  let x_1971 : f32 = u_xlat26.x;
  u_xlat67 = ((x_1966 * x_1968) + x_1971);
  let x_1974 : f32 = vs_INTERP8.z;
  u_xlatb26.x = (0.0f >= x_1974);
  let x_1979 : f32 = vs_INTERP8.z;
  u_xlatb47 = (x_1979 >= 1.0f);
  let x_1981 : bool = u_xlatb47;
  let x_1983 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_1981 | x_1983);
  let x_1987 : bool = u_xlatb26.x;
  let x_1988 : f32 = u_xlat67;
  u_xlat67 = select(x_1988, 1.0f, x_1987);
  let x_1990 : vec3<f32> = vs_INTERP0;
  let x_1992 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1990 + -(x_1992));
  let x_1995 : vec3<f32> = u_xlat26;
  let x_1996 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1995, x_1996);
  let x_2000 : f32 = u_xlat26.x;
  let x_2002 : f32 = x_727.x_MainLightShadowParams.z;
  let x_2005 : f32 = x_727.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_2000 * x_2002) + x_2005);
  let x_2009 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2009, 0.0f, 1.0f);
  let x_2012 : f32 = u_xlat67;
  u_xlat47 = (-(x_2012) + 1.0f);
  let x_2016 : f32 = u_xlat26.x;
  let x_2017 : f32 = u_xlat47;
  let x_2019 : f32 = u_xlat67;
  u_xlat67 = ((x_2016 * x_2017) + x_2019);
  let x_2027 : f32 = x_2025.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_2027 == -1.0f));
  let x_2031 : bool = u_xlatb26.x;
  if (x_2031) {
    let x_2034 : vec3<f32> = vs_INTERP0;
    let x_2037 : vec4<f32> = x_2025.x_MainLightWorldToLight[1i];
    let x_2039 : vec2<f32> = (vec2<f32>(x_2034.y, x_2034.y) * vec2<f32>(x_2037.x, x_2037.y));
    let x_2040 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2039.x, x_2039.y, x_2040.z);
    let x_2043 : vec4<f32> = x_2025.x_MainLightWorldToLight[0i];
    let x_2045 : vec3<f32> = vs_INTERP0;
    let x_2048 : vec3<f32> = u_xlat26;
    let x_2050 : vec2<f32> = ((vec2<f32>(x_2043.x, x_2043.y) * vec2<f32>(x_2045.x, x_2045.x)) + vec2<f32>(x_2048.x, x_2048.y));
    let x_2051 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2050.x, x_2050.y, x_2051.z);
    let x_2054 : vec4<f32> = x_2025.x_MainLightWorldToLight[2i];
    let x_2056 : vec3<f32> = vs_INTERP0;
    let x_2059 : vec3<f32> = u_xlat26;
    let x_2061 : vec2<f32> = ((vec2<f32>(x_2054.x, x_2054.y) * vec2<f32>(x_2056.z, x_2056.z)) + vec2<f32>(x_2059.x, x_2059.y));
    let x_2062 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2061.x, x_2061.y, x_2062.z);
    let x_2064 : vec3<f32> = u_xlat26;
    let x_2067 : vec4<f32> = x_2025.x_MainLightWorldToLight[3i];
    let x_2069 : vec2<f32> = (vec2<f32>(x_2064.x, x_2064.y) + vec2<f32>(x_2067.x, x_2067.y));
    let x_2070 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2069.x, x_2069.y, x_2070.z);
    let x_2072 : vec3<f32> = u_xlat26;
    let x_2075 : vec2<f32> = ((vec2<f32>(x_2072.x, x_2072.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2076 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2075.x, x_2075.y, x_2076.z);
    let x_2083 : vec3<f32> = u_xlat26;
    let x_2086 : f32 = x_44.x_GlobalMipBias.x;
    let x_2087 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2083.x, x_2083.y), x_2086);
    u_xlat7 = x_2087;
    let x_2089 : f32 = x_2025.x_MainLightCookieTextureFormat;
    let x_2091 : f32 = x_2025.x_MainLightCookieTextureFormat;
    let x_2093 : f32 = x_2025.x_MainLightCookieTextureFormat;
    let x_2095 : f32 = x_2025.x_MainLightCookieTextureFormat;
    let x_2096 : vec4<f32> = vec4<f32>(x_2089, x_2091, x_2093, x_2095);
    let x_2104 : vec4<bool> = (vec4<f32>(x_2096.x, x_2096.y, x_2096.z, x_2096.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_2104.x, x_2104.y);
    let x_2107 : bool = u_xlatb26.y;
    if (x_2107) {
      let x_2112 : f32 = u_xlat7.w;
      x_2108 = x_2112;
    } else {
      let x_2115 : f32 = u_xlat7.x;
      x_2108 = x_2115;
    }
    let x_2116 : f32 = x_2108;
    u_xlat47 = x_2116;
    let x_2118 : bool = u_xlatb26.x;
    if (x_2118) {
      let x_2122 : vec4<f32> = u_xlat7;
      x_2119 = vec3<f32>(x_2122.x, x_2122.y, x_2122.z);
    } else {
      let x_2125 : f32 = u_xlat47;
      x_2119 = vec3<f32>(x_2125, x_2125, x_2125);
    }
    let x_2127 : vec3<f32> = x_2119;
    u_xlat26 = x_2127;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_2132 : vec3<f32> = u_xlat26;
  let x_2134 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (x_2132 * vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
  let x_2137 : vec3<f32> = u_xlat5;
  let x_2139 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2137.x, x_2137.x, x_2137.x) * x_2139);
  let x_2141 : vec4<f32> = u_xlat3;
  let x_2144 : vec4<f32> = u_xlat1;
  u_xlat69 = dot(-(vec3<f32>(x_2141.x, x_2141.y, x_2141.z)), vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
  let x_2147 : f32 = u_xlat69;
  let x_2148 : f32 = u_xlat69;
  u_xlat69 = (x_2147 + x_2148);
  let x_2150 : vec4<f32> = u_xlat1;
  let x_2152 : f32 = u_xlat69;
  let x_2156 : vec4<f32> = u_xlat3;
  let x_2159 : vec3<f32> = ((vec3<f32>(x_2150.x, x_2150.y, x_2150.z) * -(vec3<f32>(x_2152, x_2152, x_2152))) + -(vec3<f32>(x_2156.x, x_2156.y, x_2156.z)));
  let x_2160 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
  let x_2162 : vec4<f32> = u_xlat1;
  let x_2164 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_2162.x, x_2162.y, x_2162.z), vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
  let x_2167 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2167, 0.0f, 1.0f);
  let x_2169 : f32 = u_xlat69;
  u_xlat69 = (-(x_2169) + 1.0f);
  let x_2172 : f32 = u_xlat69;
  let x_2173 : f32 = u_xlat69;
  u_xlat69 = (x_2172 * x_2173);
  let x_2175 : f32 = u_xlat69;
  let x_2176 : f32 = u_xlat69;
  u_xlat69 = (x_2175 * x_2176);
  let x_2179 : f32 = u_xlat64;
  u_xlat70 = ((-(x_2179) * 0.699999988f) + 1.700000048f);
  let x_2185 : f32 = u_xlat64;
  let x_2186 : f32 = u_xlat70;
  u_xlat64 = (x_2185 * x_2186);
  let x_2188 : f32 = u_xlat64;
  u_xlat64 = (x_2188 * 6.0f);
  let x_2198 : vec4<f32> = u_xlat7;
  let x_2200 : f32 = u_xlat64;
  let x_2201 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2198.x, x_2198.y, x_2198.z), x_2200);
  u_xlat7 = x_2201;
  let x_2203 : f32 = u_xlat7.w;
  u_xlat64 = (x_2203 + -1.0f);
  let x_2206 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2207 : f32 = u_xlat64;
  u_xlat64 = ((x_2206 * x_2207) + 1.0f);
  let x_2210 : f32 = u_xlat64;
  u_xlat64 = max(x_2210, 0.0f);
  let x_2212 : f32 = u_xlat64;
  u_xlat64 = log2(x_2212);
  let x_2214 : f32 = u_xlat64;
  let x_2216 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat64 = (x_2214 * x_2216);
  let x_2218 : f32 = u_xlat64;
  u_xlat64 = exp2(x_2218);
  let x_2220 : f32 = u_xlat64;
  let x_2222 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat64 = (x_2220 * x_2222);
  let x_2224 : vec4<f32> = u_xlat7;
  let x_2226 : f32 = u_xlat64;
  let x_2228 : vec3<f32> = (vec3<f32>(x_2224.x, x_2224.y, x_2224.z) * vec3<f32>(x_2226, x_2226, x_2226));
  let x_2229 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
  let x_2231 : vec4<f32> = u_xlat2;
  let x_2233 : vec4<f32> = u_xlat2;
  let x_2237 : vec2<f32> = ((vec2<f32>(x_2231.x, x_2231.x) * vec2<f32>(x_2233.x, x_2233.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2238 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2237.x, x_2237.y, x_2238.z, x_2238.w);
  let x_2241 : f32 = u_xlat8.y;
  u_xlat64 = (1.0f / x_2241);
  let x_2243 : vec4<f32> = u_xlat0;
  let x_2246 : f32 = u_xlat65;
  u_xlat29 = (-(vec3<f32>(x_2243.x, x_2243.y, x_2243.z)) + vec3<f32>(x_2246, x_2246, x_2246));
  let x_2249 : f32 = u_xlat69;
  let x_2251 : vec3<f32> = u_xlat29;
  let x_2253 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2249, x_2249, x_2249) * x_2251) + vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
  let x_2256 : f32 = u_xlat64;
  let x_2258 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2256, x_2256, x_2256) * x_2258);
  let x_2260 : vec4<f32> = u_xlat7;
  let x_2262 : vec3<f32> = u_xlat29;
  let x_2263 : vec3<f32> = (vec3<f32>(x_2260.x, x_2260.y, x_2260.z) * x_2262);
  let x_2264 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
  let x_2266 : vec4<f32> = u_xlat4;
  let x_2268 : vec3<f32> = u_xlat6;
  let x_2270 : vec4<f32> = u_xlat7;
  let x_2272 : vec3<f32> = ((vec3<f32>(x_2266.x, x_2266.y, x_2266.z) * x_2268) + vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
  let x_2273 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
  let x_2275 : f32 = u_xlat67;
  let x_2278 : f32 = x_359.unity_LightData.z;
  u_xlat64 = (x_2275 * x_2278);
  let x_2280 : vec4<f32> = u_xlat1;
  let x_2283 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2280.x, x_2280.y, x_2280.z), vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
  let x_2288 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2288, 0.0f, 1.0f);
  let x_2291 : f32 = u_xlat64;
  let x_2293 : f32 = u_xlat2.x;
  u_xlat64 = (x_2291 * x_2293);
  let x_2295 : f32 = u_xlat64;
  let x_2297 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2295, x_2295, x_2295) * x_2297);
  let x_2299 : vec4<f32> = u_xlat3;
  let x_2302 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2304 : vec3<f32> = (vec3<f32>(x_2299.x, x_2299.y, x_2299.z) + vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
  let x_2305 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
  let x_2307 : vec4<f32> = u_xlat7;
  let x_2309 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2307.x, x_2307.y, x_2307.z), vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
  let x_2312 : f32 = u_xlat64;
  u_xlat64 = max(x_2312, 1.17549435e-37f);
  let x_2315 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_2315);
  let x_2317 : f32 = u_xlat64;
  let x_2319 : vec4<f32> = u_xlat7;
  let x_2321 : vec3<f32> = (vec3<f32>(x_2317, x_2317, x_2317) * vec3<f32>(x_2319.x, x_2319.y, x_2319.z));
  let x_2322 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2322.w);
  let x_2324 : vec4<f32> = u_xlat1;
  let x_2326 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2324.x, x_2324.y, x_2324.z), vec3<f32>(x_2326.x, x_2326.y, x_2326.z));
  let x_2329 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2329, 0.0f, 1.0f);
  let x_2332 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2334 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_2332.x, x_2332.y, x_2332.z), vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
  let x_2339 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2339, 0.0f, 1.0f);
  let x_2342 : f32 = u_xlat64;
  let x_2343 : f32 = u_xlat64;
  u_xlat64 = (x_2342 * x_2343);
  let x_2345 : f32 = u_xlat64;
  let x_2347 : f32 = u_xlat8.x;
  u_xlat64 = ((x_2345 * x_2347) + 1.000010014f);
  let x_2352 : f32 = u_xlat2.x;
  let x_2354 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2352 * x_2354);
  let x_2357 : f32 = u_xlat64;
  let x_2358 : f32 = u_xlat64;
  u_xlat64 = (x_2357 * x_2358);
  let x_2361 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2361, 0.100000001f);
  let x_2365 : f32 = u_xlat64;
  let x_2367 : f32 = u_xlat2.x;
  u_xlat64 = (x_2365 * x_2367);
  let x_2369 : f32 = u_xlat66;
  let x_2370 : f32 = u_xlat64;
  u_xlat64 = (x_2369 * x_2370);
  let x_2372 : f32 = u_xlat23;
  let x_2373 : f32 = u_xlat64;
  u_xlat64 = (x_2372 / x_2373);
  let x_2375 : vec4<f32> = u_xlat0;
  let x_2377 : f32 = u_xlat64;
  let x_2380 : vec3<f32> = u_xlat6;
  let x_2381 : vec3<f32> = ((vec3<f32>(x_2375.x, x_2375.y, x_2375.z) * vec3<f32>(x_2377, x_2377, x_2377)) + x_2380);
  let x_2382 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
  let x_2384 : vec3<f32> = u_xlat26;
  let x_2385 : vec4<f32> = u_xlat7;
  u_xlat26 = (x_2384 * vec3<f32>(x_2385.x, x_2385.y, x_2385.z));
  let x_2389 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2391 : f32 = x_359.unity_LightData.y;
  u_xlat64 = min(x_2389, x_2391);
  let x_2395 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_2395));
  let x_2401 : f32 = x_2025.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2403 : f32 = x_2025.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2405 : f32 = x_2025.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2407 : f32 = x_2025.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2408 : vec4<f32> = vec4<f32>(x_2401, x_2403, x_2405, x_2407);
  let x_2415 : vec4<bool> = (vec4<f32>(x_2408.x, x_2408.y, x_2408.z, x_2408.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2416 : vec2<bool> = vec2<bool>(x_2415.x, x_2415.w);
  let x_2417 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2416.x, x_2417.y, x_2417.z, x_2416.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2428 : u32 = u_xlatu_loop_1;
    let x_2429 : u32 = u_xlatu64;
    if ((x_2428 < x_2429)) {
    } else {
      break;
    }
    let x_2432 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2432 >> 2u);
    let x_2436 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2436 & 3u));
    let x_2439 : u32 = u_xlatu69;
    let x_2442 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2439)];
    let x_2452 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2457 : vec4<u32> = indexable[x_2452];
    u_xlat69 = dot(x_2442, bitcast<vec4<f32>>(x_2457));
    let x_2460 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2460));
    let x_2463 : vec3<f32> = vs_INTERP0;
    let x_2475 : u32 = u_xlatu69;
    let x_2478 : vec4<f32> = x_2474.x_AdditionalLightsPosition[bitcast<i32>(x_2475)];
    let x_2481 : u32 = u_xlatu69;
    let x_2484 : vec4<f32> = x_2474.x_AdditionalLightsPosition[bitcast<i32>(x_2481)];
    u_xlat29 = ((-(x_2463) * vec3<f32>(x_2478.w, x_2478.w, x_2478.w)) + vec3<f32>(x_2484.x, x_2484.y, x_2484.z));
    let x_2487 : vec3<f32> = u_xlat29;
    let x_2488 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_2487, x_2488);
    let x_2490 : f32 = u_xlat70;
    u_xlat70 = max(x_2490, 6.10351562e-05f);
    let x_2493 : f32 = u_xlat70;
    u_xlat9.x = inverseSqrt(x_2493);
    let x_2497 : vec3<f32> = u_xlat29;
    let x_2498 : vec4<f32> = u_xlat9;
    u_xlat30 = (x_2497 * vec3<f32>(x_2498.x, x_2498.x, x_2498.x));
    let x_2501 : f32 = u_xlat70;
    u_xlat10.x = (1.0f / x_2501);
    let x_2504 : f32 = u_xlat70;
    let x_2505 : u32 = u_xlatu69;
    let x_2508 : f32 = x_2474.x_AdditionalLightsAttenuation[bitcast<i32>(x_2505)].x;
    u_xlat70 = (x_2504 * x_2508);
    let x_2510 : f32 = u_xlat70;
    let x_2512 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2510) * x_2512) + 1.0f);
    let x_2515 : f32 = u_xlat70;
    u_xlat70 = max(x_2515, 0.0f);
    let x_2517 : f32 = u_xlat70;
    let x_2518 : f32 = u_xlat70;
    u_xlat70 = (x_2517 * x_2518);
    let x_2520 : f32 = u_xlat70;
    let x_2522 : f32 = u_xlat10.x;
    u_xlat70 = (x_2520 * x_2522);
    let x_2524 : u32 = u_xlatu69;
    let x_2527 : vec4<f32> = x_2474.x_AdditionalLightsSpotDir[bitcast<i32>(x_2524)];
    let x_2529 : vec3<f32> = u_xlat30;
    u_xlat10.x = dot(vec3<f32>(x_2527.x, x_2527.y, x_2527.z), x_2529);
    let x_2533 : f32 = u_xlat10.x;
    let x_2534 : u32 = u_xlatu69;
    let x_2537 : f32 = x_2474.x_AdditionalLightsAttenuation[bitcast<i32>(x_2534)].z;
    let x_2539 : u32 = u_xlatu69;
    let x_2542 : f32 = x_2474.x_AdditionalLightsAttenuation[bitcast<i32>(x_2539)].w;
    u_xlat10.x = ((x_2533 * x_2537) + x_2542);
    let x_2546 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2546, 0.0f, 1.0f);
    let x_2550 : f32 = u_xlat10.x;
    let x_2552 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2550 * x_2552);
    let x_2555 : f32 = u_xlat70;
    let x_2557 : f32 = u_xlat10.x;
    u_xlat70 = (x_2555 * x_2557);
    let x_2560 : u32 = u_xlatu69;
    u_xlatu10 = (x_2560 >> 5u);
    let x_2563 : u32 = u_xlatu69;
    u_xlati31 = (1i << bitcast<u32>((bitcast<i32>(x_2563) & 31i)));
    let x_2569 : i32 = u_xlati31;
    let x_2571 : u32 = u_xlatu10;
    let x_2574 : f32 = x_2025.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2571)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_2569) & bitcast<u32>(x_2574)));
    let x_2578 : i32 = u_xlati10;
    if ((x_2578 != 0i)) {
      let x_2588 : u32 = u_xlatu69;
      let x_2591 : f32 = x_2587.x_AdditionalLightsLightTypes[bitcast<i32>(x_2588)].el;
      u_xlati10 = i32(x_2591);
      let x_2593 : i32 = u_xlati10;
      u_xlati31 = select(1i, 0i, (x_2593 != 0i));
      let x_2597 : u32 = u_xlatu69;
      u_xlati52 = (bitcast<i32>(x_2597) << bitcast<u32>(2i));
      let x_2600 : i32 = u_xlati31;
      if ((x_2600 != 0i)) {
        let x_2604 : vec3<f32> = vs_INTERP0;
        let x_2606 : i32 = u_xlati52;
        let x_2609 : i32 = u_xlati52;
        let x_2613 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[((x_2606 + 1i) / 4i)][((x_2609 + 1i) % 4i)];
        let x_2615 : vec3<f32> = (vec3<f32>(x_2604.y, x_2604.y, x_2604.y) * vec3<f32>(x_2613.x, x_2613.y, x_2613.w));
        let x_2616 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
        let x_2618 : i32 = u_xlati52;
        let x_2620 : i32 = u_xlati52;
        let x_2623 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[(x_2618 / 4i)][(x_2620 % 4i)];
        let x_2625 : vec3<f32> = vs_INTERP0;
        let x_2628 : vec4<f32> = u_xlat11;
        let x_2630 : vec3<f32> = ((vec3<f32>(x_2623.x, x_2623.y, x_2623.w) * vec3<f32>(x_2625.x, x_2625.x, x_2625.x)) + vec3<f32>(x_2628.x, x_2628.y, x_2628.z));
        let x_2631 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2630.x, x_2630.y, x_2630.z, x_2631.w);
        let x_2633 : i32 = u_xlati52;
        let x_2636 : i32 = u_xlati52;
        let x_2640 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[((x_2633 + 2i) / 4i)][((x_2636 + 2i) % 4i)];
        let x_2642 : vec3<f32> = vs_INTERP0;
        let x_2645 : vec4<f32> = u_xlat11;
        let x_2647 : vec3<f32> = ((vec3<f32>(x_2640.x, x_2640.y, x_2640.w) * vec3<f32>(x_2642.z, x_2642.z, x_2642.z)) + vec3<f32>(x_2645.x, x_2645.y, x_2645.z));
        let x_2648 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
        let x_2650 : vec4<f32> = u_xlat11;
        let x_2652 : i32 = u_xlati52;
        let x_2655 : i32 = u_xlati52;
        let x_2659 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[((x_2652 + 3i) / 4i)][((x_2655 + 3i) % 4i)];
        let x_2661 : vec3<f32> = (vec3<f32>(x_2650.x, x_2650.y, x_2650.z) + vec3<f32>(x_2659.x, x_2659.y, x_2659.w));
        let x_2662 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
        let x_2665 : vec4<f32> = u_xlat11;
        let x_2667 : vec4<f32> = u_xlat11;
        let x_2669 : vec2<f32> = (vec2<f32>(x_2665.x, x_2665.y) / vec2<f32>(x_2667.z, x_2667.z));
        let x_2670 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2669.x, x_2670.y, x_2669.y);
        let x_2672 : vec3<f32> = u_xlat31;
        let x_2675 : vec2<f32> = ((vec2<f32>(x_2672.x, x_2672.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2676 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2675.x, x_2676.y, x_2675.y);
        let x_2678 : vec3<f32> = u_xlat31;
        let x_2682 : vec2<f32> = clamp(vec2<f32>(x_2678.x, x_2678.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2683 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2682.x, x_2683.y, x_2682.y);
        let x_2685 : u32 = u_xlatu69;
        let x_2688 : vec4<f32> = x_2587.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2685)];
        let x_2690 : vec3<f32> = u_xlat31;
        let x_2693 : u32 = u_xlatu69;
        let x_2696 : vec4<f32> = x_2587.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2693)];
        let x_2698 : vec2<f32> = ((vec2<f32>(x_2688.x, x_2688.y) * vec2<f32>(x_2690.x, x_2690.z)) + vec2<f32>(x_2696.z, x_2696.w));
        let x_2699 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2698.x, x_2699.y, x_2698.y);
      } else {
        let x_2703 : i32 = u_xlati10;
        u_xlatb10 = (x_2703 == 1i);
        let x_2705 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_2705);
        let x_2707 : i32 = u_xlati10;
        if ((x_2707 != 0i)) {
          let x_2711 : vec3<f32> = vs_INTERP0;
          let x_2713 : i32 = u_xlati52;
          let x_2716 : i32 = u_xlati52;
          let x_2720 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[((x_2713 + 1i) / 4i)][((x_2716 + 1i) % 4i)];
          let x_2722 : vec2<f32> = (vec2<f32>(x_2711.y, x_2711.y) * vec2<f32>(x_2720.x, x_2720.y));
          let x_2723 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2722.x, x_2722.y, x_2723.z, x_2723.w);
          let x_2725 : i32 = u_xlati52;
          let x_2727 : i32 = u_xlati52;
          let x_2730 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[(x_2725 / 4i)][(x_2727 % 4i)];
          let x_2732 : vec3<f32> = vs_INTERP0;
          let x_2735 : vec4<f32> = u_xlat11;
          let x_2737 : vec2<f32> = ((vec2<f32>(x_2730.x, x_2730.y) * vec2<f32>(x_2732.x, x_2732.x)) + vec2<f32>(x_2735.x, x_2735.y));
          let x_2738 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2737.x, x_2737.y, x_2738.z, x_2738.w);
          let x_2740 : i32 = u_xlati52;
          let x_2743 : i32 = u_xlati52;
          let x_2747 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[((x_2740 + 2i) / 4i)][((x_2743 + 2i) % 4i)];
          let x_2749 : vec3<f32> = vs_INTERP0;
          let x_2752 : vec4<f32> = u_xlat11;
          let x_2754 : vec2<f32> = ((vec2<f32>(x_2747.x, x_2747.y) * vec2<f32>(x_2749.z, x_2749.z)) + vec2<f32>(x_2752.x, x_2752.y));
          let x_2755 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2754.x, x_2754.y, x_2755.z, x_2755.w);
          let x_2757 : vec4<f32> = u_xlat11;
          let x_2759 : i32 = u_xlati52;
          let x_2762 : i32 = u_xlati52;
          let x_2766 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[((x_2759 + 3i) / 4i)][((x_2762 + 3i) % 4i)];
          let x_2768 : vec2<f32> = (vec2<f32>(x_2757.x, x_2757.y) + vec2<f32>(x_2766.x, x_2766.y));
          let x_2769 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2768.x, x_2768.y, x_2769.z, x_2769.w);
          let x_2771 : vec4<f32> = u_xlat11;
          let x_2774 : vec2<f32> = ((vec2<f32>(x_2771.x, x_2771.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2775 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2774.x, x_2774.y, x_2775.z, x_2775.w);
          let x_2777 : vec4<f32> = u_xlat11;
          let x_2779 : vec2<f32> = fract(vec2<f32>(x_2777.x, x_2777.y));
          let x_2780 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2779.x, x_2779.y, x_2780.z, x_2780.w);
          let x_2782 : u32 = u_xlatu69;
          let x_2785 : vec4<f32> = x_2587.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2782)];
          let x_2787 : vec4<f32> = u_xlat11;
          let x_2790 : u32 = u_xlatu69;
          let x_2793 : vec4<f32> = x_2587.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2790)];
          let x_2795 : vec2<f32> = ((vec2<f32>(x_2785.x, x_2785.y) * vec2<f32>(x_2787.x, x_2787.y)) + vec2<f32>(x_2793.z, x_2793.w));
          let x_2796 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2795.x, x_2796.y, x_2795.y);
        } else {
          let x_2799 : vec3<f32> = vs_INTERP0;
          let x_2801 : i32 = u_xlati52;
          let x_2804 : i32 = u_xlati52;
          let x_2808 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[((x_2801 + 1i) / 4i)][((x_2804 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2799.y, x_2799.y, x_2799.y, x_2799.y) * x_2808);
          let x_2810 : i32 = u_xlati52;
          let x_2812 : i32 = u_xlati52;
          let x_2815 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[(x_2810 / 4i)][(x_2812 % 4i)];
          let x_2816 : vec3<f32> = vs_INTERP0;
          let x_2819 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2815 * vec4<f32>(x_2816.x, x_2816.x, x_2816.x, x_2816.x)) + x_2819);
          let x_2821 : i32 = u_xlati52;
          let x_2824 : i32 = u_xlati52;
          let x_2828 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[((x_2821 + 2i) / 4i)][((x_2824 + 2i) % 4i)];
          let x_2829 : vec3<f32> = vs_INTERP0;
          let x_2832 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2828 * vec4<f32>(x_2829.z, x_2829.z, x_2829.z, x_2829.z)) + x_2832);
          let x_2834 : vec4<f32> = u_xlat11;
          let x_2835 : i32 = u_xlati52;
          let x_2838 : i32 = u_xlati52;
          let x_2842 : vec4<f32> = x_2587.x_AdditionalLightsWorldToLights[((x_2835 + 3i) / 4i)][((x_2838 + 3i) % 4i)];
          u_xlat11 = (x_2834 + x_2842);
          let x_2844 : vec4<f32> = u_xlat11;
          let x_2846 : vec4<f32> = u_xlat11;
          let x_2848 : vec3<f32> = (vec3<f32>(x_2844.x, x_2844.y, x_2844.z) / vec3<f32>(x_2846.w, x_2846.w, x_2846.w));
          let x_2849 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2848.x, x_2848.y, x_2848.z, x_2849.w);
          let x_2851 : vec4<f32> = u_xlat11;
          let x_2853 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_2851.x, x_2851.y, x_2851.z), vec3<f32>(x_2853.x, x_2853.y, x_2853.z));
          let x_2858 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_2858);
          let x_2861 : vec4<f32> = u_xlat10;
          let x_2863 : vec4<f32> = u_xlat11;
          let x_2865 : vec3<f32> = (vec3<f32>(x_2861.x, x_2861.x, x_2861.x) * vec3<f32>(x_2863.x, x_2863.y, x_2863.z));
          let x_2866 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2865.x, x_2865.y, x_2865.z, x_2866.w);
          let x_2868 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_2868.x, x_2868.y, x_2868.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2874 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_2874, 0.000001f);
          let x_2879 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_2879);
          let x_2882 : vec4<f32> = u_xlat10;
          let x_2884 : vec4<f32> = u_xlat11;
          let x_2886 : vec3<f32> = (vec3<f32>(x_2882.x, x_2882.x, x_2882.x) * vec3<f32>(x_2884.z, x_2884.x, x_2884.y));
          let x_2887 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2886.x, x_2886.y, x_2886.z, x_2887.w);
          let x_2890 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2890);
          let x_2894 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2894, 0.0f, 1.0f);
          let x_2898 : vec4<f32> = u_xlat12;
          let x_2901 : vec4<bool> = (vec4<f32>(x_2898.y, x_2898.z, x_2898.y, x_2898.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2901.x, x_2901.y);
          let x_2905 : bool = u_xlatb53.x;
          if (x_2905) {
            let x_2910 : f32 = u_xlat12.x;
            x_2906 = x_2910;
          } else {
            let x_2913 : f32 = u_xlat12.x;
            x_2906 = -(x_2913);
          }
          let x_2915 : f32 = x_2906;
          u_xlat53.x = x_2915;
          let x_2918 : bool = u_xlatb53.y;
          if (x_2918) {
            let x_2923 : f32 = u_xlat12.x;
            x_2919 = x_2923;
          } else {
            let x_2926 : f32 = u_xlat12.x;
            x_2919 = -(x_2926);
          }
          let x_2928 : f32 = x_2919;
          u_xlat53.y = x_2928;
          let x_2930 : vec4<f32> = u_xlat11;
          let x_2932 : vec4<f32> = u_xlat10;
          let x_2935 : vec2<f32> = u_xlat53;
          let x_2936 : vec2<f32> = ((vec2<f32>(x_2930.x, x_2930.y) * vec2<f32>(x_2932.x, x_2932.x)) + x_2935);
          let x_2937 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2936.x, x_2937.y, x_2936.y, x_2937.w);
          let x_2939 : vec4<f32> = u_xlat10;
          let x_2942 : vec2<f32> = ((vec2<f32>(x_2939.x, x_2939.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2943 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2942.x, x_2943.y, x_2942.y, x_2943.w);
          let x_2945 : vec4<f32> = u_xlat10;
          let x_2949 : vec2<f32> = clamp(vec2<f32>(x_2945.x, x_2945.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2950 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2949.x, x_2950.y, x_2949.y, x_2950.w);
          let x_2952 : u32 = u_xlatu69;
          let x_2955 : vec4<f32> = x_2587.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2952)];
          let x_2957 : vec4<f32> = u_xlat10;
          let x_2960 : u32 = u_xlatu69;
          let x_2963 : vec4<f32> = x_2587.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2960)];
          let x_2965 : vec2<f32> = ((vec2<f32>(x_2955.x, x_2955.y) * vec2<f32>(x_2957.x, x_2957.z)) + vec2<f32>(x_2963.z, x_2963.w));
          let x_2966 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2965.x, x_2966.y, x_2965.y);
        }
      }
      let x_2973 : vec3<f32> = u_xlat31;
      let x_2976 : f32 = x_44.x_GlobalMipBias.x;
      let x_2977 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2973.x, x_2973.z), x_2976);
      u_xlat10 = x_2977;
      let x_2980 : bool = u_xlatb2.w;
      if (x_2980) {
        let x_2985 : f32 = u_xlat10.w;
        x_2981 = x_2985;
      } else {
        let x_2988 : f32 = u_xlat10.x;
        x_2981 = x_2988;
      }
      let x_2989 : f32 = x_2981;
      u_xlat73 = x_2989;
      let x_2991 : bool = u_xlatb2.x;
      if (x_2991) {
        let x_2995 : vec4<f32> = u_xlat10;
        x_2992 = vec3<f32>(x_2995.x, x_2995.y, x_2995.z);
      } else {
        let x_2998 : f32 = u_xlat73;
        x_2992 = vec3<f32>(x_2998, x_2998, x_2998);
      }
      let x_3000 : vec3<f32> = x_2992;
      let x_3001 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3000.x, x_3000.y, x_3000.z, x_3001.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_3007 : vec4<f32> = u_xlat10;
    let x_3009 : u32 = u_xlatu69;
    let x_3012 : vec4<f32> = x_2474.x_AdditionalLightsColor[bitcast<i32>(x_3009)];
    let x_3014 : vec3<f32> = (vec3<f32>(x_3007.x, x_3007.y, x_3007.z) * vec3<f32>(x_3012.x, x_3012.y, x_3012.z));
    let x_3015 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3014.x, x_3014.y, x_3014.z, x_3015.w);
    let x_3017 : vec3<f32> = u_xlat5;
    let x_3019 : vec4<f32> = u_xlat10;
    let x_3021 : vec3<f32> = (vec3<f32>(x_3017.x, x_3017.x, x_3017.x) * vec3<f32>(x_3019.x, x_3019.y, x_3019.z));
    let x_3022 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3021.x, x_3021.y, x_3021.z, x_3022.w);
    let x_3024 : vec4<f32> = u_xlat1;
    let x_3026 : vec3<f32> = u_xlat30;
    u_xlat69 = dot(vec3<f32>(x_3024.x, x_3024.y, x_3024.z), x_3026);
    let x_3028 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3028, 0.0f, 1.0f);
    let x_3030 : f32 = u_xlat69;
    let x_3031 : f32 = u_xlat70;
    u_xlat69 = (x_3030 * x_3031);
    let x_3033 : f32 = u_xlat69;
    let x_3035 : vec4<f32> = u_xlat10;
    let x_3037 : vec3<f32> = (vec3<f32>(x_3033, x_3033, x_3033) * vec3<f32>(x_3035.x, x_3035.y, x_3035.z));
    let x_3038 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3037.x, x_3037.y, x_3037.z, x_3038.w);
    let x_3040 : vec3<f32> = u_xlat29;
    let x_3041 : vec4<f32> = u_xlat9;
    let x_3044 : vec4<f32> = u_xlat3;
    u_xlat29 = ((x_3040 * vec3<f32>(x_3041.x, x_3041.x, x_3041.x)) + vec3<f32>(x_3044.x, x_3044.y, x_3044.z));
    let x_3047 : vec3<f32> = u_xlat29;
    let x_3048 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(x_3047, x_3048);
    let x_3050 : f32 = u_xlat69;
    u_xlat69 = max(x_3050, 1.17549435e-37f);
    let x_3052 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_3052);
    let x_3054 : f32 = u_xlat69;
    let x_3056 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_3054, x_3054, x_3054) * x_3056);
    let x_3058 : vec4<f32> = u_xlat1;
    let x_3060 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(vec3<f32>(x_3058.x, x_3058.y, x_3058.z), x_3060);
    let x_3062 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3062, 0.0f, 1.0f);
    let x_3064 : vec3<f32> = u_xlat30;
    let x_3065 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_3064, x_3065);
    let x_3067 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3067, 0.0f, 1.0f);
    let x_3069 : f32 = u_xlat69;
    let x_3070 : f32 = u_xlat69;
    u_xlat69 = (x_3069 * x_3070);
    let x_3072 : f32 = u_xlat69;
    let x_3074 : f32 = u_xlat8.x;
    u_xlat69 = ((x_3072 * x_3074) + 1.000010014f);
    let x_3077 : f32 = u_xlat70;
    let x_3078 : f32 = u_xlat70;
    u_xlat70 = (x_3077 * x_3078);
    let x_3080 : f32 = u_xlat69;
    let x_3081 : f32 = u_xlat69;
    u_xlat69 = (x_3080 * x_3081);
    let x_3083 : f32 = u_xlat70;
    u_xlat70 = max(x_3083, 0.100000001f);
    let x_3085 : f32 = u_xlat69;
    let x_3086 : f32 = u_xlat70;
    u_xlat69 = (x_3085 * x_3086);
    let x_3088 : f32 = u_xlat66;
    let x_3089 : f32 = u_xlat69;
    u_xlat69 = (x_3088 * x_3089);
    let x_3091 : f32 = u_xlat23;
    let x_3092 : f32 = u_xlat69;
    u_xlat69 = (x_3091 / x_3092);
    let x_3094 : vec4<f32> = u_xlat0;
    let x_3096 : f32 = u_xlat69;
    let x_3099 : vec3<f32> = u_xlat6;
    u_xlat29 = ((vec3<f32>(x_3094.x, x_3094.y, x_3094.z) * vec3<f32>(x_3096, x_3096, x_3096)) + x_3099);
    let x_3101 : vec3<f32> = u_xlat29;
    let x_3102 : vec4<f32> = u_xlat10;
    let x_3105 : vec4<f32> = u_xlat7;
    let x_3107 : vec3<f32> = ((x_3101 * vec3<f32>(x_3102.x, x_3102.y, x_3102.z)) + vec3<f32>(x_3105.x, x_3105.y, x_3105.z));
    let x_3108 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3107.x, x_3107.y, x_3107.z, x_3108.w);

    continuing {
      let x_3110 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3110 + bitcast<u32>(1i));
    }
  }
  let x_3112 : vec4<f32> = u_xlat4;
  let x_3114 : f32 = u_xlat44;
  let x_3117 : vec3<f32> = u_xlat26;
  let x_3118 : vec3<f32> = ((vec3<f32>(x_3112.x, x_3112.y, x_3112.z) * vec3<f32>(x_3114, x_3114, x_3114)) + x_3117);
  let x_3119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3118.x, x_3118.y, x_3118.z, x_3119.w);
  let x_3121 : vec4<f32> = u_xlat7;
  let x_3123 : vec4<f32> = u_xlat0;
  let x_3125 : vec3<f32> = (vec3<f32>(x_3121.x, x_3121.y, x_3121.z) + vec3<f32>(x_3123.x, x_3123.y, x_3123.z));
  let x_3126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3125.x, x_3125.y, x_3125.z, x_3126.w);
  let x_3128 : f32 = u_xlat63;
  let x_3129 : f32 = u_xlat63;
  u_xlat63 = (x_3128 * -(x_3129));
  let x_3132 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3132);
  let x_3134 : vec4<f32> = u_xlat0;
  let x_3138 : vec4<f32> = x_44.unity_FogColor;
  let x_3141 : vec3<f32> = (vec3<f32>(x_3134.x, x_3134.y, x_3134.z) + -(vec3<f32>(x_3138.x, x_3138.y, x_3138.z)));
  let x_3142 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3141.x, x_3141.y, x_3141.z, x_3142.w);
  let x_3146 : f32 = u_xlat63;
  let x_3148 : vec4<f32> = u_xlat0;
  let x_3152 : vec4<f32> = x_44.unity_FogColor;
  let x_3154 : vec3<f32> = ((vec3<f32>(x_3146, x_3146, x_3146) * vec3<f32>(x_3148.x, x_3148.y, x_3148.z)) + vec3<f32>(x_3152.x, x_3152.y, x_3152.z));
  let x_3155 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3154.x, x_3154.y, x_3154.z, x_3155.w);
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

