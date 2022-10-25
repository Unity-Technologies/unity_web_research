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

@group(1) @binding(3) var<uniform> x_515 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2208 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2639 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2758 : AdditionalLightsCookies;

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
  var u_xlat23 : f32;
  var u_xlat65 : f32;
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
  var x_2160 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlat45 : f32;
  var x_2290 : f32;
  var x_2301 : vec3<f32>;
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
  var x_3058 : f32;
  var x_3071 : f32;
  var x_3123 : f32;
  var x_3135 : vec3<f32>;
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
  let x_706 : vec2<f32> = vs_INTERP4;
  let x_708 : f32 = x_44.x_GlobalMipBias.x;
  let x_709 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_706, x_708);
  u_xlat5 = x_709;
  let x_714 : vec2<f32> = vs_INTERP4;
  let x_716 : f32 = x_44.x_GlobalMipBias.x;
  let x_717 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_714, x_716);
  let x_718 : vec3<f32> = vec3<f32>(x_717.x, x_717.y, x_717.z);
  let x_719 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat5;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_726 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat1;
  let x_730 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : f32 = u_xlat63;
  u_xlat63 = (x_733 + 0.5f);
  let x_736 : f32 = u_xlat63;
  let x_738 : vec4<f32> = u_xlat6;
  let x_740 : vec3<f32> = (vec3<f32>(x_736, x_736, x_736) * vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_744 : f32 = u_xlat5.w;
  u_xlat63 = max(x_744, 0.0001f);
  let x_747 : vec4<f32> = u_xlat5;
  let x_749 : f32 = u_xlat63;
  let x_751 : vec3<f32> = (vec3<f32>(x_747.x, x_747.y, x_747.z) / vec3<f32>(x_749, x_749, x_749));
  let x_752 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_756 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_757 : vec2<f32> = vec2<f32>(x_756.x, x_756.y);
  let x_761 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_757.x, x_757.y));
  let x_762 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat6;
  let x_766 : vec4<f32> = hlslcc_FragCoord;
  let x_768 : vec2<f32> = (vec2<f32>(x_764.x, x_764.y) * vec2<f32>(x_766.x, x_766.y));
  let x_769 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_768.x, x_768.y, x_769.z, x_769.w);
  let x_772 : f32 = u_xlat6.y;
  let x_775 : f32 = x_44.x_ScaleBiasRt.x;
  let x_778 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_772 * x_775) + x_778);
  let x_780 : f32 = u_xlat63;
  u_xlat6.z = (-(x_780) + 1.0f);
  let x_784 : vec4<f32> = u_xlat2;
  let x_785 : vec2<f32> = vec2<f32>(x_784.x, x_784.y);
  let x_786 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_785.x, x_785.y, x_786.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat2;
  let x_792 : vec2<f32> = clamp(vec2<f32>(x_788.x, x_788.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_793 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
  let x_796 : f32 = u_xlat2.x;
  u_xlat63 = ((-(x_796) * 0.959999979f) + 0.959999979f);
  let x_801 : f32 = u_xlat63;
  let x_804 : f32 = u_xlat2.y;
  u_xlat64 = (-(x_801) + x_804);
  let x_806 : f32 = u_xlat63;
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_806, x_806, x_806) * vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : vec4<f32> = u_xlat0;
  let x_815 : vec3<f32> = (vec3<f32>(x_811.x, x_811.y, x_811.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat2;
  let x_820 : vec4<f32> = u_xlat0;
  let x_825 : vec3<f32> = ((vec3<f32>(x_818.x, x_818.x, x_818.x) * vec3<f32>(x_820.x, x_820.y, x_820.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_826 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_829 : f32 = u_xlat2.y;
  u_xlat63 = (-(x_829) + 1.0f);
  let x_832 : f32 = u_xlat63;
  let x_833 : f32 = u_xlat63;
  u_xlat2.x = (x_832 * x_833);
  let x_837 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_837, 0.0078125f);
  let x_843 : f32 = u_xlat2.x;
  let x_845 : f32 = u_xlat2.x;
  u_xlat23 = (x_843 * x_845);
  let x_847 : f32 = u_xlat64;
  u_xlat64 = (x_847 + 1.0f);
  let x_849 : f32 = u_xlat64;
  u_xlat64 = min(x_849, 1.0f);
  let x_853 : f32 = u_xlat2.x;
  u_xlat65 = ((x_853 * 4.0f) + 2.0f);
  let x_862 : vec4<f32> = u_xlat6;
  let x_865 : f32 = x_44.x_GlobalMipBias.x;
  let x_866 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_862.x, x_862.z), x_865);
  u_xlat66 = x_866.x;
  let x_869 : f32 = u_xlat66;
  u_xlat67 = (x_869 + -1.0f);
  let x_872 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_873 : f32 = u_xlat67;
  u_xlat67 = ((x_872 * x_873) + 1.0f);
  let x_878 : f32 = u_xlat2.z;
  let x_879 : f32 = u_xlat66;
  u_xlat44 = min(x_878, x_879);
  let x_883 : f32 = x_515.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_883);
  let x_885 : bool = u_xlatb66;
  if (x_885) {
    let x_889 : f32 = x_515.x_MainLightShadowParams.y;
    u_xlatb66 = (x_889 == 1.0f);
    let x_891 : bool = u_xlatb66;
    if (x_891) {
      let x_894 : vec4<f32> = u_xlat3;
      let x_898 : vec4<f32> = x_515.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_894.x, x_894.y, x_894.x, x_894.y) + x_898);
      let x_901 : vec4<f32> = u_xlat6;
      let x_902 : vec2<f32> = vec2<f32>(x_901.x, x_901.y);
      let x_904 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_902.x, x_902.y, x_904);
      let x_917 : vec3<f32> = txVec0;
      let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_917.xy, x_917.z);
      u_xlat8.x = x_919;
      let x_922 : vec4<f32> = u_xlat6;
      let x_923 : vec2<f32> = vec2<f32>(x_922.z, x_922.w);
      let x_925 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_923.x, x_923.y, x_925);
      let x_932 : vec3<f32> = txVec1;
      let x_934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_932.xy, x_932.z);
      u_xlat8.y = x_934;
      let x_936 : vec4<f32> = u_xlat3;
      let x_940 : vec4<f32> = x_515.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_936.x, x_936.y, x_936.x, x_936.y) + x_940);
      let x_943 : vec4<f32> = u_xlat6;
      let x_944 : vec2<f32> = vec2<f32>(x_943.x, x_943.y);
      let x_946 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_944.x, x_944.y, x_946);
      let x_953 : vec3<f32> = txVec2;
      let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_953.xy, x_953.z);
      u_xlat8.z = x_955;
      let x_958 : vec4<f32> = u_xlat6;
      let x_959 : vec2<f32> = vec2<f32>(x_958.z, x_958.w);
      let x_961 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_959.x, x_959.y, x_961);
      let x_968 : vec3<f32> = txVec3;
      let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_968.xy, x_968.z);
      u_xlat8.w = x_970;
      let x_972 : vec4<f32> = u_xlat8;
      u_xlat66 = dot(x_972, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_979 : f32 = x_515.x_MainLightShadowParams.y;
      u_xlatb68 = (x_979 == 2.0f);
      let x_981 : bool = u_xlatb68;
      if (x_981) {
        let x_984 : vec4<f32> = u_xlat3;
        let x_987 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_991 : vec2<f32> = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_987.z, x_987.w)) + vec2<f32>(0.5f, 0.5f));
        let x_992 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_991.x, x_991.y, x_992.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat6;
        let x_996 : vec2<f32> = floor(vec2<f32>(x_994.x, x_994.y));
        let x_997 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_996.x, x_996.y, x_997.z, x_997.w);
        let x_1000 : vec4<f32> = u_xlat3;
        let x_1003 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1006 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.z, x_1003.w)) + -(vec2<f32>(x_1006.x, x_1006.y)));
        let x_1010 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1010.x, x_1010.x, x_1010.y, x_1010.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1015 : vec4<f32> = u_xlat8;
        let x_1017 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1015.x, x_1015.x, x_1015.z, x_1015.z) * vec4<f32>(x_1017.x, x_1017.x, x_1017.z, x_1017.z));
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1024 : vec2<f32> = (vec2<f32>(x_1020.y, x_1020.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1025 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1024.x, x_1025.y, x_1024.y, x_1025.w);
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1030 : vec2<f32> = u_xlat48;
        let x_1032 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1030));
        let x_1033 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1032.x, x_1032.y, x_1033.z, x_1033.w);
        let x_1036 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1036) + vec2<f32>(1.0f, 1.0f));
        let x_1040 : vec2<f32> = u_xlat48;
        let x_1042 : vec2<f32> = min(x_1040, vec2<f32>(0.0f, 0.0f));
        let x_1043 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
        let x_1045 : vec4<f32> = u_xlat10;
        let x_1048 : vec4<f32> = u_xlat10;
        let x_1051 : vec2<f32> = u_xlat51;
        let x_1052 : vec2<f32> = ((-(vec2<f32>(x_1045.x, x_1045.y)) * vec2<f32>(x_1048.x, x_1048.y)) + x_1051);
        let x_1053 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1052.x, x_1052.y, x_1053.z, x_1053.w);
        let x_1055 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1055, vec2<f32>(0.0f, 0.0f));
        let x_1057 : vec2<f32> = u_xlat48;
        let x_1059 : vec2<f32> = u_xlat48;
        let x_1061 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1057) * x_1059) + vec2<f32>(x_1061.y, x_1061.w));
        let x_1064 : vec4<f32> = u_xlat10;
        let x_1066 : vec2<f32> = (vec2<f32>(x_1064.x, x_1064.y) + vec2<f32>(1.0f, 1.0f));
        let x_1067 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1069 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1069 + vec2<f32>(1.0f, 1.0f));
        let x_1072 : vec4<f32> = u_xlat9;
        let x_1076 : vec2<f32> = (vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1077 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1079 : vec2<f32> = u_xlat51;
        let x_1080 : vec2<f32> = (x_1079 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1080.x, x_1080.y, x_1081.z, x_1081.w);
        let x_1083 : vec4<f32> = u_xlat10;
        let x_1085 : vec2<f32> = (vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
        let x_1089 : vec2<f32> = u_xlat48;
        let x_1090 : vec2<f32> = (x_1089 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1091 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1093.y, x_1093.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1097 : f32 = u_xlat10.x;
        u_xlat11.z = x_1097;
        let x_1100 : f32 = u_xlat48.x;
        u_xlat11.w = x_1100;
        let x_1103 : f32 = u_xlat12.x;
        u_xlat9.z = x_1103;
        let x_1106 : f32 = u_xlat8.x;
        u_xlat9.w = x_1106;
        let x_1109 : vec4<f32> = u_xlat9;
        let x_1111 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1109.z, x_1109.w, x_1109.x, x_1109.z) + vec4<f32>(x_1111.z, x_1111.w, x_1111.x, x_1111.z));
        let x_1115 : f32 = u_xlat11.y;
        u_xlat10.z = x_1115;
        let x_1118 : f32 = u_xlat48.y;
        u_xlat10.w = x_1118;
        let x_1121 : f32 = u_xlat9.y;
        u_xlat12.z = x_1121;
        let x_1124 : f32 = u_xlat8.z;
        u_xlat12.w = x_1124;
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1128 : vec4<f32> = u_xlat12;
        let x_1130 : vec3<f32> = (vec3<f32>(x_1126.z, x_1126.y, x_1126.w) + vec3<f32>(x_1128.z, x_1128.y, x_1128.w));
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1135 : vec4<f32> = u_xlat13;
        let x_1137 : vec3<f32> = (vec3<f32>(x_1133.x, x_1133.z, x_1133.w) / vec3<f32>(x_1135.z, x_1135.w, x_1135.y));
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat9;
        let x_1145 : vec3<f32> = (vec3<f32>(x_1140.x, x_1140.y, x_1140.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
        let x_1148 : vec4<f32> = u_xlat12;
        let x_1150 : vec4<f32> = u_xlat8;
        let x_1152 : vec3<f32> = (vec3<f32>(x_1148.z, x_1148.y, x_1148.w) / vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
        let x_1153 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat10;
        let x_1157 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.y, x_1155.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1163 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1165 : vec3<f32> = (vec3<f32>(x_1160.y, x_1160.x, x_1160.z) * vec3<f32>(x_1163.x, x_1163.x, x_1163.x));
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat10;
        let x_1171 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1173 : vec3<f32> = (vec3<f32>(x_1168.x, x_1168.y, x_1168.z) * vec3<f32>(x_1171.y, x_1171.y, x_1171.y));
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
        let x_1177 : f32 = u_xlat10.x;
        u_xlat9.w = x_1177;
        let x_1179 : vec4<f32> = u_xlat6;
        let x_1182 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1179.x, x_1179.y, x_1179.x, x_1179.y) * vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y)) + vec4<f32>(x_1185.y, x_1185.w, x_1185.x, x_1185.w));
        let x_1188 : vec4<f32> = u_xlat6;
        let x_1191 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1188.x, x_1188.y) * vec2<f32>(x_1191.x, x_1191.y)) + vec2<f32>(x_1194.z, x_1194.w));
        let x_1198 : f32 = u_xlat9.y;
        u_xlat10.w = x_1198;
        let x_1200 : vec4<f32> = u_xlat10;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.y, x_1200.z);
        let x_1202 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1202.x, x_1201.x, x_1202.z, x_1201.y);
        let x_1204 : vec4<f32> = u_xlat6;
        let x_1207 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.y) * vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y)) + vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1210.y));
        let x_1213 : vec4<f32> = u_xlat6;
        let x_1216 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1219 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1213.x, x_1213.y, x_1213.x, x_1213.y) * vec4<f32>(x_1216.x, x_1216.y, x_1216.x, x_1216.y)) + vec4<f32>(x_1219.w, x_1219.y, x_1219.w, x_1219.z));
        let x_1222 : vec4<f32> = u_xlat6;
        let x_1225 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1228 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1222.x, x_1222.y, x_1222.x, x_1222.y) * vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.y)) + vec4<f32>(x_1228.x, x_1228.w, x_1228.z, x_1228.w));
        let x_1232 : vec4<f32> = u_xlat8;
        let x_1234 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1232.x, x_1232.x, x_1232.x, x_1232.y) * vec4<f32>(x_1234.z, x_1234.w, x_1234.y, x_1234.z));
        let x_1238 : vec4<f32> = u_xlat8;
        let x_1240 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1238.y, x_1238.y, x_1238.z, x_1238.z) * x_1240);
        let x_1244 : f32 = u_xlat8.z;
        let x_1246 : f32 = u_xlat13.y;
        u_xlat68 = (x_1244 * x_1246);
        let x_1249 : vec4<f32> = u_xlat11;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.x, x_1249.y);
        let x_1252 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec4;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1259.xy, x_1259.z);
        u_xlat6.x = x_1261;
        let x_1264 : vec4<f32> = u_xlat11;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.z, x_1264.w);
        let x_1267 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1275 : vec3<f32> = txVec5;
        let x_1277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1275.xy, x_1275.z);
        u_xlat27 = x_1277;
        let x_1278 : f32 = u_xlat27;
        let x_1280 : f32 = u_xlat14.y;
        u_xlat27 = (x_1278 * x_1280);
        let x_1283 : f32 = u_xlat14.x;
        let x_1285 : f32 = u_xlat6.x;
        let x_1287 : f32 = u_xlat27;
        u_xlat6.x = ((x_1283 * x_1285) + x_1287);
        let x_1291 : vec2<f32> = u_xlat48;
        let x_1293 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec6;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1300.xy, x_1300.z);
        u_xlat27 = x_1302;
        let x_1304 : f32 = u_xlat14.z;
        let x_1305 : f32 = u_xlat27;
        let x_1308 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1304 * x_1305) + x_1308);
        let x_1312 : vec4<f32> = u_xlat10;
        let x_1313 : vec2<f32> = vec2<f32>(x_1312.x, x_1312.y);
        let x_1315 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
        let x_1322 : vec3<f32> = txVec7;
        let x_1324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1322.xy, x_1322.z);
        u_xlat27 = x_1324;
        let x_1326 : f32 = u_xlat14.w;
        let x_1327 : f32 = u_xlat27;
        let x_1330 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1326 * x_1327) + x_1330);
        let x_1334 : vec4<f32> = u_xlat12;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec8;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1344.xy, x_1344.z);
        u_xlat27 = x_1346;
        let x_1348 : f32 = u_xlat15.x;
        let x_1349 : f32 = u_xlat27;
        let x_1352 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1348 * x_1349) + x_1352);
        let x_1356 : vec4<f32> = u_xlat12;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.z, x_1356.w);
        let x_1359 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec9;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1366.xy, x_1366.z);
        u_xlat27 = x_1368;
        let x_1370 : f32 = u_xlat15.y;
        let x_1371 : f32 = u_xlat27;
        let x_1374 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1370 * x_1371) + x_1374);
        let x_1378 : vec4<f32> = u_xlat10;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.z, x_1378.w);
        let x_1381 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec10;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1388.xy, x_1388.z);
        u_xlat27 = x_1390;
        let x_1392 : f32 = u_xlat15.z;
        let x_1393 : f32 = u_xlat27;
        let x_1396 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1392 * x_1393) + x_1396);
        let x_1400 : vec4<f32> = u_xlat9;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.x, x_1400.y);
        let x_1403 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1410 : vec3<f32> = txVec11;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1410.xy, x_1410.z);
        u_xlat27 = x_1412;
        let x_1414 : f32 = u_xlat15.w;
        let x_1415 : f32 = u_xlat27;
        let x_1418 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1414 * x_1415) + x_1418);
        let x_1422 : vec4<f32> = u_xlat9;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.z, x_1422.w);
        let x_1425 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec12;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1432.xy, x_1432.z);
        u_xlat27 = x_1434;
        let x_1435 : f32 = u_xlat68;
        let x_1436 : f32 = u_xlat27;
        let x_1439 : f32 = u_xlat6.x;
        u_xlat66 = ((x_1435 * x_1436) + x_1439);
      } else {
        let x_1442 : vec4<f32> = u_xlat3;
        let x_1445 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1448 : vec2<f32> = ((vec2<f32>(x_1442.x, x_1442.y) * vec2<f32>(x_1445.z, x_1445.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1449 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1448.x, x_1448.y, x_1449.z, x_1449.w);
        let x_1451 : vec4<f32> = u_xlat6;
        let x_1453 : vec2<f32> = floor(vec2<f32>(x_1451.x, x_1451.y));
        let x_1454 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1453.x, x_1453.y, x_1454.z, x_1454.w);
        let x_1456 : vec4<f32> = u_xlat3;
        let x_1459 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1462 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1456.x, x_1456.y) * vec2<f32>(x_1459.z, x_1459.w)) + -(vec2<f32>(x_1462.x, x_1462.y)));
        let x_1466 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1466.x, x_1466.x, x_1466.y, x_1466.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1469 : vec4<f32> = u_xlat8;
        let x_1471 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1469.x, x_1469.x, x_1469.z, x_1469.z) * vec4<f32>(x_1471.x, x_1471.x, x_1471.z, x_1471.z));
        let x_1474 : vec4<f32> = u_xlat9;
        let x_1478 : vec2<f32> = (vec2<f32>(x_1474.y, x_1474.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1479 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1479.x, x_1478.x, x_1479.z, x_1478.y);
        let x_1481 : vec4<f32> = u_xlat9;
        let x_1484 : vec2<f32> = u_xlat48;
        let x_1486 : vec2<f32> = ((vec2<f32>(x_1481.x, x_1481.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1484));
        let x_1487 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1486.x, x_1487.y, x_1486.y, x_1487.w);
        let x_1489 : vec2<f32> = u_xlat48;
        let x_1491 : vec2<f32> = (-(x_1489) + vec2<f32>(1.0f, 1.0f));
        let x_1492 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1491.x, x_1491.y, x_1492.z, x_1492.w);
        let x_1494 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1494, vec2<f32>(0.0f, 0.0f));
        let x_1496 : vec2<f32> = u_xlat51;
        let x_1498 : vec2<f32> = u_xlat51;
        let x_1500 : vec4<f32> = u_xlat9;
        let x_1502 : vec2<f32> = ((-(x_1496) * x_1498) + vec2<f32>(x_1500.x, x_1500.y));
        let x_1503 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1502.x, x_1502.y, x_1503.z, x_1503.w);
        let x_1505 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1505, vec2<f32>(0.0f, 0.0f));
        let x_1508 : vec2<f32> = u_xlat51;
        let x_1510 : vec2<f32> = u_xlat51;
        let x_1512 : vec4<f32> = u_xlat8;
        let x_1514 : vec2<f32> = ((-(x_1508) * x_1510) + vec2<f32>(x_1512.y, x_1512.w));
        let x_1515 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1514.x, x_1515.y, x_1514.y);
        let x_1517 : vec4<f32> = u_xlat9;
        let x_1519 : vec2<f32> = (vec2<f32>(x_1517.x, x_1517.y) + vec2<f32>(2.0f, 2.0f));
        let x_1520 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1519.x, x_1519.y, x_1520.z, x_1520.w);
        let x_1522 : vec3<f32> = u_xlat29;
        let x_1524 : vec2<f32> = (vec2<f32>(x_1522.x, x_1522.z) + vec2<f32>(2.0f, 2.0f));
        let x_1525 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1525.x, x_1524.x, x_1525.z, x_1524.y);
        let x_1528 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1528 * 0.081632003f);
        let x_1532 : vec4<f32> = u_xlat8;
        let x_1535 : vec3<f32> = (vec3<f32>(x_1532.z, x_1532.x, x_1532.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1536 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
        let x_1538 : vec4<f32> = u_xlat9;
        let x_1541 : vec2<f32> = (vec2<f32>(x_1538.x, x_1538.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1542 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1541.x, x_1541.y, x_1542.z, x_1542.w);
        let x_1545 : f32 = u_xlat12.y;
        u_xlat11.x = x_1545;
        let x_1547 : vec2<f32> = u_xlat48;
        let x_1554 : vec2<f32> = ((vec2<f32>(x_1547.x, x_1547.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1555 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1555.x, x_1554.x, x_1555.z, x_1554.y);
        let x_1557 : vec2<f32> = u_xlat48;
        let x_1561 : vec2<f32> = ((vec2<f32>(x_1557.x, x_1557.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1562 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1561.x, x_1562.y, x_1561.y, x_1562.w);
        let x_1565 : f32 = u_xlat8.x;
        u_xlat9.y = x_1565;
        let x_1568 : f32 = u_xlat10.y;
        u_xlat9.w = x_1568;
        let x_1570 : vec4<f32> = u_xlat9;
        let x_1571 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1570 + x_1571);
        let x_1573 : vec2<f32> = u_xlat48;
        let x_1576 : vec2<f32> = ((vec2<f32>(x_1573.y, x_1573.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1577 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1577.x, x_1576.x, x_1577.z, x_1576.y);
        let x_1579 : vec2<f32> = u_xlat48;
        let x_1582 : vec2<f32> = ((vec2<f32>(x_1579.y, x_1579.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1583 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1582.x, x_1583.y, x_1582.y, x_1583.w);
        let x_1586 : f32 = u_xlat8.y;
        u_xlat10.y = x_1586;
        let x_1588 : vec4<f32> = u_xlat10;
        let x_1589 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1588 + x_1589);
        let x_1591 : vec4<f32> = u_xlat9;
        let x_1592 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1591 / x_1592);
        let x_1594 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1594 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1600 : vec4<f32> = u_xlat10;
        let x_1601 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1600 / x_1601);
        let x_1603 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1603 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1605 : vec4<f32> = u_xlat9;
        let x_1608 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1605.w, x_1605.x, x_1605.y, x_1605.z) * vec4<f32>(x_1608.x, x_1608.x, x_1608.x, x_1608.x));
        let x_1611 : vec4<f32> = u_xlat10;
        let x_1614 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1611.x, x_1611.w, x_1611.y, x_1611.z) * vec4<f32>(x_1614.y, x_1614.y, x_1614.y, x_1614.y));
        let x_1617 : vec4<f32> = u_xlat9;
        let x_1618 : vec3<f32> = vec3<f32>(x_1617.y, x_1617.z, x_1617.w);
        let x_1619 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1618.x, x_1619.y, x_1618.y, x_1618.z);
        let x_1622 : f32 = u_xlat10.x;
        u_xlat12.y = x_1622;
        let x_1624 : vec4<f32> = u_xlat6;
        let x_1627 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1630 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1624.x, x_1624.y, x_1624.x, x_1624.y) * vec4<f32>(x_1627.x, x_1627.y, x_1627.x, x_1627.y)) + vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1630.y));
        let x_1633 : vec4<f32> = u_xlat6;
        let x_1636 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1639 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1633.x, x_1633.y) * vec2<f32>(x_1636.x, x_1636.y)) + vec2<f32>(x_1639.w, x_1639.y));
        let x_1643 : f32 = u_xlat12.y;
        u_xlat9.y = x_1643;
        let x_1646 : f32 = u_xlat10.z;
        u_xlat12.y = x_1646;
        let x_1648 : vec4<f32> = u_xlat6;
        let x_1651 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1654 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1648.x, x_1648.y, x_1648.x, x_1648.y) * vec4<f32>(x_1651.x, x_1651.y, x_1651.x, x_1651.y)) + vec4<f32>(x_1654.x, x_1654.y, x_1654.z, x_1654.y));
        let x_1657 : vec4<f32> = u_xlat6;
        let x_1660 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1663 : vec4<f32> = u_xlat12;
        let x_1665 : vec2<f32> = ((vec2<f32>(x_1657.x, x_1657.y) * vec2<f32>(x_1660.x, x_1660.y)) + vec2<f32>(x_1663.w, x_1663.y));
        let x_1666 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1665.x, x_1665.y, x_1666.z, x_1666.w);
        let x_1669 : f32 = u_xlat12.y;
        u_xlat9.z = x_1669;
        let x_1672 : vec4<f32> = u_xlat6;
        let x_1675 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1678 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1672.x, x_1672.y, x_1672.x, x_1672.y) * vec4<f32>(x_1675.x, x_1675.y, x_1675.x, x_1675.y)) + vec4<f32>(x_1678.x, x_1678.y, x_1678.x, x_1678.z));
        let x_1682 : f32 = u_xlat10.w;
        u_xlat12.y = x_1682;
        let x_1685 : vec4<f32> = u_xlat6;
        let x_1688 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1691 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1685.x, x_1685.y, x_1685.x, x_1685.y) * vec4<f32>(x_1688.x, x_1688.y, x_1688.x, x_1688.y)) + vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1691.y));
        let x_1695 : vec4<f32> = u_xlat6;
        let x_1698 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1701 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1695.x, x_1695.y) * vec2<f32>(x_1698.x, x_1698.y)) + vec2<f32>(x_1701.w, x_1701.y));
        let x_1705 : f32 = u_xlat12.y;
        u_xlat9.w = x_1705;
        let x_1708 : vec4<f32> = u_xlat6;
        let x_1711 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1714 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1708.x, x_1708.y) * vec2<f32>(x_1711.x, x_1711.y)) + vec2<f32>(x_1714.x, x_1714.w));
        let x_1717 : vec4<f32> = u_xlat12;
        let x_1718 : vec3<f32> = vec3<f32>(x_1717.x, x_1717.z, x_1717.w);
        let x_1719 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1718.x, x_1719.y, x_1718.y, x_1718.z);
        let x_1721 : vec4<f32> = u_xlat6;
        let x_1724 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1727 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1721.x, x_1721.y, x_1721.x, x_1721.y) * vec4<f32>(x_1724.x, x_1724.y, x_1724.x, x_1724.y)) + vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1727.y));
        let x_1731 : vec4<f32> = u_xlat6;
        let x_1734 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1737 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1731.x, x_1731.y) * vec2<f32>(x_1734.x, x_1734.y)) + vec2<f32>(x_1737.w, x_1737.y));
        let x_1741 : f32 = u_xlat9.x;
        u_xlat10.x = x_1741;
        let x_1743 : vec4<f32> = u_xlat6;
        let x_1746 : vec4<f32> = x_515.x_MainLightShadowmapSize;
        let x_1749 : vec4<f32> = u_xlat10;
        let x_1751 : vec2<f32> = ((vec2<f32>(x_1743.x, x_1743.y) * vec2<f32>(x_1746.x, x_1746.y)) + vec2<f32>(x_1749.x, x_1749.y));
        let x_1752 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1751.x, x_1751.y, x_1752.z, x_1752.w);
        let x_1755 : vec4<f32> = u_xlat8;
        let x_1757 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1755.x, x_1755.x, x_1755.x, x_1755.x) * x_1757);
        let x_1760 : vec4<f32> = u_xlat8;
        let x_1762 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1760.y, x_1760.y, x_1760.y, x_1760.y) * x_1762);
        let x_1765 : vec4<f32> = u_xlat8;
        let x_1767 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1765.z, x_1765.z, x_1765.z, x_1765.z) * x_1767);
        let x_1769 : vec4<f32> = u_xlat8;
        let x_1771 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1769.w, x_1769.w, x_1769.w, x_1769.w) * x_1771);
        let x_1774 : vec4<f32> = u_xlat13;
        let x_1775 : vec2<f32> = vec2<f32>(x_1774.x, x_1774.y);
        let x_1777 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1775.x, x_1775.y, x_1777);
        let x_1784 : vec3<f32> = txVec13;
        let x_1786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1784.xy, x_1784.z);
        u_xlat68 = x_1786;
        let x_1788 : vec4<f32> = u_xlat13;
        let x_1789 : vec2<f32> = vec2<f32>(x_1788.z, x_1788.w);
        let x_1791 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
        let x_1799 : vec3<f32> = txVec14;
        let x_1801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1799.xy, x_1799.z);
        u_xlat70 = x_1801;
        let x_1802 : f32 = u_xlat70;
        let x_1804 : f32 = u_xlat18.y;
        u_xlat70 = (x_1802 * x_1804);
        let x_1807 : f32 = u_xlat18.x;
        let x_1808 : f32 = u_xlat68;
        let x_1810 : f32 = u_xlat70;
        u_xlat68 = ((x_1807 * x_1808) + x_1810);
        let x_1813 : vec2<f32> = u_xlat48;
        let x_1815 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1813.x, x_1813.y, x_1815);
        let x_1822 : vec3<f32> = txVec15;
        let x_1824 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1822.xy, x_1822.z);
        u_xlat48.x = x_1824;
        let x_1827 : f32 = u_xlat18.z;
        let x_1829 : f32 = u_xlat48.x;
        let x_1831 : f32 = u_xlat68;
        u_xlat68 = ((x_1827 * x_1829) + x_1831);
        let x_1834 : vec4<f32> = u_xlat16;
        let x_1835 : vec2<f32> = vec2<f32>(x_1834.x, x_1834.y);
        let x_1837 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1835.x, x_1835.y, x_1837);
        let x_1844 : vec3<f32> = txVec16;
        let x_1846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1844.xy, x_1844.z);
        u_xlat48.x = x_1846;
        let x_1849 : f32 = u_xlat18.w;
        let x_1851 : f32 = u_xlat48.x;
        let x_1853 : f32 = u_xlat68;
        u_xlat68 = ((x_1849 * x_1851) + x_1853);
        let x_1856 : vec4<f32> = u_xlat14;
        let x_1857 : vec2<f32> = vec2<f32>(x_1856.x, x_1856.y);
        let x_1859 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1857.x, x_1857.y, x_1859);
        let x_1866 : vec3<f32> = txVec17;
        let x_1868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1866.xy, x_1866.z);
        u_xlat48.x = x_1868;
        let x_1871 : f32 = u_xlat19.x;
        let x_1873 : f32 = u_xlat48.x;
        let x_1875 : f32 = u_xlat68;
        u_xlat68 = ((x_1871 * x_1873) + x_1875);
        let x_1878 : vec4<f32> = u_xlat14;
        let x_1879 : vec2<f32> = vec2<f32>(x_1878.z, x_1878.w);
        let x_1881 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1879.x, x_1879.y, x_1881);
        let x_1888 : vec3<f32> = txVec18;
        let x_1890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1888.xy, x_1888.z);
        u_xlat48.x = x_1890;
        let x_1893 : f32 = u_xlat19.y;
        let x_1895 : f32 = u_xlat48.x;
        let x_1897 : f32 = u_xlat68;
        u_xlat68 = ((x_1893 * x_1895) + x_1897);
        let x_1900 : vec4<f32> = u_xlat15;
        let x_1901 : vec2<f32> = vec2<f32>(x_1900.x, x_1900.y);
        let x_1903 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1901.x, x_1901.y, x_1903);
        let x_1910 : vec3<f32> = txVec19;
        let x_1912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1910.xy, x_1910.z);
        u_xlat48.x = x_1912;
        let x_1915 : f32 = u_xlat19.z;
        let x_1917 : f32 = u_xlat48.x;
        let x_1919 : f32 = u_xlat68;
        u_xlat68 = ((x_1915 * x_1917) + x_1919);
        let x_1922 : vec4<f32> = u_xlat16;
        let x_1923 : vec2<f32> = vec2<f32>(x_1922.z, x_1922.w);
        let x_1925 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1923.x, x_1923.y, x_1925);
        let x_1932 : vec3<f32> = txVec20;
        let x_1934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1932.xy, x_1932.z);
        u_xlat48.x = x_1934;
        let x_1937 : f32 = u_xlat19.w;
        let x_1939 : f32 = u_xlat48.x;
        let x_1941 : f32 = u_xlat68;
        u_xlat68 = ((x_1937 * x_1939) + x_1941);
        let x_1944 : vec4<f32> = u_xlat17;
        let x_1945 : vec2<f32> = vec2<f32>(x_1944.x, x_1944.y);
        let x_1947 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1945.x, x_1945.y, x_1947);
        let x_1954 : vec3<f32> = txVec21;
        let x_1956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1954.xy, x_1954.z);
        u_xlat48.x = x_1956;
        let x_1959 : f32 = u_xlat20.x;
        let x_1961 : f32 = u_xlat48.x;
        let x_1963 : f32 = u_xlat68;
        u_xlat68 = ((x_1959 * x_1961) + x_1963);
        let x_1966 : vec4<f32> = u_xlat17;
        let x_1967 : vec2<f32> = vec2<f32>(x_1966.z, x_1966.w);
        let x_1969 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1967.x, x_1967.y, x_1969);
        let x_1976 : vec3<f32> = txVec22;
        let x_1978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1976.xy, x_1976.z);
        u_xlat48.x = x_1978;
        let x_1981 : f32 = u_xlat20.y;
        let x_1983 : f32 = u_xlat48.x;
        let x_1985 : f32 = u_xlat68;
        u_xlat68 = ((x_1981 * x_1983) + x_1985);
        let x_1988 : vec2<f32> = u_xlat30;
        let x_1990 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1988.x, x_1988.y, x_1990);
        let x_1997 : vec3<f32> = txVec23;
        let x_1999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1997.xy, x_1997.z);
        u_xlat48.x = x_1999;
        let x_2002 : f32 = u_xlat20.z;
        let x_2004 : f32 = u_xlat48.x;
        let x_2006 : f32 = u_xlat68;
        u_xlat68 = ((x_2002 * x_2004) + x_2006);
        let x_2009 : vec2<f32> = u_xlat57;
        let x_2011 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2009.x, x_2009.y, x_2011);
        let x_2018 : vec3<f32> = txVec24;
        let x_2020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2018.xy, x_2018.z);
        u_xlat48.x = x_2020;
        let x_2023 : f32 = u_xlat20.w;
        let x_2025 : f32 = u_xlat48.x;
        let x_2027 : f32 = u_xlat68;
        u_xlat68 = ((x_2023 * x_2025) + x_2027);
        let x_2030 : vec4<f32> = u_xlat12;
        let x_2031 : vec2<f32> = vec2<f32>(x_2030.x, x_2030.y);
        let x_2033 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2031.x, x_2031.y, x_2033);
        let x_2040 : vec3<f32> = txVec25;
        let x_2042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2040.xy, x_2040.z);
        u_xlat48.x = x_2042;
        let x_2045 : f32 = u_xlat8.x;
        let x_2047 : f32 = u_xlat48.x;
        let x_2049 : f32 = u_xlat68;
        u_xlat68 = ((x_2045 * x_2047) + x_2049);
        let x_2052 : vec4<f32> = u_xlat12;
        let x_2053 : vec2<f32> = vec2<f32>(x_2052.z, x_2052.w);
        let x_2055 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2053.x, x_2053.y, x_2055);
        let x_2062 : vec3<f32> = txVec26;
        let x_2064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2062.xy, x_2062.z);
        u_xlat48.x = x_2064;
        let x_2067 : f32 = u_xlat8.y;
        let x_2069 : f32 = u_xlat48.x;
        let x_2071 : f32 = u_xlat68;
        u_xlat68 = ((x_2067 * x_2069) + x_2071);
        let x_2074 : vec2<f32> = u_xlat52;
        let x_2076 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2074.x, x_2074.y, x_2076);
        let x_2083 : vec3<f32> = txVec27;
        let x_2085 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2083.xy, x_2083.z);
        u_xlat48.x = x_2085;
        let x_2088 : f32 = u_xlat8.z;
        let x_2090 : f32 = u_xlat48.x;
        let x_2092 : f32 = u_xlat68;
        u_xlat68 = ((x_2088 * x_2090) + x_2092);
        let x_2095 : vec4<f32> = u_xlat6;
        let x_2096 : vec2<f32> = vec2<f32>(x_2095.x, x_2095.y);
        let x_2098 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2096.x, x_2096.y, x_2098);
        let x_2105 : vec3<f32> = txVec28;
        let x_2107 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2105.xy, x_2105.z);
        u_xlat6.x = x_2107;
        let x_2110 : f32 = u_xlat8.w;
        let x_2112 : f32 = u_xlat6.x;
        let x_2114 : f32 = u_xlat68;
        u_xlat66 = ((x_2110 * x_2112) + x_2114);
      }
    }
  } else {
    let x_2118 : vec4<f32> = u_xlat3;
    let x_2119 : vec2<f32> = vec2<f32>(x_2118.x, x_2118.y);
    let x_2121 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2119.x, x_2119.y, x_2121);
    let x_2128 : vec3<f32> = txVec29;
    let x_2130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2128.xy, x_2128.z);
    u_xlat66 = x_2130;
  }
  let x_2132 : f32 = x_515.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2132) + 1.0f);
  let x_2136 : f32 = u_xlat66;
  let x_2138 : f32 = x_515.x_MainLightShadowParams.x;
  let x_2141 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2136 * x_2138) + x_2141);
  let x_2146 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_2146);
  let x_2151 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2151 >= 1.0f);
  let x_2153 : bool = u_xlatb45;
  let x_2155 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_2153 | x_2155);
  let x_2159 : bool = u_xlatb24.x;
  if (x_2159) {
    x_2160 = 1.0f;
  } else {
    let x_2165 : f32 = u_xlat3.x;
    x_2160 = x_2165;
  }
  let x_2166 : f32 = x_2160;
  u_xlat3.x = x_2166;
  let x_2169 : vec3<f32> = vs_INTERP0;
  let x_2171 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat24 = (x_2169 + -(x_2171));
  let x_2174 : vec3<f32> = u_xlat24;
  let x_2175 : vec3<f32> = u_xlat24;
  u_xlat24.x = dot(x_2174, x_2175);
  let x_2179 : f32 = u_xlat24.x;
  let x_2181 : f32 = x_515.x_MainLightShadowParams.z;
  let x_2184 : f32 = x_515.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_2179 * x_2181) + x_2184);
  let x_2188 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2188, 0.0f, 1.0f);
  let x_2193 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2193) + 1.0f);
  let x_2197 : f32 = u_xlat24.x;
  let x_2198 : f32 = u_xlat45;
  let x_2201 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2197 * x_2198) + x_2201);
  let x_2210 : f32 = x_2208.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_2210 == -1.0f));
  let x_2214 : bool = u_xlatb24.x;
  if (x_2214) {
    let x_2217 : vec3<f32> = vs_INTERP0;
    let x_2220 : vec4<f32> = x_2208.x_MainLightWorldToLight[1i];
    let x_2222 : vec2<f32> = (vec2<f32>(x_2217.y, x_2217.y) * vec2<f32>(x_2220.x, x_2220.y));
    let x_2223 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2222.x, x_2222.y, x_2223.z);
    let x_2226 : vec4<f32> = x_2208.x_MainLightWorldToLight[0i];
    let x_2228 : vec3<f32> = vs_INTERP0;
    let x_2231 : vec3<f32> = u_xlat24;
    let x_2233 : vec2<f32> = ((vec2<f32>(x_2226.x, x_2226.y) * vec2<f32>(x_2228.x, x_2228.x)) + vec2<f32>(x_2231.x, x_2231.y));
    let x_2234 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2233.x, x_2233.y, x_2234.z);
    let x_2237 : vec4<f32> = x_2208.x_MainLightWorldToLight[2i];
    let x_2239 : vec3<f32> = vs_INTERP0;
    let x_2242 : vec3<f32> = u_xlat24;
    let x_2244 : vec2<f32> = ((vec2<f32>(x_2237.x, x_2237.y) * vec2<f32>(x_2239.z, x_2239.z)) + vec2<f32>(x_2242.x, x_2242.y));
    let x_2245 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2244.x, x_2244.y, x_2245.z);
    let x_2247 : vec3<f32> = u_xlat24;
    let x_2250 : vec4<f32> = x_2208.x_MainLightWorldToLight[3i];
    let x_2252 : vec2<f32> = (vec2<f32>(x_2247.x, x_2247.y) + vec2<f32>(x_2250.x, x_2250.y));
    let x_2253 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2252.x, x_2252.y, x_2253.z);
    let x_2255 : vec3<f32> = u_xlat24;
    let x_2258 : vec2<f32> = ((vec2<f32>(x_2255.x, x_2255.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2259 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2258.x, x_2258.y, x_2259.z);
    let x_2266 : vec3<f32> = u_xlat24;
    let x_2269 : f32 = x_44.x_GlobalMipBias.x;
    let x_2270 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2266.x, x_2266.y), x_2269);
    u_xlat6 = x_2270;
    let x_2272 : f32 = x_2208.x_MainLightCookieTextureFormat;
    let x_2274 : f32 = x_2208.x_MainLightCookieTextureFormat;
    let x_2276 : f32 = x_2208.x_MainLightCookieTextureFormat;
    let x_2278 : f32 = x_2208.x_MainLightCookieTextureFormat;
    let x_2279 : vec4<f32> = vec4<f32>(x_2272, x_2274, x_2276, x_2278);
    let x_2286 : vec4<bool> = (vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2279.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_2286.x, x_2286.y);
    let x_2289 : bool = u_xlatb24.y;
    if (x_2289) {
      let x_2294 : f32 = u_xlat6.w;
      x_2290 = x_2294;
    } else {
      let x_2297 : f32 = u_xlat6.x;
      x_2290 = x_2297;
    }
    let x_2298 : f32 = x_2290;
    u_xlat45 = x_2298;
    let x_2300 : bool = u_xlatb24.x;
    if (x_2300) {
      let x_2304 : vec4<f32> = u_xlat6;
      x_2301 = vec3<f32>(x_2304.x, x_2304.y, x_2304.z);
    } else {
      let x_2307 : f32 = u_xlat45;
      x_2301 = vec3<f32>(x_2307, x_2307, x_2307);
    }
    let x_2309 : vec3<f32> = x_2301;
    u_xlat24 = x_2309;
  } else {
    u_xlat24.x = 1.0f;
    u_xlat24.y = 1.0f;
    u_xlat24.z = 1.0f;
  }
  let x_2314 : vec3<f32> = u_xlat24;
  let x_2316 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat24 = (x_2314 * vec3<f32>(x_2316.x, x_2316.y, x_2316.z));
  let x_2319 : f32 = u_xlat67;
  let x_2321 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_2319, x_2319, x_2319) * x_2321);
  let x_2323 : vec3<f32> = u_xlat4;
  let x_2325 : vec4<f32> = u_xlat1;
  u_xlat68 = dot(-(x_2323), vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
  let x_2328 : f32 = u_xlat68;
  let x_2329 : f32 = u_xlat68;
  u_xlat68 = (x_2328 + x_2329);
  let x_2331 : vec4<f32> = u_xlat1;
  let x_2333 : f32 = u_xlat68;
  let x_2337 : vec3<f32> = u_xlat4;
  let x_2339 : vec3<f32> = ((vec3<f32>(x_2331.x, x_2331.y, x_2331.z) * -(vec3<f32>(x_2333, x_2333, x_2333))) + -(x_2337));
  let x_2340 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
  let x_2342 : vec4<f32> = u_xlat1;
  let x_2344 : vec3<f32> = u_xlat4;
  u_xlat68 = dot(vec3<f32>(x_2342.x, x_2342.y, x_2342.z), x_2344);
  let x_2346 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2346, 0.0f, 1.0f);
  let x_2348 : f32 = u_xlat68;
  u_xlat68 = (-(x_2348) + 1.0f);
  let x_2351 : f32 = u_xlat68;
  let x_2352 : f32 = u_xlat68;
  u_xlat68 = (x_2351 * x_2352);
  let x_2354 : f32 = u_xlat68;
  let x_2355 : f32 = u_xlat68;
  u_xlat68 = (x_2354 * x_2355);
  let x_2358 : f32 = u_xlat63;
  u_xlat69 = ((-(x_2358) * 0.699999988f) + 1.700000048f);
  let x_2364 : f32 = u_xlat63;
  let x_2365 : f32 = u_xlat69;
  u_xlat63 = (x_2364 * x_2365);
  let x_2367 : f32 = u_xlat63;
  u_xlat63 = (x_2367 * 6.0f);
  let x_2377 : vec4<f32> = u_xlat6;
  let x_2379 : f32 = u_xlat63;
  let x_2380 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2377.x, x_2377.y, x_2377.z), x_2379);
  u_xlat6 = x_2380;
  let x_2382 : f32 = u_xlat6.w;
  u_xlat63 = (x_2382 + -1.0f);
  let x_2385 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2386 : f32 = u_xlat63;
  u_xlat63 = ((x_2385 * x_2386) + 1.0f);
  let x_2389 : f32 = u_xlat63;
  u_xlat63 = max(x_2389, 0.0f);
  let x_2391 : f32 = u_xlat63;
  u_xlat63 = log2(x_2391);
  let x_2393 : f32 = u_xlat63;
  let x_2395 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2393 * x_2395);
  let x_2397 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2397);
  let x_2399 : f32 = u_xlat63;
  let x_2401 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2399 * x_2401);
  let x_2403 : vec4<f32> = u_xlat6;
  let x_2405 : f32 = u_xlat63;
  let x_2407 : vec3<f32> = (vec3<f32>(x_2403.x, x_2403.y, x_2403.z) * vec3<f32>(x_2405, x_2405, x_2405));
  let x_2408 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);
  let x_2410 : vec4<f32> = u_xlat2;
  let x_2412 : vec4<f32> = u_xlat2;
  let x_2416 : vec2<f32> = ((vec2<f32>(x_2410.x, x_2410.x) * vec2<f32>(x_2412.x, x_2412.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2417 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2416.x, x_2416.y, x_2417.z, x_2417.w);
  let x_2420 : f32 = u_xlat8.y;
  u_xlat63 = (1.0f / x_2420);
  let x_2422 : vec4<f32> = u_xlat0;
  let x_2425 : f32 = u_xlat64;
  u_xlat29 = (-(vec3<f32>(x_2422.x, x_2422.y, x_2422.z)) + vec3<f32>(x_2425, x_2425, x_2425));
  let x_2428 : f32 = u_xlat68;
  let x_2430 : vec3<f32> = u_xlat29;
  let x_2432 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2428, x_2428, x_2428) * x_2430) + vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
  let x_2435 : f32 = u_xlat63;
  let x_2437 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2435, x_2435, x_2435) * x_2437);
  let x_2439 : vec4<f32> = u_xlat6;
  let x_2441 : vec3<f32> = u_xlat29;
  let x_2442 : vec3<f32> = (vec3<f32>(x_2439.x, x_2439.y, x_2439.z) * x_2441);
  let x_2443 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
  let x_2445 : vec4<f32> = u_xlat5;
  let x_2447 : vec3<f32> = u_xlat7;
  let x_2449 : vec4<f32> = u_xlat6;
  let x_2451 : vec3<f32> = ((vec3<f32>(x_2445.x, x_2445.y, x_2445.z) * x_2447) + vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
  let x_2452 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
  let x_2455 : f32 = u_xlat3.x;
  let x_2457 : f32 = x_359.unity_LightData.z;
  u_xlat63 = (x_2455 * x_2457);
  let x_2459 : vec4<f32> = u_xlat1;
  let x_2462 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat64 = dot(vec3<f32>(x_2459.x, x_2459.y, x_2459.z), vec3<f32>(x_2462.x, x_2462.y, x_2462.z));
  let x_2465 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2465, 0.0f, 1.0f);
  let x_2467 : f32 = u_xlat63;
  let x_2468 : f32 = u_xlat64;
  u_xlat63 = (x_2467 * x_2468);
  let x_2470 : f32 = u_xlat63;
  let x_2472 : vec3<f32> = u_xlat24;
  let x_2473 : vec3<f32> = (vec3<f32>(x_2470, x_2470, x_2470) * x_2472);
  let x_2474 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
  let x_2476 : vec3<f32> = u_xlat4;
  let x_2478 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2480 : vec3<f32> = (x_2476 + vec3<f32>(x_2478.x, x_2478.y, x_2478.z));
  let x_2481 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2481.w);
  let x_2483 : vec4<f32> = u_xlat6;
  let x_2485 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2483.x, x_2483.y, x_2483.z), vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
  let x_2488 : f32 = u_xlat63;
  u_xlat63 = max(x_2488, 1.17549435e-37f);
  let x_2491 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2491);
  let x_2493 : f32 = u_xlat63;
  let x_2495 : vec4<f32> = u_xlat6;
  let x_2497 : vec3<f32> = (vec3<f32>(x_2493, x_2493, x_2493) * vec3<f32>(x_2495.x, x_2495.y, x_2495.z));
  let x_2498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2497.x, x_2497.y, x_2497.z, x_2498.w);
  let x_2500 : vec4<f32> = u_xlat1;
  let x_2502 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2500.x, x_2500.y, x_2500.z), vec3<f32>(x_2502.x, x_2502.y, x_2502.z));
  let x_2505 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2505, 0.0f, 1.0f);
  let x_2508 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2510 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2508.x, x_2508.y, x_2508.z), vec3<f32>(x_2510.x, x_2510.y, x_2510.z));
  let x_2513 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2513, 0.0f, 1.0f);
  let x_2515 : f32 = u_xlat63;
  let x_2516 : f32 = u_xlat63;
  u_xlat63 = (x_2515 * x_2516);
  let x_2518 : f32 = u_xlat63;
  let x_2520 : f32 = u_xlat8.x;
  u_xlat63 = ((x_2518 * x_2520) + 1.000010014f);
  let x_2524 : f32 = u_xlat64;
  let x_2525 : f32 = u_xlat64;
  u_xlat64 = (x_2524 * x_2525);
  let x_2527 : f32 = u_xlat63;
  let x_2528 : f32 = u_xlat63;
  u_xlat63 = (x_2527 * x_2528);
  let x_2530 : f32 = u_xlat64;
  u_xlat64 = max(x_2530, 0.100000001f);
  let x_2533 : f32 = u_xlat63;
  let x_2534 : f32 = u_xlat64;
  u_xlat63 = (x_2533 * x_2534);
  let x_2536 : f32 = u_xlat65;
  let x_2537 : f32 = u_xlat63;
  u_xlat63 = (x_2536 * x_2537);
  let x_2539 : f32 = u_xlat23;
  let x_2540 : f32 = u_xlat63;
  u_xlat63 = (x_2539 / x_2540);
  let x_2542 : vec4<f32> = u_xlat0;
  let x_2544 : f32 = u_xlat63;
  let x_2547 : vec3<f32> = u_xlat7;
  let x_2548 : vec3<f32> = ((vec3<f32>(x_2542.x, x_2542.y, x_2542.z) * vec3<f32>(x_2544, x_2544, x_2544)) + x_2547);
  let x_2549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2549.w);
  let x_2551 : vec4<f32> = u_xlat3;
  let x_2553 : vec4<f32> = u_xlat6;
  let x_2555 : vec3<f32> = (vec3<f32>(x_2551.x, x_2551.y, x_2551.z) * vec3<f32>(x_2553.x, x_2553.y, x_2553.z));
  let x_2556 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2555.x, x_2555.y, x_2555.z, x_2556.w);
  let x_2559 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2561 : f32 = x_359.unity_LightData.y;
  u_xlat63 = min(x_2559, x_2561);
  let x_2563 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2563));
  let x_2568 : f32 = x_2208.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2570 : f32 = x_2208.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2572 : f32 = x_2208.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2574 : f32 = x_2208.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2575 : vec4<f32> = vec4<f32>(x_2568, x_2570, x_2572, x_2574);
  let x_2581 : vec4<bool> = (vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2575.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2581.x, x_2581.y);
  u_xlat29.x = 0.0f;
  u_xlat29.y = 0.0f;
  u_xlat29.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2592 : u32 = u_xlatu_loop_1;
    let x_2593 : u32 = u_xlatu63;
    if ((x_2592 < x_2593)) {
    } else {
      break;
    }
    let x_2596 : u32 = u_xlatu_loop_1;
    u_xlatu2 = (x_2596 >> 2u);
    let x_2599 : u32 = u_xlatu_loop_1;
    u_xlati66 = bitcast<i32>((x_2599 & 3u));
    let x_2602 : u32 = u_xlatu2;
    let x_2605 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2602)];
    let x_2615 : i32 = u_xlati66;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2620 : vec4<u32> = indexable[x_2615];
    u_xlat2.x = dot(x_2605, bitcast<vec4<f32>>(x_2620));
    let x_2625 : f32 = u_xlat2.x;
    u_xlatu2 = bitcast<u32>(i32(x_2625));
    let x_2628 : vec3<f32> = vs_INTERP0;
    let x_2640 : u32 = u_xlatu2;
    let x_2643 : vec4<f32> = x_2639.x_AdditionalLightsPosition[bitcast<i32>(x_2640)];
    let x_2646 : u32 = u_xlatu2;
    let x_2649 : vec4<f32> = x_2639.x_AdditionalLightsPosition[bitcast<i32>(x_2646)];
    let x_2651 : vec3<f32> = ((-(x_2628) * vec3<f32>(x_2643.w, x_2643.w, x_2643.w)) + vec3<f32>(x_2649.x, x_2649.y, x_2649.z));
    let x_2652 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2651.x, x_2651.y, x_2651.z, x_2652.w);
    let x_2654 : vec4<f32> = u_xlat9;
    let x_2656 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2654.x, x_2654.y, x_2654.z), vec3<f32>(x_2656.x, x_2656.y, x_2656.z));
    let x_2659 : f32 = u_xlat66;
    u_xlat66 = max(x_2659, 6.10351562e-05f);
    let x_2662 : f32 = u_xlat66;
    u_xlat68 = inverseSqrt(x_2662);
    let x_2664 : f32 = u_xlat68;
    let x_2666 : vec4<f32> = u_xlat9;
    let x_2668 : vec3<f32> = (vec3<f32>(x_2664, x_2664, x_2664) * vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
    let x_2669 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
    let x_2671 : f32 = u_xlat66;
    u_xlat48.x = (1.0f / x_2671);
    let x_2674 : f32 = u_xlat66;
    let x_2675 : u32 = u_xlatu2;
    let x_2678 : f32 = x_2639.x_AdditionalLightsAttenuation[bitcast<i32>(x_2675)].x;
    u_xlat66 = (x_2674 * x_2678);
    let x_2680 : f32 = u_xlat66;
    let x_2682 : f32 = u_xlat66;
    u_xlat66 = ((-(x_2680) * x_2682) + 1.0f);
    let x_2685 : f32 = u_xlat66;
    u_xlat66 = max(x_2685, 0.0f);
    let x_2687 : f32 = u_xlat66;
    let x_2688 : f32 = u_xlat66;
    u_xlat66 = (x_2687 * x_2688);
    let x_2690 : f32 = u_xlat66;
    let x_2692 : f32 = u_xlat48.x;
    u_xlat66 = (x_2690 * x_2692);
    let x_2694 : u32 = u_xlatu2;
    let x_2697 : vec4<f32> = x_2639.x_AdditionalLightsSpotDir[bitcast<i32>(x_2694)];
    let x_2699 : vec4<f32> = u_xlat10;
    u_xlat48.x = dot(vec3<f32>(x_2697.x, x_2697.y, x_2697.z), vec3<f32>(x_2699.x, x_2699.y, x_2699.z));
    let x_2704 : f32 = u_xlat48.x;
    let x_2705 : u32 = u_xlatu2;
    let x_2708 : f32 = x_2639.x_AdditionalLightsAttenuation[bitcast<i32>(x_2705)].z;
    let x_2710 : u32 = u_xlatu2;
    let x_2713 : f32 = x_2639.x_AdditionalLightsAttenuation[bitcast<i32>(x_2710)].w;
    u_xlat48.x = ((x_2704 * x_2708) + x_2713);
    let x_2717 : f32 = u_xlat48.x;
    u_xlat48.x = clamp(x_2717, 0.0f, 1.0f);
    let x_2721 : f32 = u_xlat48.x;
    let x_2723 : f32 = u_xlat48.x;
    u_xlat48.x = (x_2721 * x_2723);
    let x_2726 : f32 = u_xlat66;
    let x_2728 : f32 = u_xlat48.x;
    u_xlat66 = (x_2726 * x_2728);
    let x_2731 : u32 = u_xlatu2;
    u_xlatu48 = (x_2731 >> 5u);
    let x_2734 : u32 = u_xlatu2;
    u_xlati69 = (1i << bitcast<u32>((bitcast<i32>(x_2734) & 31i)));
    let x_2740 : i32 = u_xlati69;
    let x_2742 : u32 = u_xlatu48;
    let x_2745 : f32 = x_2208.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2742)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_2740) & bitcast<u32>(x_2745)));
    let x_2749 : i32 = u_xlati48;
    if ((x_2749 != 0i)) {
      let x_2759 : u32 = u_xlatu2;
      let x_2762 : f32 = x_2758.x_AdditionalLightsLightTypes[bitcast<i32>(x_2759)].el;
      u_xlati48 = i32(x_2762);
      let x_2764 : i32 = u_xlati48;
      u_xlati69 = select(1i, 0i, (x_2764 != 0i));
      let x_2768 : u32 = u_xlatu2;
      u_xlati70 = (bitcast<i32>(x_2768) << bitcast<u32>(2i));
      let x_2771 : i32 = u_xlati69;
      if ((x_2771 != 0i)) {
        let x_2775 : vec3<f32> = vs_INTERP0;
        let x_2777 : i32 = u_xlati70;
        let x_2780 : i32 = u_xlati70;
        let x_2784 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[((x_2777 + 1i) / 4i)][((x_2780 + 1i) % 4i)];
        let x_2786 : vec3<f32> = (vec3<f32>(x_2775.y, x_2775.y, x_2775.y) * vec3<f32>(x_2784.x, x_2784.y, x_2784.w));
        let x_2787 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2787.w);
        let x_2789 : i32 = u_xlati70;
        let x_2791 : i32 = u_xlati70;
        let x_2794 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[(x_2789 / 4i)][(x_2791 % 4i)];
        let x_2796 : vec3<f32> = vs_INTERP0;
        let x_2799 : vec4<f32> = u_xlat11;
        let x_2801 : vec3<f32> = ((vec3<f32>(x_2794.x, x_2794.y, x_2794.w) * vec3<f32>(x_2796.x, x_2796.x, x_2796.x)) + vec3<f32>(x_2799.x, x_2799.y, x_2799.z));
        let x_2802 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2801.x, x_2801.y, x_2801.z, x_2802.w);
        let x_2804 : i32 = u_xlati70;
        let x_2807 : i32 = u_xlati70;
        let x_2811 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[((x_2804 + 2i) / 4i)][((x_2807 + 2i) % 4i)];
        let x_2813 : vec3<f32> = vs_INTERP0;
        let x_2816 : vec4<f32> = u_xlat11;
        let x_2818 : vec3<f32> = ((vec3<f32>(x_2811.x, x_2811.y, x_2811.w) * vec3<f32>(x_2813.z, x_2813.z, x_2813.z)) + vec3<f32>(x_2816.x, x_2816.y, x_2816.z));
        let x_2819 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2818.x, x_2818.y, x_2818.z, x_2819.w);
        let x_2821 : vec4<f32> = u_xlat11;
        let x_2823 : i32 = u_xlati70;
        let x_2826 : i32 = u_xlati70;
        let x_2830 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[((x_2823 + 3i) / 4i)][((x_2826 + 3i) % 4i)];
        let x_2832 : vec3<f32> = (vec3<f32>(x_2821.x, x_2821.y, x_2821.z) + vec3<f32>(x_2830.x, x_2830.y, x_2830.w));
        let x_2833 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2832.x, x_2832.y, x_2832.z, x_2833.w);
        let x_2835 : vec4<f32> = u_xlat11;
        let x_2837 : vec4<f32> = u_xlat11;
        let x_2839 : vec2<f32> = (vec2<f32>(x_2835.x, x_2835.y) / vec2<f32>(x_2837.z, x_2837.z));
        let x_2840 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2839.x, x_2839.y, x_2840.z, x_2840.w);
        let x_2842 : vec4<f32> = u_xlat11;
        let x_2845 : vec2<f32> = ((vec2<f32>(x_2842.x, x_2842.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2846 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2845.x, x_2845.y, x_2846.z, x_2846.w);
        let x_2848 : vec4<f32> = u_xlat11;
        let x_2852 : vec2<f32> = clamp(vec2<f32>(x_2848.x, x_2848.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2853 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2852.x, x_2852.y, x_2853.z, x_2853.w);
        let x_2855 : u32 = u_xlatu2;
        let x_2858 : vec4<f32> = x_2758.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2855)];
        let x_2860 : vec4<f32> = u_xlat11;
        let x_2863 : u32 = u_xlatu2;
        let x_2866 : vec4<f32> = x_2758.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2863)];
        let x_2868 : vec2<f32> = ((vec2<f32>(x_2858.x, x_2858.y) * vec2<f32>(x_2860.x, x_2860.y)) + vec2<f32>(x_2866.z, x_2866.w));
        let x_2869 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2868.x, x_2868.y, x_2869.z, x_2869.w);
      } else {
        let x_2873 : i32 = u_xlati48;
        u_xlatb48 = (x_2873 == 1i);
        let x_2875 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_2875);
        let x_2877 : i32 = u_xlati48;
        if ((x_2877 != 0i)) {
          let x_2881 : vec3<f32> = vs_INTERP0;
          let x_2883 : i32 = u_xlati70;
          let x_2886 : i32 = u_xlati70;
          let x_2890 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[((x_2883 + 1i) / 4i)][((x_2886 + 1i) % 4i)];
          u_xlat48 = (vec2<f32>(x_2881.y, x_2881.y) * vec2<f32>(x_2890.x, x_2890.y));
          let x_2893 : i32 = u_xlati70;
          let x_2895 : i32 = u_xlati70;
          let x_2898 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[(x_2893 / 4i)][(x_2895 % 4i)];
          let x_2900 : vec3<f32> = vs_INTERP0;
          let x_2903 : vec2<f32> = u_xlat48;
          u_xlat48 = ((vec2<f32>(x_2898.x, x_2898.y) * vec2<f32>(x_2900.x, x_2900.x)) + x_2903);
          let x_2905 : i32 = u_xlati70;
          let x_2908 : i32 = u_xlati70;
          let x_2912 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[((x_2905 + 2i) / 4i)][((x_2908 + 2i) % 4i)];
          let x_2914 : vec3<f32> = vs_INTERP0;
          let x_2917 : vec2<f32> = u_xlat48;
          u_xlat48 = ((vec2<f32>(x_2912.x, x_2912.y) * vec2<f32>(x_2914.z, x_2914.z)) + x_2917);
          let x_2919 : vec2<f32> = u_xlat48;
          let x_2920 : i32 = u_xlati70;
          let x_2923 : i32 = u_xlati70;
          let x_2927 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[((x_2920 + 3i) / 4i)][((x_2923 + 3i) % 4i)];
          u_xlat48 = (x_2919 + vec2<f32>(x_2927.x, x_2927.y));
          let x_2930 : vec2<f32> = u_xlat48;
          u_xlat48 = ((x_2930 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2933 : vec2<f32> = u_xlat48;
          u_xlat48 = fract(x_2933);
          let x_2935 : u32 = u_xlatu2;
          let x_2938 : vec4<f32> = x_2758.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2935)];
          let x_2940 : vec2<f32> = u_xlat48;
          let x_2942 : u32 = u_xlatu2;
          let x_2945 : vec4<f32> = x_2758.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2942)];
          let x_2947 : vec2<f32> = ((vec2<f32>(x_2938.x, x_2938.y) * x_2940) + vec2<f32>(x_2945.z, x_2945.w));
          let x_2948 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2947.x, x_2947.y, x_2948.z, x_2948.w);
        } else {
          let x_2951 : vec3<f32> = vs_INTERP0;
          let x_2953 : i32 = u_xlati70;
          let x_2956 : i32 = u_xlati70;
          let x_2960 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[((x_2953 + 1i) / 4i)][((x_2956 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2951.y, x_2951.y, x_2951.y, x_2951.y) * x_2960);
          let x_2962 : i32 = u_xlati70;
          let x_2964 : i32 = u_xlati70;
          let x_2967 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[(x_2962 / 4i)][(x_2964 % 4i)];
          let x_2968 : vec3<f32> = vs_INTERP0;
          let x_2971 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2967 * vec4<f32>(x_2968.x, x_2968.x, x_2968.x, x_2968.x)) + x_2971);
          let x_2973 : i32 = u_xlati70;
          let x_2976 : i32 = u_xlati70;
          let x_2980 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[((x_2973 + 2i) / 4i)][((x_2976 + 2i) % 4i)];
          let x_2981 : vec3<f32> = vs_INTERP0;
          let x_2984 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2980 * vec4<f32>(x_2981.z, x_2981.z, x_2981.z, x_2981.z)) + x_2984);
          let x_2986 : vec4<f32> = u_xlat12;
          let x_2987 : i32 = u_xlati70;
          let x_2990 : i32 = u_xlati70;
          let x_2994 : vec4<f32> = x_2758.x_AdditionalLightsWorldToLights[((x_2987 + 3i) / 4i)][((x_2990 + 3i) % 4i)];
          u_xlat12 = (x_2986 + x_2994);
          let x_2996 : vec4<f32> = u_xlat12;
          let x_2998 : vec4<f32> = u_xlat12;
          let x_3000 : vec3<f32> = (vec3<f32>(x_2996.x, x_2996.y, x_2996.z) / vec3<f32>(x_2998.w, x_2998.w, x_2998.w));
          let x_3001 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3000.x, x_3000.y, x_3000.z, x_3001.w);
          let x_3003 : vec4<f32> = u_xlat12;
          let x_3005 : vec4<f32> = u_xlat12;
          u_xlat48.x = dot(vec3<f32>(x_3003.x, x_3003.y, x_3003.z), vec3<f32>(x_3005.x, x_3005.y, x_3005.z));
          let x_3010 : f32 = u_xlat48.x;
          u_xlat48.x = inverseSqrt(x_3010);
          let x_3013 : vec2<f32> = u_xlat48;
          let x_3015 : vec4<f32> = u_xlat12;
          let x_3017 : vec3<f32> = (vec3<f32>(x_3013.x, x_3013.x, x_3013.x) * vec3<f32>(x_3015.x, x_3015.y, x_3015.z));
          let x_3018 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3017.x, x_3017.y, x_3017.z, x_3018.w);
          let x_3020 : vec4<f32> = u_xlat12;
          u_xlat48.x = dot(abs(vec3<f32>(x_3020.x, x_3020.y, x_3020.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3026 : f32 = u_xlat48.x;
          u_xlat48.x = max(x_3026, 0.000001f);
          let x_3031 : f32 = u_xlat48.x;
          u_xlat48.x = (1.0f / x_3031);
          let x_3034 : vec2<f32> = u_xlat48;
          let x_3036 : vec4<f32> = u_xlat12;
          let x_3038 : vec3<f32> = (vec3<f32>(x_3034.x, x_3034.x, x_3034.x) * vec3<f32>(x_3036.z, x_3036.x, x_3036.y));
          let x_3039 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3038.x, x_3038.y, x_3038.z, x_3039.w);
          let x_3042 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3042);
          let x_3046 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3046, 0.0f, 1.0f);
          let x_3050 : vec4<f32> = u_xlat13;
          let x_3053 : vec4<bool> = (vec4<f32>(x_3050.y, x_3050.z, x_3050.y, x_3050.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3053.x, x_3053.y);
          let x_3057 : bool = u_xlatb53.x;
          if (x_3057) {
            let x_3062 : f32 = u_xlat13.x;
            x_3058 = x_3062;
          } else {
            let x_3065 : f32 = u_xlat13.x;
            x_3058 = -(x_3065);
          }
          let x_3067 : f32 = x_3058;
          u_xlat53.x = x_3067;
          let x_3070 : bool = u_xlatb53.y;
          if (x_3070) {
            let x_3075 : f32 = u_xlat13.x;
            x_3071 = x_3075;
          } else {
            let x_3078 : f32 = u_xlat13.x;
            x_3071 = -(x_3078);
          }
          let x_3080 : f32 = x_3071;
          u_xlat53.y = x_3080;
          let x_3082 : vec4<f32> = u_xlat12;
          let x_3084 : vec2<f32> = u_xlat48;
          let x_3087 : vec2<f32> = u_xlat53;
          u_xlat48 = ((vec2<f32>(x_3082.x, x_3082.y) * vec2<f32>(x_3084.x, x_3084.x)) + x_3087);
          let x_3089 : vec2<f32> = u_xlat48;
          u_xlat48 = ((x_3089 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3092 : vec2<f32> = u_xlat48;
          u_xlat48 = clamp(x_3092, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3096 : u32 = u_xlatu2;
          let x_3099 : vec4<f32> = x_2758.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3096)];
          let x_3101 : vec2<f32> = u_xlat48;
          let x_3103 : u32 = u_xlatu2;
          let x_3106 : vec4<f32> = x_2758.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3103)];
          let x_3108 : vec2<f32> = ((vec2<f32>(x_3099.x, x_3099.y) * x_3101) + vec2<f32>(x_3106.z, x_3106.w));
          let x_3109 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3108.x, x_3108.y, x_3109.z, x_3109.w);
        }
      }
      let x_3116 : vec4<f32> = u_xlat11;
      let x_3119 : f32 = x_44.x_GlobalMipBias.x;
      let x_3120 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3116.x, x_3116.y), x_3119);
      u_xlat11 = x_3120;
      let x_3122 : bool = u_xlatb6.y;
      if (x_3122) {
        let x_3127 : f32 = u_xlat11.w;
        x_3123 = x_3127;
      } else {
        let x_3130 : f32 = u_xlat11.x;
        x_3123 = x_3130;
      }
      let x_3131 : f32 = x_3123;
      u_xlat48.x = x_3131;
      let x_3134 : bool = u_xlatb6.x;
      if (x_3134) {
        let x_3138 : vec4<f32> = u_xlat11;
        x_3135 = vec3<f32>(x_3138.x, x_3138.y, x_3138.z);
      } else {
        let x_3141 : vec2<f32> = u_xlat48;
        x_3135 = vec3<f32>(x_3141.x, x_3141.x, x_3141.x);
      }
      let x_3143 : vec3<f32> = x_3135;
      let x_3144 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3143.x, x_3143.y, x_3143.z, x_3144.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3150 : vec4<f32> = u_xlat11;
    let x_3152 : u32 = u_xlatu2;
    let x_3155 : vec4<f32> = x_2639.x_AdditionalLightsColor[bitcast<i32>(x_3152)];
    let x_3157 : vec3<f32> = (vec3<f32>(x_3150.x, x_3150.y, x_3150.z) * vec3<f32>(x_3155.x, x_3155.y, x_3155.z));
    let x_3158 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3157.x, x_3157.y, x_3157.z, x_3158.w);
    let x_3160 : f32 = u_xlat67;
    let x_3162 : vec4<f32> = u_xlat11;
    let x_3164 : vec3<f32> = (vec3<f32>(x_3160, x_3160, x_3160) * vec3<f32>(x_3162.x, x_3162.y, x_3162.z));
    let x_3165 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3164.x, x_3164.y, x_3164.z, x_3165.w);
    let x_3167 : vec4<f32> = u_xlat1;
    let x_3169 : vec4<f32> = u_xlat10;
    u_xlat2.x = dot(vec3<f32>(x_3167.x, x_3167.y, x_3167.z), vec3<f32>(x_3169.x, x_3169.y, x_3169.z));
    let x_3174 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3174, 0.0f, 1.0f);
    let x_3178 : f32 = u_xlat2.x;
    let x_3179 : f32 = u_xlat66;
    u_xlat2.x = (x_3178 * x_3179);
    let x_3182 : vec4<f32> = u_xlat2;
    let x_3184 : vec4<f32> = u_xlat11;
    let x_3186 : vec3<f32> = (vec3<f32>(x_3182.x, x_3182.x, x_3182.x) * vec3<f32>(x_3184.x, x_3184.y, x_3184.z));
    let x_3187 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3186.x, x_3186.y, x_3186.z, x_3187.w);
    let x_3189 : vec4<f32> = u_xlat9;
    let x_3191 : f32 = u_xlat68;
    let x_3194 : vec3<f32> = u_xlat4;
    let x_3195 : vec3<f32> = ((vec3<f32>(x_3189.x, x_3189.y, x_3189.z) * vec3<f32>(x_3191, x_3191, x_3191)) + x_3194);
    let x_3196 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3195.x, x_3195.y, x_3195.z, x_3196.w);
    let x_3198 : vec4<f32> = u_xlat9;
    let x_3200 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3198.x, x_3198.y, x_3198.z), vec3<f32>(x_3200.x, x_3200.y, x_3200.z));
    let x_3205 : f32 = u_xlat2.x;
    u_xlat2.x = max(x_3205, 1.17549435e-37f);
    let x_3209 : f32 = u_xlat2.x;
    u_xlat2.x = inverseSqrt(x_3209);
    let x_3212 : vec4<f32> = u_xlat2;
    let x_3214 : vec4<f32> = u_xlat9;
    let x_3216 : vec3<f32> = (vec3<f32>(x_3212.x, x_3212.x, x_3212.x) * vec3<f32>(x_3214.x, x_3214.y, x_3214.z));
    let x_3217 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3216.x, x_3216.y, x_3216.z, x_3217.w);
    let x_3219 : vec4<f32> = u_xlat1;
    let x_3221 : vec4<f32> = u_xlat9;
    u_xlat2.x = dot(vec3<f32>(x_3219.x, x_3219.y, x_3219.z), vec3<f32>(x_3221.x, x_3221.y, x_3221.z));
    let x_3226 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_3226, 0.0f, 1.0f);
    let x_3229 : vec4<f32> = u_xlat10;
    let x_3231 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3229.x, x_3229.y, x_3229.z), vec3<f32>(x_3231.x, x_3231.y, x_3231.z));
    let x_3234 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3234, 0.0f, 1.0f);
    let x_3237 : f32 = u_xlat2.x;
    let x_3239 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3237 * x_3239);
    let x_3243 : f32 = u_xlat2.x;
    let x_3245 : f32 = u_xlat8.x;
    u_xlat2.x = ((x_3243 * x_3245) + 1.000010014f);
    let x_3249 : f32 = u_xlat66;
    let x_3250 : f32 = u_xlat66;
    u_xlat66 = (x_3249 * x_3250);
    let x_3253 : f32 = u_xlat2.x;
    let x_3255 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3253 * x_3255);
    let x_3258 : f32 = u_xlat66;
    u_xlat66 = max(x_3258, 0.100000001f);
    let x_3261 : f32 = u_xlat2.x;
    let x_3262 : f32 = u_xlat66;
    u_xlat2.x = (x_3261 * x_3262);
    let x_3265 : f32 = u_xlat65;
    let x_3267 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3265 * x_3267);
    let x_3270 : f32 = u_xlat23;
    let x_3272 : f32 = u_xlat2.x;
    u_xlat2.x = (x_3270 / x_3272);
    let x_3275 : vec4<f32> = u_xlat0;
    let x_3277 : vec4<f32> = u_xlat2;
    let x_3280 : vec3<f32> = u_xlat7;
    let x_3281 : vec3<f32> = ((vec3<f32>(x_3275.x, x_3275.y, x_3275.z) * vec3<f32>(x_3277.x, x_3277.x, x_3277.x)) + x_3280);
    let x_3282 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3281.x, x_3281.y, x_3281.z, x_3282.w);
    let x_3284 : vec4<f32> = u_xlat9;
    let x_3286 : vec4<f32> = u_xlat11;
    let x_3289 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_3284.x, x_3284.y, x_3284.z) * vec3<f32>(x_3286.x, x_3286.y, x_3286.z)) + x_3289);

    continuing {
      let x_3291 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3291 + bitcast<u32>(1i));
    }
  }
  let x_3293 : vec4<f32> = u_xlat5;
  let x_3295 : f32 = u_xlat44;
  let x_3298 : vec4<f32> = u_xlat3;
  let x_3300 : vec3<f32> = ((vec3<f32>(x_3293.x, x_3293.y, x_3293.z) * vec3<f32>(x_3295, x_3295, x_3295)) + vec3<f32>(x_3298.x, x_3298.y, x_3298.z));
  let x_3301 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3300.x, x_3300.y, x_3300.z, x_3301.w);
  let x_3305 : vec3<f32> = u_xlat29;
  let x_3306 : vec4<f32> = u_xlat0;
  let x_3308 : vec3<f32> = (x_3305 + vec3<f32>(x_3306.x, x_3306.y, x_3306.z));
  let x_3309 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3308.x, x_3308.y, x_3308.z, x_3309.w);
  let x_3314 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3316 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_3314 & bitcast<u32>(x_3316));
  let x_3319 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3319);
  let x_3324 : f32 = u_xlat0.x;
  let x_3326 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3324 * x_3326);
  let x_3331 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3331, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3335 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3335.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

