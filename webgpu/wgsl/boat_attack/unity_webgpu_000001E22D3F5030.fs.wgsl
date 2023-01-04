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

@group(1) @binding(3) var<uniform> x_503 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2268 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2718 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2830 : AdditionalLightsCookies;

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
  var u_xlat4 : vec4<f32>;
  var x_487 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat64 : f32;
  var u_xlat66 : f32;
  var u_xlat23 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat44 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat27 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat70 : f32;
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
  var u_xlat30 : vec3<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb25 : vec2<bool>;
  var u_xlatb46 : bool;
  var x_2220 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat46 : f32;
  var x_2350 : f32;
  var x_2361 : vec3<f32>;
  var u_xlatu64 : u32;
  var u_xlatb2 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu10 : u32;
  var u_xlati31 : i32;
  var u_xlati10 : i32;
  var u_xlati52 : i32;
  var u_xlat31 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlatb53 : vec2<bool>;
  var u_xlat53 : vec2<f32>;
  var x_3149 : f32;
  var x_3162 : f32;
  var u_xlat73 : f32;
  var x_3224 : f32;
  var x_3235 : vec3<f32>;
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
    let x_493 : vec4<f32> = u_xlat4;
    x_487 = vec3<f32>(x_493.x, x_493.y, x_493.z);
  }
  let x_495 : vec3<f32> = x_487;
  let x_496 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec3<f32> = vs_INTERP0;
  let x_506 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres0;
  let x_509 : vec3<f32> = (x_498 + -(vec3<f32>(x_506.x, x_506.y, x_506.z)));
  let x_510 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : vec3<f32> = vs_INTERP0;
  let x_515 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres1;
  let x_518 : vec3<f32> = (x_513 + -(vec3<f32>(x_515.x, x_515.y, x_515.z)));
  let x_519 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_522 : vec3<f32> = vs_INTERP0;
  let x_524 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres2;
  let x_527 : vec3<f32> = (x_522 + -(vec3<f32>(x_524.x, x_524.y, x_524.z)));
  let x_528 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_531 : vec3<f32> = vs_INTERP0;
  let x_534 : vec4<f32> = x_503.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_531 + -(vec3<f32>(x_534.x, x_534.y, x_534.z)));
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_538.x, x_538.y, x_538.z), vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_544 : vec4<f32> = u_xlat5;
  let x_546 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_550 : vec4<f32> = u_xlat6;
  let x_552 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_556 : vec3<f32> = u_xlat7;
  let x_557 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_556, x_557);
  let x_563 : vec4<f32> = u_xlat4;
  let x_566 : vec4<f32> = x_503.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_563 < x_566);
  let x_569 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_569);
  let x_573 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_573);
  let x_577 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_577);
  let x_581 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_581);
  let x_585 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_585);
  let x_590 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_590);
  let x_594 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_594);
  let x_597 : vec4<f32> = u_xlat4;
  let x_599 : vec4<f32> = u_xlat5;
  let x_601 : vec3<f32> = (vec3<f32>(x_597.x, x_597.y, x_597.z) + vec3<f32>(x_599.y, x_599.z, x_599.w));
  let x_602 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_607 : vec3<f32> = max(vec3<f32>(x_604.x, x_604.y, x_604.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_608 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_608.x, x_607.x, x_607.y, x_607.z);
  let x_610 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(x_610, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_615 : f32 = u_xlat63;
  u_xlat63 = (-(x_615) + 4.0f);
  let x_620 : f32 = u_xlat63;
  u_xlatu63 = u32(x_620);
  let x_624 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_624) << bitcast<u32>(2i));
  let x_627 : vec3<f32> = vs_INTERP0;
  let x_629 : i32 = u_xlati63;
  let x_632 : i32 = u_xlati63;
  let x_636 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_629 + 1i) / 4i)][((x_632 + 1i) % 4i)];
  let x_638 : vec3<f32> = (vec3<f32>(x_627.y, x_627.y, x_627.y) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : i32 = u_xlati63;
  let x_643 : i32 = u_xlati63;
  let x_646 : vec4<f32> = x_503.x_MainLightWorldToShadow[(x_641 / 4i)][(x_643 % 4i)];
  let x_648 : vec3<f32> = vs_INTERP0;
  let x_651 : vec4<f32> = u_xlat4;
  let x_653 : vec3<f32> = ((vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_648.x, x_648.x, x_648.x)) + vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : i32 = u_xlati63;
  let x_659 : i32 = u_xlati63;
  let x_663 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_656 + 2i) / 4i)][((x_659 + 2i) % 4i)];
  let x_665 : vec3<f32> = vs_INTERP0;
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec3<f32> = ((vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665.z, x_665.z, x_665.z)) + vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat4;
  let x_675 : i32 = u_xlati63;
  let x_678 : i32 = u_xlati63;
  let x_682 : vec4<f32> = x_503.x_MainLightWorldToShadow[((x_675 + 3i) / 4i)][((x_678 + 3i) % 4i)];
  let x_684 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : f32 = vs_INTERP0.y;
  let x_690 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_688 * x_690);
  let x_693 : f32 = x_44.unity_MatrixV[0i].z;
  let x_695 : f32 = vs_INTERP0.x;
  let x_697 : f32 = u_xlat63;
  u_xlat63 = ((x_693 * x_695) + x_697);
  let x_700 : f32 = x_44.unity_MatrixV[2i].z;
  let x_702 : f32 = vs_INTERP0.z;
  let x_704 : f32 = u_xlat63;
  u_xlat63 = ((x_700 * x_702) + x_704);
  let x_706 : f32 = u_xlat63;
  let x_708 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_706 + x_708);
  let x_710 : f32 = u_xlat63;
  let x_714 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_710) + -(x_714));
  let x_717 : f32 = u_xlat63;
  u_xlat63 = max(x_717, 0.0f);
  let x_719 : f32 = u_xlat63;
  let x_722 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_719 * x_722);
  u_xlat1.w = 1.0f;
  let x_727 : vec4<f32> = x_359.unity_SHAr;
  let x_728 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(x_727, x_728);
  let x_733 : vec4<f32> = x_359.unity_SHAg;
  let x_734 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(x_733, x_734);
  let x_739 : vec4<f32> = x_359.unity_SHAb;
  let x_740 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_739, x_740);
  let x_743 : vec4<f32> = u_xlat1;
  let x_745 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_743.y, x_743.z, x_743.z, x_743.x) * vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.z));
  let x_750 : vec4<f32> = x_359.unity_SHBr;
  let x_751 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_750, x_751);
  let x_756 : vec4<f32> = x_359.unity_SHBg;
  let x_757 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_756, x_757);
  let x_762 : vec4<f32> = x_359.unity_SHBb;
  let x_763 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_762, x_763);
  let x_768 : f32 = u_xlat1.y;
  let x_770 : f32 = u_xlat1.y;
  u_xlat64 = (x_768 * x_770);
  let x_773 : f32 = u_xlat1.x;
  let x_775 : f32 = u_xlat1.x;
  let x_777 : f32 = u_xlat64;
  u_xlat64 = ((x_773 * x_775) + -(x_777));
  let x_782 : vec4<f32> = x_359.unity_SHC;
  let x_784 : f32 = u_xlat64;
  let x_787 : vec3<f32> = u_xlat7;
  let x_788 : vec3<f32> = ((vec3<f32>(x_782.x, x_782.y, x_782.z) * vec3<f32>(x_784, x_784, x_784)) + x_787);
  let x_789 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_791 : vec4<f32> = u_xlat5;
  let x_793 : vec4<f32> = u_xlat6;
  let x_795 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat5;
  let x_800 : vec3<f32> = max(vec3<f32>(x_798.x, x_798.y, x_798.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_801 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_805 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_806 : vec2<f32> = vec2<f32>(x_805.x, x_805.y);
  let x_810 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_806.x, x_806.y));
  let x_811 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_810.x, x_810.y, x_811.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat6;
  let x_815 : vec4<f32> = hlslcc_FragCoord;
  let x_817 : vec2<f32> = (vec2<f32>(x_813.x, x_813.y) * vec2<f32>(x_815.x, x_815.y));
  let x_818 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
  let x_821 : f32 = u_xlat6.y;
  let x_824 : f32 = x_44.x_ScaleBiasRt.x;
  let x_827 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat64 = ((x_821 * x_824) + x_827);
  let x_829 : f32 = u_xlat64;
  u_xlat6.z = (-(x_829) + 1.0f);
  let x_833 : vec4<f32> = u_xlat2;
  let x_834 : vec2<f32> = vec2<f32>(x_833.x, x_833.y);
  let x_835 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_835.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat2;
  let x_841 : vec2<f32> = clamp(vec2<f32>(x_837.x, x_837.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_842 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
  let x_845 : f32 = u_xlat2.x;
  u_xlat64 = ((-(x_845) * 0.959999979f) + 0.959999979f);
  let x_850 : f32 = u_xlat64;
  u_xlat65 = (-(x_850) + 1.0f);
  let x_853 : vec4<f32> = u_xlat0;
  let x_855 : f32 = u_xlat64;
  u_xlat7 = (vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_855, x_855, x_855));
  let x_858 : vec4<f32> = u_xlat0;
  let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_863 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec4<f32> = u_xlat0;
  let x_872 : vec3<f32> = ((vec3<f32>(x_865.x, x_865.x, x_865.x) * vec3<f32>(x_867.x, x_867.y, x_867.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_873 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_876 : f32 = u_xlat2.y;
  u_xlat64 = (-(x_876) + 1.0f);
  let x_879 : f32 = u_xlat64;
  let x_880 : f32 = u_xlat64;
  u_xlat2.x = (x_879 * x_880);
  let x_884 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_884, 0.0078125f);
  let x_890 : f32 = u_xlat2.x;
  let x_892 : f32 = u_xlat2.x;
  u_xlat66 = (x_890 * x_892);
  let x_895 : f32 = u_xlat65;
  let x_897 : f32 = u_xlat2.y;
  u_xlat23 = (x_895 + x_897);
  let x_899 : f32 = u_xlat23;
  u_xlat23 = min(x_899, 1.0f);
  let x_902 : f32 = u_xlat2.x;
  u_xlat65 = ((x_902 * 4.0f) + 2.0f);
  let x_911 : vec4<f32> = u_xlat6;
  let x_914 : f32 = x_44.x_GlobalMipBias.x;
  let x_915 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_911.x, x_911.z), x_914);
  u_xlat67 = x_915.x;
  let x_918 : f32 = u_xlat67;
  u_xlat68 = (x_918 + -1.0f);
  let x_921 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_922 : f32 = u_xlat68;
  u_xlat68 = ((x_921 * x_922) + 1.0f);
  let x_927 : f32 = u_xlat2.z;
  let x_928 : f32 = u_xlat67;
  u_xlat44 = min(x_927, x_928);
  let x_932 : f32 = x_503.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_932);
  let x_934 : bool = u_xlatb67;
  if (x_934) {
    let x_938 : f32 = x_503.x_MainLightShadowParams.y;
    u_xlatb67 = (x_938 == 1.0f);
    let x_940 : bool = u_xlatb67;
    if (x_940) {
      let x_943 : vec4<f32> = u_xlat4;
      let x_947 : vec4<f32> = x_503.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_943.x, x_943.y, x_943.x, x_943.y) + x_947);
      let x_950 : vec4<f32> = u_xlat6;
      let x_951 : vec2<f32> = vec2<f32>(x_950.x, x_950.y);
      let x_953 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_951.x, x_951.y, x_953);
      let x_966 : vec3<f32> = txVec0;
      let x_968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_966.xy, x_966.z);
      u_xlat8.x = x_968;
      let x_971 : vec4<f32> = u_xlat6;
      let x_972 : vec2<f32> = vec2<f32>(x_971.z, x_971.w);
      let x_974 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_972.x, x_972.y, x_974);
      let x_981 : vec3<f32> = txVec1;
      let x_983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_981.xy, x_981.z);
      u_xlat8.y = x_983;
      let x_985 : vec4<f32> = u_xlat4;
      let x_989 : vec4<f32> = x_503.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_985.x, x_985.y, x_985.x, x_985.y) + x_989);
      let x_992 : vec4<f32> = u_xlat6;
      let x_993 : vec2<f32> = vec2<f32>(x_992.x, x_992.y);
      let x_995 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_993.x, x_993.y, x_995);
      let x_1002 : vec3<f32> = txVec2;
      let x_1004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1002.xy, x_1002.z);
      u_xlat8.z = x_1004;
      let x_1007 : vec4<f32> = u_xlat6;
      let x_1008 : vec2<f32> = vec2<f32>(x_1007.z, x_1007.w);
      let x_1010 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
      let x_1017 : vec3<f32> = txVec3;
      let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1017.xy, x_1017.z);
      u_xlat8.w = x_1019;
      let x_1021 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_1021, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1028 : f32 = x_503.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1028 == 2.0f);
      let x_1030 : bool = u_xlatb6;
      if (x_1030) {
        let x_1033 : vec4<f32> = u_xlat4;
        let x_1036 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1041 : vec2<f32> = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1036.z, x_1036.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1042 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat6;
        let x_1046 : vec2<f32> = floor(vec2<f32>(x_1044.x, x_1044.y));
        let x_1047 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1046.x, x_1046.y, x_1047.z, x_1047.w);
        let x_1050 : vec4<f32> = u_xlat4;
        let x_1053 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1050.x, x_1050.y) * vec2<f32>(x_1053.z, x_1053.w)) + -(vec2<f32>(x_1056.x, x_1056.y)));
        let x_1060 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1060.x, x_1060.x, x_1060.y, x_1060.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1065 : vec4<f32> = u_xlat8;
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1065.x, x_1065.x, x_1065.z, x_1065.z) * vec4<f32>(x_1067.x, x_1067.x, x_1067.z, x_1067.z));
        let x_1070 : vec4<f32> = u_xlat9;
        let x_1074 : vec2<f32> = (vec2<f32>(x_1070.y, x_1070.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1075 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1074.x, x_1075.y, x_1074.y, x_1075.w);
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1080 : vec2<f32> = u_xlat48;
        let x_1082 : vec2<f32> = ((vec2<f32>(x_1077.x, x_1077.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1080));
        let x_1083 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1086 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1086) + vec2<f32>(1.0f, 1.0f));
        let x_1090 : vec2<f32> = u_xlat48;
        let x_1092 : vec2<f32> = min(x_1090, vec2<f32>(0.0f, 0.0f));
        let x_1093 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
        let x_1095 : vec4<f32> = u_xlat10;
        let x_1098 : vec4<f32> = u_xlat10;
        let x_1101 : vec2<f32> = u_xlat51;
        let x_1102 : vec2<f32> = ((-(vec2<f32>(x_1095.x, x_1095.y)) * vec2<f32>(x_1098.x, x_1098.y)) + x_1101);
        let x_1103 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
        let x_1105 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1105, vec2<f32>(0.0f, 0.0f));
        let x_1107 : vec2<f32> = u_xlat48;
        let x_1109 : vec2<f32> = u_xlat48;
        let x_1111 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1107) * x_1109) + vec2<f32>(x_1111.y, x_1111.w));
        let x_1114 : vec4<f32> = u_xlat10;
        let x_1116 : vec2<f32> = (vec2<f32>(x_1114.x, x_1114.y) + vec2<f32>(1.0f, 1.0f));
        let x_1117 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1119 + vec2<f32>(1.0f, 1.0f));
        let x_1122 : vec4<f32> = u_xlat9;
        let x_1126 : vec2<f32> = (vec2<f32>(x_1122.x, x_1122.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1127 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1129 : vec2<f32> = u_xlat51;
        let x_1130 : vec2<f32> = (x_1129 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat10;
        let x_1135 : vec2<f32> = (vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1136 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
        let x_1139 : vec2<f32> = u_xlat48;
        let x_1140 : vec2<f32> = (x_1139 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1141 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1143.y, x_1143.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1147 : f32 = u_xlat10.x;
        u_xlat11.z = x_1147;
        let x_1150 : f32 = u_xlat48.x;
        u_xlat11.w = x_1150;
        let x_1153 : f32 = u_xlat12.x;
        u_xlat9.z = x_1153;
        let x_1156 : f32 = u_xlat8.x;
        u_xlat9.w = x_1156;
        let x_1159 : vec4<f32> = u_xlat9;
        let x_1161 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1159.z, x_1159.w, x_1159.x, x_1159.z) + vec4<f32>(x_1161.z, x_1161.w, x_1161.x, x_1161.z));
        let x_1165 : f32 = u_xlat11.y;
        u_xlat10.z = x_1165;
        let x_1168 : f32 = u_xlat48.y;
        u_xlat10.w = x_1168;
        let x_1171 : f32 = u_xlat9.y;
        u_xlat12.z = x_1171;
        let x_1174 : f32 = u_xlat8.z;
        u_xlat12.w = x_1174;
        let x_1176 : vec4<f32> = u_xlat10;
        let x_1178 : vec4<f32> = u_xlat12;
        let x_1180 : vec3<f32> = (vec3<f32>(x_1176.z, x_1176.y, x_1176.w) + vec3<f32>(x_1178.z, x_1178.y, x_1178.w));
        let x_1181 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
        let x_1183 : vec4<f32> = u_xlat9;
        let x_1185 : vec4<f32> = u_xlat13;
        let x_1187 : vec3<f32> = (vec3<f32>(x_1183.x, x_1183.z, x_1183.w) / vec3<f32>(x_1185.z, x_1185.w, x_1185.y));
        let x_1188 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
        let x_1190 : vec4<f32> = u_xlat9;
        let x_1196 : vec3<f32> = (vec3<f32>(x_1190.x, x_1190.y, x_1190.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
        let x_1199 : vec4<f32> = u_xlat12;
        let x_1201 : vec4<f32> = u_xlat8;
        let x_1203 : vec3<f32> = (vec3<f32>(x_1199.z, x_1199.y, x_1199.w) / vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
        let x_1204 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat10;
        let x_1208 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.y, x_1206.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1209 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat9;
        let x_1214 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1216 : vec3<f32> = (vec3<f32>(x_1211.y, x_1211.x, x_1211.z) * vec3<f32>(x_1214.x, x_1214.x, x_1214.x));
        let x_1217 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
        let x_1219 : vec4<f32> = u_xlat10;
        let x_1222 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1224 : vec3<f32> = (vec3<f32>(x_1219.x, x_1219.y, x_1219.z) * vec3<f32>(x_1222.y, x_1222.y, x_1222.y));
        let x_1225 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
        let x_1228 : f32 = u_xlat10.x;
        u_xlat9.w = x_1228;
        let x_1230 : vec4<f32> = u_xlat6;
        let x_1233 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y) * vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y)) + vec4<f32>(x_1236.y, x_1236.w, x_1236.x, x_1236.w));
        let x_1239 : vec4<f32> = u_xlat6;
        let x_1242 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(x_1242.x, x_1242.y)) + vec2<f32>(x_1245.z, x_1245.w));
        let x_1249 : f32 = u_xlat9.y;
        u_xlat10.w = x_1249;
        let x_1251 : vec4<f32> = u_xlat10;
        let x_1252 : vec2<f32> = vec2<f32>(x_1251.y, x_1251.z);
        let x_1253 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1253.x, x_1252.x, x_1253.z, x_1252.y);
        let x_1255 : vec4<f32> = u_xlat6;
        let x_1258 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1261 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y) * vec4<f32>(x_1258.x, x_1258.y, x_1258.x, x_1258.y)) + vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1261.y));
        let x_1264 : vec4<f32> = u_xlat6;
        let x_1267 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y) * vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y)) + vec4<f32>(x_1270.w, x_1270.y, x_1270.w, x_1270.z));
        let x_1273 : vec4<f32> = u_xlat6;
        let x_1276 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1279 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1273.x, x_1273.y, x_1273.x, x_1273.y) * vec4<f32>(x_1276.x, x_1276.y, x_1276.x, x_1276.y)) + vec4<f32>(x_1279.x, x_1279.w, x_1279.z, x_1279.w));
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1285 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1283.x, x_1283.x, x_1283.x, x_1283.y) * vec4<f32>(x_1285.z, x_1285.w, x_1285.y, x_1285.z));
        let x_1289 : vec4<f32> = u_xlat8;
        let x_1291 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1289.y, x_1289.y, x_1289.z, x_1289.z) * x_1291);
        let x_1294 : f32 = u_xlat8.z;
        let x_1296 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1294 * x_1296);
        let x_1300 : vec4<f32> = u_xlat11;
        let x_1301 : vec2<f32> = vec2<f32>(x_1300.x, x_1300.y);
        let x_1303 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1301.x, x_1301.y, x_1303);
        let x_1311 : vec3<f32> = txVec4;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1311.xy, x_1311.z);
        u_xlat27 = x_1313;
        let x_1315 : vec4<f32> = u_xlat11;
        let x_1316 : vec2<f32> = vec2<f32>(x_1315.z, x_1315.w);
        let x_1318 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1316.x, x_1316.y, x_1318);
        let x_1326 : vec3<f32> = txVec5;
        let x_1328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1326.xy, x_1326.z);
        u_xlat70 = x_1328;
        let x_1329 : f32 = u_xlat70;
        let x_1331 : f32 = u_xlat14.y;
        u_xlat70 = (x_1329 * x_1331);
        let x_1334 : f32 = u_xlat14.x;
        let x_1335 : f32 = u_xlat27;
        let x_1337 : f32 = u_xlat70;
        u_xlat27 = ((x_1334 * x_1335) + x_1337);
        let x_1340 : vec2<f32> = u_xlat48;
        let x_1342 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec6;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1349.xy, x_1349.z);
        u_xlat48.x = x_1351;
        let x_1354 : f32 = u_xlat14.z;
        let x_1356 : f32 = u_xlat48.x;
        let x_1358 : f32 = u_xlat27;
        u_xlat27 = ((x_1354 * x_1356) + x_1358);
        let x_1361 : vec4<f32> = u_xlat10;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
        let x_1364 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec7;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1371.xy, x_1371.z);
        u_xlat48.x = x_1373;
        let x_1376 : f32 = u_xlat14.w;
        let x_1378 : f32 = u_xlat48.x;
        let x_1380 : f32 = u_xlat27;
        u_xlat27 = ((x_1376 * x_1378) + x_1380);
        let x_1383 : vec4<f32> = u_xlat12;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.x, x_1383.y);
        let x_1386 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec8;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1393.xy, x_1393.z);
        u_xlat48.x = x_1395;
        let x_1398 : f32 = u_xlat15.x;
        let x_1400 : f32 = u_xlat48.x;
        let x_1402 : f32 = u_xlat27;
        u_xlat27 = ((x_1398 * x_1400) + x_1402);
        let x_1405 : vec4<f32> = u_xlat12;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.z, x_1405.w);
        let x_1408 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec9;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1415.xy, x_1415.z);
        u_xlat48.x = x_1417;
        let x_1420 : f32 = u_xlat15.y;
        let x_1422 : f32 = u_xlat48.x;
        let x_1424 : f32 = u_xlat27;
        u_xlat27 = ((x_1420 * x_1422) + x_1424);
        let x_1427 : vec4<f32> = u_xlat10;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.z, x_1427.w);
        let x_1430 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec10;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1437.xy, x_1437.z);
        u_xlat48.x = x_1439;
        let x_1442 : f32 = u_xlat15.z;
        let x_1444 : f32 = u_xlat48.x;
        let x_1446 : f32 = u_xlat27;
        u_xlat27 = ((x_1442 * x_1444) + x_1446);
        let x_1449 : vec4<f32> = u_xlat9;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.x, x_1449.y);
        let x_1452 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec11;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1459.xy, x_1459.z);
        u_xlat48.x = x_1461;
        let x_1464 : f32 = u_xlat15.w;
        let x_1466 : f32 = u_xlat48.x;
        let x_1468 : f32 = u_xlat27;
        u_xlat27 = ((x_1464 * x_1466) + x_1468);
        let x_1471 : vec4<f32> = u_xlat9;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.z, x_1471.w);
        let x_1474 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec12;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1481.xy, x_1481.z);
        u_xlat48.x = x_1483;
        let x_1486 : f32 = u_xlat6.x;
        let x_1488 : f32 = u_xlat48.x;
        let x_1490 : f32 = u_xlat27;
        u_xlat67 = ((x_1486 * x_1488) + x_1490);
      } else {
        let x_1493 : vec4<f32> = u_xlat4;
        let x_1496 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1499 : vec2<f32> = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1496.z, x_1496.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1500 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1499.x, x_1499.y, x_1500.z, x_1500.w);
        let x_1502 : vec4<f32> = u_xlat6;
        let x_1504 : vec2<f32> = floor(vec2<f32>(x_1502.x, x_1502.y));
        let x_1505 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1504.x, x_1504.y, x_1505.z, x_1505.w);
        let x_1507 : vec4<f32> = u_xlat4;
        let x_1510 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1513 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1507.x, x_1507.y) * vec2<f32>(x_1510.z, x_1510.w)) + -(vec2<f32>(x_1513.x, x_1513.y)));
        let x_1517 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1517.x, x_1517.x, x_1517.y, x_1517.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1520 : vec4<f32> = u_xlat8;
        let x_1522 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1520.x, x_1520.x, x_1520.z, x_1520.z) * vec4<f32>(x_1522.x, x_1522.x, x_1522.z, x_1522.z));
        let x_1525 : vec4<f32> = u_xlat9;
        let x_1529 : vec2<f32> = (vec2<f32>(x_1525.y, x_1525.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1530 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1530.x, x_1529.x, x_1530.z, x_1529.y);
        let x_1532 : vec4<f32> = u_xlat9;
        let x_1535 : vec2<f32> = u_xlat48;
        let x_1537 : vec2<f32> = ((vec2<f32>(x_1532.x, x_1532.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1535));
        let x_1538 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1537.x, x_1538.y, x_1537.y, x_1538.w);
        let x_1540 : vec2<f32> = u_xlat48;
        let x_1542 : vec2<f32> = (-(x_1540) + vec2<f32>(1.0f, 1.0f));
        let x_1543 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1542.x, x_1542.y, x_1543.z, x_1543.w);
        let x_1545 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1545, vec2<f32>(0.0f, 0.0f));
        let x_1547 : vec2<f32> = u_xlat51;
        let x_1549 : vec2<f32> = u_xlat51;
        let x_1551 : vec4<f32> = u_xlat9;
        let x_1553 : vec2<f32> = ((-(x_1547) * x_1549) + vec2<f32>(x_1551.x, x_1551.y));
        let x_1554 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1553.x, x_1553.y, x_1554.z, x_1554.w);
        let x_1556 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1556, vec2<f32>(0.0f, 0.0f));
        let x_1559 : vec2<f32> = u_xlat51;
        let x_1561 : vec2<f32> = u_xlat51;
        let x_1563 : vec4<f32> = u_xlat8;
        let x_1565 : vec2<f32> = ((-(x_1559) * x_1561) + vec2<f32>(x_1563.y, x_1563.w));
        let x_1566 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1565.x, x_1566.y, x_1565.y);
        let x_1568 : vec4<f32> = u_xlat9;
        let x_1570 : vec2<f32> = (vec2<f32>(x_1568.x, x_1568.y) + vec2<f32>(2.0f, 2.0f));
        let x_1571 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1570.x, x_1570.y, x_1571.z, x_1571.w);
        let x_1573 : vec3<f32> = u_xlat29;
        let x_1575 : vec2<f32> = (vec2<f32>(x_1573.x, x_1573.z) + vec2<f32>(2.0f, 2.0f));
        let x_1576 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1576.x, x_1575.x, x_1576.z, x_1575.y);
        let x_1579 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1579 * 0.081632003f);
        let x_1583 : vec4<f32> = u_xlat8;
        let x_1586 : vec3<f32> = (vec3<f32>(x_1583.z, x_1583.x, x_1583.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1587 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1587.w);
        let x_1589 : vec4<f32> = u_xlat9;
        let x_1592 : vec2<f32> = (vec2<f32>(x_1589.x, x_1589.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1592.x, x_1592.y, x_1593.z, x_1593.w);
        let x_1596 : f32 = u_xlat12.y;
        u_xlat11.x = x_1596;
        let x_1598 : vec2<f32> = u_xlat48;
        let x_1605 : vec2<f32> = ((vec2<f32>(x_1598.x, x_1598.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1606 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1606.x, x_1605.x, x_1606.z, x_1605.y);
        let x_1608 : vec2<f32> = u_xlat48;
        let x_1612 : vec2<f32> = ((vec2<f32>(x_1608.x, x_1608.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1613 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1612.x, x_1613.y, x_1612.y, x_1613.w);
        let x_1616 : f32 = u_xlat8.x;
        u_xlat9.y = x_1616;
        let x_1619 : f32 = u_xlat10.y;
        u_xlat9.w = x_1619;
        let x_1621 : vec4<f32> = u_xlat9;
        let x_1622 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1621 + x_1622);
        let x_1624 : vec2<f32> = u_xlat48;
        let x_1627 : vec2<f32> = ((vec2<f32>(x_1624.y, x_1624.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1628 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1628.x, x_1627.x, x_1628.z, x_1627.y);
        let x_1630 : vec2<f32> = u_xlat48;
        let x_1633 : vec2<f32> = ((vec2<f32>(x_1630.y, x_1630.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1634 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1633.x, x_1634.y, x_1633.y, x_1634.w);
        let x_1637 : f32 = u_xlat8.y;
        u_xlat10.y = x_1637;
        let x_1639 : vec4<f32> = u_xlat10;
        let x_1640 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1639 + x_1640);
        let x_1642 : vec4<f32> = u_xlat9;
        let x_1643 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1642 / x_1643);
        let x_1645 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1645 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1651 : vec4<f32> = u_xlat10;
        let x_1652 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1651 / x_1652);
        let x_1654 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1654 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1656 : vec4<f32> = u_xlat9;
        let x_1659 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1656.w, x_1656.x, x_1656.y, x_1656.z) * vec4<f32>(x_1659.x, x_1659.x, x_1659.x, x_1659.x));
        let x_1662 : vec4<f32> = u_xlat10;
        let x_1665 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1662.x, x_1662.w, x_1662.y, x_1662.z) * vec4<f32>(x_1665.y, x_1665.y, x_1665.y, x_1665.y));
        let x_1668 : vec4<f32> = u_xlat9;
        let x_1669 : vec3<f32> = vec3<f32>(x_1668.y, x_1668.z, x_1668.w);
        let x_1670 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1669.x, x_1670.y, x_1669.y, x_1669.z);
        let x_1673 : f32 = u_xlat10.x;
        u_xlat12.y = x_1673;
        let x_1675 : vec4<f32> = u_xlat6;
        let x_1678 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1681 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1675.x, x_1675.y, x_1675.x, x_1675.y) * vec4<f32>(x_1678.x, x_1678.y, x_1678.x, x_1678.y)) + vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1681.y));
        let x_1684 : vec4<f32> = u_xlat6;
        let x_1687 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1690 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1684.x, x_1684.y) * vec2<f32>(x_1687.x, x_1687.y)) + vec2<f32>(x_1690.w, x_1690.y));
        let x_1694 : f32 = u_xlat12.y;
        u_xlat9.y = x_1694;
        let x_1697 : f32 = u_xlat10.z;
        u_xlat12.y = x_1697;
        let x_1699 : vec4<f32> = u_xlat6;
        let x_1702 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1705 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1699.x, x_1699.y, x_1699.x, x_1699.y) * vec4<f32>(x_1702.x, x_1702.y, x_1702.x, x_1702.y)) + vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1705.y));
        let x_1708 : vec4<f32> = u_xlat6;
        let x_1711 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1714 : vec4<f32> = u_xlat12;
        let x_1716 : vec2<f32> = ((vec2<f32>(x_1708.x, x_1708.y) * vec2<f32>(x_1711.x, x_1711.y)) + vec2<f32>(x_1714.w, x_1714.y));
        let x_1717 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1716.x, x_1716.y, x_1717.z, x_1717.w);
        let x_1720 : f32 = u_xlat12.y;
        u_xlat9.z = x_1720;
        let x_1723 : vec4<f32> = u_xlat6;
        let x_1726 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1729 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1723.x, x_1723.y, x_1723.x, x_1723.y) * vec4<f32>(x_1726.x, x_1726.y, x_1726.x, x_1726.y)) + vec4<f32>(x_1729.x, x_1729.y, x_1729.x, x_1729.z));
        let x_1733 : f32 = u_xlat10.w;
        u_xlat12.y = x_1733;
        let x_1736 : vec4<f32> = u_xlat6;
        let x_1739 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1742 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1736.x, x_1736.y, x_1736.x, x_1736.y) * vec4<f32>(x_1739.x, x_1739.y, x_1739.x, x_1739.y)) + vec4<f32>(x_1742.x, x_1742.y, x_1742.z, x_1742.y));
        let x_1746 : vec4<f32> = u_xlat6;
        let x_1749 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1752 : vec4<f32> = u_xlat12;
        let x_1754 : vec2<f32> = ((vec2<f32>(x_1746.x, x_1746.y) * vec2<f32>(x_1749.x, x_1749.y)) + vec2<f32>(x_1752.w, x_1752.y));
        let x_1755 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1754.x, x_1754.y, x_1755.z);
        let x_1758 : f32 = u_xlat12.y;
        u_xlat9.w = x_1758;
        let x_1761 : vec4<f32> = u_xlat6;
        let x_1764 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1767 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1761.x, x_1761.y) * vec2<f32>(x_1764.x, x_1764.y)) + vec2<f32>(x_1767.x, x_1767.w));
        let x_1770 : vec4<f32> = u_xlat12;
        let x_1771 : vec3<f32> = vec3<f32>(x_1770.x, x_1770.z, x_1770.w);
        let x_1772 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1771.x, x_1772.y, x_1771.y, x_1771.z);
        let x_1774 : vec4<f32> = u_xlat6;
        let x_1777 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1780 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1774.x, x_1774.y, x_1774.x, x_1774.y) * vec4<f32>(x_1777.x, x_1777.y, x_1777.x, x_1777.y)) + vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1780.y));
        let x_1784 : vec4<f32> = u_xlat6;
        let x_1787 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1790 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1784.x, x_1784.y) * vec2<f32>(x_1787.x, x_1787.y)) + vec2<f32>(x_1790.w, x_1790.y));
        let x_1794 : f32 = u_xlat9.x;
        u_xlat10.x = x_1794;
        let x_1796 : vec4<f32> = u_xlat6;
        let x_1799 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1802 : vec4<f32> = u_xlat10;
        let x_1804 : vec2<f32> = ((vec2<f32>(x_1796.x, x_1796.y) * vec2<f32>(x_1799.x, x_1799.y)) + vec2<f32>(x_1802.x, x_1802.y));
        let x_1805 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1804.x, x_1804.y, x_1805.z, x_1805.w);
        let x_1808 : vec4<f32> = u_xlat8;
        let x_1810 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1808.x, x_1808.x, x_1808.x, x_1808.x) * x_1810);
        let x_1813 : vec4<f32> = u_xlat8;
        let x_1815 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1813.y, x_1813.y, x_1813.y, x_1813.y) * x_1815);
        let x_1818 : vec4<f32> = u_xlat8;
        let x_1820 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1818.z, x_1818.z, x_1818.z, x_1818.z) * x_1820);
        let x_1822 : vec4<f32> = u_xlat8;
        let x_1824 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1822.w, x_1822.w, x_1822.w, x_1822.w) * x_1824);
        let x_1827 : vec4<f32> = u_xlat13;
        let x_1828 : vec2<f32> = vec2<f32>(x_1827.x, x_1827.y);
        let x_1830 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1828.x, x_1828.y, x_1830);
        let x_1837 : vec3<f32> = txVec13;
        let x_1839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1837.xy, x_1837.z);
        u_xlat70 = x_1839;
        let x_1841 : vec4<f32> = u_xlat13;
        let x_1842 : vec2<f32> = vec2<f32>(x_1841.z, x_1841.w);
        let x_1844 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1842.x, x_1842.y, x_1844);
        let x_1851 : vec3<f32> = txVec14;
        let x_1853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1851.xy, x_1851.z);
        u_xlat9.x = x_1853;
        let x_1856 : f32 = u_xlat9.x;
        let x_1858 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1856 * x_1858);
        let x_1862 : f32 = u_xlat18.x;
        let x_1863 : f32 = u_xlat70;
        let x_1866 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1862 * x_1863) + x_1866);
        let x_1869 : vec2<f32> = u_xlat48;
        let x_1871 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
        let x_1878 : vec3<f32> = txVec15;
        let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1878.xy, x_1878.z);
        u_xlat48.x = x_1880;
        let x_1883 : f32 = u_xlat18.z;
        let x_1885 : f32 = u_xlat48.x;
        let x_1887 : f32 = u_xlat70;
        u_xlat48.x = ((x_1883 * x_1885) + x_1887);
        let x_1891 : vec4<f32> = u_xlat16;
        let x_1892 : vec2<f32> = vec2<f32>(x_1891.x, x_1891.y);
        let x_1894 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1892.x, x_1892.y, x_1894);
        let x_1902 : vec3<f32> = txVec16;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1902.xy, x_1902.z);
        u_xlat69 = x_1904;
        let x_1906 : f32 = u_xlat18.w;
        let x_1907 : f32 = u_xlat69;
        let x_1910 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1906 * x_1907) + x_1910);
        let x_1914 : vec4<f32> = u_xlat14;
        let x_1915 : vec2<f32> = vec2<f32>(x_1914.x, x_1914.y);
        let x_1917 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1924 : vec3<f32> = txVec17;
        let x_1926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1924.xy, x_1924.z);
        u_xlat69 = x_1926;
        let x_1928 : f32 = u_xlat19.x;
        let x_1929 : f32 = u_xlat69;
        let x_1932 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1928 * x_1929) + x_1932);
        let x_1936 : vec4<f32> = u_xlat14;
        let x_1937 : vec2<f32> = vec2<f32>(x_1936.z, x_1936.w);
        let x_1939 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
        let x_1946 : vec3<f32> = txVec18;
        let x_1948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1946.xy, x_1946.z);
        u_xlat69 = x_1948;
        let x_1950 : f32 = u_xlat19.y;
        let x_1951 : f32 = u_xlat69;
        let x_1954 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1950 * x_1951) + x_1954);
        let x_1958 : vec4<f32> = u_xlat15;
        let x_1959 : vec2<f32> = vec2<f32>(x_1958.x, x_1958.y);
        let x_1961 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1959.x, x_1959.y, x_1961);
        let x_1968 : vec3<f32> = txVec19;
        let x_1970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1968.xy, x_1968.z);
        u_xlat69 = x_1970;
        let x_1972 : f32 = u_xlat19.z;
        let x_1973 : f32 = u_xlat69;
        let x_1976 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1972 * x_1973) + x_1976);
        let x_1980 : vec4<f32> = u_xlat16;
        let x_1981 : vec2<f32> = vec2<f32>(x_1980.z, x_1980.w);
        let x_1983 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1981.x, x_1981.y, x_1983);
        let x_1990 : vec3<f32> = txVec20;
        let x_1992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1990.xy, x_1990.z);
        u_xlat69 = x_1992;
        let x_1994 : f32 = u_xlat19.w;
        let x_1995 : f32 = u_xlat69;
        let x_1998 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1994 * x_1995) + x_1998);
        let x_2002 : vec4<f32> = u_xlat17;
        let x_2003 : vec2<f32> = vec2<f32>(x_2002.x, x_2002.y);
        let x_2005 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_2003.x, x_2003.y, x_2005);
        let x_2012 : vec3<f32> = txVec21;
        let x_2014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2012.xy, x_2012.z);
        u_xlat69 = x_2014;
        let x_2016 : f32 = u_xlat20.x;
        let x_2017 : f32 = u_xlat69;
        let x_2020 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2016 * x_2017) + x_2020);
        let x_2024 : vec4<f32> = u_xlat17;
        let x_2025 : vec2<f32> = vec2<f32>(x_2024.z, x_2024.w);
        let x_2027 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_2025.x, x_2025.y, x_2027);
        let x_2034 : vec3<f32> = txVec22;
        let x_2036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2034.xy, x_2034.z);
        u_xlat69 = x_2036;
        let x_2038 : f32 = u_xlat20.y;
        let x_2039 : f32 = u_xlat69;
        let x_2042 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2038 * x_2039) + x_2042);
        let x_2046 : vec3<f32> = u_xlat30;
        let x_2047 : vec2<f32> = vec2<f32>(x_2046.x, x_2046.y);
        let x_2049 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_2047.x, x_2047.y, x_2049);
        let x_2056 : vec3<f32> = txVec23;
        let x_2058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2056.xy, x_2056.z);
        u_xlat69 = x_2058;
        let x_2060 : f32 = u_xlat20.z;
        let x_2061 : f32 = u_xlat69;
        let x_2064 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2060 * x_2061) + x_2064);
        let x_2068 : vec2<f32> = u_xlat57;
        let x_2070 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
        let x_2077 : vec3<f32> = txVec24;
        let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2077.xy, x_2077.z);
        u_xlat69 = x_2079;
        let x_2081 : f32 = u_xlat20.w;
        let x_2082 : f32 = u_xlat69;
        let x_2085 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2081 * x_2082) + x_2085);
        let x_2089 : vec4<f32> = u_xlat12;
        let x_2090 : vec2<f32> = vec2<f32>(x_2089.x, x_2089.y);
        let x_2092 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec25;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2099.xy, x_2099.z);
        u_xlat69 = x_2101;
        let x_2103 : f32 = u_xlat8.x;
        let x_2104 : f32 = u_xlat69;
        let x_2107 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2103 * x_2104) + x_2107);
        let x_2111 : vec4<f32> = u_xlat12;
        let x_2112 : vec2<f32> = vec2<f32>(x_2111.z, x_2111.w);
        let x_2114 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
        let x_2121 : vec3<f32> = txVec26;
        let x_2123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2121.xy, x_2121.z);
        u_xlat69 = x_2123;
        let x_2125 : f32 = u_xlat8.y;
        let x_2126 : f32 = u_xlat69;
        let x_2129 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2125 * x_2126) + x_2129);
        let x_2133 : vec2<f32> = u_xlat52;
        let x_2135 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2133.x, x_2133.y, x_2135);
        let x_2142 : vec3<f32> = txVec27;
        let x_2144 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2142.xy, x_2142.z);
        u_xlat69 = x_2144;
        let x_2146 : f32 = u_xlat8.z;
        let x_2147 : f32 = u_xlat69;
        let x_2150 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2146 * x_2147) + x_2150);
        let x_2154 : vec4<f32> = u_xlat6;
        let x_2155 : vec2<f32> = vec2<f32>(x_2154.x, x_2154.y);
        let x_2157 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2155.x, x_2155.y, x_2157);
        let x_2164 : vec3<f32> = txVec28;
        let x_2166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2164.xy, x_2164.z);
        u_xlat6.x = x_2166;
        let x_2169 : f32 = u_xlat8.w;
        let x_2171 : f32 = u_xlat6.x;
        let x_2174 : f32 = u_xlat48.x;
        u_xlat67 = ((x_2169 * x_2171) + x_2174);
      }
    }
  } else {
    let x_2178 : vec4<f32> = u_xlat4;
    let x_2179 : vec2<f32> = vec2<f32>(x_2178.x, x_2178.y);
    let x_2181 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2179.x, x_2179.y, x_2181);
    let x_2188 : vec3<f32> = txVec29;
    let x_2190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2188.xy, x_2188.z);
    u_xlat67 = x_2190;
  }
  let x_2192 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2192) + 1.0f);
  let x_2196 : f32 = u_xlat67;
  let x_2198 : f32 = x_503.x_MainLightShadowParams.x;
  let x_2201 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2196 * x_2198) + x_2201);
  let x_2206 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_2206);
  let x_2211 : f32 = u_xlat4.z;
  u_xlatb46 = (x_2211 >= 1.0f);
  let x_2213 : bool = u_xlatb46;
  let x_2215 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2213 | x_2215);
  let x_2219 : bool = u_xlatb25.x;
  if (x_2219) {
    x_2220 = 1.0f;
  } else {
    let x_2225 : f32 = u_xlat4.x;
    x_2220 = x_2225;
  }
  let x_2226 : f32 = x_2220;
  u_xlat4.x = x_2226;
  let x_2229 : vec3<f32> = vs_INTERP0;
  let x_2231 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat25 = (x_2229 + -(x_2231));
  let x_2234 : vec3<f32> = u_xlat25;
  let x_2235 : vec3<f32> = u_xlat25;
  u_xlat25.x = dot(x_2234, x_2235);
  let x_2239 : f32 = u_xlat25.x;
  let x_2241 : f32 = x_503.x_MainLightShadowParams.z;
  let x_2244 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2239 * x_2241) + x_2244);
  let x_2248 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2248, 0.0f, 1.0f);
  let x_2253 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_2253) + 1.0f);
  let x_2257 : f32 = u_xlat25.x;
  let x_2258 : f32 = u_xlat46;
  let x_2261 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2257 * x_2258) + x_2261);
  let x_2270 : f32 = x_2268.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2270 == -1.0f));
  let x_2274 : bool = u_xlatb25.x;
  if (x_2274) {
    let x_2277 : vec3<f32> = vs_INTERP0;
    let x_2280 : vec4<f32> = x_2268.x_MainLightWorldToLight[1i];
    let x_2282 : vec2<f32> = (vec2<f32>(x_2277.y, x_2277.y) * vec2<f32>(x_2280.x, x_2280.y));
    let x_2283 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2282.x, x_2282.y, x_2283.z);
    let x_2286 : vec4<f32> = x_2268.x_MainLightWorldToLight[0i];
    let x_2288 : vec3<f32> = vs_INTERP0;
    let x_2291 : vec3<f32> = u_xlat25;
    let x_2293 : vec2<f32> = ((vec2<f32>(x_2286.x, x_2286.y) * vec2<f32>(x_2288.x, x_2288.x)) + vec2<f32>(x_2291.x, x_2291.y));
    let x_2294 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2293.x, x_2293.y, x_2294.z);
    let x_2297 : vec4<f32> = x_2268.x_MainLightWorldToLight[2i];
    let x_2299 : vec3<f32> = vs_INTERP0;
    let x_2302 : vec3<f32> = u_xlat25;
    let x_2304 : vec2<f32> = ((vec2<f32>(x_2297.x, x_2297.y) * vec2<f32>(x_2299.z, x_2299.z)) + vec2<f32>(x_2302.x, x_2302.y));
    let x_2305 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2304.x, x_2304.y, x_2305.z);
    let x_2307 : vec3<f32> = u_xlat25;
    let x_2310 : vec4<f32> = x_2268.x_MainLightWorldToLight[3i];
    let x_2312 : vec2<f32> = (vec2<f32>(x_2307.x, x_2307.y) + vec2<f32>(x_2310.x, x_2310.y));
    let x_2313 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2312.x, x_2312.y, x_2313.z);
    let x_2315 : vec3<f32> = u_xlat25;
    let x_2318 : vec2<f32> = ((vec2<f32>(x_2315.x, x_2315.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2319 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2318.x, x_2318.y, x_2319.z);
    let x_2326 : vec3<f32> = u_xlat25;
    let x_2329 : f32 = x_44.x_GlobalMipBias.x;
    let x_2330 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2326.x, x_2326.y), x_2329);
    u_xlat6 = x_2330;
    let x_2332 : f32 = x_2268.x_MainLightCookieTextureFormat;
    let x_2334 : f32 = x_2268.x_MainLightCookieTextureFormat;
    let x_2336 : f32 = x_2268.x_MainLightCookieTextureFormat;
    let x_2338 : f32 = x_2268.x_MainLightCookieTextureFormat;
    let x_2339 : vec4<f32> = vec4<f32>(x_2332, x_2334, x_2336, x_2338);
    let x_2346 : vec4<bool> = (vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2339.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2346.x, x_2346.y);
    let x_2349 : bool = u_xlatb25.y;
    if (x_2349) {
      let x_2354 : f32 = u_xlat6.w;
      x_2350 = x_2354;
    } else {
      let x_2357 : f32 = u_xlat6.x;
      x_2350 = x_2357;
    }
    let x_2358 : f32 = x_2350;
    u_xlat46 = x_2358;
    let x_2360 : bool = u_xlatb25.x;
    if (x_2360) {
      let x_2364 : vec4<f32> = u_xlat6;
      x_2361 = vec3<f32>(x_2364.x, x_2364.y, x_2364.z);
    } else {
      let x_2367 : f32 = u_xlat46;
      x_2361 = vec3<f32>(x_2367, x_2367, x_2367);
    }
    let x_2369 : vec3<f32> = x_2361;
    u_xlat25 = x_2369;
  } else {
    u_xlat25.x = 1.0f;
    u_xlat25.y = 1.0f;
    u_xlat25.z = 1.0f;
  }
  let x_2374 : vec3<f32> = u_xlat25;
  let x_2376 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat25 = (x_2374 * vec3<f32>(x_2376.x, x_2376.y, x_2376.z));
  let x_2379 : f32 = u_xlat68;
  let x_2381 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2379, x_2379, x_2379) * x_2381);
  let x_2383 : vec4<f32> = u_xlat3;
  let x_2386 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(vec3<f32>(x_2383.x, x_2383.y, x_2383.z)), vec3<f32>(x_2386.x, x_2386.y, x_2386.z));
  let x_2391 : f32 = u_xlat6.x;
  let x_2393 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2391 + x_2393);
  let x_2396 : vec4<f32> = u_xlat1;
  let x_2398 : vec4<f32> = u_xlat6;
  let x_2402 : vec4<f32> = u_xlat3;
  let x_2405 : vec3<f32> = ((vec3<f32>(x_2396.x, x_2396.y, x_2396.z) * -(vec3<f32>(x_2398.x, x_2398.x, x_2398.x))) + -(vec3<f32>(x_2402.x, x_2402.y, x_2402.z)));
  let x_2406 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
  let x_2408 : vec4<f32> = u_xlat1;
  let x_2410 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_2408.x, x_2408.y, x_2408.z), vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
  let x_2413 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2413, 0.0f, 1.0f);
  let x_2415 : f32 = u_xlat69;
  u_xlat69 = (-(x_2415) + 1.0f);
  let x_2418 : f32 = u_xlat69;
  let x_2419 : f32 = u_xlat69;
  u_xlat69 = (x_2418 * x_2419);
  let x_2421 : f32 = u_xlat69;
  let x_2422 : f32 = u_xlat69;
  u_xlat69 = (x_2421 * x_2422);
  let x_2424 : f32 = u_xlat64;
  u_xlat70 = ((-(x_2424) * 0.699999988f) + 1.700000048f);
  let x_2430 : f32 = u_xlat64;
  let x_2431 : f32 = u_xlat70;
  u_xlat64 = (x_2430 * x_2431);
  let x_2433 : f32 = u_xlat64;
  u_xlat64 = (x_2433 * 6.0f);
  let x_2443 : vec4<f32> = u_xlat6;
  let x_2445 : f32 = u_xlat64;
  let x_2446 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2443.x, x_2443.y, x_2443.z), x_2445);
  u_xlat8 = x_2446;
  let x_2448 : f32 = u_xlat8.w;
  u_xlat64 = (x_2448 + -1.0f);
  let x_2451 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2452 : f32 = u_xlat64;
  u_xlat64 = ((x_2451 * x_2452) + 1.0f);
  let x_2455 : f32 = u_xlat64;
  u_xlat64 = max(x_2455, 0.0f);
  let x_2457 : f32 = u_xlat64;
  u_xlat64 = log2(x_2457);
  let x_2459 : f32 = u_xlat64;
  let x_2461 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat64 = (x_2459 * x_2461);
  let x_2463 : f32 = u_xlat64;
  u_xlat64 = exp2(x_2463);
  let x_2465 : f32 = u_xlat64;
  let x_2467 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat64 = (x_2465 * x_2467);
  let x_2469 : vec4<f32> = u_xlat8;
  let x_2471 : f32 = u_xlat64;
  let x_2473 : vec3<f32> = (vec3<f32>(x_2469.x, x_2469.y, x_2469.z) * vec3<f32>(x_2471, x_2471, x_2471));
  let x_2474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
  let x_2476 : vec4<f32> = u_xlat2;
  let x_2478 : vec4<f32> = u_xlat2;
  let x_2482 : vec2<f32> = ((vec2<f32>(x_2476.x, x_2476.x) * vec2<f32>(x_2478.x, x_2478.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2483 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
  let x_2486 : f32 = u_xlat8.y;
  u_xlat64 = (1.0f / x_2486);
  let x_2488 : vec4<f32> = u_xlat0;
  let x_2491 : f32 = u_xlat23;
  u_xlat29 = (-(vec3<f32>(x_2488.x, x_2488.y, x_2488.z)) + vec3<f32>(x_2491, x_2491, x_2491));
  let x_2494 : f32 = u_xlat69;
  let x_2496 : vec3<f32> = u_xlat29;
  let x_2498 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2494, x_2494, x_2494) * x_2496) + vec3<f32>(x_2498.x, x_2498.y, x_2498.z));
  let x_2501 : f32 = u_xlat64;
  let x_2503 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2501, x_2501, x_2501) * x_2503);
  let x_2505 : vec4<f32> = u_xlat6;
  let x_2507 : vec3<f32> = u_xlat29;
  let x_2508 : vec3<f32> = (vec3<f32>(x_2505.x, x_2505.y, x_2505.z) * x_2507);
  let x_2509 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
  let x_2511 : vec4<f32> = u_xlat5;
  let x_2513 : vec3<f32> = u_xlat7;
  let x_2515 : vec4<f32> = u_xlat6;
  let x_2517 : vec3<f32> = ((vec3<f32>(x_2511.x, x_2511.y, x_2511.z) * x_2513) + vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2518 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2518.w);
  let x_2521 : f32 = u_xlat4.x;
  let x_2523 : f32 = x_359.unity_LightData.z;
  u_xlat64 = (x_2521 * x_2523);
  let x_2525 : vec4<f32> = u_xlat1;
  let x_2528 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2525.x, x_2525.y, x_2525.z), vec3<f32>(x_2528.x, x_2528.y, x_2528.z));
  let x_2533 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2533, 0.0f, 1.0f);
  let x_2536 : f32 = u_xlat64;
  let x_2538 : f32 = u_xlat2.x;
  u_xlat64 = (x_2536 * x_2538);
  let x_2540 : f32 = u_xlat64;
  let x_2542 : vec3<f32> = u_xlat25;
  let x_2543 : vec3<f32> = (vec3<f32>(x_2540, x_2540, x_2540) * x_2542);
  let x_2544 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2544.w);
  let x_2546 : vec4<f32> = u_xlat3;
  let x_2549 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2551 : vec3<f32> = (vec3<f32>(x_2546.x, x_2546.y, x_2546.z) + vec3<f32>(x_2549.x, x_2549.y, x_2549.z));
  let x_2552 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2551.x, x_2551.y, x_2551.z, x_2552.w);
  let x_2554 : vec4<f32> = u_xlat6;
  let x_2556 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2554.x, x_2554.y, x_2554.z), vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
  let x_2559 : f32 = u_xlat64;
  u_xlat64 = max(x_2559, 1.17549435e-37f);
  let x_2562 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_2562);
  let x_2564 : f32 = u_xlat64;
  let x_2566 : vec4<f32> = u_xlat6;
  let x_2568 : vec3<f32> = (vec3<f32>(x_2564, x_2564, x_2564) * vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
  let x_2569 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
  let x_2571 : vec4<f32> = u_xlat1;
  let x_2573 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2571.x, x_2571.y, x_2571.z), vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
  let x_2576 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2576, 0.0f, 1.0f);
  let x_2579 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2581 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_2579.x, x_2579.y, x_2579.z), vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
  let x_2586 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2586, 0.0f, 1.0f);
  let x_2589 : f32 = u_xlat64;
  let x_2590 : f32 = u_xlat64;
  u_xlat64 = (x_2589 * x_2590);
  let x_2592 : f32 = u_xlat64;
  let x_2594 : f32 = u_xlat8.x;
  u_xlat64 = ((x_2592 * x_2594) + 1.000010014f);
  let x_2599 : f32 = u_xlat2.x;
  let x_2601 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2599 * x_2601);
  let x_2604 : f32 = u_xlat64;
  let x_2605 : f32 = u_xlat64;
  u_xlat64 = (x_2604 * x_2605);
  let x_2608 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2608, 0.100000001f);
  let x_2612 : f32 = u_xlat64;
  let x_2614 : f32 = u_xlat2.x;
  u_xlat64 = (x_2612 * x_2614);
  let x_2616 : f32 = u_xlat65;
  let x_2617 : f32 = u_xlat64;
  u_xlat64 = (x_2616 * x_2617);
  let x_2619 : f32 = u_xlat66;
  let x_2620 : f32 = u_xlat64;
  u_xlat64 = (x_2619 / x_2620);
  let x_2622 : vec4<f32> = u_xlat0;
  let x_2624 : f32 = u_xlat64;
  let x_2627 : vec3<f32> = u_xlat7;
  let x_2628 : vec3<f32> = ((vec3<f32>(x_2622.x, x_2622.y, x_2622.z) * vec3<f32>(x_2624, x_2624, x_2624)) + x_2627);
  let x_2629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2628.x, x_2628.y, x_2628.z, x_2629.w);
  let x_2631 : vec4<f32> = u_xlat4;
  let x_2633 : vec4<f32> = u_xlat6;
  let x_2635 : vec3<f32> = (vec3<f32>(x_2631.x, x_2631.y, x_2631.z) * vec3<f32>(x_2633.x, x_2633.y, x_2633.z));
  let x_2636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2635.x, x_2635.y, x_2635.z, x_2636.w);
  let x_2639 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2641 : f32 = x_359.unity_LightData.y;
  u_xlat64 = min(x_2639, x_2641);
  let x_2644 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_2644));
  let x_2649 : f32 = x_2268.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2651 : f32 = x_2268.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2653 : f32 = x_2268.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2655 : f32 = x_2268.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2656 : vec4<f32> = vec4<f32>(x_2649, x_2651, x_2653, x_2655);
  let x_2662 : vec4<bool> = (vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2656.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb2 = vec2<bool>(x_2662.x, x_2662.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2673 : u32 = u_xlatu_loop_1;
    let x_2674 : u32 = u_xlatu64;
    if ((x_2673 < x_2674)) {
    } else {
      break;
    }
    let x_2677 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2677 >> 2u);
    let x_2680 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2680 & 3u));
    let x_2683 : u32 = u_xlatu69;
    let x_2686 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2683)];
    let x_2696 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2701 : vec4<u32> = indexable[x_2696];
    u_xlat69 = dot(x_2686, bitcast<vec4<f32>>(x_2701));
    let x_2704 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2704));
    let x_2707 : vec3<f32> = vs_INTERP0;
    let x_2719 : u32 = u_xlatu69;
    let x_2722 : vec4<f32> = x_2718.x_AdditionalLightsPosition[bitcast<i32>(x_2719)];
    let x_2725 : u32 = u_xlatu69;
    let x_2728 : vec4<f32> = x_2718.x_AdditionalLightsPosition[bitcast<i32>(x_2725)];
    u_xlat29 = ((-(x_2707) * vec3<f32>(x_2722.w, x_2722.w, x_2722.w)) + vec3<f32>(x_2728.x, x_2728.y, x_2728.z));
    let x_2731 : vec3<f32> = u_xlat29;
    let x_2732 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_2731, x_2732);
    let x_2734 : f32 = u_xlat70;
    u_xlat70 = max(x_2734, 6.10351562e-05f);
    let x_2737 : f32 = u_xlat70;
    u_xlat9.x = inverseSqrt(x_2737);
    let x_2740 : vec3<f32> = u_xlat29;
    let x_2741 : vec4<f32> = u_xlat9;
    u_xlat30 = (x_2740 * vec3<f32>(x_2741.x, x_2741.x, x_2741.x));
    let x_2744 : f32 = u_xlat70;
    u_xlat10.x = (1.0f / x_2744);
    let x_2747 : f32 = u_xlat70;
    let x_2748 : u32 = u_xlatu69;
    let x_2751 : f32 = x_2718.x_AdditionalLightsAttenuation[bitcast<i32>(x_2748)].x;
    u_xlat70 = (x_2747 * x_2751);
    let x_2753 : f32 = u_xlat70;
    let x_2755 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2753) * x_2755) + 1.0f);
    let x_2758 : f32 = u_xlat70;
    u_xlat70 = max(x_2758, 0.0f);
    let x_2760 : f32 = u_xlat70;
    let x_2761 : f32 = u_xlat70;
    u_xlat70 = (x_2760 * x_2761);
    let x_2763 : f32 = u_xlat70;
    let x_2765 : f32 = u_xlat10.x;
    u_xlat70 = (x_2763 * x_2765);
    let x_2767 : u32 = u_xlatu69;
    let x_2770 : vec4<f32> = x_2718.x_AdditionalLightsSpotDir[bitcast<i32>(x_2767)];
    let x_2772 : vec3<f32> = u_xlat30;
    u_xlat10.x = dot(vec3<f32>(x_2770.x, x_2770.y, x_2770.z), x_2772);
    let x_2776 : f32 = u_xlat10.x;
    let x_2777 : u32 = u_xlatu69;
    let x_2780 : f32 = x_2718.x_AdditionalLightsAttenuation[bitcast<i32>(x_2777)].z;
    let x_2782 : u32 = u_xlatu69;
    let x_2785 : f32 = x_2718.x_AdditionalLightsAttenuation[bitcast<i32>(x_2782)].w;
    u_xlat10.x = ((x_2776 * x_2780) + x_2785);
    let x_2789 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2789, 0.0f, 1.0f);
    let x_2793 : f32 = u_xlat10.x;
    let x_2795 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2793 * x_2795);
    let x_2798 : f32 = u_xlat70;
    let x_2800 : f32 = u_xlat10.x;
    u_xlat70 = (x_2798 * x_2800);
    let x_2803 : u32 = u_xlatu69;
    u_xlatu10 = (x_2803 >> 5u);
    let x_2806 : u32 = u_xlatu69;
    u_xlati31 = (1i << bitcast<u32>((bitcast<i32>(x_2806) & 31i)));
    let x_2812 : i32 = u_xlati31;
    let x_2814 : u32 = u_xlatu10;
    let x_2817 : f32 = x_2268.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2814)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_2812) & bitcast<u32>(x_2817)));
    let x_2821 : i32 = u_xlati10;
    if ((x_2821 != 0i)) {
      let x_2831 : u32 = u_xlatu69;
      let x_2834 : f32 = x_2830.x_AdditionalLightsLightTypes[bitcast<i32>(x_2831)].el;
      u_xlati10 = i32(x_2834);
      let x_2836 : i32 = u_xlati10;
      u_xlati31 = select(1i, 0i, (x_2836 != 0i));
      let x_2840 : u32 = u_xlatu69;
      u_xlati52 = (bitcast<i32>(x_2840) << bitcast<u32>(2i));
      let x_2843 : i32 = u_xlati31;
      if ((x_2843 != 0i)) {
        let x_2847 : vec3<f32> = vs_INTERP0;
        let x_2849 : i32 = u_xlati52;
        let x_2852 : i32 = u_xlati52;
        let x_2856 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[((x_2849 + 1i) / 4i)][((x_2852 + 1i) % 4i)];
        let x_2858 : vec3<f32> = (vec3<f32>(x_2847.y, x_2847.y, x_2847.y) * vec3<f32>(x_2856.x, x_2856.y, x_2856.w));
        let x_2859 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2859.w);
        let x_2861 : i32 = u_xlati52;
        let x_2863 : i32 = u_xlati52;
        let x_2866 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[(x_2861 / 4i)][(x_2863 % 4i)];
        let x_2868 : vec3<f32> = vs_INTERP0;
        let x_2871 : vec4<f32> = u_xlat11;
        let x_2873 : vec3<f32> = ((vec3<f32>(x_2866.x, x_2866.y, x_2866.w) * vec3<f32>(x_2868.x, x_2868.x, x_2868.x)) + vec3<f32>(x_2871.x, x_2871.y, x_2871.z));
        let x_2874 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2873.x, x_2873.y, x_2873.z, x_2874.w);
        let x_2876 : i32 = u_xlati52;
        let x_2879 : i32 = u_xlati52;
        let x_2883 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[((x_2876 + 2i) / 4i)][((x_2879 + 2i) % 4i)];
        let x_2885 : vec3<f32> = vs_INTERP0;
        let x_2888 : vec4<f32> = u_xlat11;
        let x_2890 : vec3<f32> = ((vec3<f32>(x_2883.x, x_2883.y, x_2883.w) * vec3<f32>(x_2885.z, x_2885.z, x_2885.z)) + vec3<f32>(x_2888.x, x_2888.y, x_2888.z));
        let x_2891 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2890.x, x_2890.y, x_2890.z, x_2891.w);
        let x_2893 : vec4<f32> = u_xlat11;
        let x_2895 : i32 = u_xlati52;
        let x_2898 : i32 = u_xlati52;
        let x_2902 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[((x_2895 + 3i) / 4i)][((x_2898 + 3i) % 4i)];
        let x_2904 : vec3<f32> = (vec3<f32>(x_2893.x, x_2893.y, x_2893.z) + vec3<f32>(x_2902.x, x_2902.y, x_2902.w));
        let x_2905 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2904.x, x_2904.y, x_2904.z, x_2905.w);
        let x_2908 : vec4<f32> = u_xlat11;
        let x_2910 : vec4<f32> = u_xlat11;
        let x_2912 : vec2<f32> = (vec2<f32>(x_2908.x, x_2908.y) / vec2<f32>(x_2910.z, x_2910.z));
        let x_2913 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2912.x, x_2913.y, x_2912.y);
        let x_2915 : vec3<f32> = u_xlat31;
        let x_2918 : vec2<f32> = ((vec2<f32>(x_2915.x, x_2915.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2919 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2918.x, x_2919.y, x_2918.y);
        let x_2921 : vec3<f32> = u_xlat31;
        let x_2925 : vec2<f32> = clamp(vec2<f32>(x_2921.x, x_2921.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2926 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2925.x, x_2926.y, x_2925.y);
        let x_2928 : u32 = u_xlatu69;
        let x_2931 : vec4<f32> = x_2830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2928)];
        let x_2933 : vec3<f32> = u_xlat31;
        let x_2936 : u32 = u_xlatu69;
        let x_2939 : vec4<f32> = x_2830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2936)];
        let x_2941 : vec2<f32> = ((vec2<f32>(x_2931.x, x_2931.y) * vec2<f32>(x_2933.x, x_2933.z)) + vec2<f32>(x_2939.z, x_2939.w));
        let x_2942 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2941.x, x_2942.y, x_2941.y);
      } else {
        let x_2946 : i32 = u_xlati10;
        u_xlatb10 = (x_2946 == 1i);
        let x_2948 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_2948);
        let x_2950 : i32 = u_xlati10;
        if ((x_2950 != 0i)) {
          let x_2954 : vec3<f32> = vs_INTERP0;
          let x_2956 : i32 = u_xlati52;
          let x_2959 : i32 = u_xlati52;
          let x_2963 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[((x_2956 + 1i) / 4i)][((x_2959 + 1i) % 4i)];
          let x_2965 : vec2<f32> = (vec2<f32>(x_2954.y, x_2954.y) * vec2<f32>(x_2963.x, x_2963.y));
          let x_2966 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2965.x, x_2965.y, x_2966.z, x_2966.w);
          let x_2968 : i32 = u_xlati52;
          let x_2970 : i32 = u_xlati52;
          let x_2973 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[(x_2968 / 4i)][(x_2970 % 4i)];
          let x_2975 : vec3<f32> = vs_INTERP0;
          let x_2978 : vec4<f32> = u_xlat11;
          let x_2980 : vec2<f32> = ((vec2<f32>(x_2973.x, x_2973.y) * vec2<f32>(x_2975.x, x_2975.x)) + vec2<f32>(x_2978.x, x_2978.y));
          let x_2981 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2980.x, x_2980.y, x_2981.z, x_2981.w);
          let x_2983 : i32 = u_xlati52;
          let x_2986 : i32 = u_xlati52;
          let x_2990 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[((x_2983 + 2i) / 4i)][((x_2986 + 2i) % 4i)];
          let x_2992 : vec3<f32> = vs_INTERP0;
          let x_2995 : vec4<f32> = u_xlat11;
          let x_2997 : vec2<f32> = ((vec2<f32>(x_2990.x, x_2990.y) * vec2<f32>(x_2992.z, x_2992.z)) + vec2<f32>(x_2995.x, x_2995.y));
          let x_2998 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2997.x, x_2997.y, x_2998.z, x_2998.w);
          let x_3000 : vec4<f32> = u_xlat11;
          let x_3002 : i32 = u_xlati52;
          let x_3005 : i32 = u_xlati52;
          let x_3009 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[((x_3002 + 3i) / 4i)][((x_3005 + 3i) % 4i)];
          let x_3011 : vec2<f32> = (vec2<f32>(x_3000.x, x_3000.y) + vec2<f32>(x_3009.x, x_3009.y));
          let x_3012 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3011.x, x_3011.y, x_3012.z, x_3012.w);
          let x_3014 : vec4<f32> = u_xlat11;
          let x_3017 : vec2<f32> = ((vec2<f32>(x_3014.x, x_3014.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3018 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3017.x, x_3017.y, x_3018.z, x_3018.w);
          let x_3020 : vec4<f32> = u_xlat11;
          let x_3022 : vec2<f32> = fract(vec2<f32>(x_3020.x, x_3020.y));
          let x_3023 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3022.x, x_3022.y, x_3023.z, x_3023.w);
          let x_3025 : u32 = u_xlatu69;
          let x_3028 : vec4<f32> = x_2830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3025)];
          let x_3030 : vec4<f32> = u_xlat11;
          let x_3033 : u32 = u_xlatu69;
          let x_3036 : vec4<f32> = x_2830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3033)];
          let x_3038 : vec2<f32> = ((vec2<f32>(x_3028.x, x_3028.y) * vec2<f32>(x_3030.x, x_3030.y)) + vec2<f32>(x_3036.z, x_3036.w));
          let x_3039 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3038.x, x_3039.y, x_3038.y);
        } else {
          let x_3042 : vec3<f32> = vs_INTERP0;
          let x_3044 : i32 = u_xlati52;
          let x_3047 : i32 = u_xlati52;
          let x_3051 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[((x_3044 + 1i) / 4i)][((x_3047 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_3042.y, x_3042.y, x_3042.y, x_3042.y) * x_3051);
          let x_3053 : i32 = u_xlati52;
          let x_3055 : i32 = u_xlati52;
          let x_3058 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[(x_3053 / 4i)][(x_3055 % 4i)];
          let x_3059 : vec3<f32> = vs_INTERP0;
          let x_3062 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_3058 * vec4<f32>(x_3059.x, x_3059.x, x_3059.x, x_3059.x)) + x_3062);
          let x_3064 : i32 = u_xlati52;
          let x_3067 : i32 = u_xlati52;
          let x_3071 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[((x_3064 + 2i) / 4i)][((x_3067 + 2i) % 4i)];
          let x_3072 : vec3<f32> = vs_INTERP0;
          let x_3075 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_3071 * vec4<f32>(x_3072.z, x_3072.z, x_3072.z, x_3072.z)) + x_3075);
          let x_3077 : vec4<f32> = u_xlat11;
          let x_3078 : i32 = u_xlati52;
          let x_3081 : i32 = u_xlati52;
          let x_3085 : vec4<f32> = x_2830.x_AdditionalLightsWorldToLights[((x_3078 + 3i) / 4i)][((x_3081 + 3i) % 4i)];
          u_xlat11 = (x_3077 + x_3085);
          let x_3087 : vec4<f32> = u_xlat11;
          let x_3089 : vec4<f32> = u_xlat11;
          let x_3091 : vec3<f32> = (vec3<f32>(x_3087.x, x_3087.y, x_3087.z) / vec3<f32>(x_3089.w, x_3089.w, x_3089.w));
          let x_3092 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3091.x, x_3091.y, x_3091.z, x_3092.w);
          let x_3094 : vec4<f32> = u_xlat11;
          let x_3096 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_3094.x, x_3094.y, x_3094.z), vec3<f32>(x_3096.x, x_3096.y, x_3096.z));
          let x_3101 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_3101);
          let x_3104 : vec4<f32> = u_xlat10;
          let x_3106 : vec4<f32> = u_xlat11;
          let x_3108 : vec3<f32> = (vec3<f32>(x_3104.x, x_3104.x, x_3104.x) * vec3<f32>(x_3106.x, x_3106.y, x_3106.z));
          let x_3109 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3108.x, x_3108.y, x_3108.z, x_3109.w);
          let x_3111 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_3111.x, x_3111.y, x_3111.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3117 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_3117, 0.000001f);
          let x_3122 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_3122);
          let x_3125 : vec4<f32> = u_xlat10;
          let x_3127 : vec4<f32> = u_xlat11;
          let x_3129 : vec3<f32> = (vec3<f32>(x_3125.x, x_3125.x, x_3125.x) * vec3<f32>(x_3127.z, x_3127.x, x_3127.y));
          let x_3130 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3129.x, x_3129.y, x_3129.z, x_3130.w);
          let x_3133 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_3133);
          let x_3137 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_3137, 0.0f, 1.0f);
          let x_3141 : vec4<f32> = u_xlat12;
          let x_3144 : vec4<bool> = (vec4<f32>(x_3141.y, x_3141.z, x_3141.y, x_3141.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3144.x, x_3144.y);
          let x_3148 : bool = u_xlatb53.x;
          if (x_3148) {
            let x_3153 : f32 = u_xlat12.x;
            x_3149 = x_3153;
          } else {
            let x_3156 : f32 = u_xlat12.x;
            x_3149 = -(x_3156);
          }
          let x_3158 : f32 = x_3149;
          u_xlat53.x = x_3158;
          let x_3161 : bool = u_xlatb53.y;
          if (x_3161) {
            let x_3166 : f32 = u_xlat12.x;
            x_3162 = x_3166;
          } else {
            let x_3169 : f32 = u_xlat12.x;
            x_3162 = -(x_3169);
          }
          let x_3171 : f32 = x_3162;
          u_xlat53.y = x_3171;
          let x_3173 : vec4<f32> = u_xlat11;
          let x_3175 : vec4<f32> = u_xlat10;
          let x_3178 : vec2<f32> = u_xlat53;
          let x_3179 : vec2<f32> = ((vec2<f32>(x_3173.x, x_3173.y) * vec2<f32>(x_3175.x, x_3175.x)) + x_3178);
          let x_3180 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3179.x, x_3180.y, x_3179.y, x_3180.w);
          let x_3182 : vec4<f32> = u_xlat10;
          let x_3185 : vec2<f32> = ((vec2<f32>(x_3182.x, x_3182.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3186 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3185.x, x_3186.y, x_3185.y, x_3186.w);
          let x_3188 : vec4<f32> = u_xlat10;
          let x_3192 : vec2<f32> = clamp(vec2<f32>(x_3188.x, x_3188.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3193 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3192.x, x_3193.y, x_3192.y, x_3193.w);
          let x_3195 : u32 = u_xlatu69;
          let x_3198 : vec4<f32> = x_2830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3195)];
          let x_3200 : vec4<f32> = u_xlat10;
          let x_3203 : u32 = u_xlatu69;
          let x_3206 : vec4<f32> = x_2830.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3203)];
          let x_3208 : vec2<f32> = ((vec2<f32>(x_3198.x, x_3198.y) * vec2<f32>(x_3200.x, x_3200.z)) + vec2<f32>(x_3206.z, x_3206.w));
          let x_3209 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3208.x, x_3209.y, x_3208.y);
        }
      }
      let x_3216 : vec3<f32> = u_xlat31;
      let x_3219 : f32 = x_44.x_GlobalMipBias.x;
      let x_3220 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3216.x, x_3216.z), x_3219);
      u_xlat10 = x_3220;
      let x_3223 : bool = u_xlatb2.y;
      if (x_3223) {
        let x_3228 : f32 = u_xlat10.w;
        x_3224 = x_3228;
      } else {
        let x_3231 : f32 = u_xlat10.x;
        x_3224 = x_3231;
      }
      let x_3232 : f32 = x_3224;
      u_xlat73 = x_3232;
      let x_3234 : bool = u_xlatb2.x;
      if (x_3234) {
        let x_3238 : vec4<f32> = u_xlat10;
        x_3235 = vec3<f32>(x_3238.x, x_3238.y, x_3238.z);
      } else {
        let x_3241 : f32 = u_xlat73;
        x_3235 = vec3<f32>(x_3241, x_3241, x_3241);
      }
      let x_3243 : vec3<f32> = x_3235;
      let x_3244 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3243.x, x_3243.y, x_3243.z, x_3244.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_3250 : vec4<f32> = u_xlat10;
    let x_3252 : u32 = u_xlatu69;
    let x_3255 : vec4<f32> = x_2718.x_AdditionalLightsColor[bitcast<i32>(x_3252)];
    let x_3257 : vec3<f32> = (vec3<f32>(x_3250.x, x_3250.y, x_3250.z) * vec3<f32>(x_3255.x, x_3255.y, x_3255.z));
    let x_3258 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3257.x, x_3257.y, x_3257.z, x_3258.w);
    let x_3260 : f32 = u_xlat68;
    let x_3262 : vec4<f32> = u_xlat10;
    let x_3264 : vec3<f32> = (vec3<f32>(x_3260, x_3260, x_3260) * vec3<f32>(x_3262.x, x_3262.y, x_3262.z));
    let x_3265 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3264.x, x_3264.y, x_3264.z, x_3265.w);
    let x_3267 : vec4<f32> = u_xlat1;
    let x_3269 : vec3<f32> = u_xlat30;
    u_xlat69 = dot(vec3<f32>(x_3267.x, x_3267.y, x_3267.z), x_3269);
    let x_3271 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3271, 0.0f, 1.0f);
    let x_3273 : f32 = u_xlat69;
    let x_3274 : f32 = u_xlat70;
    u_xlat69 = (x_3273 * x_3274);
    let x_3276 : f32 = u_xlat69;
    let x_3278 : vec4<f32> = u_xlat10;
    let x_3280 : vec3<f32> = (vec3<f32>(x_3276, x_3276, x_3276) * vec3<f32>(x_3278.x, x_3278.y, x_3278.z));
    let x_3281 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3280.x, x_3280.y, x_3280.z, x_3281.w);
    let x_3283 : vec3<f32> = u_xlat29;
    let x_3284 : vec4<f32> = u_xlat9;
    let x_3287 : vec4<f32> = u_xlat3;
    u_xlat29 = ((x_3283 * vec3<f32>(x_3284.x, x_3284.x, x_3284.x)) + vec3<f32>(x_3287.x, x_3287.y, x_3287.z));
    let x_3290 : vec3<f32> = u_xlat29;
    let x_3291 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(x_3290, x_3291);
    let x_3293 : f32 = u_xlat69;
    u_xlat69 = max(x_3293, 1.17549435e-37f);
    let x_3295 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_3295);
    let x_3297 : f32 = u_xlat69;
    let x_3299 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_3297, x_3297, x_3297) * x_3299);
    let x_3301 : vec4<f32> = u_xlat1;
    let x_3303 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(vec3<f32>(x_3301.x, x_3301.y, x_3301.z), x_3303);
    let x_3305 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3305, 0.0f, 1.0f);
    let x_3307 : vec3<f32> = u_xlat30;
    let x_3308 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_3307, x_3308);
    let x_3310 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3310, 0.0f, 1.0f);
    let x_3312 : f32 = u_xlat69;
    let x_3313 : f32 = u_xlat69;
    u_xlat69 = (x_3312 * x_3313);
    let x_3315 : f32 = u_xlat69;
    let x_3317 : f32 = u_xlat8.x;
    u_xlat69 = ((x_3315 * x_3317) + 1.000010014f);
    let x_3320 : f32 = u_xlat70;
    let x_3321 : f32 = u_xlat70;
    u_xlat70 = (x_3320 * x_3321);
    let x_3323 : f32 = u_xlat69;
    let x_3324 : f32 = u_xlat69;
    u_xlat69 = (x_3323 * x_3324);
    let x_3326 : f32 = u_xlat70;
    u_xlat70 = max(x_3326, 0.100000001f);
    let x_3328 : f32 = u_xlat69;
    let x_3329 : f32 = u_xlat70;
    u_xlat69 = (x_3328 * x_3329);
    let x_3331 : f32 = u_xlat65;
    let x_3332 : f32 = u_xlat69;
    u_xlat69 = (x_3331 * x_3332);
    let x_3334 : f32 = u_xlat66;
    let x_3335 : f32 = u_xlat69;
    u_xlat69 = (x_3334 / x_3335);
    let x_3337 : vec4<f32> = u_xlat0;
    let x_3339 : f32 = u_xlat69;
    let x_3342 : vec3<f32> = u_xlat7;
    u_xlat29 = ((vec3<f32>(x_3337.x, x_3337.y, x_3337.z) * vec3<f32>(x_3339, x_3339, x_3339)) + x_3342);
    let x_3344 : vec3<f32> = u_xlat29;
    let x_3345 : vec4<f32> = u_xlat10;
    let x_3348 : vec4<f32> = u_xlat6;
    let x_3350 : vec3<f32> = ((x_3344 * vec3<f32>(x_3345.x, x_3345.y, x_3345.z)) + vec3<f32>(x_3348.x, x_3348.y, x_3348.z));
    let x_3351 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3350.x, x_3350.y, x_3350.z, x_3351.w);

    continuing {
      let x_3353 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3353 + bitcast<u32>(1i));
    }
  }
  let x_3355 : vec4<f32> = u_xlat5;
  let x_3357 : f32 = u_xlat44;
  let x_3360 : vec4<f32> = u_xlat4;
  let x_3362 : vec3<f32> = ((vec3<f32>(x_3355.x, x_3355.y, x_3355.z) * vec3<f32>(x_3357, x_3357, x_3357)) + vec3<f32>(x_3360.x, x_3360.y, x_3360.z));
  let x_3363 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3362.x, x_3362.y, x_3362.z, x_3363.w);
  let x_3365 : vec4<f32> = u_xlat6;
  let x_3367 : vec4<f32> = u_xlat0;
  let x_3369 : vec3<f32> = (vec3<f32>(x_3365.x, x_3365.y, x_3365.z) + vec3<f32>(x_3367.x, x_3367.y, x_3367.z));
  let x_3370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3369.x, x_3369.y, x_3369.z, x_3370.w);
  let x_3372 : f32 = u_xlat63;
  let x_3373 : f32 = u_xlat63;
  u_xlat63 = (x_3372 * -(x_3373));
  let x_3376 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3376);
  let x_3378 : vec4<f32> = u_xlat0;
  let x_3382 : vec4<f32> = x_44.unity_FogColor;
  let x_3385 : vec3<f32> = (vec3<f32>(x_3378.x, x_3378.y, x_3378.z) + -(vec3<f32>(x_3382.x, x_3382.y, x_3382.z)));
  let x_3386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3385.x, x_3385.y, x_3385.z, x_3386.w);
  let x_3390 : f32 = u_xlat63;
  let x_3392 : vec4<f32> = u_xlat0;
  let x_3396 : vec4<f32> = x_44.unity_FogColor;
  let x_3398 : vec3<f32> = ((vec3<f32>(x_3390, x_3390, x_3390) * vec3<f32>(x_3392.x, x_3392.y, x_3392.z)) + vec3<f32>(x_3396.x, x_3396.y, x_3396.z));
  let x_3399 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3398.x, x_3398.y, x_3398.z, x_3399.w);
  let x_3404 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3406 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_3404 & bitcast<u32>(x_3406));
  let x_3409 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3409);
  let x_3414 : f32 = u_xlat0.x;
  let x_3416 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3414 * x_3416);
  let x_3421 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3421, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3425 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3425.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

