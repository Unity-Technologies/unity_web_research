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

@group(1) @binding(4) var<uniform> x_2027 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2476 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2589 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_2110 : f32;
  var x_2121 : vec3<f32>;
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
  var x_2908 : f32;
  var x_2921 : f32;
  var u_xlat73 : f32;
  var x_2983 : f32;
  var x_2994 : vec3<f32>;
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
      let x_746 : vec4<f32> = x_727.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y) + x_746);
      let x_749 : vec4<f32> = u_xlat7;
      let x_750 : vec2<f32> = vec2<f32>(x_749.x, x_749.y);
      let x_752 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_750.x, x_750.y, x_752);
      let x_765 : vec3<f32> = txVec0;
      let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_765.xy, x_765.z);
      u_xlat8.x = x_767;
      let x_770 : vec4<f32> = u_xlat7;
      let x_771 : vec2<f32> = vec2<f32>(x_770.z, x_770.w);
      let x_773 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_771.x, x_771.y, x_773);
      let x_780 : vec3<f32> = txVec1;
      let x_782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_780.xy, x_780.z);
      u_xlat8.y = x_782;
      let x_784 : vec4<f32> = vs_INTERP8;
      let x_788 : vec4<f32> = x_727.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_784.x, x_784.y, x_784.x, x_784.y) + x_788);
      let x_791 : vec4<f32> = u_xlat7;
      let x_792 : vec2<f32> = vec2<f32>(x_791.x, x_791.y);
      let x_794 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_792.x, x_792.y, x_794);
      let x_801 : vec3<f32> = txVec2;
      let x_803 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_801.xy, x_801.z);
      u_xlat8.z = x_803;
      let x_806 : vec4<f32> = u_xlat7;
      let x_807 : vec2<f32> = vec2<f32>(x_806.z, x_806.w);
      let x_809 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_807.x, x_807.y, x_809);
      let x_816 : vec3<f32> = txVec3;
      let x_818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_816.xy, x_816.z);
      u_xlat8.w = x_818;
      let x_820 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_820, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_827 : f32 = x_727.x_MainLightShadowParams.y;
      u_xlatb26.x = (x_827 == 2.0f);
      let x_831 : bool = u_xlatb26.x;
      if (x_831) {
        let x_835 : vec4<f32> = vs_INTERP8;
        let x_838 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_842 : vec2<f32> = ((vec2<f32>(x_835.x, x_835.y) * vec2<f32>(x_838.z, x_838.w)) + vec2<f32>(0.5f, 0.5f));
        let x_843 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_842.x, x_842.y, x_843.z);
        let x_845 : vec3<f32> = u_xlat26;
        let x_847 : vec2<f32> = floor(vec2<f32>(x_845.x, x_845.y));
        let x_848 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_847.x, x_847.y, x_848.z);
        let x_850 : vec4<f32> = vs_INTERP8;
        let x_853 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_856 : vec3<f32> = u_xlat26;
        let x_859 : vec2<f32> = ((vec2<f32>(x_850.x, x_850.y) * vec2<f32>(x_853.z, x_853.w)) + -(vec2<f32>(x_856.x, x_856.y)));
        let x_860 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_862 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_862.x, x_862.x, x_862.y, x_862.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_867 : vec4<f32> = u_xlat8;
        let x_869 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_867.x, x_867.x, x_867.z, x_867.z) * vec4<f32>(x_869.x, x_869.x, x_869.z, x_869.z));
        let x_873 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_873.y, x_873.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_878 : vec4<f32> = u_xlat9;
        let x_881 : vec4<f32> = u_xlat7;
        let x_884 : vec2<f32> = ((vec2<f32>(x_878.x, x_878.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_881.x, x_881.y)));
        let x_885 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_884.x, x_885.y, x_884.y, x_885.w);
        let x_887 : vec4<f32> = u_xlat7;
        let x_890 : vec2<f32> = (-(vec2<f32>(x_887.x, x_887.y)) + vec2<f32>(1.0f, 1.0f));
        let x_891 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_890.x, x_890.y, x_891.z, x_891.w);
        let x_894 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_894.x, x_894.y), vec2<f32>(0.0f, 0.0f));
        let x_898 : vec2<f32> = u_xlat51;
        let x_900 : vec2<f32> = u_xlat51;
        let x_902 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_898) * x_900) + vec2<f32>(x_902.x, x_902.y));
        let x_905 : vec4<f32> = u_xlat7;
        let x_907 : vec2<f32> = max(vec2<f32>(x_905.x, x_905.y), vec2<f32>(0.0f, 0.0f));
        let x_908 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_910 : vec4<f32> = u_xlat7;
        let x_913 : vec4<f32> = u_xlat7;
        let x_916 : vec4<f32> = u_xlat8;
        let x_918 : vec2<f32> = ((-(vec2<f32>(x_910.x, x_910.y)) * vec2<f32>(x_913.x, x_913.y)) + vec2<f32>(x_916.y, x_916.w));
        let x_919 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
        let x_921 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_921 + vec2<f32>(1.0f, 1.0f));
        let x_923 : vec4<f32> = u_xlat7;
        let x_925 : vec2<f32> = (vec2<f32>(x_923.x, x_923.y) + vec2<f32>(1.0f, 1.0f));
        let x_926 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_925.x, x_925.y, x_926.z, x_926.w);
        let x_929 : vec4<f32> = u_xlat8;
        let x_933 : vec2<f32> = (vec2<f32>(x_929.x, x_929.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_934 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_933.x, x_933.y, x_934.z, x_934.w);
        let x_937 : vec4<f32> = u_xlat9;
        let x_939 : vec2<f32> = (vec2<f32>(x_937.x, x_937.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_940 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec2<f32> = u_xlat51;
        let x_943 : vec2<f32> = (x_942 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_944 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_947 : vec4<f32> = u_xlat7;
        let x_949 : vec2<f32> = (vec2<f32>(x_947.x, x_947.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_950 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat8;
        let x_954 : vec2<f32> = (vec2<f32>(x_952.y, x_952.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_955 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_958 : f32 = u_xlat9.x;
        u_xlat10.z = x_958;
        let x_961 : f32 = u_xlat7.x;
        u_xlat10.w = x_961;
        let x_964 : f32 = u_xlat12.x;
        u_xlat11.z = x_964;
        let x_967 : f32 = u_xlat49.x;
        u_xlat11.w = x_967;
        let x_969 : vec4<f32> = u_xlat10;
        let x_971 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_969.z, x_969.w, x_969.x, x_969.z) + vec4<f32>(x_971.z, x_971.w, x_971.x, x_971.z));
        let x_975 : f32 = u_xlat10.y;
        u_xlat9.z = x_975;
        let x_978 : f32 = u_xlat7.y;
        u_xlat9.w = x_978;
        let x_981 : f32 = u_xlat11.y;
        u_xlat12.z = x_981;
        let x_984 : f32 = u_xlat49.y;
        u_xlat12.w = x_984;
        let x_986 : vec4<f32> = u_xlat9;
        let x_988 : vec4<f32> = u_xlat12;
        let x_990 : vec3<f32> = (vec3<f32>(x_986.z, x_986.y, x_986.w) + vec3<f32>(x_988.z, x_988.y, x_988.w));
        let x_991 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
        let x_993 : vec4<f32> = u_xlat11;
        let x_995 : vec4<f32> = u_xlat8;
        let x_997 : vec3<f32> = (vec3<f32>(x_993.x, x_993.z, x_993.w) / vec3<f32>(x_995.z, x_995.w, x_995.y));
        let x_998 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
        let x_1000 : vec4<f32> = u_xlat9;
        let x_1005 : vec3<f32> = (vec3<f32>(x_1000.x, x_1000.y, x_1000.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1006 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat12;
        let x_1010 : vec4<f32> = u_xlat7;
        let x_1012 : vec3<f32> = (vec3<f32>(x_1008.z, x_1008.y, x_1008.w) / vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
        let x_1013 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat10;
        let x_1017 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1018 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1023 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1025 : vec3<f32> = (vec3<f32>(x_1020.y, x_1020.x, x_1020.z) * vec3<f32>(x_1023.x, x_1023.x, x_1023.x));
        let x_1026 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat10;
        let x_1031 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1033 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(x_1031.y, x_1031.y, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
        let x_1037 : f32 = u_xlat10.x;
        u_xlat9.w = x_1037;
        let x_1039 : vec3<f32> = u_xlat26;
        let x_1042 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1045 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y) * vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y)) + vec4<f32>(x_1045.y, x_1045.w, x_1045.x, x_1045.w));
        let x_1048 : vec3<f32> = u_xlat26;
        let x_1051 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat9;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.x, x_1051.y)) + vec2<f32>(x_1054.z, x_1054.w));
        let x_1057 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1060 : f32 = u_xlat9.y;
        u_xlat10.w = x_1060;
        let x_1062 : vec4<f32> = u_xlat10;
        let x_1063 : vec2<f32> = vec2<f32>(x_1062.y, x_1062.z);
        let x_1064 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1063.x, x_1064.z, x_1063.y);
        let x_1067 : vec3<f32> = u_xlat26;
        let x_1070 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1073 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y) * vec4<f32>(x_1070.x, x_1070.y, x_1070.x, x_1070.y)) + vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1073.y));
        let x_1076 : vec3<f32> = u_xlat26;
        let x_1079 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y) * vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.y)) + vec4<f32>(x_1082.w, x_1082.y, x_1082.w, x_1082.z));
        let x_1085 : vec3<f32> = u_xlat26;
        let x_1088 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.x, x_1091.w, x_1091.z, x_1091.w));
        let x_1095 : vec4<f32> = u_xlat7;
        let x_1097 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1095.x, x_1095.x, x_1095.x, x_1095.y) * vec4<f32>(x_1097.z, x_1097.w, x_1097.y, x_1097.z));
        let x_1101 : vec4<f32> = u_xlat7;
        let x_1103 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1101.y, x_1101.y, x_1101.z, x_1101.z) * x_1103);
        let x_1106 : f32 = u_xlat7.z;
        let x_1108 : f32 = u_xlat8.y;
        u_xlat26.x = (x_1106 * x_1108);
        let x_1112 : vec4<f32> = u_xlat11;
        let x_1113 : vec2<f32> = vec2<f32>(x_1112.x, x_1112.y);
        let x_1115 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_1113.x, x_1113.y, x_1115);
        let x_1123 : vec3<f32> = txVec4;
        let x_1125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1123.xy, x_1123.z);
        u_xlat47 = x_1125;
        let x_1127 : vec4<f32> = u_xlat11;
        let x_1128 : vec2<f32> = vec2<f32>(x_1127.z, x_1127.w);
        let x_1130 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_1128.x, x_1128.y, x_1130);
        let x_1138 : vec3<f32> = txVec5;
        let x_1140 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1138.xy, x_1138.z);
        u_xlat68 = x_1140;
        let x_1141 : f32 = u_xlat68;
        let x_1143 : f32 = u_xlat14.y;
        u_xlat68 = (x_1141 * x_1143);
        let x_1146 : f32 = u_xlat14.x;
        let x_1147 : f32 = u_xlat47;
        let x_1149 : f32 = u_xlat68;
        u_xlat47 = ((x_1146 * x_1147) + x_1149);
        let x_1152 : vec4<f32> = u_xlat12;
        let x_1153 : vec2<f32> = vec2<f32>(x_1152.x, x_1152.y);
        let x_1155 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1153.x, x_1153.y, x_1155);
        let x_1162 : vec3<f32> = txVec6;
        let x_1164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1162.xy, x_1162.z);
        u_xlat68 = x_1164;
        let x_1166 : f32 = u_xlat14.z;
        let x_1167 : f32 = u_xlat68;
        let x_1169 : f32 = u_xlat47;
        u_xlat47 = ((x_1166 * x_1167) + x_1169);
        let x_1172 : vec4<f32> = u_xlat10;
        let x_1173 : vec2<f32> = vec2<f32>(x_1172.x, x_1172.y);
        let x_1175 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1173.x, x_1173.y, x_1175);
        let x_1182 : vec3<f32> = txVec7;
        let x_1184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1182.xy, x_1182.z);
        u_xlat68 = x_1184;
        let x_1186 : f32 = u_xlat14.w;
        let x_1187 : f32 = u_xlat68;
        let x_1189 : f32 = u_xlat47;
        u_xlat47 = ((x_1186 * x_1187) + x_1189);
        let x_1192 : vec4<f32> = u_xlat13;
        let x_1193 : vec2<f32> = vec2<f32>(x_1192.x, x_1192.y);
        let x_1195 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1193.x, x_1193.y, x_1195);
        let x_1202 : vec3<f32> = txVec8;
        let x_1204 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1202.xy, x_1202.z);
        u_xlat68 = x_1204;
        let x_1206 : f32 = u_xlat15.x;
        let x_1207 : f32 = u_xlat68;
        let x_1209 : f32 = u_xlat47;
        u_xlat47 = ((x_1206 * x_1207) + x_1209);
        let x_1212 : vec4<f32> = u_xlat13;
        let x_1213 : vec2<f32> = vec2<f32>(x_1212.z, x_1212.w);
        let x_1215 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1213.x, x_1213.y, x_1215);
        let x_1222 : vec3<f32> = txVec9;
        let x_1224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1222.xy, x_1222.z);
        u_xlat68 = x_1224;
        let x_1226 : f32 = u_xlat15.y;
        let x_1227 : f32 = u_xlat68;
        let x_1229 : f32 = u_xlat47;
        u_xlat47 = ((x_1226 * x_1227) + x_1229);
        let x_1232 : vec4<f32> = u_xlat10;
        let x_1233 : vec2<f32> = vec2<f32>(x_1232.z, x_1232.w);
        let x_1235 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1233.x, x_1233.y, x_1235);
        let x_1242 : vec3<f32> = txVec10;
        let x_1244 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1242.xy, x_1242.z);
        u_xlat68 = x_1244;
        let x_1246 : f32 = u_xlat15.z;
        let x_1247 : f32 = u_xlat68;
        let x_1249 : f32 = u_xlat47;
        u_xlat47 = ((x_1246 * x_1247) + x_1249);
        let x_1252 : vec4<f32> = u_xlat9;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.x, x_1252.y);
        let x_1255 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec11;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1262.xy, x_1262.z);
        u_xlat68 = x_1264;
        let x_1266 : f32 = u_xlat15.w;
        let x_1267 : f32 = u_xlat68;
        let x_1269 : f32 = u_xlat47;
        u_xlat47 = ((x_1266 * x_1267) + x_1269);
        let x_1272 : vec4<f32> = u_xlat9;
        let x_1273 : vec2<f32> = vec2<f32>(x_1272.z, x_1272.w);
        let x_1275 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1273.x, x_1273.y, x_1275);
        let x_1282 : vec3<f32> = txVec12;
        let x_1284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1282.xy, x_1282.z);
        u_xlat68 = x_1284;
        let x_1286 : f32 = u_xlat26.x;
        let x_1287 : f32 = u_xlat68;
        let x_1289 : f32 = u_xlat47;
        u_xlat67 = ((x_1286 * x_1287) + x_1289);
      } else {
        let x_1292 : vec4<f32> = vs_INTERP8;
        let x_1295 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1298 : vec2<f32> = ((vec2<f32>(x_1292.x, x_1292.y) * vec2<f32>(x_1295.z, x_1295.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1299 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1298.x, x_1298.y, x_1299.z);
        let x_1301 : vec3<f32> = u_xlat26;
        let x_1303 : vec2<f32> = floor(vec2<f32>(x_1301.x, x_1301.y));
        let x_1304 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1303.x, x_1303.y, x_1304.z);
        let x_1306 : vec4<f32> = vs_INTERP8;
        let x_1309 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1312 : vec3<f32> = u_xlat26;
        let x_1315 : vec2<f32> = ((vec2<f32>(x_1306.x, x_1306.y) * vec2<f32>(x_1309.z, x_1309.w)) + -(vec2<f32>(x_1312.x, x_1312.y)));
        let x_1316 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1318.x, x_1318.x, x_1318.y, x_1318.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1321 : vec4<f32> = u_xlat8;
        let x_1323 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1321.x, x_1321.x, x_1321.z, x_1321.z) * vec4<f32>(x_1323.x, x_1323.x, x_1323.z, x_1323.z));
        let x_1326 : vec4<f32> = u_xlat9;
        let x_1330 : vec2<f32> = (vec2<f32>(x_1326.y, x_1326.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1331 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1331.x, x_1330.x, x_1331.z, x_1330.y);
        let x_1333 : vec4<f32> = u_xlat9;
        let x_1336 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1333.x, x_1333.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1336.x, x_1336.y)));
        let x_1340 : vec4<f32> = u_xlat7;
        let x_1343 : vec2<f32> = (-(vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1344 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1343.x, x_1344.y, x_1343.y, x_1344.w);
        let x_1346 : vec4<f32> = u_xlat7;
        let x_1348 : vec2<f32> = min(vec2<f32>(x_1346.x, x_1346.y), vec2<f32>(0.0f, 0.0f));
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
        let x_1351 : vec4<f32> = u_xlat9;
        let x_1354 : vec4<f32> = u_xlat9;
        let x_1357 : vec4<f32> = u_xlat8;
        let x_1359 : vec2<f32> = ((-(vec2<f32>(x_1351.x, x_1351.y)) * vec2<f32>(x_1354.x, x_1354.y)) + vec2<f32>(x_1357.x, x_1357.z));
        let x_1360 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1359.x, x_1360.y, x_1359.y, x_1360.w);
        let x_1362 : vec4<f32> = u_xlat7;
        let x_1364 : vec2<f32> = max(vec2<f32>(x_1362.x, x_1362.y), vec2<f32>(0.0f, 0.0f));
        let x_1365 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
        let x_1367 : vec4<f32> = u_xlat9;
        let x_1370 : vec4<f32> = u_xlat9;
        let x_1373 : vec4<f32> = u_xlat8;
        let x_1375 : vec2<f32> = ((-(vec2<f32>(x_1367.x, x_1367.y)) * vec2<f32>(x_1370.x, x_1370.y)) + vec2<f32>(x_1373.y, x_1373.w));
        let x_1376 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1376.x, x_1375.x, x_1376.z, x_1375.y);
        let x_1378 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1378 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1382 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1382 * 0.081632003f);
        let x_1386 : vec2<f32> = u_xlat49;
        let x_1389 : vec2<f32> = (vec2<f32>(x_1386.y, x_1386.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1390 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1389.x, x_1389.y, x_1390.z, x_1390.w);
        let x_1392 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1392.x, x_1392.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1396 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1396 * 0.081632003f);
        let x_1400 : f32 = u_xlat11.y;
        u_xlat9.x = x_1400;
        let x_1402 : vec4<f32> = u_xlat7;
        let x_1409 : vec2<f32> = ((vec2<f32>(x_1402.x, x_1402.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1410 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1410.x, x_1409.x, x_1410.z, x_1409.y);
        let x_1412 : vec4<f32> = u_xlat7;
        let x_1416 : vec2<f32> = ((vec2<f32>(x_1412.x, x_1412.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1417 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1416.x, x_1417.y, x_1416.y, x_1417.w);
        let x_1420 : f32 = u_xlat49.x;
        u_xlat8.y = x_1420;
        let x_1423 : f32 = u_xlat10.y;
        u_xlat8.w = x_1423;
        let x_1425 : vec4<f32> = u_xlat8;
        let x_1426 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1425 + x_1426);
        let x_1428 : vec4<f32> = u_xlat7;
        let x_1431 : vec2<f32> = ((vec2<f32>(x_1428.y, x_1428.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1432 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1432.x, x_1431.x, x_1432.z, x_1431.y);
        let x_1434 : vec4<f32> = u_xlat7;
        let x_1437 : vec2<f32> = ((vec2<f32>(x_1434.y, x_1434.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1438 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1437.x, x_1438.y, x_1437.y, x_1438.w);
        let x_1441 : f32 = u_xlat49.y;
        u_xlat10.y = x_1441;
        let x_1443 : vec4<f32> = u_xlat10;
        let x_1444 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1443 + x_1444);
        let x_1446 : vec4<f32> = u_xlat8;
        let x_1447 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1446 / x_1447);
        let x_1449 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1449 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1455 : vec4<f32> = u_xlat10;
        let x_1456 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1455 / x_1456);
        let x_1458 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1458 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1460 : vec4<f32> = u_xlat8;
        let x_1463 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1460.w, x_1460.x, x_1460.y, x_1460.z) * vec4<f32>(x_1463.x, x_1463.x, x_1463.x, x_1463.x));
        let x_1466 : vec4<f32> = u_xlat10;
        let x_1469 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1466.x, x_1466.w, x_1466.y, x_1466.z) * vec4<f32>(x_1469.y, x_1469.y, x_1469.y, x_1469.y));
        let x_1472 : vec4<f32> = u_xlat8;
        let x_1473 : vec3<f32> = vec3<f32>(x_1472.y, x_1472.z, x_1472.w);
        let x_1474 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1473.x, x_1474.y, x_1473.y, x_1473.z);
        let x_1477 : f32 = u_xlat10.x;
        u_xlat11.y = x_1477;
        let x_1479 : vec3<f32> = u_xlat26;
        let x_1482 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1485 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1479.x, x_1479.y, x_1479.x, x_1479.y) * vec4<f32>(x_1482.x, x_1482.y, x_1482.x, x_1482.y)) + vec4<f32>(x_1485.x, x_1485.y, x_1485.z, x_1485.y));
        let x_1488 : vec3<f32> = u_xlat26;
        let x_1491 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1494 : vec4<f32> = u_xlat11;
        let x_1496 : vec2<f32> = ((vec2<f32>(x_1488.x, x_1488.y) * vec2<f32>(x_1491.x, x_1491.y)) + vec2<f32>(x_1494.w, x_1494.y));
        let x_1497 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1496.x, x_1496.y, x_1497.z, x_1497.w);
        let x_1500 : f32 = u_xlat11.y;
        u_xlat8.y = x_1500;
        let x_1503 : f32 = u_xlat10.z;
        u_xlat11.y = x_1503;
        let x_1505 : vec3<f32> = u_xlat26;
        let x_1508 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1511 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1505.x, x_1505.y, x_1505.x, x_1505.y) * vec4<f32>(x_1508.x, x_1508.y, x_1508.x, x_1508.y)) + vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1511.y));
        let x_1515 : vec3<f32> = u_xlat26;
        let x_1518 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1521 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1515.x, x_1515.y) * vec2<f32>(x_1518.x, x_1518.y)) + vec2<f32>(x_1521.w, x_1521.y));
        let x_1525 : f32 = u_xlat11.y;
        u_xlat8.z = x_1525;
        let x_1527 : vec3<f32> = u_xlat26;
        let x_1530 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1533 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1527.x, x_1527.y, x_1527.x, x_1527.y) * vec4<f32>(x_1530.x, x_1530.y, x_1530.x, x_1530.y)) + vec4<f32>(x_1533.x, x_1533.y, x_1533.x, x_1533.z));
        let x_1537 : f32 = u_xlat10.w;
        u_xlat11.y = x_1537;
        let x_1540 : vec3<f32> = u_xlat26;
        let x_1543 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1546 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1540.x, x_1540.y, x_1540.x, x_1540.y) * vec4<f32>(x_1543.x, x_1543.y, x_1543.x, x_1543.y)) + vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1546.y));
        let x_1550 : vec3<f32> = u_xlat26;
        let x_1553 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1556 : vec4<f32> = u_xlat11;
        let x_1558 : vec2<f32> = ((vec2<f32>(x_1550.x, x_1550.y) * vec2<f32>(x_1553.x, x_1553.y)) + vec2<f32>(x_1556.w, x_1556.y));
        let x_1559 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1558.x, x_1558.y, x_1559.z);
        let x_1562 : f32 = u_xlat11.y;
        u_xlat8.w = x_1562;
        let x_1565 : vec3<f32> = u_xlat26;
        let x_1568 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1571 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1565.x, x_1565.y) * vec2<f32>(x_1568.x, x_1568.y)) + vec2<f32>(x_1571.x, x_1571.w));
        let x_1574 : vec4<f32> = u_xlat11;
        let x_1575 : vec3<f32> = vec3<f32>(x_1574.x, x_1574.z, x_1574.w);
        let x_1576 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1575.x, x_1576.y, x_1575.y, x_1575.z);
        let x_1578 : vec3<f32> = u_xlat26;
        let x_1581 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1584 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1578.x, x_1578.y, x_1578.x, x_1578.y) * vec4<f32>(x_1581.x, x_1581.y, x_1581.x, x_1581.y)) + vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1584.y));
        let x_1588 : vec3<f32> = u_xlat26;
        let x_1591 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1594 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1588.x, x_1588.y) * vec2<f32>(x_1591.x, x_1591.y)) + vec2<f32>(x_1594.w, x_1594.y));
        let x_1598 : f32 = u_xlat8.x;
        u_xlat10.x = x_1598;
        let x_1600 : vec3<f32> = u_xlat26;
        let x_1603 : vec4<f32> = x_727.x_MainLightShadowmapSize;
        let x_1606 : vec4<f32> = u_xlat10;
        let x_1608 : vec2<f32> = ((vec2<f32>(x_1600.x, x_1600.y) * vec2<f32>(x_1603.x, x_1603.y)) + vec2<f32>(x_1606.x, x_1606.y));
        let x_1609 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1608.x, x_1608.y, x_1609.z);
        let x_1612 : vec4<f32> = u_xlat7;
        let x_1614 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1612.x, x_1612.x, x_1612.x, x_1612.x) * x_1614);
        let x_1617 : vec4<f32> = u_xlat7;
        let x_1619 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1617.y, x_1617.y, x_1617.y, x_1617.y) * x_1619);
        let x_1622 : vec4<f32> = u_xlat7;
        let x_1624 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1622.z, x_1622.z, x_1622.z, x_1622.z) * x_1624);
        let x_1626 : vec4<f32> = u_xlat7;
        let x_1628 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1626.w, x_1626.w, x_1626.w, x_1626.w) * x_1628);
        let x_1631 : vec4<f32> = u_xlat12;
        let x_1632 : vec2<f32> = vec2<f32>(x_1631.x, x_1631.y);
        let x_1634 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
        let x_1641 : vec3<f32> = txVec13;
        let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1641.xy, x_1641.z);
        u_xlat68 = x_1643;
        let x_1645 : vec4<f32> = u_xlat12;
        let x_1646 : vec2<f32> = vec2<f32>(x_1645.z, x_1645.w);
        let x_1648 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1646.x, x_1646.y, x_1648);
        let x_1656 : vec3<f32> = txVec14;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1656.xy, x_1656.z);
        u_xlat69 = x_1658;
        let x_1659 : f32 = u_xlat69;
        let x_1661 : f32 = u_xlat18.y;
        u_xlat69 = (x_1659 * x_1661);
        let x_1664 : f32 = u_xlat18.x;
        let x_1665 : f32 = u_xlat68;
        let x_1667 : f32 = u_xlat69;
        u_xlat68 = ((x_1664 * x_1665) + x_1667);
        let x_1670 : vec4<f32> = u_xlat13;
        let x_1671 : vec2<f32> = vec2<f32>(x_1670.x, x_1670.y);
        let x_1673 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
        let x_1680 : vec3<f32> = txVec15;
        let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1680.xy, x_1680.z);
        u_xlat69 = x_1682;
        let x_1684 : f32 = u_xlat18.z;
        let x_1685 : f32 = u_xlat69;
        let x_1687 : f32 = u_xlat68;
        u_xlat68 = ((x_1684 * x_1685) + x_1687);
        let x_1690 : vec4<f32> = u_xlat15;
        let x_1691 : vec2<f32> = vec2<f32>(x_1690.x, x_1690.y);
        let x_1693 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1700 : vec3<f32> = txVec16;
        let x_1702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1700.xy, x_1700.z);
        u_xlat69 = x_1702;
        let x_1704 : f32 = u_xlat18.w;
        let x_1705 : f32 = u_xlat69;
        let x_1707 : f32 = u_xlat68;
        u_xlat68 = ((x_1704 * x_1705) + x_1707);
        let x_1710 : vec4<f32> = u_xlat14;
        let x_1711 : vec2<f32> = vec2<f32>(x_1710.x, x_1710.y);
        let x_1713 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
        let x_1720 : vec3<f32> = txVec17;
        let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1720.xy, x_1720.z);
        u_xlat69 = x_1722;
        let x_1724 : f32 = u_xlat19.x;
        let x_1725 : f32 = u_xlat69;
        let x_1727 : f32 = u_xlat68;
        u_xlat68 = ((x_1724 * x_1725) + x_1727);
        let x_1730 : vec4<f32> = u_xlat14;
        let x_1731 : vec2<f32> = vec2<f32>(x_1730.z, x_1730.w);
        let x_1733 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1731.x, x_1731.y, x_1733);
        let x_1740 : vec3<f32> = txVec18;
        let x_1742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1740.xy, x_1740.z);
        u_xlat69 = x_1742;
        let x_1744 : f32 = u_xlat19.y;
        let x_1745 : f32 = u_xlat69;
        let x_1747 : f32 = u_xlat68;
        u_xlat68 = ((x_1744 * x_1745) + x_1747);
        let x_1750 : vec2<f32> = u_xlat55;
        let x_1752 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec19;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1759.xy, x_1759.z);
        u_xlat69 = x_1761;
        let x_1763 : f32 = u_xlat19.z;
        let x_1764 : f32 = u_xlat69;
        let x_1766 : f32 = u_xlat68;
        u_xlat68 = ((x_1763 * x_1764) + x_1766);
        let x_1769 : vec4<f32> = u_xlat15;
        let x_1770 : vec2<f32> = vec2<f32>(x_1769.z, x_1769.w);
        let x_1772 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1770.x, x_1770.y, x_1772);
        let x_1779 : vec3<f32> = txVec20;
        let x_1781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1779.xy, x_1779.z);
        u_xlat69 = x_1781;
        let x_1783 : f32 = u_xlat19.w;
        let x_1784 : f32 = u_xlat69;
        let x_1786 : f32 = u_xlat68;
        u_xlat68 = ((x_1783 * x_1784) + x_1786);
        let x_1789 : vec4<f32> = u_xlat16;
        let x_1790 : vec2<f32> = vec2<f32>(x_1789.x, x_1789.y);
        let x_1792 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1790.x, x_1790.y, x_1792);
        let x_1799 : vec3<f32> = txVec21;
        let x_1801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1799.xy, x_1799.z);
        u_xlat69 = x_1801;
        let x_1803 : f32 = u_xlat20.x;
        let x_1804 : f32 = u_xlat69;
        let x_1806 : f32 = u_xlat68;
        u_xlat68 = ((x_1803 * x_1804) + x_1806);
        let x_1809 : vec4<f32> = u_xlat16;
        let x_1810 : vec2<f32> = vec2<f32>(x_1809.z, x_1809.w);
        let x_1812 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1810.x, x_1810.y, x_1812);
        let x_1819 : vec3<f32> = txVec22;
        let x_1821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1819.xy, x_1819.z);
        u_xlat69 = x_1821;
        let x_1823 : f32 = u_xlat20.y;
        let x_1824 : f32 = u_xlat69;
        let x_1826 : f32 = u_xlat68;
        u_xlat68 = ((x_1823 * x_1824) + x_1826);
        let x_1829 : vec3<f32> = u_xlat29;
        let x_1830 : vec2<f32> = vec2<f32>(x_1829.x, x_1829.y);
        let x_1832 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
        let x_1839 : vec3<f32> = txVec23;
        let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1839.xy, x_1839.z);
        u_xlat69 = x_1841;
        let x_1843 : f32 = u_xlat20.z;
        let x_1844 : f32 = u_xlat69;
        let x_1846 : f32 = u_xlat68;
        u_xlat68 = ((x_1843 * x_1844) + x_1846);
        let x_1849 : vec2<f32> = u_xlat17;
        let x_1851 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec24;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1858.xy, x_1858.z);
        u_xlat69 = x_1860;
        let x_1862 : f32 = u_xlat20.w;
        let x_1863 : f32 = u_xlat69;
        let x_1865 : f32 = u_xlat68;
        u_xlat68 = ((x_1862 * x_1863) + x_1865);
        let x_1868 : vec4<f32> = u_xlat11;
        let x_1869 : vec2<f32> = vec2<f32>(x_1868.x, x_1868.y);
        let x_1871 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
        let x_1878 : vec3<f32> = txVec25;
        let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1878.xy, x_1878.z);
        u_xlat69 = x_1880;
        let x_1882 : f32 = u_xlat7.x;
        let x_1883 : f32 = u_xlat69;
        let x_1885 : f32 = u_xlat68;
        u_xlat68 = ((x_1882 * x_1883) + x_1885);
        let x_1888 : vec4<f32> = u_xlat11;
        let x_1889 : vec2<f32> = vec2<f32>(x_1888.z, x_1888.w);
        let x_1891 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1889.x, x_1889.y, x_1891);
        let x_1898 : vec3<f32> = txVec26;
        let x_1900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1898.xy, x_1898.z);
        u_xlat69 = x_1900;
        let x_1902 : f32 = u_xlat7.y;
        let x_1903 : f32 = u_xlat69;
        let x_1905 : f32 = u_xlat68;
        u_xlat68 = ((x_1902 * x_1903) + x_1905);
        let x_1908 : vec2<f32> = u_xlat52;
        let x_1910 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1908.x, x_1908.y, x_1910);
        let x_1917 : vec3<f32> = txVec27;
        let x_1919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1917.xy, x_1917.z);
        u_xlat69 = x_1919;
        let x_1921 : f32 = u_xlat7.z;
        let x_1922 : f32 = u_xlat69;
        let x_1924 : f32 = u_xlat68;
        u_xlat68 = ((x_1921 * x_1922) + x_1924);
        let x_1927 : vec3<f32> = u_xlat26;
        let x_1928 : vec2<f32> = vec2<f32>(x_1927.x, x_1927.y);
        let x_1930 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
        let x_1937 : vec3<f32> = txVec28;
        let x_1939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1937.xy, x_1937.z);
        u_xlat26.x = x_1939;
        let x_1942 : f32 = u_xlat7.w;
        let x_1944 : f32 = u_xlat26.x;
        let x_1946 : f32 = u_xlat68;
        u_xlat67 = ((x_1942 * x_1944) + x_1946);
      }
    }
  } else {
    let x_1950 : vec4<f32> = vs_INTERP8;
    let x_1951 : vec2<f32> = vec2<f32>(x_1950.x, x_1950.y);
    let x_1953 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1951.x, x_1951.y, x_1953);
    let x_1960 : vec3<f32> = txVec29;
    let x_1962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1960.xy, x_1960.z);
    u_xlat67 = x_1962;
  }
  let x_1964 : f32 = x_727.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1964) + 1.0f);
  let x_1968 : f32 = u_xlat67;
  let x_1970 : f32 = x_727.x_MainLightShadowParams.x;
  let x_1973 : f32 = u_xlat26.x;
  u_xlat67 = ((x_1968 * x_1970) + x_1973);
  let x_1976 : f32 = vs_INTERP8.z;
  u_xlatb26.x = (0.0f >= x_1976);
  let x_1981 : f32 = vs_INTERP8.z;
  u_xlatb47 = (x_1981 >= 1.0f);
  let x_1983 : bool = u_xlatb47;
  let x_1985 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_1983 | x_1985);
  let x_1989 : bool = u_xlatb26.x;
  let x_1990 : f32 = u_xlat67;
  u_xlat67 = select(x_1990, 1.0f, x_1989);
  let x_1992 : vec3<f32> = vs_INTERP0;
  let x_1994 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1992 + -(x_1994));
  let x_1997 : vec3<f32> = u_xlat26;
  let x_1998 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1997, x_1998);
  let x_2002 : f32 = u_xlat26.x;
  let x_2004 : f32 = x_727.x_MainLightShadowParams.z;
  let x_2007 : f32 = x_727.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_2002 * x_2004) + x_2007);
  let x_2011 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2011, 0.0f, 1.0f);
  let x_2014 : f32 = u_xlat67;
  u_xlat47 = (-(x_2014) + 1.0f);
  let x_2018 : f32 = u_xlat26.x;
  let x_2019 : f32 = u_xlat47;
  let x_2021 : f32 = u_xlat67;
  u_xlat67 = ((x_2018 * x_2019) + x_2021);
  let x_2029 : f32 = x_2027.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_2029 == -1.0f));
  let x_2033 : bool = u_xlatb26.x;
  if (x_2033) {
    let x_2036 : vec3<f32> = vs_INTERP0;
    let x_2039 : vec4<f32> = x_2027.x_MainLightWorldToLight[1i];
    let x_2041 : vec2<f32> = (vec2<f32>(x_2036.y, x_2036.y) * vec2<f32>(x_2039.x, x_2039.y));
    let x_2042 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2041.x, x_2041.y, x_2042.z);
    let x_2045 : vec4<f32> = x_2027.x_MainLightWorldToLight[0i];
    let x_2047 : vec3<f32> = vs_INTERP0;
    let x_2050 : vec3<f32> = u_xlat26;
    let x_2052 : vec2<f32> = ((vec2<f32>(x_2045.x, x_2045.y) * vec2<f32>(x_2047.x, x_2047.x)) + vec2<f32>(x_2050.x, x_2050.y));
    let x_2053 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2052.x, x_2052.y, x_2053.z);
    let x_2056 : vec4<f32> = x_2027.x_MainLightWorldToLight[2i];
    let x_2058 : vec3<f32> = vs_INTERP0;
    let x_2061 : vec3<f32> = u_xlat26;
    let x_2063 : vec2<f32> = ((vec2<f32>(x_2056.x, x_2056.y) * vec2<f32>(x_2058.z, x_2058.z)) + vec2<f32>(x_2061.x, x_2061.y));
    let x_2064 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2063.x, x_2063.y, x_2064.z);
    let x_2066 : vec3<f32> = u_xlat26;
    let x_2069 : vec4<f32> = x_2027.x_MainLightWorldToLight[3i];
    let x_2071 : vec2<f32> = (vec2<f32>(x_2066.x, x_2066.y) + vec2<f32>(x_2069.x, x_2069.y));
    let x_2072 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2071.x, x_2071.y, x_2072.z);
    let x_2074 : vec3<f32> = u_xlat26;
    let x_2077 : vec2<f32> = ((vec2<f32>(x_2074.x, x_2074.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2078 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2077.x, x_2077.y, x_2078.z);
    let x_2085 : vec3<f32> = u_xlat26;
    let x_2088 : f32 = x_44.x_GlobalMipBias.x;
    let x_2089 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2085.x, x_2085.y), x_2088);
    u_xlat7 = x_2089;
    let x_2091 : f32 = x_2027.x_MainLightCookieTextureFormat;
    let x_2093 : f32 = x_2027.x_MainLightCookieTextureFormat;
    let x_2095 : f32 = x_2027.x_MainLightCookieTextureFormat;
    let x_2097 : f32 = x_2027.x_MainLightCookieTextureFormat;
    let x_2098 : vec4<f32> = vec4<f32>(x_2091, x_2093, x_2095, x_2097);
    let x_2106 : vec4<bool> = (vec4<f32>(x_2098.x, x_2098.y, x_2098.z, x_2098.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_2106.x, x_2106.y);
    let x_2109 : bool = u_xlatb26.y;
    if (x_2109) {
      let x_2114 : f32 = u_xlat7.w;
      x_2110 = x_2114;
    } else {
      let x_2117 : f32 = u_xlat7.x;
      x_2110 = x_2117;
    }
    let x_2118 : f32 = x_2110;
    u_xlat47 = x_2118;
    let x_2120 : bool = u_xlatb26.x;
    if (x_2120) {
      let x_2124 : vec4<f32> = u_xlat7;
      x_2121 = vec3<f32>(x_2124.x, x_2124.y, x_2124.z);
    } else {
      let x_2127 : f32 = u_xlat47;
      x_2121 = vec3<f32>(x_2127, x_2127, x_2127);
    }
    let x_2129 : vec3<f32> = x_2121;
    u_xlat26 = x_2129;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_2134 : vec3<f32> = u_xlat26;
  let x_2136 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (x_2134 * vec3<f32>(x_2136.x, x_2136.y, x_2136.z));
  let x_2139 : vec3<f32> = u_xlat5;
  let x_2141 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2139.x, x_2139.x, x_2139.x) * x_2141);
  let x_2143 : vec4<f32> = u_xlat3;
  let x_2146 : vec4<f32> = u_xlat1;
  u_xlat69 = dot(-(vec3<f32>(x_2143.x, x_2143.y, x_2143.z)), vec3<f32>(x_2146.x, x_2146.y, x_2146.z));
  let x_2149 : f32 = u_xlat69;
  let x_2150 : f32 = u_xlat69;
  u_xlat69 = (x_2149 + x_2150);
  let x_2152 : vec4<f32> = u_xlat1;
  let x_2154 : f32 = u_xlat69;
  let x_2158 : vec4<f32> = u_xlat3;
  let x_2161 : vec3<f32> = ((vec3<f32>(x_2152.x, x_2152.y, x_2152.z) * -(vec3<f32>(x_2154, x_2154, x_2154))) + -(vec3<f32>(x_2158.x, x_2158.y, x_2158.z)));
  let x_2162 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2161.x, x_2161.y, x_2161.z, x_2162.w);
  let x_2164 : vec4<f32> = u_xlat1;
  let x_2166 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_2164.x, x_2164.y, x_2164.z), vec3<f32>(x_2166.x, x_2166.y, x_2166.z));
  let x_2169 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2169, 0.0f, 1.0f);
  let x_2171 : f32 = u_xlat69;
  u_xlat69 = (-(x_2171) + 1.0f);
  let x_2174 : f32 = u_xlat69;
  let x_2175 : f32 = u_xlat69;
  u_xlat69 = (x_2174 * x_2175);
  let x_2177 : f32 = u_xlat69;
  let x_2178 : f32 = u_xlat69;
  u_xlat69 = (x_2177 * x_2178);
  let x_2181 : f32 = u_xlat64;
  u_xlat70 = ((-(x_2181) * 0.699999988f) + 1.700000048f);
  let x_2187 : f32 = u_xlat64;
  let x_2188 : f32 = u_xlat70;
  u_xlat64 = (x_2187 * x_2188);
  let x_2190 : f32 = u_xlat64;
  u_xlat64 = (x_2190 * 6.0f);
  let x_2200 : vec4<f32> = u_xlat7;
  let x_2202 : f32 = u_xlat64;
  let x_2203 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2200.x, x_2200.y, x_2200.z), x_2202);
  u_xlat7 = x_2203;
  let x_2205 : f32 = u_xlat7.w;
  u_xlat64 = (x_2205 + -1.0f);
  let x_2208 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2209 : f32 = u_xlat64;
  u_xlat64 = ((x_2208 * x_2209) + 1.0f);
  let x_2212 : f32 = u_xlat64;
  u_xlat64 = max(x_2212, 0.0f);
  let x_2214 : f32 = u_xlat64;
  u_xlat64 = log2(x_2214);
  let x_2216 : f32 = u_xlat64;
  let x_2218 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat64 = (x_2216 * x_2218);
  let x_2220 : f32 = u_xlat64;
  u_xlat64 = exp2(x_2220);
  let x_2222 : f32 = u_xlat64;
  let x_2224 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat64 = (x_2222 * x_2224);
  let x_2226 : vec4<f32> = u_xlat7;
  let x_2228 : f32 = u_xlat64;
  let x_2230 : vec3<f32> = (vec3<f32>(x_2226.x, x_2226.y, x_2226.z) * vec3<f32>(x_2228, x_2228, x_2228));
  let x_2231 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2231.w);
  let x_2233 : vec4<f32> = u_xlat2;
  let x_2235 : vec4<f32> = u_xlat2;
  let x_2239 : vec2<f32> = ((vec2<f32>(x_2233.x, x_2233.x) * vec2<f32>(x_2235.x, x_2235.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2240 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2239.x, x_2239.y, x_2240.z, x_2240.w);
  let x_2243 : f32 = u_xlat8.y;
  u_xlat64 = (1.0f / x_2243);
  let x_2245 : vec4<f32> = u_xlat0;
  let x_2248 : f32 = u_xlat65;
  u_xlat29 = (-(vec3<f32>(x_2245.x, x_2245.y, x_2245.z)) + vec3<f32>(x_2248, x_2248, x_2248));
  let x_2251 : f32 = u_xlat69;
  let x_2253 : vec3<f32> = u_xlat29;
  let x_2255 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2251, x_2251, x_2251) * x_2253) + vec3<f32>(x_2255.x, x_2255.y, x_2255.z));
  let x_2258 : f32 = u_xlat64;
  let x_2260 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2258, x_2258, x_2258) * x_2260);
  let x_2262 : vec4<f32> = u_xlat7;
  let x_2264 : vec3<f32> = u_xlat29;
  let x_2265 : vec3<f32> = (vec3<f32>(x_2262.x, x_2262.y, x_2262.z) * x_2264);
  let x_2266 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
  let x_2268 : vec4<f32> = u_xlat4;
  let x_2270 : vec3<f32> = u_xlat6;
  let x_2272 : vec4<f32> = u_xlat7;
  let x_2274 : vec3<f32> = ((vec3<f32>(x_2268.x, x_2268.y, x_2268.z) * x_2270) + vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
  let x_2275 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
  let x_2277 : f32 = u_xlat67;
  let x_2280 : f32 = x_359.unity_LightData.z;
  u_xlat64 = (x_2277 * x_2280);
  let x_2282 : vec4<f32> = u_xlat1;
  let x_2285 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2282.x, x_2282.y, x_2282.z), vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
  let x_2290 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2290, 0.0f, 1.0f);
  let x_2293 : f32 = u_xlat64;
  let x_2295 : f32 = u_xlat2.x;
  u_xlat64 = (x_2293 * x_2295);
  let x_2297 : f32 = u_xlat64;
  let x_2299 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2297, x_2297, x_2297) * x_2299);
  let x_2301 : vec4<f32> = u_xlat3;
  let x_2304 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2306 : vec3<f32> = (vec3<f32>(x_2301.x, x_2301.y, x_2301.z) + vec3<f32>(x_2304.x, x_2304.y, x_2304.z));
  let x_2307 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
  let x_2309 : vec4<f32> = u_xlat7;
  let x_2311 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2309.x, x_2309.y, x_2309.z), vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
  let x_2314 : f32 = u_xlat64;
  u_xlat64 = max(x_2314, 1.17549435e-37f);
  let x_2317 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_2317);
  let x_2319 : f32 = u_xlat64;
  let x_2321 : vec4<f32> = u_xlat7;
  let x_2323 : vec3<f32> = (vec3<f32>(x_2319, x_2319, x_2319) * vec3<f32>(x_2321.x, x_2321.y, x_2321.z));
  let x_2324 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
  let x_2326 : vec4<f32> = u_xlat1;
  let x_2328 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2326.x, x_2326.y, x_2326.z), vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
  let x_2331 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2331, 0.0f, 1.0f);
  let x_2334 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2336 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_2334.x, x_2334.y, x_2334.z), vec3<f32>(x_2336.x, x_2336.y, x_2336.z));
  let x_2341 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2341, 0.0f, 1.0f);
  let x_2344 : f32 = u_xlat64;
  let x_2345 : f32 = u_xlat64;
  u_xlat64 = (x_2344 * x_2345);
  let x_2347 : f32 = u_xlat64;
  let x_2349 : f32 = u_xlat8.x;
  u_xlat64 = ((x_2347 * x_2349) + 1.000010014f);
  let x_2354 : f32 = u_xlat2.x;
  let x_2356 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2354 * x_2356);
  let x_2359 : f32 = u_xlat64;
  let x_2360 : f32 = u_xlat64;
  u_xlat64 = (x_2359 * x_2360);
  let x_2363 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2363, 0.100000001f);
  let x_2367 : f32 = u_xlat64;
  let x_2369 : f32 = u_xlat2.x;
  u_xlat64 = (x_2367 * x_2369);
  let x_2371 : f32 = u_xlat66;
  let x_2372 : f32 = u_xlat64;
  u_xlat64 = (x_2371 * x_2372);
  let x_2374 : f32 = u_xlat23;
  let x_2375 : f32 = u_xlat64;
  u_xlat64 = (x_2374 / x_2375);
  let x_2377 : vec4<f32> = u_xlat0;
  let x_2379 : f32 = u_xlat64;
  let x_2382 : vec3<f32> = u_xlat6;
  let x_2383 : vec3<f32> = ((vec3<f32>(x_2377.x, x_2377.y, x_2377.z) * vec3<f32>(x_2379, x_2379, x_2379)) + x_2382);
  let x_2384 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2384.w);
  let x_2386 : vec3<f32> = u_xlat26;
  let x_2387 : vec4<f32> = u_xlat7;
  u_xlat26 = (x_2386 * vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
  let x_2391 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2393 : f32 = x_359.unity_LightData.y;
  u_xlat64 = min(x_2391, x_2393);
  let x_2397 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_2397));
  let x_2403 : f32 = x_2027.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2405 : f32 = x_2027.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2407 : f32 = x_2027.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2409 : f32 = x_2027.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2410 : vec4<f32> = vec4<f32>(x_2403, x_2405, x_2407, x_2409);
  let x_2417 : vec4<bool> = (vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2410.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2418 : vec2<bool> = vec2<bool>(x_2417.x, x_2417.w);
  let x_2419 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2418.x, x_2419.y, x_2419.z, x_2418.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2430 : u32 = u_xlatu_loop_1;
    let x_2431 : u32 = u_xlatu64;
    if ((x_2430 < x_2431)) {
    } else {
      break;
    }
    let x_2434 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2434 >> 2u);
    let x_2438 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2438 & 3u));
    let x_2441 : u32 = u_xlatu69;
    let x_2444 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2441)];
    let x_2454 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2459 : vec4<u32> = indexable[x_2454];
    u_xlat69 = dot(x_2444, bitcast<vec4<f32>>(x_2459));
    let x_2462 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2462));
    let x_2465 : vec3<f32> = vs_INTERP0;
    let x_2477 : u32 = u_xlatu69;
    let x_2480 : vec4<f32> = x_2476.x_AdditionalLightsPosition[bitcast<i32>(x_2477)];
    let x_2483 : u32 = u_xlatu69;
    let x_2486 : vec4<f32> = x_2476.x_AdditionalLightsPosition[bitcast<i32>(x_2483)];
    u_xlat29 = ((-(x_2465) * vec3<f32>(x_2480.w, x_2480.w, x_2480.w)) + vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
    let x_2489 : vec3<f32> = u_xlat29;
    let x_2490 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_2489, x_2490);
    let x_2492 : f32 = u_xlat70;
    u_xlat70 = max(x_2492, 6.10351562e-05f);
    let x_2495 : f32 = u_xlat70;
    u_xlat9.x = inverseSqrt(x_2495);
    let x_2499 : vec3<f32> = u_xlat29;
    let x_2500 : vec4<f32> = u_xlat9;
    u_xlat30 = (x_2499 * vec3<f32>(x_2500.x, x_2500.x, x_2500.x));
    let x_2503 : f32 = u_xlat70;
    u_xlat10.x = (1.0f / x_2503);
    let x_2506 : f32 = u_xlat70;
    let x_2507 : u32 = u_xlatu69;
    let x_2510 : f32 = x_2476.x_AdditionalLightsAttenuation[bitcast<i32>(x_2507)].x;
    u_xlat70 = (x_2506 * x_2510);
    let x_2512 : f32 = u_xlat70;
    let x_2514 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2512) * x_2514) + 1.0f);
    let x_2517 : f32 = u_xlat70;
    u_xlat70 = max(x_2517, 0.0f);
    let x_2519 : f32 = u_xlat70;
    let x_2520 : f32 = u_xlat70;
    u_xlat70 = (x_2519 * x_2520);
    let x_2522 : f32 = u_xlat70;
    let x_2524 : f32 = u_xlat10.x;
    u_xlat70 = (x_2522 * x_2524);
    let x_2526 : u32 = u_xlatu69;
    let x_2529 : vec4<f32> = x_2476.x_AdditionalLightsSpotDir[bitcast<i32>(x_2526)];
    let x_2531 : vec3<f32> = u_xlat30;
    u_xlat10.x = dot(vec3<f32>(x_2529.x, x_2529.y, x_2529.z), x_2531);
    let x_2535 : f32 = u_xlat10.x;
    let x_2536 : u32 = u_xlatu69;
    let x_2539 : f32 = x_2476.x_AdditionalLightsAttenuation[bitcast<i32>(x_2536)].z;
    let x_2541 : u32 = u_xlatu69;
    let x_2544 : f32 = x_2476.x_AdditionalLightsAttenuation[bitcast<i32>(x_2541)].w;
    u_xlat10.x = ((x_2535 * x_2539) + x_2544);
    let x_2548 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2548, 0.0f, 1.0f);
    let x_2552 : f32 = u_xlat10.x;
    let x_2554 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2552 * x_2554);
    let x_2557 : f32 = u_xlat70;
    let x_2559 : f32 = u_xlat10.x;
    u_xlat70 = (x_2557 * x_2559);
    let x_2562 : u32 = u_xlatu69;
    u_xlatu10 = (x_2562 >> 5u);
    let x_2565 : u32 = u_xlatu69;
    u_xlati31 = (1i << bitcast<u32>((bitcast<i32>(x_2565) & 31i)));
    let x_2571 : i32 = u_xlati31;
    let x_2573 : u32 = u_xlatu10;
    let x_2576 : f32 = x_2027.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2573)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_2571) & bitcast<u32>(x_2576)));
    let x_2580 : i32 = u_xlati10;
    if ((x_2580 != 0i)) {
      let x_2590 : u32 = u_xlatu69;
      let x_2593 : f32 = x_2589.x_AdditionalLightsLightTypes[bitcast<i32>(x_2590)].el;
      u_xlati10 = i32(x_2593);
      let x_2595 : i32 = u_xlati10;
      u_xlati31 = select(1i, 0i, (x_2595 != 0i));
      let x_2599 : u32 = u_xlatu69;
      u_xlati52 = (bitcast<i32>(x_2599) << bitcast<u32>(2i));
      let x_2602 : i32 = u_xlati31;
      if ((x_2602 != 0i)) {
        let x_2606 : vec3<f32> = vs_INTERP0;
        let x_2608 : i32 = u_xlati52;
        let x_2611 : i32 = u_xlati52;
        let x_2615 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[((x_2608 + 1i) / 4i)][((x_2611 + 1i) % 4i)];
        let x_2617 : vec3<f32> = (vec3<f32>(x_2606.y, x_2606.y, x_2606.y) * vec3<f32>(x_2615.x, x_2615.y, x_2615.w));
        let x_2618 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2617.x, x_2617.y, x_2617.z, x_2618.w);
        let x_2620 : i32 = u_xlati52;
        let x_2622 : i32 = u_xlati52;
        let x_2625 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[(x_2620 / 4i)][(x_2622 % 4i)];
        let x_2627 : vec3<f32> = vs_INTERP0;
        let x_2630 : vec4<f32> = u_xlat11;
        let x_2632 : vec3<f32> = ((vec3<f32>(x_2625.x, x_2625.y, x_2625.w) * vec3<f32>(x_2627.x, x_2627.x, x_2627.x)) + vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
        let x_2633 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2633.w);
        let x_2635 : i32 = u_xlati52;
        let x_2638 : i32 = u_xlati52;
        let x_2642 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[((x_2635 + 2i) / 4i)][((x_2638 + 2i) % 4i)];
        let x_2644 : vec3<f32> = vs_INTERP0;
        let x_2647 : vec4<f32> = u_xlat11;
        let x_2649 : vec3<f32> = ((vec3<f32>(x_2642.x, x_2642.y, x_2642.w) * vec3<f32>(x_2644.z, x_2644.z, x_2644.z)) + vec3<f32>(x_2647.x, x_2647.y, x_2647.z));
        let x_2650 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2649.x, x_2649.y, x_2649.z, x_2650.w);
        let x_2652 : vec4<f32> = u_xlat11;
        let x_2654 : i32 = u_xlati52;
        let x_2657 : i32 = u_xlati52;
        let x_2661 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[((x_2654 + 3i) / 4i)][((x_2657 + 3i) % 4i)];
        let x_2663 : vec3<f32> = (vec3<f32>(x_2652.x, x_2652.y, x_2652.z) + vec3<f32>(x_2661.x, x_2661.y, x_2661.w));
        let x_2664 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2663.x, x_2663.y, x_2663.z, x_2664.w);
        let x_2667 : vec4<f32> = u_xlat11;
        let x_2669 : vec4<f32> = u_xlat11;
        let x_2671 : vec2<f32> = (vec2<f32>(x_2667.x, x_2667.y) / vec2<f32>(x_2669.z, x_2669.z));
        let x_2672 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2671.x, x_2672.y, x_2671.y);
        let x_2674 : vec3<f32> = u_xlat31;
        let x_2677 : vec2<f32> = ((vec2<f32>(x_2674.x, x_2674.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2678 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2677.x, x_2678.y, x_2677.y);
        let x_2680 : vec3<f32> = u_xlat31;
        let x_2684 : vec2<f32> = clamp(vec2<f32>(x_2680.x, x_2680.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2685 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2684.x, x_2685.y, x_2684.y);
        let x_2687 : u32 = u_xlatu69;
        let x_2690 : vec4<f32> = x_2589.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2687)];
        let x_2692 : vec3<f32> = u_xlat31;
        let x_2695 : u32 = u_xlatu69;
        let x_2698 : vec4<f32> = x_2589.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2695)];
        let x_2700 : vec2<f32> = ((vec2<f32>(x_2690.x, x_2690.y) * vec2<f32>(x_2692.x, x_2692.z)) + vec2<f32>(x_2698.z, x_2698.w));
        let x_2701 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2700.x, x_2701.y, x_2700.y);
      } else {
        let x_2705 : i32 = u_xlati10;
        u_xlatb10 = (x_2705 == 1i);
        let x_2707 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_2707);
        let x_2709 : i32 = u_xlati10;
        if ((x_2709 != 0i)) {
          let x_2713 : vec3<f32> = vs_INTERP0;
          let x_2715 : i32 = u_xlati52;
          let x_2718 : i32 = u_xlati52;
          let x_2722 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[((x_2715 + 1i) / 4i)][((x_2718 + 1i) % 4i)];
          let x_2724 : vec2<f32> = (vec2<f32>(x_2713.y, x_2713.y) * vec2<f32>(x_2722.x, x_2722.y));
          let x_2725 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2724.x, x_2724.y, x_2725.z, x_2725.w);
          let x_2727 : i32 = u_xlati52;
          let x_2729 : i32 = u_xlati52;
          let x_2732 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[(x_2727 / 4i)][(x_2729 % 4i)];
          let x_2734 : vec3<f32> = vs_INTERP0;
          let x_2737 : vec4<f32> = u_xlat11;
          let x_2739 : vec2<f32> = ((vec2<f32>(x_2732.x, x_2732.y) * vec2<f32>(x_2734.x, x_2734.x)) + vec2<f32>(x_2737.x, x_2737.y));
          let x_2740 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2739.x, x_2739.y, x_2740.z, x_2740.w);
          let x_2742 : i32 = u_xlati52;
          let x_2745 : i32 = u_xlati52;
          let x_2749 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[((x_2742 + 2i) / 4i)][((x_2745 + 2i) % 4i)];
          let x_2751 : vec3<f32> = vs_INTERP0;
          let x_2754 : vec4<f32> = u_xlat11;
          let x_2756 : vec2<f32> = ((vec2<f32>(x_2749.x, x_2749.y) * vec2<f32>(x_2751.z, x_2751.z)) + vec2<f32>(x_2754.x, x_2754.y));
          let x_2757 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2756.x, x_2756.y, x_2757.z, x_2757.w);
          let x_2759 : vec4<f32> = u_xlat11;
          let x_2761 : i32 = u_xlati52;
          let x_2764 : i32 = u_xlati52;
          let x_2768 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[((x_2761 + 3i) / 4i)][((x_2764 + 3i) % 4i)];
          let x_2770 : vec2<f32> = (vec2<f32>(x_2759.x, x_2759.y) + vec2<f32>(x_2768.x, x_2768.y));
          let x_2771 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2770.x, x_2770.y, x_2771.z, x_2771.w);
          let x_2773 : vec4<f32> = u_xlat11;
          let x_2776 : vec2<f32> = ((vec2<f32>(x_2773.x, x_2773.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2777 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2776.x, x_2776.y, x_2777.z, x_2777.w);
          let x_2779 : vec4<f32> = u_xlat11;
          let x_2781 : vec2<f32> = fract(vec2<f32>(x_2779.x, x_2779.y));
          let x_2782 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2781.x, x_2781.y, x_2782.z, x_2782.w);
          let x_2784 : u32 = u_xlatu69;
          let x_2787 : vec4<f32> = x_2589.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2784)];
          let x_2789 : vec4<f32> = u_xlat11;
          let x_2792 : u32 = u_xlatu69;
          let x_2795 : vec4<f32> = x_2589.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2792)];
          let x_2797 : vec2<f32> = ((vec2<f32>(x_2787.x, x_2787.y) * vec2<f32>(x_2789.x, x_2789.y)) + vec2<f32>(x_2795.z, x_2795.w));
          let x_2798 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2797.x, x_2798.y, x_2797.y);
        } else {
          let x_2801 : vec3<f32> = vs_INTERP0;
          let x_2803 : i32 = u_xlati52;
          let x_2806 : i32 = u_xlati52;
          let x_2810 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[((x_2803 + 1i) / 4i)][((x_2806 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2801.y, x_2801.y, x_2801.y, x_2801.y) * x_2810);
          let x_2812 : i32 = u_xlati52;
          let x_2814 : i32 = u_xlati52;
          let x_2817 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[(x_2812 / 4i)][(x_2814 % 4i)];
          let x_2818 : vec3<f32> = vs_INTERP0;
          let x_2821 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2817 * vec4<f32>(x_2818.x, x_2818.x, x_2818.x, x_2818.x)) + x_2821);
          let x_2823 : i32 = u_xlati52;
          let x_2826 : i32 = u_xlati52;
          let x_2830 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[((x_2823 + 2i) / 4i)][((x_2826 + 2i) % 4i)];
          let x_2831 : vec3<f32> = vs_INTERP0;
          let x_2834 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2830 * vec4<f32>(x_2831.z, x_2831.z, x_2831.z, x_2831.z)) + x_2834);
          let x_2836 : vec4<f32> = u_xlat11;
          let x_2837 : i32 = u_xlati52;
          let x_2840 : i32 = u_xlati52;
          let x_2844 : vec4<f32> = x_2589.x_AdditionalLightsWorldToLights[((x_2837 + 3i) / 4i)][((x_2840 + 3i) % 4i)];
          u_xlat11 = (x_2836 + x_2844);
          let x_2846 : vec4<f32> = u_xlat11;
          let x_2848 : vec4<f32> = u_xlat11;
          let x_2850 : vec3<f32> = (vec3<f32>(x_2846.x, x_2846.y, x_2846.z) / vec3<f32>(x_2848.w, x_2848.w, x_2848.w));
          let x_2851 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2850.x, x_2850.y, x_2850.z, x_2851.w);
          let x_2853 : vec4<f32> = u_xlat11;
          let x_2855 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_2853.x, x_2853.y, x_2853.z), vec3<f32>(x_2855.x, x_2855.y, x_2855.z));
          let x_2860 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_2860);
          let x_2863 : vec4<f32> = u_xlat10;
          let x_2865 : vec4<f32> = u_xlat11;
          let x_2867 : vec3<f32> = (vec3<f32>(x_2863.x, x_2863.x, x_2863.x) * vec3<f32>(x_2865.x, x_2865.y, x_2865.z));
          let x_2868 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2867.x, x_2867.y, x_2867.z, x_2868.w);
          let x_2870 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_2870.x, x_2870.y, x_2870.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2876 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_2876, 0.000001f);
          let x_2881 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_2881);
          let x_2884 : vec4<f32> = u_xlat10;
          let x_2886 : vec4<f32> = u_xlat11;
          let x_2888 : vec3<f32> = (vec3<f32>(x_2884.x, x_2884.x, x_2884.x) * vec3<f32>(x_2886.z, x_2886.x, x_2886.y));
          let x_2889 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2888.x, x_2888.y, x_2888.z, x_2889.w);
          let x_2892 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2892);
          let x_2896 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2896, 0.0f, 1.0f);
          let x_2900 : vec4<f32> = u_xlat12;
          let x_2903 : vec4<bool> = (vec4<f32>(x_2900.y, x_2900.z, x_2900.y, x_2900.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2903.x, x_2903.y);
          let x_2907 : bool = u_xlatb53.x;
          if (x_2907) {
            let x_2912 : f32 = u_xlat12.x;
            x_2908 = x_2912;
          } else {
            let x_2915 : f32 = u_xlat12.x;
            x_2908 = -(x_2915);
          }
          let x_2917 : f32 = x_2908;
          u_xlat53.x = x_2917;
          let x_2920 : bool = u_xlatb53.y;
          if (x_2920) {
            let x_2925 : f32 = u_xlat12.x;
            x_2921 = x_2925;
          } else {
            let x_2928 : f32 = u_xlat12.x;
            x_2921 = -(x_2928);
          }
          let x_2930 : f32 = x_2921;
          u_xlat53.y = x_2930;
          let x_2932 : vec4<f32> = u_xlat11;
          let x_2934 : vec4<f32> = u_xlat10;
          let x_2937 : vec2<f32> = u_xlat53;
          let x_2938 : vec2<f32> = ((vec2<f32>(x_2932.x, x_2932.y) * vec2<f32>(x_2934.x, x_2934.x)) + x_2937);
          let x_2939 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2938.x, x_2939.y, x_2938.y, x_2939.w);
          let x_2941 : vec4<f32> = u_xlat10;
          let x_2944 : vec2<f32> = ((vec2<f32>(x_2941.x, x_2941.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2945 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2944.x, x_2945.y, x_2944.y, x_2945.w);
          let x_2947 : vec4<f32> = u_xlat10;
          let x_2951 : vec2<f32> = clamp(vec2<f32>(x_2947.x, x_2947.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2952 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2951.x, x_2952.y, x_2951.y, x_2952.w);
          let x_2954 : u32 = u_xlatu69;
          let x_2957 : vec4<f32> = x_2589.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2954)];
          let x_2959 : vec4<f32> = u_xlat10;
          let x_2962 : u32 = u_xlatu69;
          let x_2965 : vec4<f32> = x_2589.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2962)];
          let x_2967 : vec2<f32> = ((vec2<f32>(x_2957.x, x_2957.y) * vec2<f32>(x_2959.x, x_2959.z)) + vec2<f32>(x_2965.z, x_2965.w));
          let x_2968 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2967.x, x_2968.y, x_2967.y);
        }
      }
      let x_2975 : vec3<f32> = u_xlat31;
      let x_2978 : f32 = x_44.x_GlobalMipBias.x;
      let x_2979 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2975.x, x_2975.z), x_2978);
      u_xlat10 = x_2979;
      let x_2982 : bool = u_xlatb2.w;
      if (x_2982) {
        let x_2987 : f32 = u_xlat10.w;
        x_2983 = x_2987;
      } else {
        let x_2990 : f32 = u_xlat10.x;
        x_2983 = x_2990;
      }
      let x_2991 : f32 = x_2983;
      u_xlat73 = x_2991;
      let x_2993 : bool = u_xlatb2.x;
      if (x_2993) {
        let x_2997 : vec4<f32> = u_xlat10;
        x_2994 = vec3<f32>(x_2997.x, x_2997.y, x_2997.z);
      } else {
        let x_3000 : f32 = u_xlat73;
        x_2994 = vec3<f32>(x_3000, x_3000, x_3000);
      }
      let x_3002 : vec3<f32> = x_2994;
      let x_3003 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3002.x, x_3002.y, x_3002.z, x_3003.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_3009 : vec4<f32> = u_xlat10;
    let x_3011 : u32 = u_xlatu69;
    let x_3014 : vec4<f32> = x_2476.x_AdditionalLightsColor[bitcast<i32>(x_3011)];
    let x_3016 : vec3<f32> = (vec3<f32>(x_3009.x, x_3009.y, x_3009.z) * vec3<f32>(x_3014.x, x_3014.y, x_3014.z));
    let x_3017 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3016.x, x_3016.y, x_3016.z, x_3017.w);
    let x_3019 : vec3<f32> = u_xlat5;
    let x_3021 : vec4<f32> = u_xlat10;
    let x_3023 : vec3<f32> = (vec3<f32>(x_3019.x, x_3019.x, x_3019.x) * vec3<f32>(x_3021.x, x_3021.y, x_3021.z));
    let x_3024 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3023.x, x_3023.y, x_3023.z, x_3024.w);
    let x_3026 : vec4<f32> = u_xlat1;
    let x_3028 : vec3<f32> = u_xlat30;
    u_xlat69 = dot(vec3<f32>(x_3026.x, x_3026.y, x_3026.z), x_3028);
    let x_3030 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3030, 0.0f, 1.0f);
    let x_3032 : f32 = u_xlat69;
    let x_3033 : f32 = u_xlat70;
    u_xlat69 = (x_3032 * x_3033);
    let x_3035 : f32 = u_xlat69;
    let x_3037 : vec4<f32> = u_xlat10;
    let x_3039 : vec3<f32> = (vec3<f32>(x_3035, x_3035, x_3035) * vec3<f32>(x_3037.x, x_3037.y, x_3037.z));
    let x_3040 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3039.x, x_3039.y, x_3039.z, x_3040.w);
    let x_3042 : vec3<f32> = u_xlat29;
    let x_3043 : vec4<f32> = u_xlat9;
    let x_3046 : vec4<f32> = u_xlat3;
    u_xlat29 = ((x_3042 * vec3<f32>(x_3043.x, x_3043.x, x_3043.x)) + vec3<f32>(x_3046.x, x_3046.y, x_3046.z));
    let x_3049 : vec3<f32> = u_xlat29;
    let x_3050 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(x_3049, x_3050);
    let x_3052 : f32 = u_xlat69;
    u_xlat69 = max(x_3052, 1.17549435e-37f);
    let x_3054 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_3054);
    let x_3056 : f32 = u_xlat69;
    let x_3058 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_3056, x_3056, x_3056) * x_3058);
    let x_3060 : vec4<f32> = u_xlat1;
    let x_3062 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(vec3<f32>(x_3060.x, x_3060.y, x_3060.z), x_3062);
    let x_3064 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3064, 0.0f, 1.0f);
    let x_3066 : vec3<f32> = u_xlat30;
    let x_3067 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_3066, x_3067);
    let x_3069 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3069, 0.0f, 1.0f);
    let x_3071 : f32 = u_xlat69;
    let x_3072 : f32 = u_xlat69;
    u_xlat69 = (x_3071 * x_3072);
    let x_3074 : f32 = u_xlat69;
    let x_3076 : f32 = u_xlat8.x;
    u_xlat69 = ((x_3074 * x_3076) + 1.000010014f);
    let x_3079 : f32 = u_xlat70;
    let x_3080 : f32 = u_xlat70;
    u_xlat70 = (x_3079 * x_3080);
    let x_3082 : f32 = u_xlat69;
    let x_3083 : f32 = u_xlat69;
    u_xlat69 = (x_3082 * x_3083);
    let x_3085 : f32 = u_xlat70;
    u_xlat70 = max(x_3085, 0.100000001f);
    let x_3087 : f32 = u_xlat69;
    let x_3088 : f32 = u_xlat70;
    u_xlat69 = (x_3087 * x_3088);
    let x_3090 : f32 = u_xlat66;
    let x_3091 : f32 = u_xlat69;
    u_xlat69 = (x_3090 * x_3091);
    let x_3093 : f32 = u_xlat23;
    let x_3094 : f32 = u_xlat69;
    u_xlat69 = (x_3093 / x_3094);
    let x_3096 : vec4<f32> = u_xlat0;
    let x_3098 : f32 = u_xlat69;
    let x_3101 : vec3<f32> = u_xlat6;
    u_xlat29 = ((vec3<f32>(x_3096.x, x_3096.y, x_3096.z) * vec3<f32>(x_3098, x_3098, x_3098)) + x_3101);
    let x_3103 : vec3<f32> = u_xlat29;
    let x_3104 : vec4<f32> = u_xlat10;
    let x_3107 : vec4<f32> = u_xlat7;
    let x_3109 : vec3<f32> = ((x_3103 * vec3<f32>(x_3104.x, x_3104.y, x_3104.z)) + vec3<f32>(x_3107.x, x_3107.y, x_3107.z));
    let x_3110 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3109.x, x_3109.y, x_3109.z, x_3110.w);

    continuing {
      let x_3112 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3112 + bitcast<u32>(1i));
    }
  }
  let x_3114 : vec4<f32> = u_xlat4;
  let x_3116 : f32 = u_xlat44;
  let x_3119 : vec3<f32> = u_xlat26;
  let x_3120 : vec3<f32> = ((vec3<f32>(x_3114.x, x_3114.y, x_3114.z) * vec3<f32>(x_3116, x_3116, x_3116)) + x_3119);
  let x_3121 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3120.x, x_3120.y, x_3120.z, x_3121.w);
  let x_3123 : vec4<f32> = u_xlat7;
  let x_3125 : vec4<f32> = u_xlat0;
  let x_3127 : vec3<f32> = (vec3<f32>(x_3123.x, x_3123.y, x_3123.z) + vec3<f32>(x_3125.x, x_3125.y, x_3125.z));
  let x_3128 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3127.x, x_3127.y, x_3127.z, x_3128.w);
  let x_3130 : f32 = u_xlat63;
  let x_3131 : f32 = u_xlat63;
  u_xlat63 = (x_3130 * -(x_3131));
  let x_3134 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3134);
  let x_3136 : vec4<f32> = u_xlat0;
  let x_3140 : vec4<f32> = x_44.unity_FogColor;
  let x_3143 : vec3<f32> = (vec3<f32>(x_3136.x, x_3136.y, x_3136.z) + -(vec3<f32>(x_3140.x, x_3140.y, x_3140.z)));
  let x_3144 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3143.x, x_3143.y, x_3143.z, x_3144.w);
  let x_3148 : f32 = u_xlat63;
  let x_3150 : vec4<f32> = u_xlat0;
  let x_3154 : vec4<f32> = x_44.unity_FogColor;
  let x_3156 : vec3<f32> = ((vec3<f32>(x_3148, x_3148, x_3148) * vec3<f32>(x_3150.x, x_3150.y, x_3150.z)) + vec3<f32>(x_3154.x, x_3154.y, x_3154.z));
  let x_3157 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3156.x, x_3156.y, x_3156.z, x_3157.w);
  let x_3162 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3164 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_3162 & bitcast<u32>(x_3164));
  let x_3167 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3167);
  let x_3172 : f32 = u_xlat0.x;
  let x_3174 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3172 * x_3174);
  let x_3179 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3179, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3184 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3184.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

