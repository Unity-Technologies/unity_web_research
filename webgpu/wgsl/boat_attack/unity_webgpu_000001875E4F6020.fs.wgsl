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

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_686 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1986 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2432 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2545 : AdditionalLightsCookies;

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
  var u_xlat4 : vec3<f32>;
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
  var x_2069 : f32;
  var x_2080 : vec3<f32>;
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
  var x_2864 : f32;
  var x_2877 : f32;
  var u_xlat73 : f32;
  var x_2939 : f32;
  var x_2950 : vec3<f32>;
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
  u_xlat64 = ((x_566 * x_569) + x_572);
  let x_574 : f32 = u_xlat64;
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
  u_xlat64 = ((-(x_590) * 0.959999979f) + 0.959999979f);
  let x_596 : f32 = u_xlat64;
  let x_599 : f32 = u_xlat2.y;
  u_xlat65 = (-(x_596) + x_599);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : f32 = u_xlat64;
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
  u_xlat64 = (-(x_625) + 1.0f);
  let x_628 : f32 = u_xlat64;
  let x_629 : f32 = u_xlat64;
  u_xlat2.x = (x_628 * x_629);
  let x_633 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_633, 0.0078125f);
  let x_639 : f32 = u_xlat2.x;
  let x_641 : f32 = u_xlat2.x;
  u_xlat23 = (x_639 * x_641);
  let x_643 : f32 = u_xlat65;
  u_xlat65 = (x_643 + 1.0f);
  let x_645 : f32 = u_xlat65;
  u_xlat65 = min(x_645, 1.0f);
  let x_649 : f32 = u_xlat2.x;
  u_xlat66 = ((x_649 * 4.0f) + 2.0f);
  let x_659 : vec3<f32> = u_xlat5;
  let x_662 : f32 = x_44.x_GlobalMipBias.x;
  let x_663 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_659.x, x_659.z), x_662);
  u_xlat67 = x_663.x;
  let x_665 : f32 = u_xlat67;
  u_xlat5.x = (x_665 + -1.0f);
  let x_670 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_672 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_670 * x_672) + 1.0f);
  let x_678 : f32 = u_xlat2.z;
  let x_679 : f32 = u_xlat67;
  u_xlat44 = min(x_678, x_679);
  let x_688 : f32 = x_686.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_688);
  let x_690 : bool = u_xlatb67;
  if (x_690) {
    let x_694 : f32 = x_686.x_MainLightShadowParams.y;
    u_xlatb67 = (x_694 == 1.0f);
    let x_696 : bool = u_xlatb67;
    if (x_696) {
      let x_701 : vec4<f32> = vs_INTERP8;
      let x_704 : vec4<f32> = x_686.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_701.x, x_701.y, x_701.x, x_701.y) + x_704);
      let x_707 : vec4<f32> = u_xlat7;
      let x_708 : vec2<f32> = vec2<f32>(x_707.x, x_707.y);
      let x_710 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_708.x, x_708.y, x_710);
      let x_723 : vec3<f32> = txVec0;
      let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_723.xy, x_723.z);
      u_xlat8.x = x_725;
      let x_728 : vec4<f32> = u_xlat7;
      let x_729 : vec2<f32> = vec2<f32>(x_728.z, x_728.w);
      let x_731 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_729.x, x_729.y, x_731);
      let x_738 : vec3<f32> = txVec1;
      let x_740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_738.xy, x_738.z);
      u_xlat8.y = x_740;
      let x_742 : vec4<f32> = vs_INTERP8;
      let x_745 : vec4<f32> = x_686.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y) + x_745);
      let x_748 : vec4<f32> = u_xlat7;
      let x_749 : vec2<f32> = vec2<f32>(x_748.x, x_748.y);
      let x_751 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_749.x, x_749.y, x_751);
      let x_758 : vec3<f32> = txVec2;
      let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_758.xy, x_758.z);
      u_xlat8.z = x_760;
      let x_763 : vec4<f32> = u_xlat7;
      let x_764 : vec2<f32> = vec2<f32>(x_763.z, x_763.w);
      let x_766 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_764.x, x_764.y, x_766);
      let x_773 : vec3<f32> = txVec3;
      let x_775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_773.xy, x_773.z);
      u_xlat8.w = x_775;
      let x_777 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_777, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_784 : f32 = x_686.x_MainLightShadowParams.y;
      u_xlatb26.x = (x_784 == 2.0f);
      let x_788 : bool = u_xlatb26.x;
      if (x_788) {
        let x_792 : vec4<f32> = vs_INTERP8;
        let x_795 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_800 : vec2<f32> = ((vec2<f32>(x_792.x, x_792.y) * vec2<f32>(x_795.z, x_795.w)) + vec2<f32>(0.5f, 0.5f));
        let x_801 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_800.x, x_800.y, x_801.z);
        let x_803 : vec3<f32> = u_xlat26;
        let x_805 : vec2<f32> = floor(vec2<f32>(x_803.x, x_803.y));
        let x_806 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_805.x, x_805.y, x_806.z);
        let x_808 : vec4<f32> = vs_INTERP8;
        let x_811 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_814 : vec3<f32> = u_xlat26;
        let x_817 : vec2<f32> = ((vec2<f32>(x_808.x, x_808.y) * vec2<f32>(x_811.z, x_811.w)) + -(vec2<f32>(x_814.x, x_814.y)));
        let x_818 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
        let x_820 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_820.x, x_820.x, x_820.y, x_820.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_825 : vec4<f32> = u_xlat8;
        let x_827 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_825.x, x_825.x, x_825.z, x_825.z) * vec4<f32>(x_827.x, x_827.x, x_827.z, x_827.z));
        let x_831 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_831.y, x_831.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_836 : vec4<f32> = u_xlat9;
        let x_839 : vec4<f32> = u_xlat7;
        let x_842 : vec2<f32> = ((vec2<f32>(x_836.x, x_836.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_839.x, x_839.y)));
        let x_843 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_842.x, x_843.y, x_842.y, x_843.w);
        let x_845 : vec4<f32> = u_xlat7;
        let x_848 : vec2<f32> = (-(vec2<f32>(x_845.x, x_845.y)) + vec2<f32>(1.0f, 1.0f));
        let x_849 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
        let x_852 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_852.x, x_852.y), vec2<f32>(0.0f, 0.0f));
        let x_856 : vec2<f32> = u_xlat51;
        let x_858 : vec2<f32> = u_xlat51;
        let x_860 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_856) * x_858) + vec2<f32>(x_860.x, x_860.y));
        let x_863 : vec4<f32> = u_xlat7;
        let x_865 : vec2<f32> = max(vec2<f32>(x_863.x, x_863.y), vec2<f32>(0.0f, 0.0f));
        let x_866 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
        let x_868 : vec4<f32> = u_xlat7;
        let x_871 : vec4<f32> = u_xlat7;
        let x_874 : vec4<f32> = u_xlat8;
        let x_876 : vec2<f32> = ((-(vec2<f32>(x_868.x, x_868.y)) * vec2<f32>(x_871.x, x_871.y)) + vec2<f32>(x_874.y, x_874.w));
        let x_877 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
        let x_879 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_879 + vec2<f32>(1.0f, 1.0f));
        let x_881 : vec4<f32> = u_xlat7;
        let x_883 : vec2<f32> = (vec2<f32>(x_881.x, x_881.y) + vec2<f32>(1.0f, 1.0f));
        let x_884 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_883.x, x_883.y, x_884.z, x_884.w);
        let x_887 : vec4<f32> = u_xlat8;
        let x_891 : vec2<f32> = (vec2<f32>(x_887.x, x_887.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_892 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
        let x_895 : vec4<f32> = u_xlat9;
        let x_897 : vec2<f32> = (vec2<f32>(x_895.x, x_895.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_898 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
        let x_900 : vec2<f32> = u_xlat51;
        let x_901 : vec2<f32> = (x_900 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_902 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
        let x_905 : vec4<f32> = u_xlat7;
        let x_907 : vec2<f32> = (vec2<f32>(x_905.x, x_905.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_908 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_910 : vec4<f32> = u_xlat8;
        let x_912 : vec2<f32> = (vec2<f32>(x_910.y, x_910.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
        let x_916 : f32 = u_xlat9.x;
        u_xlat10.z = x_916;
        let x_919 : f32 = u_xlat7.x;
        u_xlat10.w = x_919;
        let x_922 : f32 = u_xlat12.x;
        u_xlat11.z = x_922;
        let x_925 : f32 = u_xlat49.x;
        u_xlat11.w = x_925;
        let x_927 : vec4<f32> = u_xlat10;
        let x_929 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_927.z, x_927.w, x_927.x, x_927.z) + vec4<f32>(x_929.z, x_929.w, x_929.x, x_929.z));
        let x_933 : f32 = u_xlat10.y;
        u_xlat9.z = x_933;
        let x_936 : f32 = u_xlat7.y;
        u_xlat9.w = x_936;
        let x_939 : f32 = u_xlat11.y;
        u_xlat12.z = x_939;
        let x_942 : f32 = u_xlat49.y;
        u_xlat12.w = x_942;
        let x_944 : vec4<f32> = u_xlat9;
        let x_946 : vec4<f32> = u_xlat12;
        let x_948 : vec3<f32> = (vec3<f32>(x_944.z, x_944.y, x_944.w) + vec3<f32>(x_946.z, x_946.y, x_946.w));
        let x_949 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
        let x_951 : vec4<f32> = u_xlat11;
        let x_953 : vec4<f32> = u_xlat8;
        let x_955 : vec3<f32> = (vec3<f32>(x_951.x, x_951.z, x_951.w) / vec3<f32>(x_953.z, x_953.w, x_953.y));
        let x_956 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
        let x_958 : vec4<f32> = u_xlat9;
        let x_964 : vec3<f32> = (vec3<f32>(x_958.x, x_958.y, x_958.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_965 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
        let x_967 : vec4<f32> = u_xlat12;
        let x_969 : vec4<f32> = u_xlat7;
        let x_971 : vec3<f32> = (vec3<f32>(x_967.z, x_967.y, x_967.w) / vec3<f32>(x_969.x, x_969.y, x_969.z));
        let x_972 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
        let x_974 : vec4<f32> = u_xlat10;
        let x_976 : vec3<f32> = (vec3<f32>(x_974.x, x_974.y, x_974.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_977 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
        let x_979 : vec4<f32> = u_xlat9;
        let x_982 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_984 : vec3<f32> = (vec3<f32>(x_979.y, x_979.x, x_979.z) * vec3<f32>(x_982.x, x_982.x, x_982.x));
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
        let x_987 : vec4<f32> = u_xlat10;
        let x_990 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_992 : vec3<f32> = (vec3<f32>(x_987.x, x_987.y, x_987.z) * vec3<f32>(x_990.y, x_990.y, x_990.y));
        let x_993 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
        let x_996 : f32 = u_xlat10.x;
        u_xlat9.w = x_996;
        let x_998 : vec3<f32> = u_xlat26;
        let x_1001 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_998.x, x_998.y, x_998.x, x_998.y) * vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y)) + vec4<f32>(x_1004.y, x_1004.w, x_1004.x, x_1004.w));
        let x_1007 : vec3<f32> = u_xlat26;
        let x_1010 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1015 : vec2<f32> = ((vec2<f32>(x_1007.x, x_1007.y) * vec2<f32>(x_1010.x, x_1010.y)) + vec2<f32>(x_1013.z, x_1013.w));
        let x_1016 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
        let x_1019 : f32 = u_xlat9.y;
        u_xlat10.w = x_1019;
        let x_1021 : vec4<f32> = u_xlat10;
        let x_1022 : vec2<f32> = vec2<f32>(x_1021.y, x_1021.z);
        let x_1023 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1023.x, x_1022.x, x_1023.z, x_1022.y);
        let x_1026 : vec3<f32> = u_xlat26;
        let x_1029 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1035 : vec3<f32> = u_xlat26;
        let x_1038 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1035.x, x_1035.y, x_1035.x, x_1035.y) * vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y)) + vec4<f32>(x_1041.w, x_1041.y, x_1041.w, x_1041.z));
        let x_1044 : vec3<f32> = u_xlat26;
        let x_1047 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y) * vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y)) + vec4<f32>(x_1050.x, x_1050.w, x_1050.z, x_1050.w));
        let x_1054 : vec4<f32> = u_xlat7;
        let x_1056 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1054.x, x_1054.x, x_1054.x, x_1054.y) * vec4<f32>(x_1056.z, x_1056.w, x_1056.y, x_1056.z));
        let x_1060 : vec4<f32> = u_xlat7;
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1060.y, x_1060.y, x_1060.z, x_1060.z) * x_1062);
        let x_1065 : f32 = u_xlat7.z;
        let x_1067 : f32 = u_xlat8.y;
        u_xlat26.x = (x_1065 * x_1067);
        let x_1071 : vec4<f32> = u_xlat11;
        let x_1072 : vec2<f32> = vec2<f32>(x_1071.x, x_1071.y);
        let x_1074 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1072.x, x_1072.y, x_1074);
        let x_1082 : vec3<f32> = txVec4;
        let x_1084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1082.xy, x_1082.z);
        u_xlat47 = x_1084;
        let x_1086 : vec4<f32> = u_xlat11;
        let x_1087 : vec2<f32> = vec2<f32>(x_1086.z, x_1086.w);
        let x_1089 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1087.x, x_1087.y, x_1089);
        let x_1097 : vec3<f32> = txVec5;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1097.xy, x_1097.z);
        u_xlat68 = x_1099;
        let x_1100 : f32 = u_xlat68;
        let x_1102 : f32 = u_xlat14.y;
        u_xlat68 = (x_1100 * x_1102);
        let x_1105 : f32 = u_xlat14.x;
        let x_1106 : f32 = u_xlat47;
        let x_1108 : f32 = u_xlat68;
        u_xlat47 = ((x_1105 * x_1106) + x_1108);
        let x_1111 : vec4<f32> = u_xlat12;
        let x_1112 : vec2<f32> = vec2<f32>(x_1111.x, x_1111.y);
        let x_1114 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1112.x, x_1112.y, x_1114);
        let x_1121 : vec3<f32> = txVec6;
        let x_1123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1121.xy, x_1121.z);
        u_xlat68 = x_1123;
        let x_1125 : f32 = u_xlat14.z;
        let x_1126 : f32 = u_xlat68;
        let x_1128 : f32 = u_xlat47;
        u_xlat47 = ((x_1125 * x_1126) + x_1128);
        let x_1131 : vec4<f32> = u_xlat10;
        let x_1132 : vec2<f32> = vec2<f32>(x_1131.x, x_1131.y);
        let x_1134 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1132.x, x_1132.y, x_1134);
        let x_1141 : vec3<f32> = txVec7;
        let x_1143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1141.xy, x_1141.z);
        u_xlat68 = x_1143;
        let x_1145 : f32 = u_xlat14.w;
        let x_1146 : f32 = u_xlat68;
        let x_1148 : f32 = u_xlat47;
        u_xlat47 = ((x_1145 * x_1146) + x_1148);
        let x_1151 : vec4<f32> = u_xlat13;
        let x_1152 : vec2<f32> = vec2<f32>(x_1151.x, x_1151.y);
        let x_1154 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec8;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1161.xy, x_1161.z);
        u_xlat68 = x_1163;
        let x_1165 : f32 = u_xlat15.x;
        let x_1166 : f32 = u_xlat68;
        let x_1168 : f32 = u_xlat47;
        u_xlat47 = ((x_1165 * x_1166) + x_1168);
        let x_1171 : vec4<f32> = u_xlat13;
        let x_1172 : vec2<f32> = vec2<f32>(x_1171.z, x_1171.w);
        let x_1174 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1172.x, x_1172.y, x_1174);
        let x_1181 : vec3<f32> = txVec9;
        let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1181.xy, x_1181.z);
        u_xlat68 = x_1183;
        let x_1185 : f32 = u_xlat15.y;
        let x_1186 : f32 = u_xlat68;
        let x_1188 : f32 = u_xlat47;
        u_xlat47 = ((x_1185 * x_1186) + x_1188);
        let x_1191 : vec4<f32> = u_xlat10;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.z, x_1191.w);
        let x_1194 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1201 : vec3<f32> = txVec10;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1201.xy, x_1201.z);
        u_xlat68 = x_1203;
        let x_1205 : f32 = u_xlat15.z;
        let x_1206 : f32 = u_xlat68;
        let x_1208 : f32 = u_xlat47;
        u_xlat47 = ((x_1205 * x_1206) + x_1208);
        let x_1211 : vec4<f32> = u_xlat9;
        let x_1212 : vec2<f32> = vec2<f32>(x_1211.x, x_1211.y);
        let x_1214 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1212.x, x_1212.y, x_1214);
        let x_1221 : vec3<f32> = txVec11;
        let x_1223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1221.xy, x_1221.z);
        u_xlat68 = x_1223;
        let x_1225 : f32 = u_xlat15.w;
        let x_1226 : f32 = u_xlat68;
        let x_1228 : f32 = u_xlat47;
        u_xlat47 = ((x_1225 * x_1226) + x_1228);
        let x_1231 : vec4<f32> = u_xlat9;
        let x_1232 : vec2<f32> = vec2<f32>(x_1231.z, x_1231.w);
        let x_1234 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1232.x, x_1232.y, x_1234);
        let x_1241 : vec3<f32> = txVec12;
        let x_1243 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1241.xy, x_1241.z);
        u_xlat68 = x_1243;
        let x_1245 : f32 = u_xlat26.x;
        let x_1246 : f32 = u_xlat68;
        let x_1248 : f32 = u_xlat47;
        u_xlat67 = ((x_1245 * x_1246) + x_1248);
      } else {
        let x_1251 : vec4<f32> = vs_INTERP8;
        let x_1254 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1257 : vec2<f32> = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1254.z, x_1254.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1258 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1257.x, x_1257.y, x_1258.z);
        let x_1260 : vec3<f32> = u_xlat26;
        let x_1262 : vec2<f32> = floor(vec2<f32>(x_1260.x, x_1260.y));
        let x_1263 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1262.x, x_1262.y, x_1263.z);
        let x_1265 : vec4<f32> = vs_INTERP8;
        let x_1268 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1271 : vec3<f32> = u_xlat26;
        let x_1274 : vec2<f32> = ((vec2<f32>(x_1265.x, x_1265.y) * vec2<f32>(x_1268.z, x_1268.w)) + -(vec2<f32>(x_1271.x, x_1271.y)));
        let x_1275 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1274.x, x_1274.y, x_1275.z, x_1275.w);
        let x_1277 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1277.x, x_1277.x, x_1277.y, x_1277.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1280 : vec4<f32> = u_xlat8;
        let x_1282 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1280.x, x_1280.x, x_1280.z, x_1280.z) * vec4<f32>(x_1282.x, x_1282.x, x_1282.z, x_1282.z));
        let x_1285 : vec4<f32> = u_xlat9;
        let x_1289 : vec2<f32> = (vec2<f32>(x_1285.y, x_1285.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1290 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1290.x, x_1289.x, x_1290.z, x_1289.y);
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1295 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1292.x, x_1292.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1295.x, x_1295.y)));
        let x_1299 : vec4<f32> = u_xlat7;
        let x_1302 : vec2<f32> = (-(vec2<f32>(x_1299.x, x_1299.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1303 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1302.x, x_1303.y, x_1302.y, x_1303.w);
        let x_1305 : vec4<f32> = u_xlat7;
        let x_1307 : vec2<f32> = min(vec2<f32>(x_1305.x, x_1305.y), vec2<f32>(0.0f, 0.0f));
        let x_1308 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1310 : vec4<f32> = u_xlat9;
        let x_1313 : vec4<f32> = u_xlat9;
        let x_1316 : vec4<f32> = u_xlat8;
        let x_1318 : vec2<f32> = ((-(vec2<f32>(x_1310.x, x_1310.y)) * vec2<f32>(x_1313.x, x_1313.y)) + vec2<f32>(x_1316.x, x_1316.z));
        let x_1319 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1318.x, x_1319.y, x_1318.y, x_1319.w);
        let x_1321 : vec4<f32> = u_xlat7;
        let x_1323 : vec2<f32> = max(vec2<f32>(x_1321.x, x_1321.y), vec2<f32>(0.0f, 0.0f));
        let x_1324 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat9;
        let x_1329 : vec4<f32> = u_xlat9;
        let x_1332 : vec4<f32> = u_xlat8;
        let x_1334 : vec2<f32> = ((-(vec2<f32>(x_1326.x, x_1326.y)) * vec2<f32>(x_1329.x, x_1329.y)) + vec2<f32>(x_1332.y, x_1332.w));
        let x_1335 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1335.x, x_1334.x, x_1335.z, x_1334.y);
        let x_1337 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1337 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1341 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1341 * 0.081632003f);
        let x_1345 : vec2<f32> = u_xlat49;
        let x_1348 : vec2<f32> = (vec2<f32>(x_1345.y, x_1345.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1349 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
        let x_1351 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1351.x, x_1351.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1355 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1355 * 0.081632003f);
        let x_1359 : f32 = u_xlat11.y;
        u_xlat9.x = x_1359;
        let x_1361 : vec4<f32> = u_xlat7;
        let x_1368 : vec2<f32> = ((vec2<f32>(x_1361.x, x_1361.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1369.x, x_1368.x, x_1369.z, x_1368.y);
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1375 : vec2<f32> = ((vec2<f32>(x_1371.x, x_1371.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1376 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1375.x, x_1376.y, x_1375.y, x_1376.w);
        let x_1379 : f32 = u_xlat49.x;
        u_xlat8.y = x_1379;
        let x_1382 : f32 = u_xlat10.y;
        u_xlat8.w = x_1382;
        let x_1384 : vec4<f32> = u_xlat8;
        let x_1385 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1384 + x_1385);
        let x_1387 : vec4<f32> = u_xlat7;
        let x_1390 : vec2<f32> = ((vec2<f32>(x_1387.y, x_1387.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1391 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1391.x, x_1390.x, x_1391.z, x_1390.y);
        let x_1393 : vec4<f32> = u_xlat7;
        let x_1396 : vec2<f32> = ((vec2<f32>(x_1393.y, x_1393.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1397 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1396.x, x_1397.y, x_1396.y, x_1397.w);
        let x_1400 : f32 = u_xlat49.y;
        u_xlat10.y = x_1400;
        let x_1402 : vec4<f32> = u_xlat10;
        let x_1403 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1402 + x_1403);
        let x_1405 : vec4<f32> = u_xlat8;
        let x_1406 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1405 / x_1406);
        let x_1408 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1408 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1414 : vec4<f32> = u_xlat10;
        let x_1415 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1414 / x_1415);
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1417 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1419 : vec4<f32> = u_xlat8;
        let x_1422 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1419.w, x_1419.x, x_1419.y, x_1419.z) * vec4<f32>(x_1422.x, x_1422.x, x_1422.x, x_1422.x));
        let x_1425 : vec4<f32> = u_xlat10;
        let x_1428 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1425.x, x_1425.w, x_1425.y, x_1425.z) * vec4<f32>(x_1428.y, x_1428.y, x_1428.y, x_1428.y));
        let x_1431 : vec4<f32> = u_xlat8;
        let x_1432 : vec3<f32> = vec3<f32>(x_1431.y, x_1431.z, x_1431.w);
        let x_1433 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1432.x, x_1433.y, x_1432.y, x_1432.z);
        let x_1436 : f32 = u_xlat10.x;
        u_xlat11.y = x_1436;
        let x_1438 : vec3<f32> = u_xlat26;
        let x_1441 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1444 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1438.x, x_1438.y, x_1438.x, x_1438.y) * vec4<f32>(x_1441.x, x_1441.y, x_1441.x, x_1441.y)) + vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1444.y));
        let x_1447 : vec3<f32> = u_xlat26;
        let x_1450 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1453 : vec4<f32> = u_xlat11;
        let x_1455 : vec2<f32> = ((vec2<f32>(x_1447.x, x_1447.y) * vec2<f32>(x_1450.x, x_1450.y)) + vec2<f32>(x_1453.w, x_1453.y));
        let x_1456 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1455.x, x_1455.y, x_1456.z, x_1456.w);
        let x_1459 : f32 = u_xlat11.y;
        u_xlat8.y = x_1459;
        let x_1462 : f32 = u_xlat10.z;
        u_xlat11.y = x_1462;
        let x_1464 : vec3<f32> = u_xlat26;
        let x_1467 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1470 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1464.x, x_1464.y, x_1464.x, x_1464.y) * vec4<f32>(x_1467.x, x_1467.y, x_1467.x, x_1467.y)) + vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1470.y));
        let x_1474 : vec3<f32> = u_xlat26;
        let x_1477 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1480 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1474.x, x_1474.y) * vec2<f32>(x_1477.x, x_1477.y)) + vec2<f32>(x_1480.w, x_1480.y));
        let x_1484 : f32 = u_xlat11.y;
        u_xlat8.z = x_1484;
        let x_1486 : vec3<f32> = u_xlat26;
        let x_1489 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1492 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y) * vec4<f32>(x_1489.x, x_1489.y, x_1489.x, x_1489.y)) + vec4<f32>(x_1492.x, x_1492.y, x_1492.x, x_1492.z));
        let x_1496 : f32 = u_xlat10.w;
        u_xlat11.y = x_1496;
        let x_1499 : vec3<f32> = u_xlat26;
        let x_1502 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1505 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1499.x, x_1499.y, x_1499.x, x_1499.y) * vec4<f32>(x_1502.x, x_1502.y, x_1502.x, x_1502.y)) + vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1505.y));
        let x_1509 : vec3<f32> = u_xlat26;
        let x_1512 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat11;
        let x_1517 : vec2<f32> = ((vec2<f32>(x_1509.x, x_1509.y) * vec2<f32>(x_1512.x, x_1512.y)) + vec2<f32>(x_1515.w, x_1515.y));
        let x_1518 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1517.x, x_1517.y, x_1518.z);
        let x_1521 : f32 = u_xlat11.y;
        u_xlat8.w = x_1521;
        let x_1524 : vec3<f32> = u_xlat26;
        let x_1527 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1530 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1524.x, x_1524.y) * vec2<f32>(x_1527.x, x_1527.y)) + vec2<f32>(x_1530.x, x_1530.w));
        let x_1533 : vec4<f32> = u_xlat11;
        let x_1534 : vec3<f32> = vec3<f32>(x_1533.x, x_1533.z, x_1533.w);
        let x_1535 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1534.x, x_1535.y, x_1534.y, x_1534.z);
        let x_1537 : vec3<f32> = u_xlat26;
        let x_1540 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1543 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.y) * vec4<f32>(x_1540.x, x_1540.y, x_1540.x, x_1540.y)) + vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1543.y));
        let x_1547 : vec3<f32> = u_xlat26;
        let x_1550 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1553 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1547.x, x_1547.y) * vec2<f32>(x_1550.x, x_1550.y)) + vec2<f32>(x_1553.w, x_1553.y));
        let x_1557 : f32 = u_xlat8.x;
        u_xlat10.x = x_1557;
        let x_1559 : vec3<f32> = u_xlat26;
        let x_1562 : vec4<f32> = x_686.x_MainLightShadowmapSize;
        let x_1565 : vec4<f32> = u_xlat10;
        let x_1567 : vec2<f32> = ((vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(x_1562.x, x_1562.y)) + vec2<f32>(x_1565.x, x_1565.y));
        let x_1568 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1567.x, x_1567.y, x_1568.z);
        let x_1571 : vec4<f32> = u_xlat7;
        let x_1573 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1571.x, x_1571.x, x_1571.x, x_1571.x) * x_1573);
        let x_1576 : vec4<f32> = u_xlat7;
        let x_1578 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1576.y, x_1576.y, x_1576.y, x_1576.y) * x_1578);
        let x_1581 : vec4<f32> = u_xlat7;
        let x_1583 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1581.z, x_1581.z, x_1581.z, x_1581.z) * x_1583);
        let x_1585 : vec4<f32> = u_xlat7;
        let x_1587 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1585.w, x_1585.w, x_1585.w, x_1585.w) * x_1587);
        let x_1590 : vec4<f32> = u_xlat12;
        let x_1591 : vec2<f32> = vec2<f32>(x_1590.x, x_1590.y);
        let x_1593 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1600 : vec3<f32> = txVec13;
        let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1600.xy, x_1600.z);
        u_xlat68 = x_1602;
        let x_1604 : vec4<f32> = u_xlat12;
        let x_1605 : vec2<f32> = vec2<f32>(x_1604.z, x_1604.w);
        let x_1607 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1605.x, x_1605.y, x_1607);
        let x_1615 : vec3<f32> = txVec14;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1615.xy, x_1615.z);
        u_xlat69 = x_1617;
        let x_1618 : f32 = u_xlat69;
        let x_1620 : f32 = u_xlat18.y;
        u_xlat69 = (x_1618 * x_1620);
        let x_1623 : f32 = u_xlat18.x;
        let x_1624 : f32 = u_xlat68;
        let x_1626 : f32 = u_xlat69;
        u_xlat68 = ((x_1623 * x_1624) + x_1626);
        let x_1629 : vec4<f32> = u_xlat13;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec15;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1639.xy, x_1639.z);
        u_xlat69 = x_1641;
        let x_1643 : f32 = u_xlat18.z;
        let x_1644 : f32 = u_xlat69;
        let x_1646 : f32 = u_xlat68;
        u_xlat68 = ((x_1643 * x_1644) + x_1646);
        let x_1649 : vec4<f32> = u_xlat15;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.x, x_1649.y);
        let x_1652 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec16;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1659.xy, x_1659.z);
        u_xlat69 = x_1661;
        let x_1663 : f32 = u_xlat18.w;
        let x_1664 : f32 = u_xlat69;
        let x_1666 : f32 = u_xlat68;
        u_xlat68 = ((x_1663 * x_1664) + x_1666);
        let x_1669 : vec4<f32> = u_xlat14;
        let x_1670 : vec2<f32> = vec2<f32>(x_1669.x, x_1669.y);
        let x_1672 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1670.x, x_1670.y, x_1672);
        let x_1679 : vec3<f32> = txVec17;
        let x_1681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1679.xy, x_1679.z);
        u_xlat69 = x_1681;
        let x_1683 : f32 = u_xlat19.x;
        let x_1684 : f32 = u_xlat69;
        let x_1686 : f32 = u_xlat68;
        u_xlat68 = ((x_1683 * x_1684) + x_1686);
        let x_1689 : vec4<f32> = u_xlat14;
        let x_1690 : vec2<f32> = vec2<f32>(x_1689.z, x_1689.w);
        let x_1692 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
        let x_1699 : vec3<f32> = txVec18;
        let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1699.xy, x_1699.z);
        u_xlat69 = x_1701;
        let x_1703 : f32 = u_xlat19.y;
        let x_1704 : f32 = u_xlat69;
        let x_1706 : f32 = u_xlat68;
        u_xlat68 = ((x_1703 * x_1704) + x_1706);
        let x_1709 : vec2<f32> = u_xlat55;
        let x_1711 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1709.x, x_1709.y, x_1711);
        let x_1718 : vec3<f32> = txVec19;
        let x_1720 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1718.xy, x_1718.z);
        u_xlat69 = x_1720;
        let x_1722 : f32 = u_xlat19.z;
        let x_1723 : f32 = u_xlat69;
        let x_1725 : f32 = u_xlat68;
        u_xlat68 = ((x_1722 * x_1723) + x_1725);
        let x_1728 : vec4<f32> = u_xlat15;
        let x_1729 : vec2<f32> = vec2<f32>(x_1728.z, x_1728.w);
        let x_1731 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
        let x_1738 : vec3<f32> = txVec20;
        let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1738.xy, x_1738.z);
        u_xlat69 = x_1740;
        let x_1742 : f32 = u_xlat19.w;
        let x_1743 : f32 = u_xlat69;
        let x_1745 : f32 = u_xlat68;
        u_xlat68 = ((x_1742 * x_1743) + x_1745);
        let x_1748 : vec4<f32> = u_xlat16;
        let x_1749 : vec2<f32> = vec2<f32>(x_1748.x, x_1748.y);
        let x_1751 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1749.x, x_1749.y, x_1751);
        let x_1758 : vec3<f32> = txVec21;
        let x_1760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1758.xy, x_1758.z);
        u_xlat69 = x_1760;
        let x_1762 : f32 = u_xlat20.x;
        let x_1763 : f32 = u_xlat69;
        let x_1765 : f32 = u_xlat68;
        u_xlat68 = ((x_1762 * x_1763) + x_1765);
        let x_1768 : vec4<f32> = u_xlat16;
        let x_1769 : vec2<f32> = vec2<f32>(x_1768.z, x_1768.w);
        let x_1771 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1769.x, x_1769.y, x_1771);
        let x_1778 : vec3<f32> = txVec22;
        let x_1780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1778.xy, x_1778.z);
        u_xlat69 = x_1780;
        let x_1782 : f32 = u_xlat20.y;
        let x_1783 : f32 = u_xlat69;
        let x_1785 : f32 = u_xlat68;
        u_xlat68 = ((x_1782 * x_1783) + x_1785);
        let x_1788 : vec3<f32> = u_xlat29;
        let x_1789 : vec2<f32> = vec2<f32>(x_1788.x, x_1788.y);
        let x_1791 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
        let x_1798 : vec3<f32> = txVec23;
        let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1798.xy, x_1798.z);
        u_xlat69 = x_1800;
        let x_1802 : f32 = u_xlat20.z;
        let x_1803 : f32 = u_xlat69;
        let x_1805 : f32 = u_xlat68;
        u_xlat68 = ((x_1802 * x_1803) + x_1805);
        let x_1808 : vec2<f32> = u_xlat17;
        let x_1810 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec24;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1817.xy, x_1817.z);
        u_xlat69 = x_1819;
        let x_1821 : f32 = u_xlat20.w;
        let x_1822 : f32 = u_xlat69;
        let x_1824 : f32 = u_xlat68;
        u_xlat68 = ((x_1821 * x_1822) + x_1824);
        let x_1827 : vec4<f32> = u_xlat11;
        let x_1828 : vec2<f32> = vec2<f32>(x_1827.x, x_1827.y);
        let x_1830 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1828.x, x_1828.y, x_1830);
        let x_1837 : vec3<f32> = txVec25;
        let x_1839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1837.xy, x_1837.z);
        u_xlat69 = x_1839;
        let x_1841 : f32 = u_xlat7.x;
        let x_1842 : f32 = u_xlat69;
        let x_1844 : f32 = u_xlat68;
        u_xlat68 = ((x_1841 * x_1842) + x_1844);
        let x_1847 : vec4<f32> = u_xlat11;
        let x_1848 : vec2<f32> = vec2<f32>(x_1847.z, x_1847.w);
        let x_1850 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1848.x, x_1848.y, x_1850);
        let x_1857 : vec3<f32> = txVec26;
        let x_1859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1857.xy, x_1857.z);
        u_xlat69 = x_1859;
        let x_1861 : f32 = u_xlat7.y;
        let x_1862 : f32 = u_xlat69;
        let x_1864 : f32 = u_xlat68;
        u_xlat68 = ((x_1861 * x_1862) + x_1864);
        let x_1867 : vec2<f32> = u_xlat52;
        let x_1869 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1867.x, x_1867.y, x_1869);
        let x_1876 : vec3<f32> = txVec27;
        let x_1878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1876.xy, x_1876.z);
        u_xlat69 = x_1878;
        let x_1880 : f32 = u_xlat7.z;
        let x_1881 : f32 = u_xlat69;
        let x_1883 : f32 = u_xlat68;
        u_xlat68 = ((x_1880 * x_1881) + x_1883);
        let x_1886 : vec3<f32> = u_xlat26;
        let x_1887 : vec2<f32> = vec2<f32>(x_1886.x, x_1886.y);
        let x_1889 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1887.x, x_1887.y, x_1889);
        let x_1896 : vec3<f32> = txVec28;
        let x_1898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1896.xy, x_1896.z);
        u_xlat26.x = x_1898;
        let x_1901 : f32 = u_xlat7.w;
        let x_1903 : f32 = u_xlat26.x;
        let x_1905 : f32 = u_xlat68;
        u_xlat67 = ((x_1901 * x_1903) + x_1905);
      }
    }
  } else {
    let x_1909 : vec4<f32> = vs_INTERP8;
    let x_1910 : vec2<f32> = vec2<f32>(x_1909.x, x_1909.y);
    let x_1912 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1910.x, x_1910.y, x_1912);
    let x_1919 : vec3<f32> = txVec29;
    let x_1921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1919.xy, x_1919.z);
    u_xlat67 = x_1921;
  }
  let x_1923 : f32 = x_686.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1923) + 1.0f);
  let x_1927 : f32 = u_xlat67;
  let x_1929 : f32 = x_686.x_MainLightShadowParams.x;
  let x_1932 : f32 = u_xlat26.x;
  u_xlat67 = ((x_1927 * x_1929) + x_1932);
  let x_1935 : f32 = vs_INTERP8.z;
  u_xlatb26.x = (0.0f >= x_1935);
  let x_1940 : f32 = vs_INTERP8.z;
  u_xlatb47 = (x_1940 >= 1.0f);
  let x_1942 : bool = u_xlatb47;
  let x_1944 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_1942 | x_1944);
  let x_1948 : bool = u_xlatb26.x;
  let x_1949 : f32 = u_xlat67;
  u_xlat67 = select(x_1949, 1.0f, x_1948);
  let x_1951 : vec3<f32> = vs_INTERP0;
  let x_1953 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1951 + -(x_1953));
  let x_1956 : vec3<f32> = u_xlat26;
  let x_1957 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1956, x_1957);
  let x_1961 : f32 = u_xlat26.x;
  let x_1963 : f32 = x_686.x_MainLightShadowParams.z;
  let x_1966 : f32 = x_686.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1961 * x_1963) + x_1966);
  let x_1970 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1970, 0.0f, 1.0f);
  let x_1973 : f32 = u_xlat67;
  u_xlat47 = (-(x_1973) + 1.0f);
  let x_1977 : f32 = u_xlat26.x;
  let x_1978 : f32 = u_xlat47;
  let x_1980 : f32 = u_xlat67;
  u_xlat67 = ((x_1977 * x_1978) + x_1980);
  let x_1988 : f32 = x_1986.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_1988 == -1.0f));
  let x_1992 : bool = u_xlatb26.x;
  if (x_1992) {
    let x_1995 : vec3<f32> = vs_INTERP0;
    let x_1998 : vec4<f32> = x_1986.x_MainLightWorldToLight[1i];
    let x_2000 : vec2<f32> = (vec2<f32>(x_1995.y, x_1995.y) * vec2<f32>(x_1998.x, x_1998.y));
    let x_2001 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2000.x, x_2000.y, x_2001.z);
    let x_2004 : vec4<f32> = x_1986.x_MainLightWorldToLight[0i];
    let x_2006 : vec3<f32> = vs_INTERP0;
    let x_2009 : vec3<f32> = u_xlat26;
    let x_2011 : vec2<f32> = ((vec2<f32>(x_2004.x, x_2004.y) * vec2<f32>(x_2006.x, x_2006.x)) + vec2<f32>(x_2009.x, x_2009.y));
    let x_2012 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2011.x, x_2011.y, x_2012.z);
    let x_2015 : vec4<f32> = x_1986.x_MainLightWorldToLight[2i];
    let x_2017 : vec3<f32> = vs_INTERP0;
    let x_2020 : vec3<f32> = u_xlat26;
    let x_2022 : vec2<f32> = ((vec2<f32>(x_2015.x, x_2015.y) * vec2<f32>(x_2017.z, x_2017.z)) + vec2<f32>(x_2020.x, x_2020.y));
    let x_2023 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2022.x, x_2022.y, x_2023.z);
    let x_2025 : vec3<f32> = u_xlat26;
    let x_2028 : vec4<f32> = x_1986.x_MainLightWorldToLight[3i];
    let x_2030 : vec2<f32> = (vec2<f32>(x_2025.x, x_2025.y) + vec2<f32>(x_2028.x, x_2028.y));
    let x_2031 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2030.x, x_2030.y, x_2031.z);
    let x_2033 : vec3<f32> = u_xlat26;
    let x_2036 : vec2<f32> = ((vec2<f32>(x_2033.x, x_2033.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2037 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2036.x, x_2036.y, x_2037.z);
    let x_2044 : vec3<f32> = u_xlat26;
    let x_2047 : f32 = x_44.x_GlobalMipBias.x;
    let x_2048 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2044.x, x_2044.y), x_2047);
    u_xlat7 = x_2048;
    let x_2050 : f32 = x_1986.x_MainLightCookieTextureFormat;
    let x_2052 : f32 = x_1986.x_MainLightCookieTextureFormat;
    let x_2054 : f32 = x_1986.x_MainLightCookieTextureFormat;
    let x_2056 : f32 = x_1986.x_MainLightCookieTextureFormat;
    let x_2057 : vec4<f32> = vec4<f32>(x_2050, x_2052, x_2054, x_2056);
    let x_2065 : vec4<bool> = (vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2057.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_2065.x, x_2065.y);
    let x_2068 : bool = u_xlatb26.y;
    if (x_2068) {
      let x_2073 : f32 = u_xlat7.w;
      x_2069 = x_2073;
    } else {
      let x_2076 : f32 = u_xlat7.x;
      x_2069 = x_2076;
    }
    let x_2077 : f32 = x_2069;
    u_xlat47 = x_2077;
    let x_2079 : bool = u_xlatb26.x;
    if (x_2079) {
      let x_2083 : vec4<f32> = u_xlat7;
      x_2080 = vec3<f32>(x_2083.x, x_2083.y, x_2083.z);
    } else {
      let x_2086 : f32 = u_xlat47;
      x_2080 = vec3<f32>(x_2086, x_2086, x_2086);
    }
    let x_2088 : vec3<f32> = x_2080;
    u_xlat26 = x_2088;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_2093 : vec3<f32> = u_xlat26;
  let x_2095 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (x_2093 * vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
  let x_2098 : vec3<f32> = u_xlat5;
  let x_2100 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2098.x, x_2098.x, x_2098.x) * x_2100);
  let x_2102 : vec4<f32> = u_xlat3;
  let x_2105 : vec4<f32> = u_xlat1;
  u_xlat69 = dot(-(vec3<f32>(x_2102.x, x_2102.y, x_2102.z)), vec3<f32>(x_2105.x, x_2105.y, x_2105.z));
  let x_2108 : f32 = u_xlat69;
  let x_2109 : f32 = u_xlat69;
  u_xlat69 = (x_2108 + x_2109);
  let x_2111 : vec4<f32> = u_xlat1;
  let x_2113 : f32 = u_xlat69;
  let x_2117 : vec4<f32> = u_xlat3;
  let x_2120 : vec3<f32> = ((vec3<f32>(x_2111.x, x_2111.y, x_2111.z) * -(vec3<f32>(x_2113, x_2113, x_2113))) + -(vec3<f32>(x_2117.x, x_2117.y, x_2117.z)));
  let x_2121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
  let x_2123 : vec4<f32> = u_xlat1;
  let x_2125 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_2123.x, x_2123.y, x_2123.z), vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
  let x_2128 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2128, 0.0f, 1.0f);
  let x_2130 : f32 = u_xlat69;
  u_xlat69 = (-(x_2130) + 1.0f);
  let x_2133 : f32 = u_xlat69;
  let x_2134 : f32 = u_xlat69;
  u_xlat69 = (x_2133 * x_2134);
  let x_2136 : f32 = u_xlat69;
  let x_2137 : f32 = u_xlat69;
  u_xlat69 = (x_2136 * x_2137);
  let x_2140 : f32 = u_xlat64;
  u_xlat70 = ((-(x_2140) * 0.699999988f) + 1.700000048f);
  let x_2146 : f32 = u_xlat64;
  let x_2147 : f32 = u_xlat70;
  u_xlat64 = (x_2146 * x_2147);
  let x_2149 : f32 = u_xlat64;
  u_xlat64 = (x_2149 * 6.0f);
  let x_2159 : vec4<f32> = u_xlat7;
  let x_2161 : f32 = u_xlat64;
  let x_2162 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2159.x, x_2159.y, x_2159.z), x_2161);
  u_xlat7 = x_2162;
  let x_2164 : f32 = u_xlat7.w;
  u_xlat64 = (x_2164 + -1.0f);
  let x_2167 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2168 : f32 = u_xlat64;
  u_xlat64 = ((x_2167 * x_2168) + 1.0f);
  let x_2171 : f32 = u_xlat64;
  u_xlat64 = max(x_2171, 0.0f);
  let x_2173 : f32 = u_xlat64;
  u_xlat64 = log2(x_2173);
  let x_2175 : f32 = u_xlat64;
  let x_2177 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat64 = (x_2175 * x_2177);
  let x_2179 : f32 = u_xlat64;
  u_xlat64 = exp2(x_2179);
  let x_2181 : f32 = u_xlat64;
  let x_2183 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat64 = (x_2181 * x_2183);
  let x_2185 : vec4<f32> = u_xlat7;
  let x_2187 : f32 = u_xlat64;
  let x_2189 : vec3<f32> = (vec3<f32>(x_2185.x, x_2185.y, x_2185.z) * vec3<f32>(x_2187, x_2187, x_2187));
  let x_2190 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2189.x, x_2189.y, x_2189.z, x_2190.w);
  let x_2192 : vec4<f32> = u_xlat2;
  let x_2194 : vec4<f32> = u_xlat2;
  let x_2198 : vec2<f32> = ((vec2<f32>(x_2192.x, x_2192.x) * vec2<f32>(x_2194.x, x_2194.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2199 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2198.x, x_2198.y, x_2199.z, x_2199.w);
  let x_2202 : f32 = u_xlat8.y;
  u_xlat64 = (1.0f / x_2202);
  let x_2204 : vec4<f32> = u_xlat0;
  let x_2207 : f32 = u_xlat65;
  u_xlat29 = (-(vec3<f32>(x_2204.x, x_2204.y, x_2204.z)) + vec3<f32>(x_2207, x_2207, x_2207));
  let x_2210 : f32 = u_xlat69;
  let x_2212 : vec3<f32> = u_xlat29;
  let x_2214 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2210, x_2210, x_2210) * x_2212) + vec3<f32>(x_2214.x, x_2214.y, x_2214.z));
  let x_2217 : f32 = u_xlat64;
  let x_2219 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2217, x_2217, x_2217) * x_2219);
  let x_2221 : vec4<f32> = u_xlat7;
  let x_2223 : vec3<f32> = u_xlat29;
  let x_2224 : vec3<f32> = (vec3<f32>(x_2221.x, x_2221.y, x_2221.z) * x_2223);
  let x_2225 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
  let x_2227 : vec3<f32> = u_xlat4;
  let x_2228 : vec3<f32> = u_xlat6;
  let x_2230 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_2227 * x_2228) + vec3<f32>(x_2230.x, x_2230.y, x_2230.z));
  let x_2233 : f32 = u_xlat67;
  let x_2236 : f32 = x_359.unity_LightData.z;
  u_xlat64 = (x_2233 * x_2236);
  let x_2238 : vec4<f32> = u_xlat1;
  let x_2241 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2238.x, x_2238.y, x_2238.z), vec3<f32>(x_2241.x, x_2241.y, x_2241.z));
  let x_2246 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2246, 0.0f, 1.0f);
  let x_2249 : f32 = u_xlat64;
  let x_2251 : f32 = u_xlat2.x;
  u_xlat64 = (x_2249 * x_2251);
  let x_2253 : f32 = u_xlat64;
  let x_2255 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2253, x_2253, x_2253) * x_2255);
  let x_2257 : vec4<f32> = u_xlat3;
  let x_2260 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2262 : vec3<f32> = (vec3<f32>(x_2257.x, x_2257.y, x_2257.z) + vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
  let x_2263 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
  let x_2265 : vec4<f32> = u_xlat7;
  let x_2267 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2265.x, x_2265.y, x_2265.z), vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
  let x_2270 : f32 = u_xlat64;
  u_xlat64 = max(x_2270, 1.17549435e-37f);
  let x_2273 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_2273);
  let x_2275 : f32 = u_xlat64;
  let x_2277 : vec4<f32> = u_xlat7;
  let x_2279 : vec3<f32> = (vec3<f32>(x_2275, x_2275, x_2275) * vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
  let x_2280 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
  let x_2282 : vec4<f32> = u_xlat1;
  let x_2284 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2282.x, x_2282.y, x_2282.z), vec3<f32>(x_2284.x, x_2284.y, x_2284.z));
  let x_2287 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2287, 0.0f, 1.0f);
  let x_2290 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2292 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_2290.x, x_2290.y, x_2290.z), vec3<f32>(x_2292.x, x_2292.y, x_2292.z));
  let x_2297 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2297, 0.0f, 1.0f);
  let x_2300 : f32 = u_xlat64;
  let x_2301 : f32 = u_xlat64;
  u_xlat64 = (x_2300 * x_2301);
  let x_2303 : f32 = u_xlat64;
  let x_2305 : f32 = u_xlat8.x;
  u_xlat64 = ((x_2303 * x_2305) + 1.000010014f);
  let x_2310 : f32 = u_xlat2.x;
  let x_2312 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2310 * x_2312);
  let x_2315 : f32 = u_xlat64;
  let x_2316 : f32 = u_xlat64;
  u_xlat64 = (x_2315 * x_2316);
  let x_2319 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2319, 0.100000001f);
  let x_2323 : f32 = u_xlat64;
  let x_2325 : f32 = u_xlat2.x;
  u_xlat64 = (x_2323 * x_2325);
  let x_2327 : f32 = u_xlat66;
  let x_2328 : f32 = u_xlat64;
  u_xlat64 = (x_2327 * x_2328);
  let x_2330 : f32 = u_xlat23;
  let x_2331 : f32 = u_xlat64;
  u_xlat64 = (x_2330 / x_2331);
  let x_2333 : vec4<f32> = u_xlat0;
  let x_2335 : f32 = u_xlat64;
  let x_2338 : vec3<f32> = u_xlat6;
  let x_2339 : vec3<f32> = ((vec3<f32>(x_2333.x, x_2333.y, x_2333.z) * vec3<f32>(x_2335, x_2335, x_2335)) + x_2338);
  let x_2340 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
  let x_2342 : vec3<f32> = u_xlat26;
  let x_2343 : vec4<f32> = u_xlat7;
  u_xlat26 = (x_2342 * vec3<f32>(x_2343.x, x_2343.y, x_2343.z));
  let x_2347 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2349 : f32 = x_359.unity_LightData.y;
  u_xlat64 = min(x_2347, x_2349);
  let x_2353 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_2353));
  let x_2359 : f32 = x_1986.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2361 : f32 = x_1986.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2363 : f32 = x_1986.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2365 : f32 = x_1986.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2366 : vec4<f32> = vec4<f32>(x_2359, x_2361, x_2363, x_2365);
  let x_2373 : vec4<bool> = (vec4<f32>(x_2366.x, x_2366.y, x_2366.z, x_2366.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2374 : vec2<bool> = vec2<bool>(x_2373.x, x_2373.w);
  let x_2375 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2374.x, x_2375.y, x_2375.z, x_2374.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2386 : u32 = u_xlatu_loop_1;
    let x_2387 : u32 = u_xlatu64;
    if ((x_2386 < x_2387)) {
    } else {
      break;
    }
    let x_2390 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2390 >> 2u);
    let x_2394 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2394 & 3u));
    let x_2397 : u32 = u_xlatu69;
    let x_2400 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2397)];
    let x_2410 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2415 : vec4<u32> = indexable[x_2410];
    u_xlat69 = dot(x_2400, bitcast<vec4<f32>>(x_2415));
    let x_2418 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2418));
    let x_2421 : vec3<f32> = vs_INTERP0;
    let x_2433 : u32 = u_xlatu69;
    let x_2436 : vec4<f32> = x_2432.x_AdditionalLightsPosition[bitcast<i32>(x_2433)];
    let x_2439 : u32 = u_xlatu69;
    let x_2442 : vec4<f32> = x_2432.x_AdditionalLightsPosition[bitcast<i32>(x_2439)];
    u_xlat29 = ((-(x_2421) * vec3<f32>(x_2436.w, x_2436.w, x_2436.w)) + vec3<f32>(x_2442.x, x_2442.y, x_2442.z));
    let x_2445 : vec3<f32> = u_xlat29;
    let x_2446 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_2445, x_2446);
    let x_2448 : f32 = u_xlat70;
    u_xlat70 = max(x_2448, 6.10351562e-05f);
    let x_2451 : f32 = u_xlat70;
    u_xlat9.x = inverseSqrt(x_2451);
    let x_2455 : vec3<f32> = u_xlat29;
    let x_2456 : vec4<f32> = u_xlat9;
    u_xlat30 = (x_2455 * vec3<f32>(x_2456.x, x_2456.x, x_2456.x));
    let x_2459 : f32 = u_xlat70;
    u_xlat10.x = (1.0f / x_2459);
    let x_2462 : f32 = u_xlat70;
    let x_2463 : u32 = u_xlatu69;
    let x_2466 : f32 = x_2432.x_AdditionalLightsAttenuation[bitcast<i32>(x_2463)].x;
    u_xlat70 = (x_2462 * x_2466);
    let x_2468 : f32 = u_xlat70;
    let x_2470 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2468) * x_2470) + 1.0f);
    let x_2473 : f32 = u_xlat70;
    u_xlat70 = max(x_2473, 0.0f);
    let x_2475 : f32 = u_xlat70;
    let x_2476 : f32 = u_xlat70;
    u_xlat70 = (x_2475 * x_2476);
    let x_2478 : f32 = u_xlat70;
    let x_2480 : f32 = u_xlat10.x;
    u_xlat70 = (x_2478 * x_2480);
    let x_2482 : u32 = u_xlatu69;
    let x_2485 : vec4<f32> = x_2432.x_AdditionalLightsSpotDir[bitcast<i32>(x_2482)];
    let x_2487 : vec3<f32> = u_xlat30;
    u_xlat10.x = dot(vec3<f32>(x_2485.x, x_2485.y, x_2485.z), x_2487);
    let x_2491 : f32 = u_xlat10.x;
    let x_2492 : u32 = u_xlatu69;
    let x_2495 : f32 = x_2432.x_AdditionalLightsAttenuation[bitcast<i32>(x_2492)].z;
    let x_2497 : u32 = u_xlatu69;
    let x_2500 : f32 = x_2432.x_AdditionalLightsAttenuation[bitcast<i32>(x_2497)].w;
    u_xlat10.x = ((x_2491 * x_2495) + x_2500);
    let x_2504 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2504, 0.0f, 1.0f);
    let x_2508 : f32 = u_xlat10.x;
    let x_2510 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2508 * x_2510);
    let x_2513 : f32 = u_xlat70;
    let x_2515 : f32 = u_xlat10.x;
    u_xlat70 = (x_2513 * x_2515);
    let x_2518 : u32 = u_xlatu69;
    u_xlatu10 = (x_2518 >> 5u);
    let x_2521 : u32 = u_xlatu69;
    u_xlati31 = (1i << bitcast<u32>((bitcast<i32>(x_2521) & 31i)));
    let x_2527 : i32 = u_xlati31;
    let x_2529 : u32 = u_xlatu10;
    let x_2532 : f32 = x_1986.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2529)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_2527) & bitcast<u32>(x_2532)));
    let x_2536 : i32 = u_xlati10;
    if ((x_2536 != 0i)) {
      let x_2546 : u32 = u_xlatu69;
      let x_2549 : f32 = x_2545.x_AdditionalLightsLightTypes[bitcast<i32>(x_2546)].el;
      u_xlati10 = i32(x_2549);
      let x_2551 : i32 = u_xlati10;
      u_xlati31 = select(1i, 0i, (x_2551 != 0i));
      let x_2555 : u32 = u_xlatu69;
      u_xlati52 = (bitcast<i32>(x_2555) << bitcast<u32>(2i));
      let x_2558 : i32 = u_xlati31;
      if ((x_2558 != 0i)) {
        let x_2562 : vec3<f32> = vs_INTERP0;
        let x_2564 : i32 = u_xlati52;
        let x_2567 : i32 = u_xlati52;
        let x_2571 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[((x_2564 + 1i) / 4i)][((x_2567 + 1i) % 4i)];
        let x_2573 : vec3<f32> = (vec3<f32>(x_2562.y, x_2562.y, x_2562.y) * vec3<f32>(x_2571.x, x_2571.y, x_2571.w));
        let x_2574 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2574.w);
        let x_2576 : i32 = u_xlati52;
        let x_2578 : i32 = u_xlati52;
        let x_2581 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[(x_2576 / 4i)][(x_2578 % 4i)];
        let x_2583 : vec3<f32> = vs_INTERP0;
        let x_2586 : vec4<f32> = u_xlat11;
        let x_2588 : vec3<f32> = ((vec3<f32>(x_2581.x, x_2581.y, x_2581.w) * vec3<f32>(x_2583.x, x_2583.x, x_2583.x)) + vec3<f32>(x_2586.x, x_2586.y, x_2586.z));
        let x_2589 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2588.x, x_2588.y, x_2588.z, x_2589.w);
        let x_2591 : i32 = u_xlati52;
        let x_2594 : i32 = u_xlati52;
        let x_2598 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[((x_2591 + 2i) / 4i)][((x_2594 + 2i) % 4i)];
        let x_2600 : vec3<f32> = vs_INTERP0;
        let x_2603 : vec4<f32> = u_xlat11;
        let x_2605 : vec3<f32> = ((vec3<f32>(x_2598.x, x_2598.y, x_2598.w) * vec3<f32>(x_2600.z, x_2600.z, x_2600.z)) + vec3<f32>(x_2603.x, x_2603.y, x_2603.z));
        let x_2606 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2606.w);
        let x_2608 : vec4<f32> = u_xlat11;
        let x_2610 : i32 = u_xlati52;
        let x_2613 : i32 = u_xlati52;
        let x_2617 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[((x_2610 + 3i) / 4i)][((x_2613 + 3i) % 4i)];
        let x_2619 : vec3<f32> = (vec3<f32>(x_2608.x, x_2608.y, x_2608.z) + vec3<f32>(x_2617.x, x_2617.y, x_2617.w));
        let x_2620 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
        let x_2623 : vec4<f32> = u_xlat11;
        let x_2625 : vec4<f32> = u_xlat11;
        let x_2627 : vec2<f32> = (vec2<f32>(x_2623.x, x_2623.y) / vec2<f32>(x_2625.z, x_2625.z));
        let x_2628 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2627.x, x_2628.y, x_2627.y);
        let x_2630 : vec3<f32> = u_xlat31;
        let x_2633 : vec2<f32> = ((vec2<f32>(x_2630.x, x_2630.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2634 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2633.x, x_2634.y, x_2633.y);
        let x_2636 : vec3<f32> = u_xlat31;
        let x_2640 : vec2<f32> = clamp(vec2<f32>(x_2636.x, x_2636.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2641 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2640.x, x_2641.y, x_2640.y);
        let x_2643 : u32 = u_xlatu69;
        let x_2646 : vec4<f32> = x_2545.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2643)];
        let x_2648 : vec3<f32> = u_xlat31;
        let x_2651 : u32 = u_xlatu69;
        let x_2654 : vec4<f32> = x_2545.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2651)];
        let x_2656 : vec2<f32> = ((vec2<f32>(x_2646.x, x_2646.y) * vec2<f32>(x_2648.x, x_2648.z)) + vec2<f32>(x_2654.z, x_2654.w));
        let x_2657 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2656.x, x_2657.y, x_2656.y);
      } else {
        let x_2661 : i32 = u_xlati10;
        u_xlatb10 = (x_2661 == 1i);
        let x_2663 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_2663);
        let x_2665 : i32 = u_xlati10;
        if ((x_2665 != 0i)) {
          let x_2669 : vec3<f32> = vs_INTERP0;
          let x_2671 : i32 = u_xlati52;
          let x_2674 : i32 = u_xlati52;
          let x_2678 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[((x_2671 + 1i) / 4i)][((x_2674 + 1i) % 4i)];
          let x_2680 : vec2<f32> = (vec2<f32>(x_2669.y, x_2669.y) * vec2<f32>(x_2678.x, x_2678.y));
          let x_2681 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2680.x, x_2680.y, x_2681.z, x_2681.w);
          let x_2683 : i32 = u_xlati52;
          let x_2685 : i32 = u_xlati52;
          let x_2688 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[(x_2683 / 4i)][(x_2685 % 4i)];
          let x_2690 : vec3<f32> = vs_INTERP0;
          let x_2693 : vec4<f32> = u_xlat11;
          let x_2695 : vec2<f32> = ((vec2<f32>(x_2688.x, x_2688.y) * vec2<f32>(x_2690.x, x_2690.x)) + vec2<f32>(x_2693.x, x_2693.y));
          let x_2696 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2695.x, x_2695.y, x_2696.z, x_2696.w);
          let x_2698 : i32 = u_xlati52;
          let x_2701 : i32 = u_xlati52;
          let x_2705 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[((x_2698 + 2i) / 4i)][((x_2701 + 2i) % 4i)];
          let x_2707 : vec3<f32> = vs_INTERP0;
          let x_2710 : vec4<f32> = u_xlat11;
          let x_2712 : vec2<f32> = ((vec2<f32>(x_2705.x, x_2705.y) * vec2<f32>(x_2707.z, x_2707.z)) + vec2<f32>(x_2710.x, x_2710.y));
          let x_2713 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2712.x, x_2712.y, x_2713.z, x_2713.w);
          let x_2715 : vec4<f32> = u_xlat11;
          let x_2717 : i32 = u_xlati52;
          let x_2720 : i32 = u_xlati52;
          let x_2724 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[((x_2717 + 3i) / 4i)][((x_2720 + 3i) % 4i)];
          let x_2726 : vec2<f32> = (vec2<f32>(x_2715.x, x_2715.y) + vec2<f32>(x_2724.x, x_2724.y));
          let x_2727 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2726.x, x_2726.y, x_2727.z, x_2727.w);
          let x_2729 : vec4<f32> = u_xlat11;
          let x_2732 : vec2<f32> = ((vec2<f32>(x_2729.x, x_2729.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2733 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2732.x, x_2732.y, x_2733.z, x_2733.w);
          let x_2735 : vec4<f32> = u_xlat11;
          let x_2737 : vec2<f32> = fract(vec2<f32>(x_2735.x, x_2735.y));
          let x_2738 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2737.x, x_2737.y, x_2738.z, x_2738.w);
          let x_2740 : u32 = u_xlatu69;
          let x_2743 : vec4<f32> = x_2545.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2740)];
          let x_2745 : vec4<f32> = u_xlat11;
          let x_2748 : u32 = u_xlatu69;
          let x_2751 : vec4<f32> = x_2545.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2748)];
          let x_2753 : vec2<f32> = ((vec2<f32>(x_2743.x, x_2743.y) * vec2<f32>(x_2745.x, x_2745.y)) + vec2<f32>(x_2751.z, x_2751.w));
          let x_2754 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2753.x, x_2754.y, x_2753.y);
        } else {
          let x_2757 : vec3<f32> = vs_INTERP0;
          let x_2759 : i32 = u_xlati52;
          let x_2762 : i32 = u_xlati52;
          let x_2766 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[((x_2759 + 1i) / 4i)][((x_2762 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2757.y, x_2757.y, x_2757.y, x_2757.y) * x_2766);
          let x_2768 : i32 = u_xlati52;
          let x_2770 : i32 = u_xlati52;
          let x_2773 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[(x_2768 / 4i)][(x_2770 % 4i)];
          let x_2774 : vec3<f32> = vs_INTERP0;
          let x_2777 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2773 * vec4<f32>(x_2774.x, x_2774.x, x_2774.x, x_2774.x)) + x_2777);
          let x_2779 : i32 = u_xlati52;
          let x_2782 : i32 = u_xlati52;
          let x_2786 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[((x_2779 + 2i) / 4i)][((x_2782 + 2i) % 4i)];
          let x_2787 : vec3<f32> = vs_INTERP0;
          let x_2790 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2786 * vec4<f32>(x_2787.z, x_2787.z, x_2787.z, x_2787.z)) + x_2790);
          let x_2792 : vec4<f32> = u_xlat11;
          let x_2793 : i32 = u_xlati52;
          let x_2796 : i32 = u_xlati52;
          let x_2800 : vec4<f32> = x_2545.x_AdditionalLightsWorldToLights[((x_2793 + 3i) / 4i)][((x_2796 + 3i) % 4i)];
          u_xlat11 = (x_2792 + x_2800);
          let x_2802 : vec4<f32> = u_xlat11;
          let x_2804 : vec4<f32> = u_xlat11;
          let x_2806 : vec3<f32> = (vec3<f32>(x_2802.x, x_2802.y, x_2802.z) / vec3<f32>(x_2804.w, x_2804.w, x_2804.w));
          let x_2807 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2806.x, x_2806.y, x_2806.z, x_2807.w);
          let x_2809 : vec4<f32> = u_xlat11;
          let x_2811 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_2809.x, x_2809.y, x_2809.z), vec3<f32>(x_2811.x, x_2811.y, x_2811.z));
          let x_2816 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_2816);
          let x_2819 : vec4<f32> = u_xlat10;
          let x_2821 : vec4<f32> = u_xlat11;
          let x_2823 : vec3<f32> = (vec3<f32>(x_2819.x, x_2819.x, x_2819.x) * vec3<f32>(x_2821.x, x_2821.y, x_2821.z));
          let x_2824 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2823.x, x_2823.y, x_2823.z, x_2824.w);
          let x_2826 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_2826.x, x_2826.y, x_2826.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2832 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_2832, 0.000001f);
          let x_2837 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_2837);
          let x_2840 : vec4<f32> = u_xlat10;
          let x_2842 : vec4<f32> = u_xlat11;
          let x_2844 : vec3<f32> = (vec3<f32>(x_2840.x, x_2840.x, x_2840.x) * vec3<f32>(x_2842.z, x_2842.x, x_2842.y));
          let x_2845 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2844.x, x_2844.y, x_2844.z, x_2845.w);
          let x_2848 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2848);
          let x_2852 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2852, 0.0f, 1.0f);
          let x_2856 : vec4<f32> = u_xlat12;
          let x_2859 : vec4<bool> = (vec4<f32>(x_2856.y, x_2856.z, x_2856.y, x_2856.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2859.x, x_2859.y);
          let x_2863 : bool = u_xlatb53.x;
          if (x_2863) {
            let x_2868 : f32 = u_xlat12.x;
            x_2864 = x_2868;
          } else {
            let x_2871 : f32 = u_xlat12.x;
            x_2864 = -(x_2871);
          }
          let x_2873 : f32 = x_2864;
          u_xlat53.x = x_2873;
          let x_2876 : bool = u_xlatb53.y;
          if (x_2876) {
            let x_2881 : f32 = u_xlat12.x;
            x_2877 = x_2881;
          } else {
            let x_2884 : f32 = u_xlat12.x;
            x_2877 = -(x_2884);
          }
          let x_2886 : f32 = x_2877;
          u_xlat53.y = x_2886;
          let x_2888 : vec4<f32> = u_xlat11;
          let x_2890 : vec4<f32> = u_xlat10;
          let x_2893 : vec2<f32> = u_xlat53;
          let x_2894 : vec2<f32> = ((vec2<f32>(x_2888.x, x_2888.y) * vec2<f32>(x_2890.x, x_2890.x)) + x_2893);
          let x_2895 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2894.x, x_2895.y, x_2894.y, x_2895.w);
          let x_2897 : vec4<f32> = u_xlat10;
          let x_2900 : vec2<f32> = ((vec2<f32>(x_2897.x, x_2897.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2901 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2900.x, x_2901.y, x_2900.y, x_2901.w);
          let x_2903 : vec4<f32> = u_xlat10;
          let x_2907 : vec2<f32> = clamp(vec2<f32>(x_2903.x, x_2903.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2908 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2907.x, x_2908.y, x_2907.y, x_2908.w);
          let x_2910 : u32 = u_xlatu69;
          let x_2913 : vec4<f32> = x_2545.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2910)];
          let x_2915 : vec4<f32> = u_xlat10;
          let x_2918 : u32 = u_xlatu69;
          let x_2921 : vec4<f32> = x_2545.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2918)];
          let x_2923 : vec2<f32> = ((vec2<f32>(x_2913.x, x_2913.y) * vec2<f32>(x_2915.x, x_2915.z)) + vec2<f32>(x_2921.z, x_2921.w));
          let x_2924 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2923.x, x_2924.y, x_2923.y);
        }
      }
      let x_2931 : vec3<f32> = u_xlat31;
      let x_2934 : f32 = x_44.x_GlobalMipBias.x;
      let x_2935 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2931.x, x_2931.z), x_2934);
      u_xlat10 = x_2935;
      let x_2938 : bool = u_xlatb2.w;
      if (x_2938) {
        let x_2943 : f32 = u_xlat10.w;
        x_2939 = x_2943;
      } else {
        let x_2946 : f32 = u_xlat10.x;
        x_2939 = x_2946;
      }
      let x_2947 : f32 = x_2939;
      u_xlat73 = x_2947;
      let x_2949 : bool = u_xlatb2.x;
      if (x_2949) {
        let x_2953 : vec4<f32> = u_xlat10;
        x_2950 = vec3<f32>(x_2953.x, x_2953.y, x_2953.z);
      } else {
        let x_2956 : f32 = u_xlat73;
        x_2950 = vec3<f32>(x_2956, x_2956, x_2956);
      }
      let x_2958 : vec3<f32> = x_2950;
      let x_2959 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2958.x, x_2958.y, x_2958.z, x_2959.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_2965 : vec4<f32> = u_xlat10;
    let x_2967 : u32 = u_xlatu69;
    let x_2970 : vec4<f32> = x_2432.x_AdditionalLightsColor[bitcast<i32>(x_2967)];
    let x_2972 : vec3<f32> = (vec3<f32>(x_2965.x, x_2965.y, x_2965.z) * vec3<f32>(x_2970.x, x_2970.y, x_2970.z));
    let x_2973 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2972.x, x_2972.y, x_2972.z, x_2973.w);
    let x_2975 : vec3<f32> = u_xlat5;
    let x_2977 : vec4<f32> = u_xlat10;
    let x_2979 : vec3<f32> = (vec3<f32>(x_2975.x, x_2975.x, x_2975.x) * vec3<f32>(x_2977.x, x_2977.y, x_2977.z));
    let x_2980 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2979.x, x_2979.y, x_2979.z, x_2980.w);
    let x_2982 : vec4<f32> = u_xlat1;
    let x_2984 : vec3<f32> = u_xlat30;
    u_xlat69 = dot(vec3<f32>(x_2982.x, x_2982.y, x_2982.z), x_2984);
    let x_2986 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2986, 0.0f, 1.0f);
    let x_2988 : f32 = u_xlat69;
    let x_2989 : f32 = u_xlat70;
    u_xlat69 = (x_2988 * x_2989);
    let x_2991 : f32 = u_xlat69;
    let x_2993 : vec4<f32> = u_xlat10;
    let x_2995 : vec3<f32> = (vec3<f32>(x_2991, x_2991, x_2991) * vec3<f32>(x_2993.x, x_2993.y, x_2993.z));
    let x_2996 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2995.x, x_2995.y, x_2995.z, x_2996.w);
    let x_2998 : vec3<f32> = u_xlat29;
    let x_2999 : vec4<f32> = u_xlat9;
    let x_3002 : vec4<f32> = u_xlat3;
    u_xlat29 = ((x_2998 * vec3<f32>(x_2999.x, x_2999.x, x_2999.x)) + vec3<f32>(x_3002.x, x_3002.y, x_3002.z));
    let x_3005 : vec3<f32> = u_xlat29;
    let x_3006 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(x_3005, x_3006);
    let x_3008 : f32 = u_xlat69;
    u_xlat69 = max(x_3008, 1.17549435e-37f);
    let x_3010 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_3010);
    let x_3012 : f32 = u_xlat69;
    let x_3014 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_3012, x_3012, x_3012) * x_3014);
    let x_3016 : vec4<f32> = u_xlat1;
    let x_3018 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(vec3<f32>(x_3016.x, x_3016.y, x_3016.z), x_3018);
    let x_3020 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3020, 0.0f, 1.0f);
    let x_3022 : vec3<f32> = u_xlat30;
    let x_3023 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_3022, x_3023);
    let x_3025 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3025, 0.0f, 1.0f);
    let x_3027 : f32 = u_xlat69;
    let x_3028 : f32 = u_xlat69;
    u_xlat69 = (x_3027 * x_3028);
    let x_3030 : f32 = u_xlat69;
    let x_3032 : f32 = u_xlat8.x;
    u_xlat69 = ((x_3030 * x_3032) + 1.000010014f);
    let x_3035 : f32 = u_xlat70;
    let x_3036 : f32 = u_xlat70;
    u_xlat70 = (x_3035 * x_3036);
    let x_3038 : f32 = u_xlat69;
    let x_3039 : f32 = u_xlat69;
    u_xlat69 = (x_3038 * x_3039);
    let x_3041 : f32 = u_xlat70;
    u_xlat70 = max(x_3041, 0.100000001f);
    let x_3043 : f32 = u_xlat69;
    let x_3044 : f32 = u_xlat70;
    u_xlat69 = (x_3043 * x_3044);
    let x_3046 : f32 = u_xlat66;
    let x_3047 : f32 = u_xlat69;
    u_xlat69 = (x_3046 * x_3047);
    let x_3049 : f32 = u_xlat23;
    let x_3050 : f32 = u_xlat69;
    u_xlat69 = (x_3049 / x_3050);
    let x_3052 : vec4<f32> = u_xlat0;
    let x_3054 : f32 = u_xlat69;
    let x_3057 : vec3<f32> = u_xlat6;
    u_xlat29 = ((vec3<f32>(x_3052.x, x_3052.y, x_3052.z) * vec3<f32>(x_3054, x_3054, x_3054)) + x_3057);
    let x_3059 : vec3<f32> = u_xlat29;
    let x_3060 : vec4<f32> = u_xlat10;
    let x_3063 : vec4<f32> = u_xlat7;
    let x_3065 : vec3<f32> = ((x_3059 * vec3<f32>(x_3060.x, x_3060.y, x_3060.z)) + vec3<f32>(x_3063.x, x_3063.y, x_3063.z));
    let x_3066 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3065.x, x_3065.y, x_3065.z, x_3066.w);

    continuing {
      let x_3068 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3068 + bitcast<u32>(1i));
    }
  }
  let x_3070 : vec3<f32> = u_xlat4;
  let x_3071 : f32 = u_xlat44;
  let x_3074 : vec3<f32> = u_xlat26;
  let x_3075 : vec3<f32> = ((x_3070 * vec3<f32>(x_3071, x_3071, x_3071)) + x_3074);
  let x_3076 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3075.x, x_3075.y, x_3075.z, x_3076.w);
  let x_3078 : vec4<f32> = u_xlat7;
  let x_3080 : vec4<f32> = u_xlat0;
  let x_3082 : vec3<f32> = (vec3<f32>(x_3078.x, x_3078.y, x_3078.z) + vec3<f32>(x_3080.x, x_3080.y, x_3080.z));
  let x_3083 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3082.x, x_3082.y, x_3082.z, x_3083.w);
  let x_3085 : f32 = u_xlat63;
  let x_3086 : f32 = u_xlat63;
  u_xlat63 = (x_3085 * -(x_3086));
  let x_3089 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3089);
  let x_3091 : vec4<f32> = u_xlat0;
  let x_3095 : vec4<f32> = x_44.unity_FogColor;
  let x_3098 : vec3<f32> = (vec3<f32>(x_3091.x, x_3091.y, x_3091.z) + -(vec3<f32>(x_3095.x, x_3095.y, x_3095.z)));
  let x_3099 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3098.x, x_3098.y, x_3098.z, x_3099.w);
  let x_3103 : f32 = u_xlat63;
  let x_3105 : vec4<f32> = u_xlat0;
  let x_3109 : vec4<f32> = x_44.unity_FogColor;
  let x_3111 : vec3<f32> = ((vec3<f32>(x_3103, x_3103, x_3103) * vec3<f32>(x_3105.x, x_3105.y, x_3105.z)) + vec3<f32>(x_3109.x, x_3109.y, x_3109.z));
  let x_3112 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3111.x, x_3111.y, x_3111.z, x_3112.w);
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

