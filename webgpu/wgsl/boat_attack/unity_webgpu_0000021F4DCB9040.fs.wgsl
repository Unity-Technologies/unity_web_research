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

@group(1) @binding(3) var<uniform> x_503 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2204 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2657 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2769 : AdditionalLightsCookies;

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
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat65 : f32;
  var u_xlat23 : f32;
  var u_xlat66 : f32;
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
  var x_2156 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat46 : f32;
  var x_2286 : f32;
  var x_2297 : vec3<f32>;
  var u_xlatu64 : u32;
  var u_xlatb2 : vec4<bool>;
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
  var x_3088 : f32;
  var x_3101 : f32;
  var u_xlat73 : f32;
  var x_3163 : f32;
  var x_3174 : vec3<f32>;
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
  let x_731 : vec2<f32> = vs_INTERP4;
  let x_733 : f32 = x_44.x_GlobalMipBias.x;
  let x_734 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_731, x_733);
  let x_735 : vec3<f32> = vec3<f32>(x_734.x, x_734.y, x_734.z);
  let x_736 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_740 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_741 : vec2<f32> = vec2<f32>(x_740.x, x_740.y);
  let x_745 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_741.x, x_741.y));
  let x_746 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat6;
  let x_750 : vec4<f32> = hlslcc_FragCoord;
  let x_752 : vec2<f32> = (vec2<f32>(x_748.x, x_748.y) * vec2<f32>(x_750.x, x_750.y));
  let x_753 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
  let x_756 : f32 = u_xlat6.y;
  let x_759 : f32 = x_44.x_ScaleBiasRt.x;
  let x_762 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat64 = ((x_756 * x_759) + x_762);
  let x_764 : f32 = u_xlat64;
  u_xlat6.z = (-(x_764) + 1.0f);
  let x_768 : vec4<f32> = u_xlat2;
  let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat2;
  let x_776 : vec2<f32> = clamp(vec2<f32>(x_772.x, x_772.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_777 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
  let x_780 : f32 = u_xlat2.x;
  u_xlat64 = ((-(x_780) * 0.959999979f) + 0.959999979f);
  let x_786 : f32 = u_xlat64;
  let x_789 : f32 = u_xlat2.y;
  u_xlat65 = (-(x_786) + x_789);
  let x_791 : vec4<f32> = u_xlat0;
  let x_793 : f32 = u_xlat64;
  u_xlat7 = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_793, x_793, x_793));
  let x_796 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat2;
  let x_805 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.x, x_803.x) * vec3<f32>(x_805.x, x_805.y, x_805.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_814 : f32 = u_xlat2.y;
  u_xlat64 = (-(x_814) + 1.0f);
  let x_817 : f32 = u_xlat64;
  let x_818 : f32 = u_xlat64;
  u_xlat2.x = (x_817 * x_818);
  let x_822 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_822, 0.0078125f);
  let x_828 : f32 = u_xlat2.x;
  let x_830 : f32 = u_xlat2.x;
  u_xlat23 = (x_828 * x_830);
  let x_832 : f32 = u_xlat65;
  u_xlat65 = (x_832 + 1.0f);
  let x_834 : f32 = u_xlat65;
  u_xlat65 = min(x_834, 1.0f);
  let x_838 : f32 = u_xlat2.x;
  u_xlat66 = ((x_838 * 4.0f) + 2.0f);
  let x_847 : vec4<f32> = u_xlat6;
  let x_850 : f32 = x_44.x_GlobalMipBias.x;
  let x_851 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_847.x, x_847.z), x_850);
  u_xlat67 = x_851.x;
  let x_854 : f32 = u_xlat67;
  u_xlat68 = (x_854 + -1.0f);
  let x_857 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_858 : f32 = u_xlat68;
  u_xlat68 = ((x_857 * x_858) + 1.0f);
  let x_863 : f32 = u_xlat2.z;
  let x_864 : f32 = u_xlat67;
  u_xlat44 = min(x_863, x_864);
  let x_868 : f32 = x_503.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_868);
  let x_870 : bool = u_xlatb67;
  if (x_870) {
    let x_874 : f32 = x_503.x_MainLightShadowParams.y;
    u_xlatb67 = (x_874 == 1.0f);
    let x_876 : bool = u_xlatb67;
    if (x_876) {
      let x_879 : vec4<f32> = u_xlat4;
      let x_883 : vec4<f32> = x_503.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_879.x, x_879.y, x_879.x, x_879.y) + x_883);
      let x_886 : vec4<f32> = u_xlat6;
      let x_887 : vec2<f32> = vec2<f32>(x_886.x, x_886.y);
      let x_889 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_887.x, x_887.y, x_889);
      let x_902 : vec3<f32> = txVec0;
      let x_904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_902.xy, x_902.z);
      u_xlat8.x = x_904;
      let x_907 : vec4<f32> = u_xlat6;
      let x_908 : vec2<f32> = vec2<f32>(x_907.z, x_907.w);
      let x_910 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_908.x, x_908.y, x_910);
      let x_917 : vec3<f32> = txVec1;
      let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_917.xy, x_917.z);
      u_xlat8.y = x_919;
      let x_921 : vec4<f32> = u_xlat4;
      let x_925 : vec4<f32> = x_503.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_921.x, x_921.y, x_921.x, x_921.y) + x_925);
      let x_928 : vec4<f32> = u_xlat6;
      let x_929 : vec2<f32> = vec2<f32>(x_928.x, x_928.y);
      let x_931 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_929.x, x_929.y, x_931);
      let x_938 : vec3<f32> = txVec2;
      let x_940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_938.xy, x_938.z);
      u_xlat8.z = x_940;
      let x_943 : vec4<f32> = u_xlat6;
      let x_944 : vec2<f32> = vec2<f32>(x_943.z, x_943.w);
      let x_946 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_944.x, x_944.y, x_946);
      let x_953 : vec3<f32> = txVec3;
      let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_953.xy, x_953.z);
      u_xlat8.w = x_955;
      let x_957 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_957, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_964 : f32 = x_503.x_MainLightShadowParams.y;
      u_xlatb6 = (x_964 == 2.0f);
      let x_966 : bool = u_xlatb6;
      if (x_966) {
        let x_969 : vec4<f32> = u_xlat4;
        let x_972 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_977 : vec2<f32> = ((vec2<f32>(x_969.x, x_969.y) * vec2<f32>(x_972.z, x_972.w)) + vec2<f32>(0.5f, 0.5f));
        let x_978 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
        let x_980 : vec4<f32> = u_xlat6;
        let x_982 : vec2<f32> = floor(vec2<f32>(x_980.x, x_980.y));
        let x_983 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
        let x_986 : vec4<f32> = u_xlat4;
        let x_989 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_992 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_986.x, x_986.y) * vec2<f32>(x_989.z, x_989.w)) + -(vec2<f32>(x_992.x, x_992.y)));
        let x_996 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_996.x, x_996.x, x_996.y, x_996.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1001 : vec4<f32> = u_xlat8;
        let x_1003 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1001.x, x_1001.x, x_1001.z, x_1001.z) * vec4<f32>(x_1003.x, x_1003.x, x_1003.z, x_1003.z));
        let x_1006 : vec4<f32> = u_xlat9;
        let x_1010 : vec2<f32> = (vec2<f32>(x_1006.y, x_1006.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1011 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1010.x, x_1011.y, x_1010.y, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1016 : vec2<f32> = u_xlat48;
        let x_1018 : vec2<f32> = ((vec2<f32>(x_1013.x, x_1013.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1016));
        let x_1019 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
        let x_1022 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1022) + vec2<f32>(1.0f, 1.0f));
        let x_1026 : vec2<f32> = u_xlat48;
        let x_1028 : vec2<f32> = min(x_1026, vec2<f32>(0.0f, 0.0f));
        let x_1029 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat10;
        let x_1034 : vec4<f32> = u_xlat10;
        let x_1037 : vec2<f32> = u_xlat51;
        let x_1038 : vec2<f32> = ((-(vec2<f32>(x_1031.x, x_1031.y)) * vec2<f32>(x_1034.x, x_1034.y)) + x_1037);
        let x_1039 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
        let x_1041 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1041, vec2<f32>(0.0f, 0.0f));
        let x_1043 : vec2<f32> = u_xlat48;
        let x_1045 : vec2<f32> = u_xlat48;
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1043) * x_1045) + vec2<f32>(x_1047.y, x_1047.w));
        let x_1050 : vec4<f32> = u_xlat10;
        let x_1052 : vec2<f32> = (vec2<f32>(x_1050.x, x_1050.y) + vec2<f32>(1.0f, 1.0f));
        let x_1053 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1052.x, x_1052.y, x_1053.z, x_1053.w);
        let x_1055 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1055 + vec2<f32>(1.0f, 1.0f));
        let x_1058 : vec4<f32> = u_xlat9;
        let x_1062 : vec2<f32> = (vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1063 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1065 : vec2<f32> = u_xlat51;
        let x_1066 : vec2<f32> = (x_1065 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1067 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1069 : vec4<f32> = u_xlat10;
        let x_1071 : vec2<f32> = (vec2<f32>(x_1069.x, x_1069.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1072 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
        let x_1075 : vec2<f32> = u_xlat48;
        let x_1076 : vec2<f32> = (x_1075 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1077 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1079.y, x_1079.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1083 : f32 = u_xlat10.x;
        u_xlat11.z = x_1083;
        let x_1086 : f32 = u_xlat48.x;
        u_xlat11.w = x_1086;
        let x_1089 : f32 = u_xlat12.x;
        u_xlat9.z = x_1089;
        let x_1092 : f32 = u_xlat8.x;
        u_xlat9.w = x_1092;
        let x_1095 : vec4<f32> = u_xlat9;
        let x_1097 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1095.z, x_1095.w, x_1095.x, x_1095.z) + vec4<f32>(x_1097.z, x_1097.w, x_1097.x, x_1097.z));
        let x_1101 : f32 = u_xlat11.y;
        u_xlat10.z = x_1101;
        let x_1104 : f32 = u_xlat48.y;
        u_xlat10.w = x_1104;
        let x_1107 : f32 = u_xlat9.y;
        u_xlat12.z = x_1107;
        let x_1110 : f32 = u_xlat8.z;
        u_xlat12.w = x_1110;
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1114 : vec4<f32> = u_xlat12;
        let x_1116 : vec3<f32> = (vec3<f32>(x_1112.z, x_1112.y, x_1112.w) + vec3<f32>(x_1114.z, x_1114.y, x_1114.w));
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1121 : vec4<f32> = u_xlat13;
        let x_1123 : vec3<f32> = (vec3<f32>(x_1119.x, x_1119.z, x_1119.w) / vec3<f32>(x_1121.z, x_1121.w, x_1121.y));
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat9;
        let x_1132 : vec3<f32> = (vec3<f32>(x_1126.x, x_1126.y, x_1126.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1133 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat12;
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1139 : vec3<f32> = (vec3<f32>(x_1135.z, x_1135.y, x_1135.w) / vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
        let x_1140 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat10;
        let x_1144 : vec3<f32> = (vec3<f32>(x_1142.x, x_1142.y, x_1142.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1145 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
        let x_1147 : vec4<f32> = u_xlat9;
        let x_1150 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1152 : vec3<f32> = (vec3<f32>(x_1147.y, x_1147.x, x_1147.z) * vec3<f32>(x_1150.x, x_1150.x, x_1150.x));
        let x_1153 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat10;
        let x_1158 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1160 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.y, x_1155.z) * vec3<f32>(x_1158.y, x_1158.y, x_1158.y));
        let x_1161 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
        let x_1164 : f32 = u_xlat10.x;
        u_xlat9.w = x_1164;
        let x_1166 : vec4<f32> = u_xlat6;
        let x_1169 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1172 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1166.x, x_1166.y, x_1166.x, x_1166.y) * vec4<f32>(x_1169.x, x_1169.y, x_1169.x, x_1169.y)) + vec4<f32>(x_1172.y, x_1172.w, x_1172.x, x_1172.w));
        let x_1175 : vec4<f32> = u_xlat6;
        let x_1178 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1181 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1175.x, x_1175.y) * vec2<f32>(x_1178.x, x_1178.y)) + vec2<f32>(x_1181.z, x_1181.w));
        let x_1185 : f32 = u_xlat9.y;
        u_xlat10.w = x_1185;
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1188 : vec2<f32> = vec2<f32>(x_1187.y, x_1187.z);
        let x_1189 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1189.x, x_1188.x, x_1189.z, x_1188.y);
        let x_1191 : vec4<f32> = u_xlat6;
        let x_1194 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat6;
        let x_1203 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1200.x, x_1200.y, x_1200.x, x_1200.y) * vec4<f32>(x_1203.x, x_1203.y, x_1203.x, x_1203.y)) + vec4<f32>(x_1206.w, x_1206.y, x_1206.w, x_1206.z));
        let x_1209 : vec4<f32> = u_xlat6;
        let x_1212 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1215 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y) * vec4<f32>(x_1212.x, x_1212.y, x_1212.x, x_1212.y)) + vec4<f32>(x_1215.x, x_1215.w, x_1215.z, x_1215.w));
        let x_1219 : vec4<f32> = u_xlat8;
        let x_1221 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1219.x, x_1219.x, x_1219.x, x_1219.y) * vec4<f32>(x_1221.z, x_1221.w, x_1221.y, x_1221.z));
        let x_1225 : vec4<f32> = u_xlat8;
        let x_1227 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1225.y, x_1225.y, x_1225.z, x_1225.z) * x_1227);
        let x_1230 : f32 = u_xlat8.z;
        let x_1232 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1230 * x_1232);
        let x_1236 : vec4<f32> = u_xlat11;
        let x_1237 : vec2<f32> = vec2<f32>(x_1236.x, x_1236.y);
        let x_1239 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1237.x, x_1237.y, x_1239);
        let x_1247 : vec3<f32> = txVec4;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1247.xy, x_1247.z);
        u_xlat27 = x_1249;
        let x_1251 : vec4<f32> = u_xlat11;
        let x_1252 : vec2<f32> = vec2<f32>(x_1251.z, x_1251.w);
        let x_1254 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1252.x, x_1252.y, x_1254);
        let x_1262 : vec3<f32> = txVec5;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1262.xy, x_1262.z);
        u_xlat70 = x_1264;
        let x_1265 : f32 = u_xlat70;
        let x_1267 : f32 = u_xlat14.y;
        u_xlat70 = (x_1265 * x_1267);
        let x_1270 : f32 = u_xlat14.x;
        let x_1271 : f32 = u_xlat27;
        let x_1273 : f32 = u_xlat70;
        u_xlat27 = ((x_1270 * x_1271) + x_1273);
        let x_1276 : vec2<f32> = u_xlat48;
        let x_1278 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1276.x, x_1276.y, x_1278);
        let x_1285 : vec3<f32> = txVec6;
        let x_1287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1285.xy, x_1285.z);
        u_xlat48.x = x_1287;
        let x_1290 : f32 = u_xlat14.z;
        let x_1292 : f32 = u_xlat48.x;
        let x_1294 : f32 = u_xlat27;
        u_xlat27 = ((x_1290 * x_1292) + x_1294);
        let x_1297 : vec4<f32> = u_xlat10;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec7;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1307.xy, x_1307.z);
        u_xlat48.x = x_1309;
        let x_1312 : f32 = u_xlat14.w;
        let x_1314 : f32 = u_xlat48.x;
        let x_1316 : f32 = u_xlat27;
        u_xlat27 = ((x_1312 * x_1314) + x_1316);
        let x_1319 : vec4<f32> = u_xlat12;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.x, x_1319.y);
        let x_1322 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec8;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1329.xy, x_1329.z);
        u_xlat48.x = x_1331;
        let x_1334 : f32 = u_xlat15.x;
        let x_1336 : f32 = u_xlat48.x;
        let x_1338 : f32 = u_xlat27;
        u_xlat27 = ((x_1334 * x_1336) + x_1338);
        let x_1341 : vec4<f32> = u_xlat12;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.z, x_1341.w);
        let x_1344 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec9;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1351.xy, x_1351.z);
        u_xlat48.x = x_1353;
        let x_1356 : f32 = u_xlat15.y;
        let x_1358 : f32 = u_xlat48.x;
        let x_1360 : f32 = u_xlat27;
        u_xlat27 = ((x_1356 * x_1358) + x_1360);
        let x_1363 : vec4<f32> = u_xlat10;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.z, x_1363.w);
        let x_1366 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec10;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1373.xy, x_1373.z);
        u_xlat48.x = x_1375;
        let x_1378 : f32 = u_xlat15.z;
        let x_1380 : f32 = u_xlat48.x;
        let x_1382 : f32 = u_xlat27;
        u_xlat27 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat9;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.x, x_1385.y);
        let x_1388 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec11;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat48.x = x_1397;
        let x_1400 : f32 = u_xlat15.w;
        let x_1402 : f32 = u_xlat48.x;
        let x_1404 : f32 = u_xlat27;
        u_xlat27 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat9;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.z, x_1407.w);
        let x_1410 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec12;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat48.x = x_1419;
        let x_1422 : f32 = u_xlat6.x;
        let x_1424 : f32 = u_xlat48.x;
        let x_1426 : f32 = u_xlat27;
        u_xlat67 = ((x_1422 * x_1424) + x_1426);
      } else {
        let x_1429 : vec4<f32> = u_xlat4;
        let x_1432 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1435 : vec2<f32> = ((vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(x_1432.z, x_1432.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1436 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1435.x, x_1435.y, x_1436.z, x_1436.w);
        let x_1438 : vec4<f32> = u_xlat6;
        let x_1440 : vec2<f32> = floor(vec2<f32>(x_1438.x, x_1438.y));
        let x_1441 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1440.x, x_1440.y, x_1441.z, x_1441.w);
        let x_1443 : vec4<f32> = u_xlat4;
        let x_1446 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1449 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1443.x, x_1443.y) * vec2<f32>(x_1446.z, x_1446.w)) + -(vec2<f32>(x_1449.x, x_1449.y)));
        let x_1453 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1453.x, x_1453.x, x_1453.y, x_1453.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1456 : vec4<f32> = u_xlat8;
        let x_1458 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1456.x, x_1456.x, x_1456.z, x_1456.z) * vec4<f32>(x_1458.x, x_1458.x, x_1458.z, x_1458.z));
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1465 : vec2<f32> = (vec2<f32>(x_1461.y, x_1461.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1466 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1466.x, x_1465.x, x_1466.z, x_1465.y);
        let x_1468 : vec4<f32> = u_xlat9;
        let x_1471 : vec2<f32> = u_xlat48;
        let x_1473 : vec2<f32> = ((vec2<f32>(x_1468.x, x_1468.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1471));
        let x_1474 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1473.x, x_1474.y, x_1473.y, x_1474.w);
        let x_1476 : vec2<f32> = u_xlat48;
        let x_1478 : vec2<f32> = (-(x_1476) + vec2<f32>(1.0f, 1.0f));
        let x_1479 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
        let x_1481 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1481, vec2<f32>(0.0f, 0.0f));
        let x_1483 : vec2<f32> = u_xlat51;
        let x_1485 : vec2<f32> = u_xlat51;
        let x_1487 : vec4<f32> = u_xlat9;
        let x_1489 : vec2<f32> = ((-(x_1483) * x_1485) + vec2<f32>(x_1487.x, x_1487.y));
        let x_1490 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1489.x, x_1489.y, x_1490.z, x_1490.w);
        let x_1492 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1492, vec2<f32>(0.0f, 0.0f));
        let x_1495 : vec2<f32> = u_xlat51;
        let x_1497 : vec2<f32> = u_xlat51;
        let x_1499 : vec4<f32> = u_xlat8;
        let x_1501 : vec2<f32> = ((-(x_1495) * x_1497) + vec2<f32>(x_1499.y, x_1499.w));
        let x_1502 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1501.x, x_1502.y, x_1501.y);
        let x_1504 : vec4<f32> = u_xlat9;
        let x_1506 : vec2<f32> = (vec2<f32>(x_1504.x, x_1504.y) + vec2<f32>(2.0f, 2.0f));
        let x_1507 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1506.x, x_1506.y, x_1507.z, x_1507.w);
        let x_1509 : vec3<f32> = u_xlat29;
        let x_1511 : vec2<f32> = (vec2<f32>(x_1509.x, x_1509.z) + vec2<f32>(2.0f, 2.0f));
        let x_1512 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1512.x, x_1511.x, x_1512.z, x_1511.y);
        let x_1515 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1515 * 0.081632003f);
        let x_1519 : vec4<f32> = u_xlat8;
        let x_1522 : vec3<f32> = (vec3<f32>(x_1519.z, x_1519.x, x_1519.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1523 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1523.w);
        let x_1525 : vec4<f32> = u_xlat9;
        let x_1528 : vec2<f32> = (vec2<f32>(x_1525.x, x_1525.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1529 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1528.x, x_1528.y, x_1529.z, x_1529.w);
        let x_1532 : f32 = u_xlat12.y;
        u_xlat11.x = x_1532;
        let x_1534 : vec2<f32> = u_xlat48;
        let x_1541 : vec2<f32> = ((vec2<f32>(x_1534.x, x_1534.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1542 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1542.x, x_1541.x, x_1542.z, x_1541.y);
        let x_1544 : vec2<f32> = u_xlat48;
        let x_1548 : vec2<f32> = ((vec2<f32>(x_1544.x, x_1544.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1549 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1548.x, x_1549.y, x_1548.y, x_1549.w);
        let x_1552 : f32 = u_xlat8.x;
        u_xlat9.y = x_1552;
        let x_1555 : f32 = u_xlat10.y;
        u_xlat9.w = x_1555;
        let x_1557 : vec4<f32> = u_xlat9;
        let x_1558 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1557 + x_1558);
        let x_1560 : vec2<f32> = u_xlat48;
        let x_1563 : vec2<f32> = ((vec2<f32>(x_1560.y, x_1560.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1564 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1564.x, x_1563.x, x_1564.z, x_1563.y);
        let x_1566 : vec2<f32> = u_xlat48;
        let x_1569 : vec2<f32> = ((vec2<f32>(x_1566.y, x_1566.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1570 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1569.x, x_1570.y, x_1569.y, x_1570.w);
        let x_1573 : f32 = u_xlat8.y;
        u_xlat10.y = x_1573;
        let x_1575 : vec4<f32> = u_xlat10;
        let x_1576 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1575 + x_1576);
        let x_1578 : vec4<f32> = u_xlat9;
        let x_1579 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1578 / x_1579);
        let x_1581 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1581 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1587 : vec4<f32> = u_xlat10;
        let x_1588 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1587 / x_1588);
        let x_1590 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1590 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1592 : vec4<f32> = u_xlat9;
        let x_1595 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1592.w, x_1592.x, x_1592.y, x_1592.z) * vec4<f32>(x_1595.x, x_1595.x, x_1595.x, x_1595.x));
        let x_1598 : vec4<f32> = u_xlat10;
        let x_1601 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1598.x, x_1598.w, x_1598.y, x_1598.z) * vec4<f32>(x_1601.y, x_1601.y, x_1601.y, x_1601.y));
        let x_1604 : vec4<f32> = u_xlat9;
        let x_1605 : vec3<f32> = vec3<f32>(x_1604.y, x_1604.z, x_1604.w);
        let x_1606 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1605.x, x_1606.y, x_1605.y, x_1605.z);
        let x_1609 : f32 = u_xlat10.x;
        u_xlat12.y = x_1609;
        let x_1611 : vec4<f32> = u_xlat6;
        let x_1614 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1617 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1611.x, x_1611.y, x_1611.x, x_1611.y) * vec4<f32>(x_1614.x, x_1614.y, x_1614.x, x_1614.y)) + vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1617.y));
        let x_1620 : vec4<f32> = u_xlat6;
        let x_1623 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1626 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1620.x, x_1620.y) * vec2<f32>(x_1623.x, x_1623.y)) + vec2<f32>(x_1626.w, x_1626.y));
        let x_1630 : f32 = u_xlat12.y;
        u_xlat9.y = x_1630;
        let x_1633 : f32 = u_xlat10.z;
        u_xlat12.y = x_1633;
        let x_1635 : vec4<f32> = u_xlat6;
        let x_1638 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1641 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1635.x, x_1635.y, x_1635.x, x_1635.y) * vec4<f32>(x_1638.x, x_1638.y, x_1638.x, x_1638.y)) + vec4<f32>(x_1641.x, x_1641.y, x_1641.z, x_1641.y));
        let x_1644 : vec4<f32> = u_xlat6;
        let x_1647 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1650 : vec4<f32> = u_xlat12;
        let x_1652 : vec2<f32> = ((vec2<f32>(x_1644.x, x_1644.y) * vec2<f32>(x_1647.x, x_1647.y)) + vec2<f32>(x_1650.w, x_1650.y));
        let x_1653 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1652.x, x_1652.y, x_1653.z, x_1653.w);
        let x_1656 : f32 = u_xlat12.y;
        u_xlat9.z = x_1656;
        let x_1659 : vec4<f32> = u_xlat6;
        let x_1662 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1665 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1659.x, x_1659.y, x_1659.x, x_1659.y) * vec4<f32>(x_1662.x, x_1662.y, x_1662.x, x_1662.y)) + vec4<f32>(x_1665.x, x_1665.y, x_1665.x, x_1665.z));
        let x_1669 : f32 = u_xlat10.w;
        u_xlat12.y = x_1669;
        let x_1672 : vec4<f32> = u_xlat6;
        let x_1675 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1678 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1672.x, x_1672.y, x_1672.x, x_1672.y) * vec4<f32>(x_1675.x, x_1675.y, x_1675.x, x_1675.y)) + vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1678.y));
        let x_1682 : vec4<f32> = u_xlat6;
        let x_1685 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1688 : vec4<f32> = u_xlat12;
        let x_1690 : vec2<f32> = ((vec2<f32>(x_1682.x, x_1682.y) * vec2<f32>(x_1685.x, x_1685.y)) + vec2<f32>(x_1688.w, x_1688.y));
        let x_1691 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1690.x, x_1690.y, x_1691.z);
        let x_1694 : f32 = u_xlat12.y;
        u_xlat9.w = x_1694;
        let x_1697 : vec4<f32> = u_xlat6;
        let x_1700 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1703 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1697.x, x_1697.y) * vec2<f32>(x_1700.x, x_1700.y)) + vec2<f32>(x_1703.x, x_1703.w));
        let x_1706 : vec4<f32> = u_xlat12;
        let x_1707 : vec3<f32> = vec3<f32>(x_1706.x, x_1706.z, x_1706.w);
        let x_1708 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1707.x, x_1708.y, x_1707.y, x_1707.z);
        let x_1710 : vec4<f32> = u_xlat6;
        let x_1713 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1716 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1710.x, x_1710.y, x_1710.x, x_1710.y) * vec4<f32>(x_1713.x, x_1713.y, x_1713.x, x_1713.y)) + vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1716.y));
        let x_1720 : vec4<f32> = u_xlat6;
        let x_1723 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1726 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1720.x, x_1720.y) * vec2<f32>(x_1723.x, x_1723.y)) + vec2<f32>(x_1726.w, x_1726.y));
        let x_1730 : f32 = u_xlat9.x;
        u_xlat10.x = x_1730;
        let x_1732 : vec4<f32> = u_xlat6;
        let x_1735 : vec4<f32> = x_503.x_MainLightShadowmapSize;
        let x_1738 : vec4<f32> = u_xlat10;
        let x_1740 : vec2<f32> = ((vec2<f32>(x_1732.x, x_1732.y) * vec2<f32>(x_1735.x, x_1735.y)) + vec2<f32>(x_1738.x, x_1738.y));
        let x_1741 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1740.x, x_1740.y, x_1741.z, x_1741.w);
        let x_1744 : vec4<f32> = u_xlat8;
        let x_1746 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1744.x, x_1744.x, x_1744.x, x_1744.x) * x_1746);
        let x_1749 : vec4<f32> = u_xlat8;
        let x_1751 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1749.y, x_1749.y, x_1749.y, x_1749.y) * x_1751);
        let x_1754 : vec4<f32> = u_xlat8;
        let x_1756 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1754.z, x_1754.z, x_1754.z, x_1754.z) * x_1756);
        let x_1758 : vec4<f32> = u_xlat8;
        let x_1760 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1758.w, x_1758.w, x_1758.w, x_1758.w) * x_1760);
        let x_1763 : vec4<f32> = u_xlat13;
        let x_1764 : vec2<f32> = vec2<f32>(x_1763.x, x_1763.y);
        let x_1766 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1764.x, x_1764.y, x_1766);
        let x_1773 : vec3<f32> = txVec13;
        let x_1775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1773.xy, x_1773.z);
        u_xlat70 = x_1775;
        let x_1777 : vec4<f32> = u_xlat13;
        let x_1778 : vec2<f32> = vec2<f32>(x_1777.z, x_1777.w);
        let x_1780 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1778.x, x_1778.y, x_1780);
        let x_1787 : vec3<f32> = txVec14;
        let x_1789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1787.xy, x_1787.z);
        u_xlat9.x = x_1789;
        let x_1792 : f32 = u_xlat9.x;
        let x_1794 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1792 * x_1794);
        let x_1798 : f32 = u_xlat18.x;
        let x_1799 : f32 = u_xlat70;
        let x_1802 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1798 * x_1799) + x_1802);
        let x_1805 : vec2<f32> = u_xlat48;
        let x_1807 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1805.x, x_1805.y, x_1807);
        let x_1814 : vec3<f32> = txVec15;
        let x_1816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1814.xy, x_1814.z);
        u_xlat48.x = x_1816;
        let x_1819 : f32 = u_xlat18.z;
        let x_1821 : f32 = u_xlat48.x;
        let x_1823 : f32 = u_xlat70;
        u_xlat48.x = ((x_1819 * x_1821) + x_1823);
        let x_1827 : vec4<f32> = u_xlat16;
        let x_1828 : vec2<f32> = vec2<f32>(x_1827.x, x_1827.y);
        let x_1830 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1828.x, x_1828.y, x_1830);
        let x_1838 : vec3<f32> = txVec16;
        let x_1840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1838.xy, x_1838.z);
        u_xlat69 = x_1840;
        let x_1842 : f32 = u_xlat18.w;
        let x_1843 : f32 = u_xlat69;
        let x_1846 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1842 * x_1843) + x_1846);
        let x_1850 : vec4<f32> = u_xlat14;
        let x_1851 : vec2<f32> = vec2<f32>(x_1850.x, x_1850.y);
        let x_1853 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1851.x, x_1851.y, x_1853);
        let x_1860 : vec3<f32> = txVec17;
        let x_1862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1860.xy, x_1860.z);
        u_xlat69 = x_1862;
        let x_1864 : f32 = u_xlat19.x;
        let x_1865 : f32 = u_xlat69;
        let x_1868 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1864 * x_1865) + x_1868);
        let x_1872 : vec4<f32> = u_xlat14;
        let x_1873 : vec2<f32> = vec2<f32>(x_1872.z, x_1872.w);
        let x_1875 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1873.x, x_1873.y, x_1875);
        let x_1882 : vec3<f32> = txVec18;
        let x_1884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1882.xy, x_1882.z);
        u_xlat69 = x_1884;
        let x_1886 : f32 = u_xlat19.y;
        let x_1887 : f32 = u_xlat69;
        let x_1890 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1886 * x_1887) + x_1890);
        let x_1894 : vec4<f32> = u_xlat15;
        let x_1895 : vec2<f32> = vec2<f32>(x_1894.x, x_1894.y);
        let x_1897 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1895.x, x_1895.y, x_1897);
        let x_1904 : vec3<f32> = txVec19;
        let x_1906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1904.xy, x_1904.z);
        u_xlat69 = x_1906;
        let x_1908 : f32 = u_xlat19.z;
        let x_1909 : f32 = u_xlat69;
        let x_1912 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1908 * x_1909) + x_1912);
        let x_1916 : vec4<f32> = u_xlat16;
        let x_1917 : vec2<f32> = vec2<f32>(x_1916.z, x_1916.w);
        let x_1919 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1917.x, x_1917.y, x_1919);
        let x_1926 : vec3<f32> = txVec20;
        let x_1928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1926.xy, x_1926.z);
        u_xlat69 = x_1928;
        let x_1930 : f32 = u_xlat19.w;
        let x_1931 : f32 = u_xlat69;
        let x_1934 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1930 * x_1931) + x_1934);
        let x_1938 : vec4<f32> = u_xlat17;
        let x_1939 : vec2<f32> = vec2<f32>(x_1938.x, x_1938.y);
        let x_1941 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1939.x, x_1939.y, x_1941);
        let x_1948 : vec3<f32> = txVec21;
        let x_1950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1948.xy, x_1948.z);
        u_xlat69 = x_1950;
        let x_1952 : f32 = u_xlat20.x;
        let x_1953 : f32 = u_xlat69;
        let x_1956 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1952 * x_1953) + x_1956);
        let x_1960 : vec4<f32> = u_xlat17;
        let x_1961 : vec2<f32> = vec2<f32>(x_1960.z, x_1960.w);
        let x_1963 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1961.x, x_1961.y, x_1963);
        let x_1970 : vec3<f32> = txVec22;
        let x_1972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1970.xy, x_1970.z);
        u_xlat69 = x_1972;
        let x_1974 : f32 = u_xlat20.y;
        let x_1975 : f32 = u_xlat69;
        let x_1978 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1974 * x_1975) + x_1978);
        let x_1982 : vec3<f32> = u_xlat30;
        let x_1983 : vec2<f32> = vec2<f32>(x_1982.x, x_1982.y);
        let x_1985 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1983.x, x_1983.y, x_1985);
        let x_1992 : vec3<f32> = txVec23;
        let x_1994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1992.xy, x_1992.z);
        u_xlat69 = x_1994;
        let x_1996 : f32 = u_xlat20.z;
        let x_1997 : f32 = u_xlat69;
        let x_2000 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1996 * x_1997) + x_2000);
        let x_2004 : vec2<f32> = u_xlat57;
        let x_2006 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_2004.x, x_2004.y, x_2006);
        let x_2013 : vec3<f32> = txVec24;
        let x_2015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2013.xy, x_2013.z);
        u_xlat69 = x_2015;
        let x_2017 : f32 = u_xlat20.w;
        let x_2018 : f32 = u_xlat69;
        let x_2021 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2017 * x_2018) + x_2021);
        let x_2025 : vec4<f32> = u_xlat12;
        let x_2026 : vec2<f32> = vec2<f32>(x_2025.x, x_2025.y);
        let x_2028 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_2026.x, x_2026.y, x_2028);
        let x_2035 : vec3<f32> = txVec25;
        let x_2037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2035.xy, x_2035.z);
        u_xlat69 = x_2037;
        let x_2039 : f32 = u_xlat8.x;
        let x_2040 : f32 = u_xlat69;
        let x_2043 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2039 * x_2040) + x_2043);
        let x_2047 : vec4<f32> = u_xlat12;
        let x_2048 : vec2<f32> = vec2<f32>(x_2047.z, x_2047.w);
        let x_2050 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2048.x, x_2048.y, x_2050);
        let x_2057 : vec3<f32> = txVec26;
        let x_2059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2057.xy, x_2057.z);
        u_xlat69 = x_2059;
        let x_2061 : f32 = u_xlat8.y;
        let x_2062 : f32 = u_xlat69;
        let x_2065 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2061 * x_2062) + x_2065);
        let x_2069 : vec2<f32> = u_xlat52;
        let x_2071 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2069.x, x_2069.y, x_2071);
        let x_2078 : vec3<f32> = txVec27;
        let x_2080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2078.xy, x_2078.z);
        u_xlat69 = x_2080;
        let x_2082 : f32 = u_xlat8.z;
        let x_2083 : f32 = u_xlat69;
        let x_2086 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2082 * x_2083) + x_2086);
        let x_2090 : vec4<f32> = u_xlat6;
        let x_2091 : vec2<f32> = vec2<f32>(x_2090.x, x_2090.y);
        let x_2093 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2091.x, x_2091.y, x_2093);
        let x_2100 : vec3<f32> = txVec28;
        let x_2102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2100.xy, x_2100.z);
        u_xlat6.x = x_2102;
        let x_2105 : f32 = u_xlat8.w;
        let x_2107 : f32 = u_xlat6.x;
        let x_2110 : f32 = u_xlat48.x;
        u_xlat67 = ((x_2105 * x_2107) + x_2110);
      }
    }
  } else {
    let x_2114 : vec4<f32> = u_xlat4;
    let x_2115 : vec2<f32> = vec2<f32>(x_2114.x, x_2114.y);
    let x_2117 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2115.x, x_2115.y, x_2117);
    let x_2124 : vec3<f32> = txVec29;
    let x_2126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2124.xy, x_2124.z);
    u_xlat67 = x_2126;
  }
  let x_2128 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2128) + 1.0f);
  let x_2132 : f32 = u_xlat67;
  let x_2134 : f32 = x_503.x_MainLightShadowParams.x;
  let x_2137 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2132 * x_2134) + x_2137);
  let x_2142 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_2142);
  let x_2147 : f32 = u_xlat4.z;
  u_xlatb46 = (x_2147 >= 1.0f);
  let x_2149 : bool = u_xlatb46;
  let x_2151 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2149 | x_2151);
  let x_2155 : bool = u_xlatb25.x;
  if (x_2155) {
    x_2156 = 1.0f;
  } else {
    let x_2161 : f32 = u_xlat4.x;
    x_2156 = x_2161;
  }
  let x_2162 : f32 = x_2156;
  u_xlat4.x = x_2162;
  let x_2165 : vec3<f32> = vs_INTERP0;
  let x_2167 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat25 = (x_2165 + -(x_2167));
  let x_2170 : vec3<f32> = u_xlat25;
  let x_2171 : vec3<f32> = u_xlat25;
  u_xlat25.x = dot(x_2170, x_2171);
  let x_2175 : f32 = u_xlat25.x;
  let x_2177 : f32 = x_503.x_MainLightShadowParams.z;
  let x_2180 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2175 * x_2177) + x_2180);
  let x_2184 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2184, 0.0f, 1.0f);
  let x_2189 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_2189) + 1.0f);
  let x_2193 : f32 = u_xlat25.x;
  let x_2194 : f32 = u_xlat46;
  let x_2197 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2193 * x_2194) + x_2197);
  let x_2206 : f32 = x_2204.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2206 == -1.0f));
  let x_2210 : bool = u_xlatb25.x;
  if (x_2210) {
    let x_2213 : vec3<f32> = vs_INTERP0;
    let x_2216 : vec4<f32> = x_2204.x_MainLightWorldToLight[1i];
    let x_2218 : vec2<f32> = (vec2<f32>(x_2213.y, x_2213.y) * vec2<f32>(x_2216.x, x_2216.y));
    let x_2219 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2218.x, x_2218.y, x_2219.z);
    let x_2222 : vec4<f32> = x_2204.x_MainLightWorldToLight[0i];
    let x_2224 : vec3<f32> = vs_INTERP0;
    let x_2227 : vec3<f32> = u_xlat25;
    let x_2229 : vec2<f32> = ((vec2<f32>(x_2222.x, x_2222.y) * vec2<f32>(x_2224.x, x_2224.x)) + vec2<f32>(x_2227.x, x_2227.y));
    let x_2230 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2229.x, x_2229.y, x_2230.z);
    let x_2233 : vec4<f32> = x_2204.x_MainLightWorldToLight[2i];
    let x_2235 : vec3<f32> = vs_INTERP0;
    let x_2238 : vec3<f32> = u_xlat25;
    let x_2240 : vec2<f32> = ((vec2<f32>(x_2233.x, x_2233.y) * vec2<f32>(x_2235.z, x_2235.z)) + vec2<f32>(x_2238.x, x_2238.y));
    let x_2241 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2240.x, x_2240.y, x_2241.z);
    let x_2243 : vec3<f32> = u_xlat25;
    let x_2246 : vec4<f32> = x_2204.x_MainLightWorldToLight[3i];
    let x_2248 : vec2<f32> = (vec2<f32>(x_2243.x, x_2243.y) + vec2<f32>(x_2246.x, x_2246.y));
    let x_2249 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2248.x, x_2248.y, x_2249.z);
    let x_2251 : vec3<f32> = u_xlat25;
    let x_2254 : vec2<f32> = ((vec2<f32>(x_2251.x, x_2251.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2255 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2254.x, x_2254.y, x_2255.z);
    let x_2262 : vec3<f32> = u_xlat25;
    let x_2265 : f32 = x_44.x_GlobalMipBias.x;
    let x_2266 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2262.x, x_2262.y), x_2265);
    u_xlat6 = x_2266;
    let x_2268 : f32 = x_2204.x_MainLightCookieTextureFormat;
    let x_2270 : f32 = x_2204.x_MainLightCookieTextureFormat;
    let x_2272 : f32 = x_2204.x_MainLightCookieTextureFormat;
    let x_2274 : f32 = x_2204.x_MainLightCookieTextureFormat;
    let x_2275 : vec4<f32> = vec4<f32>(x_2268, x_2270, x_2272, x_2274);
    let x_2282 : vec4<bool> = (vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2275.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2282.x, x_2282.y);
    let x_2285 : bool = u_xlatb25.y;
    if (x_2285) {
      let x_2290 : f32 = u_xlat6.w;
      x_2286 = x_2290;
    } else {
      let x_2293 : f32 = u_xlat6.x;
      x_2286 = x_2293;
    }
    let x_2294 : f32 = x_2286;
    u_xlat46 = x_2294;
    let x_2296 : bool = u_xlatb25.x;
    if (x_2296) {
      let x_2300 : vec4<f32> = u_xlat6;
      x_2297 = vec3<f32>(x_2300.x, x_2300.y, x_2300.z);
    } else {
      let x_2303 : f32 = u_xlat46;
      x_2297 = vec3<f32>(x_2303, x_2303, x_2303);
    }
    let x_2305 : vec3<f32> = x_2297;
    u_xlat25 = x_2305;
  } else {
    u_xlat25.x = 1.0f;
    u_xlat25.y = 1.0f;
    u_xlat25.z = 1.0f;
  }
  let x_2310 : vec3<f32> = u_xlat25;
  let x_2312 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat25 = (x_2310 * vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
  let x_2315 : f32 = u_xlat68;
  let x_2317 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2315, x_2315, x_2315) * x_2317);
  let x_2319 : vec4<f32> = u_xlat3;
  let x_2322 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(vec3<f32>(x_2319.x, x_2319.y, x_2319.z)), vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
  let x_2327 : f32 = u_xlat6.x;
  let x_2329 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2327 + x_2329);
  let x_2332 : vec4<f32> = u_xlat1;
  let x_2334 : vec4<f32> = u_xlat6;
  let x_2338 : vec4<f32> = u_xlat3;
  let x_2341 : vec3<f32> = ((vec3<f32>(x_2332.x, x_2332.y, x_2332.z) * -(vec3<f32>(x_2334.x, x_2334.x, x_2334.x))) + -(vec3<f32>(x_2338.x, x_2338.y, x_2338.z)));
  let x_2342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2341.x, x_2341.y, x_2341.z, x_2342.w);
  let x_2344 : vec4<f32> = u_xlat1;
  let x_2346 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_2344.x, x_2344.y, x_2344.z), vec3<f32>(x_2346.x, x_2346.y, x_2346.z));
  let x_2349 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2349, 0.0f, 1.0f);
  let x_2351 : f32 = u_xlat69;
  u_xlat69 = (-(x_2351) + 1.0f);
  let x_2354 : f32 = u_xlat69;
  let x_2355 : f32 = u_xlat69;
  u_xlat69 = (x_2354 * x_2355);
  let x_2357 : f32 = u_xlat69;
  let x_2358 : f32 = u_xlat69;
  u_xlat69 = (x_2357 * x_2358);
  let x_2360 : f32 = u_xlat64;
  u_xlat70 = ((-(x_2360) * 0.699999988f) + 1.700000048f);
  let x_2366 : f32 = u_xlat64;
  let x_2367 : f32 = u_xlat70;
  u_xlat64 = (x_2366 * x_2367);
  let x_2369 : f32 = u_xlat64;
  u_xlat64 = (x_2369 * 6.0f);
  let x_2379 : vec4<f32> = u_xlat6;
  let x_2381 : f32 = u_xlat64;
  let x_2382 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2379.x, x_2379.y, x_2379.z), x_2381);
  u_xlat8 = x_2382;
  let x_2384 : f32 = u_xlat8.w;
  u_xlat64 = (x_2384 + -1.0f);
  let x_2387 : f32 = x_359.unity_SpecCube0_HDR.w;
  let x_2388 : f32 = u_xlat64;
  u_xlat64 = ((x_2387 * x_2388) + 1.0f);
  let x_2391 : f32 = u_xlat64;
  u_xlat64 = max(x_2391, 0.0f);
  let x_2393 : f32 = u_xlat64;
  u_xlat64 = log2(x_2393);
  let x_2395 : f32 = u_xlat64;
  let x_2397 : f32 = x_359.unity_SpecCube0_HDR.y;
  u_xlat64 = (x_2395 * x_2397);
  let x_2399 : f32 = u_xlat64;
  u_xlat64 = exp2(x_2399);
  let x_2401 : f32 = u_xlat64;
  let x_2403 : f32 = x_359.unity_SpecCube0_HDR.x;
  u_xlat64 = (x_2401 * x_2403);
  let x_2405 : vec4<f32> = u_xlat8;
  let x_2407 : f32 = u_xlat64;
  let x_2409 : vec3<f32> = (vec3<f32>(x_2405.x, x_2405.y, x_2405.z) * vec3<f32>(x_2407, x_2407, x_2407));
  let x_2410 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2409.x, x_2409.y, x_2409.z, x_2410.w);
  let x_2412 : vec4<f32> = u_xlat2;
  let x_2414 : vec4<f32> = u_xlat2;
  let x_2418 : vec2<f32> = ((vec2<f32>(x_2412.x, x_2412.x) * vec2<f32>(x_2414.x, x_2414.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2419 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2418.x, x_2418.y, x_2419.z, x_2419.w);
  let x_2422 : f32 = u_xlat8.y;
  u_xlat64 = (1.0f / x_2422);
  let x_2424 : vec4<f32> = u_xlat0;
  let x_2427 : f32 = u_xlat65;
  u_xlat29 = (-(vec3<f32>(x_2424.x, x_2424.y, x_2424.z)) + vec3<f32>(x_2427, x_2427, x_2427));
  let x_2430 : f32 = u_xlat69;
  let x_2432 : vec3<f32> = u_xlat29;
  let x_2434 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2430, x_2430, x_2430) * x_2432) + vec3<f32>(x_2434.x, x_2434.y, x_2434.z));
  let x_2437 : f32 = u_xlat64;
  let x_2439 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2437, x_2437, x_2437) * x_2439);
  let x_2441 : vec4<f32> = u_xlat6;
  let x_2443 : vec3<f32> = u_xlat29;
  let x_2444 : vec3<f32> = (vec3<f32>(x_2441.x, x_2441.y, x_2441.z) * x_2443);
  let x_2445 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
  let x_2447 : vec4<f32> = u_xlat5;
  let x_2449 : vec3<f32> = u_xlat7;
  let x_2451 : vec4<f32> = u_xlat6;
  let x_2453 : vec3<f32> = ((vec3<f32>(x_2447.x, x_2447.y, x_2447.z) * x_2449) + vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
  let x_2454 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2453.x, x_2453.y, x_2453.z, x_2454.w);
  let x_2457 : f32 = u_xlat4.x;
  let x_2459 : f32 = x_359.unity_LightData.z;
  u_xlat64 = (x_2457 * x_2459);
  let x_2461 : vec4<f32> = u_xlat1;
  let x_2464 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2461.x, x_2461.y, x_2461.z), vec3<f32>(x_2464.x, x_2464.y, x_2464.z));
  let x_2469 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2469, 0.0f, 1.0f);
  let x_2472 : f32 = u_xlat64;
  let x_2474 : f32 = u_xlat2.x;
  u_xlat64 = (x_2472 * x_2474);
  let x_2476 : f32 = u_xlat64;
  let x_2478 : vec3<f32> = u_xlat25;
  let x_2479 : vec3<f32> = (vec3<f32>(x_2476, x_2476, x_2476) * x_2478);
  let x_2480 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2479.x, x_2479.y, x_2479.z, x_2480.w);
  let x_2482 : vec4<f32> = u_xlat3;
  let x_2485 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2487 : vec3<f32> = (vec3<f32>(x_2482.x, x_2482.y, x_2482.z) + vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
  let x_2488 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
  let x_2490 : vec4<f32> = u_xlat6;
  let x_2492 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2490.x, x_2490.y, x_2490.z), vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
  let x_2495 : f32 = u_xlat64;
  u_xlat64 = max(x_2495, 1.17549435e-37f);
  let x_2498 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_2498);
  let x_2500 : f32 = u_xlat64;
  let x_2502 : vec4<f32> = u_xlat6;
  let x_2504 : vec3<f32> = (vec3<f32>(x_2500, x_2500, x_2500) * vec3<f32>(x_2502.x, x_2502.y, x_2502.z));
  let x_2505 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2504.x, x_2504.y, x_2504.z, x_2505.w);
  let x_2507 : vec4<f32> = u_xlat1;
  let x_2509 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2507.x, x_2507.y, x_2507.z), vec3<f32>(x_2509.x, x_2509.y, x_2509.z));
  let x_2512 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2512, 0.0f, 1.0f);
  let x_2515 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2517 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_2515.x, x_2515.y, x_2515.z), vec3<f32>(x_2517.x, x_2517.y, x_2517.z));
  let x_2522 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2522, 0.0f, 1.0f);
  let x_2525 : f32 = u_xlat64;
  let x_2526 : f32 = u_xlat64;
  u_xlat64 = (x_2525 * x_2526);
  let x_2528 : f32 = u_xlat64;
  let x_2530 : f32 = u_xlat8.x;
  u_xlat64 = ((x_2528 * x_2530) + 1.000010014f);
  let x_2535 : f32 = u_xlat2.x;
  let x_2537 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2535 * x_2537);
  let x_2540 : f32 = u_xlat64;
  let x_2541 : f32 = u_xlat64;
  u_xlat64 = (x_2540 * x_2541);
  let x_2544 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2544, 0.100000001f);
  let x_2548 : f32 = u_xlat64;
  let x_2550 : f32 = u_xlat2.x;
  u_xlat64 = (x_2548 * x_2550);
  let x_2552 : f32 = u_xlat66;
  let x_2553 : f32 = u_xlat64;
  u_xlat64 = (x_2552 * x_2553);
  let x_2555 : f32 = u_xlat23;
  let x_2556 : f32 = u_xlat64;
  u_xlat64 = (x_2555 / x_2556);
  let x_2558 : vec4<f32> = u_xlat0;
  let x_2560 : f32 = u_xlat64;
  let x_2563 : vec3<f32> = u_xlat7;
  let x_2564 : vec3<f32> = ((vec3<f32>(x_2558.x, x_2558.y, x_2558.z) * vec3<f32>(x_2560, x_2560, x_2560)) + x_2563);
  let x_2565 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
  let x_2567 : vec4<f32> = u_xlat4;
  let x_2569 : vec4<f32> = u_xlat6;
  let x_2571 : vec3<f32> = (vec3<f32>(x_2567.x, x_2567.y, x_2567.z) * vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
  let x_2572 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2571.x, x_2571.y, x_2571.z, x_2572.w);
  let x_2575 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2577 : f32 = x_359.unity_LightData.y;
  u_xlat64 = min(x_2575, x_2577);
  let x_2580 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_2580));
  let x_2585 : f32 = x_2204.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2587 : f32 = x_2204.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2589 : f32 = x_2204.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2591 : f32 = x_2204.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2592 : vec4<f32> = vec4<f32>(x_2585, x_2587, x_2589, x_2591);
  let x_2599 : vec4<bool> = (vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2592.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2600 : vec2<bool> = vec2<bool>(x_2599.x, x_2599.w);
  let x_2601 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_2600.x, x_2601.y, x_2601.z, x_2600.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2612 : u32 = u_xlatu_loop_1;
    let x_2613 : u32 = u_xlatu64;
    if ((x_2612 < x_2613)) {
    } else {
      break;
    }
    let x_2616 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2616 >> 2u);
    let x_2619 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2619 & 3u));
    let x_2622 : u32 = u_xlatu69;
    let x_2625 : vec4<f32> = x_359.unity_LightIndices[bitcast<i32>(x_2622)];
    let x_2635 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2640 : vec4<u32> = indexable[x_2635];
    u_xlat69 = dot(x_2625, bitcast<vec4<f32>>(x_2640));
    let x_2643 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2643));
    let x_2646 : vec3<f32> = vs_INTERP0;
    let x_2658 : u32 = u_xlatu69;
    let x_2661 : vec4<f32> = x_2657.x_AdditionalLightsPosition[bitcast<i32>(x_2658)];
    let x_2664 : u32 = u_xlatu69;
    let x_2667 : vec4<f32> = x_2657.x_AdditionalLightsPosition[bitcast<i32>(x_2664)];
    u_xlat29 = ((-(x_2646) * vec3<f32>(x_2661.w, x_2661.w, x_2661.w)) + vec3<f32>(x_2667.x, x_2667.y, x_2667.z));
    let x_2670 : vec3<f32> = u_xlat29;
    let x_2671 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_2670, x_2671);
    let x_2673 : f32 = u_xlat70;
    u_xlat70 = max(x_2673, 6.10351562e-05f);
    let x_2676 : f32 = u_xlat70;
    u_xlat9.x = inverseSqrt(x_2676);
    let x_2679 : vec3<f32> = u_xlat29;
    let x_2680 : vec4<f32> = u_xlat9;
    u_xlat30 = (x_2679 * vec3<f32>(x_2680.x, x_2680.x, x_2680.x));
    let x_2683 : f32 = u_xlat70;
    u_xlat10.x = (1.0f / x_2683);
    let x_2686 : f32 = u_xlat70;
    let x_2687 : u32 = u_xlatu69;
    let x_2690 : f32 = x_2657.x_AdditionalLightsAttenuation[bitcast<i32>(x_2687)].x;
    u_xlat70 = (x_2686 * x_2690);
    let x_2692 : f32 = u_xlat70;
    let x_2694 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2692) * x_2694) + 1.0f);
    let x_2697 : f32 = u_xlat70;
    u_xlat70 = max(x_2697, 0.0f);
    let x_2699 : f32 = u_xlat70;
    let x_2700 : f32 = u_xlat70;
    u_xlat70 = (x_2699 * x_2700);
    let x_2702 : f32 = u_xlat70;
    let x_2704 : f32 = u_xlat10.x;
    u_xlat70 = (x_2702 * x_2704);
    let x_2706 : u32 = u_xlatu69;
    let x_2709 : vec4<f32> = x_2657.x_AdditionalLightsSpotDir[bitcast<i32>(x_2706)];
    let x_2711 : vec3<f32> = u_xlat30;
    u_xlat10.x = dot(vec3<f32>(x_2709.x, x_2709.y, x_2709.z), x_2711);
    let x_2715 : f32 = u_xlat10.x;
    let x_2716 : u32 = u_xlatu69;
    let x_2719 : f32 = x_2657.x_AdditionalLightsAttenuation[bitcast<i32>(x_2716)].z;
    let x_2721 : u32 = u_xlatu69;
    let x_2724 : f32 = x_2657.x_AdditionalLightsAttenuation[bitcast<i32>(x_2721)].w;
    u_xlat10.x = ((x_2715 * x_2719) + x_2724);
    let x_2728 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2728, 0.0f, 1.0f);
    let x_2732 : f32 = u_xlat10.x;
    let x_2734 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2732 * x_2734);
    let x_2737 : f32 = u_xlat70;
    let x_2739 : f32 = u_xlat10.x;
    u_xlat70 = (x_2737 * x_2739);
    let x_2742 : u32 = u_xlatu69;
    u_xlatu10 = (x_2742 >> 5u);
    let x_2745 : u32 = u_xlatu69;
    u_xlati31 = (1i << bitcast<u32>((bitcast<i32>(x_2745) & 31i)));
    let x_2751 : i32 = u_xlati31;
    let x_2753 : u32 = u_xlatu10;
    let x_2756 : f32 = x_2204.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2753)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_2751) & bitcast<u32>(x_2756)));
    let x_2760 : i32 = u_xlati10;
    if ((x_2760 != 0i)) {
      let x_2770 : u32 = u_xlatu69;
      let x_2773 : f32 = x_2769.x_AdditionalLightsLightTypes[bitcast<i32>(x_2770)].el;
      u_xlati10 = i32(x_2773);
      let x_2775 : i32 = u_xlati10;
      u_xlati31 = select(1i, 0i, (x_2775 != 0i));
      let x_2779 : u32 = u_xlatu69;
      u_xlati52 = (bitcast<i32>(x_2779) << bitcast<u32>(2i));
      let x_2782 : i32 = u_xlati31;
      if ((x_2782 != 0i)) {
        let x_2786 : vec3<f32> = vs_INTERP0;
        let x_2788 : i32 = u_xlati52;
        let x_2791 : i32 = u_xlati52;
        let x_2795 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[((x_2788 + 1i) / 4i)][((x_2791 + 1i) % 4i)];
        let x_2797 : vec3<f32> = (vec3<f32>(x_2786.y, x_2786.y, x_2786.y) * vec3<f32>(x_2795.x, x_2795.y, x_2795.w));
        let x_2798 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2797.x, x_2797.y, x_2797.z, x_2798.w);
        let x_2800 : i32 = u_xlati52;
        let x_2802 : i32 = u_xlati52;
        let x_2805 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[(x_2800 / 4i)][(x_2802 % 4i)];
        let x_2807 : vec3<f32> = vs_INTERP0;
        let x_2810 : vec4<f32> = u_xlat11;
        let x_2812 : vec3<f32> = ((vec3<f32>(x_2805.x, x_2805.y, x_2805.w) * vec3<f32>(x_2807.x, x_2807.x, x_2807.x)) + vec3<f32>(x_2810.x, x_2810.y, x_2810.z));
        let x_2813 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2812.x, x_2812.y, x_2812.z, x_2813.w);
        let x_2815 : i32 = u_xlati52;
        let x_2818 : i32 = u_xlati52;
        let x_2822 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[((x_2815 + 2i) / 4i)][((x_2818 + 2i) % 4i)];
        let x_2824 : vec3<f32> = vs_INTERP0;
        let x_2827 : vec4<f32> = u_xlat11;
        let x_2829 : vec3<f32> = ((vec3<f32>(x_2822.x, x_2822.y, x_2822.w) * vec3<f32>(x_2824.z, x_2824.z, x_2824.z)) + vec3<f32>(x_2827.x, x_2827.y, x_2827.z));
        let x_2830 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2829.x, x_2829.y, x_2829.z, x_2830.w);
        let x_2832 : vec4<f32> = u_xlat11;
        let x_2834 : i32 = u_xlati52;
        let x_2837 : i32 = u_xlati52;
        let x_2841 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[((x_2834 + 3i) / 4i)][((x_2837 + 3i) % 4i)];
        let x_2843 : vec3<f32> = (vec3<f32>(x_2832.x, x_2832.y, x_2832.z) + vec3<f32>(x_2841.x, x_2841.y, x_2841.w));
        let x_2844 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2843.x, x_2843.y, x_2843.z, x_2844.w);
        let x_2847 : vec4<f32> = u_xlat11;
        let x_2849 : vec4<f32> = u_xlat11;
        let x_2851 : vec2<f32> = (vec2<f32>(x_2847.x, x_2847.y) / vec2<f32>(x_2849.z, x_2849.z));
        let x_2852 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2851.x, x_2852.y, x_2851.y);
        let x_2854 : vec3<f32> = u_xlat31;
        let x_2857 : vec2<f32> = ((vec2<f32>(x_2854.x, x_2854.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2858 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2857.x, x_2858.y, x_2857.y);
        let x_2860 : vec3<f32> = u_xlat31;
        let x_2864 : vec2<f32> = clamp(vec2<f32>(x_2860.x, x_2860.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2865 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2864.x, x_2865.y, x_2864.y);
        let x_2867 : u32 = u_xlatu69;
        let x_2870 : vec4<f32> = x_2769.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2867)];
        let x_2872 : vec3<f32> = u_xlat31;
        let x_2875 : u32 = u_xlatu69;
        let x_2878 : vec4<f32> = x_2769.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2875)];
        let x_2880 : vec2<f32> = ((vec2<f32>(x_2870.x, x_2870.y) * vec2<f32>(x_2872.x, x_2872.z)) + vec2<f32>(x_2878.z, x_2878.w));
        let x_2881 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2880.x, x_2881.y, x_2880.y);
      } else {
        let x_2885 : i32 = u_xlati10;
        u_xlatb10 = (x_2885 == 1i);
        let x_2887 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_2887);
        let x_2889 : i32 = u_xlati10;
        if ((x_2889 != 0i)) {
          let x_2893 : vec3<f32> = vs_INTERP0;
          let x_2895 : i32 = u_xlati52;
          let x_2898 : i32 = u_xlati52;
          let x_2902 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[((x_2895 + 1i) / 4i)][((x_2898 + 1i) % 4i)];
          let x_2904 : vec2<f32> = (vec2<f32>(x_2893.y, x_2893.y) * vec2<f32>(x_2902.x, x_2902.y));
          let x_2905 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2904.x, x_2904.y, x_2905.z, x_2905.w);
          let x_2907 : i32 = u_xlati52;
          let x_2909 : i32 = u_xlati52;
          let x_2912 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[(x_2907 / 4i)][(x_2909 % 4i)];
          let x_2914 : vec3<f32> = vs_INTERP0;
          let x_2917 : vec4<f32> = u_xlat11;
          let x_2919 : vec2<f32> = ((vec2<f32>(x_2912.x, x_2912.y) * vec2<f32>(x_2914.x, x_2914.x)) + vec2<f32>(x_2917.x, x_2917.y));
          let x_2920 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2919.x, x_2919.y, x_2920.z, x_2920.w);
          let x_2922 : i32 = u_xlati52;
          let x_2925 : i32 = u_xlati52;
          let x_2929 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[((x_2922 + 2i) / 4i)][((x_2925 + 2i) % 4i)];
          let x_2931 : vec3<f32> = vs_INTERP0;
          let x_2934 : vec4<f32> = u_xlat11;
          let x_2936 : vec2<f32> = ((vec2<f32>(x_2929.x, x_2929.y) * vec2<f32>(x_2931.z, x_2931.z)) + vec2<f32>(x_2934.x, x_2934.y));
          let x_2937 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2936.x, x_2936.y, x_2937.z, x_2937.w);
          let x_2939 : vec4<f32> = u_xlat11;
          let x_2941 : i32 = u_xlati52;
          let x_2944 : i32 = u_xlati52;
          let x_2948 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[((x_2941 + 3i) / 4i)][((x_2944 + 3i) % 4i)];
          let x_2950 : vec2<f32> = (vec2<f32>(x_2939.x, x_2939.y) + vec2<f32>(x_2948.x, x_2948.y));
          let x_2951 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2950.x, x_2950.y, x_2951.z, x_2951.w);
          let x_2953 : vec4<f32> = u_xlat11;
          let x_2956 : vec2<f32> = ((vec2<f32>(x_2953.x, x_2953.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2957 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2956.x, x_2956.y, x_2957.z, x_2957.w);
          let x_2959 : vec4<f32> = u_xlat11;
          let x_2961 : vec2<f32> = fract(vec2<f32>(x_2959.x, x_2959.y));
          let x_2962 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2961.x, x_2961.y, x_2962.z, x_2962.w);
          let x_2964 : u32 = u_xlatu69;
          let x_2967 : vec4<f32> = x_2769.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2964)];
          let x_2969 : vec4<f32> = u_xlat11;
          let x_2972 : u32 = u_xlatu69;
          let x_2975 : vec4<f32> = x_2769.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2972)];
          let x_2977 : vec2<f32> = ((vec2<f32>(x_2967.x, x_2967.y) * vec2<f32>(x_2969.x, x_2969.y)) + vec2<f32>(x_2975.z, x_2975.w));
          let x_2978 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2977.x, x_2978.y, x_2977.y);
        } else {
          let x_2981 : vec3<f32> = vs_INTERP0;
          let x_2983 : i32 = u_xlati52;
          let x_2986 : i32 = u_xlati52;
          let x_2990 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[((x_2983 + 1i) / 4i)][((x_2986 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2981.y, x_2981.y, x_2981.y, x_2981.y) * x_2990);
          let x_2992 : i32 = u_xlati52;
          let x_2994 : i32 = u_xlati52;
          let x_2997 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[(x_2992 / 4i)][(x_2994 % 4i)];
          let x_2998 : vec3<f32> = vs_INTERP0;
          let x_3001 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2997 * vec4<f32>(x_2998.x, x_2998.x, x_2998.x, x_2998.x)) + x_3001);
          let x_3003 : i32 = u_xlati52;
          let x_3006 : i32 = u_xlati52;
          let x_3010 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[((x_3003 + 2i) / 4i)][((x_3006 + 2i) % 4i)];
          let x_3011 : vec3<f32> = vs_INTERP0;
          let x_3014 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_3010 * vec4<f32>(x_3011.z, x_3011.z, x_3011.z, x_3011.z)) + x_3014);
          let x_3016 : vec4<f32> = u_xlat11;
          let x_3017 : i32 = u_xlati52;
          let x_3020 : i32 = u_xlati52;
          let x_3024 : vec4<f32> = x_2769.x_AdditionalLightsWorldToLights[((x_3017 + 3i) / 4i)][((x_3020 + 3i) % 4i)];
          u_xlat11 = (x_3016 + x_3024);
          let x_3026 : vec4<f32> = u_xlat11;
          let x_3028 : vec4<f32> = u_xlat11;
          let x_3030 : vec3<f32> = (vec3<f32>(x_3026.x, x_3026.y, x_3026.z) / vec3<f32>(x_3028.w, x_3028.w, x_3028.w));
          let x_3031 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3030.x, x_3030.y, x_3030.z, x_3031.w);
          let x_3033 : vec4<f32> = u_xlat11;
          let x_3035 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_3033.x, x_3033.y, x_3033.z), vec3<f32>(x_3035.x, x_3035.y, x_3035.z));
          let x_3040 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_3040);
          let x_3043 : vec4<f32> = u_xlat10;
          let x_3045 : vec4<f32> = u_xlat11;
          let x_3047 : vec3<f32> = (vec3<f32>(x_3043.x, x_3043.x, x_3043.x) * vec3<f32>(x_3045.x, x_3045.y, x_3045.z));
          let x_3048 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3047.x, x_3047.y, x_3047.z, x_3048.w);
          let x_3050 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_3050.x, x_3050.y, x_3050.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3056 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_3056, 0.000001f);
          let x_3061 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_3061);
          let x_3064 : vec4<f32> = u_xlat10;
          let x_3066 : vec4<f32> = u_xlat11;
          let x_3068 : vec3<f32> = (vec3<f32>(x_3064.x, x_3064.x, x_3064.x) * vec3<f32>(x_3066.z, x_3066.x, x_3066.y));
          let x_3069 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3068.x, x_3068.y, x_3068.z, x_3069.w);
          let x_3072 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_3072);
          let x_3076 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_3076, 0.0f, 1.0f);
          let x_3080 : vec4<f32> = u_xlat12;
          let x_3083 : vec4<bool> = (vec4<f32>(x_3080.y, x_3080.z, x_3080.y, x_3080.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3083.x, x_3083.y);
          let x_3087 : bool = u_xlatb53.x;
          if (x_3087) {
            let x_3092 : f32 = u_xlat12.x;
            x_3088 = x_3092;
          } else {
            let x_3095 : f32 = u_xlat12.x;
            x_3088 = -(x_3095);
          }
          let x_3097 : f32 = x_3088;
          u_xlat53.x = x_3097;
          let x_3100 : bool = u_xlatb53.y;
          if (x_3100) {
            let x_3105 : f32 = u_xlat12.x;
            x_3101 = x_3105;
          } else {
            let x_3108 : f32 = u_xlat12.x;
            x_3101 = -(x_3108);
          }
          let x_3110 : f32 = x_3101;
          u_xlat53.y = x_3110;
          let x_3112 : vec4<f32> = u_xlat11;
          let x_3114 : vec4<f32> = u_xlat10;
          let x_3117 : vec2<f32> = u_xlat53;
          let x_3118 : vec2<f32> = ((vec2<f32>(x_3112.x, x_3112.y) * vec2<f32>(x_3114.x, x_3114.x)) + x_3117);
          let x_3119 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3118.x, x_3119.y, x_3118.y, x_3119.w);
          let x_3121 : vec4<f32> = u_xlat10;
          let x_3124 : vec2<f32> = ((vec2<f32>(x_3121.x, x_3121.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3125 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3124.x, x_3125.y, x_3124.y, x_3125.w);
          let x_3127 : vec4<f32> = u_xlat10;
          let x_3131 : vec2<f32> = clamp(vec2<f32>(x_3127.x, x_3127.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3132 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3131.x, x_3132.y, x_3131.y, x_3132.w);
          let x_3134 : u32 = u_xlatu69;
          let x_3137 : vec4<f32> = x_2769.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3134)];
          let x_3139 : vec4<f32> = u_xlat10;
          let x_3142 : u32 = u_xlatu69;
          let x_3145 : vec4<f32> = x_2769.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3142)];
          let x_3147 : vec2<f32> = ((vec2<f32>(x_3137.x, x_3137.y) * vec2<f32>(x_3139.x, x_3139.z)) + vec2<f32>(x_3145.z, x_3145.w));
          let x_3148 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_3147.x, x_3148.y, x_3147.y);
        }
      }
      let x_3155 : vec3<f32> = u_xlat31;
      let x_3158 : f32 = x_44.x_GlobalMipBias.x;
      let x_3159 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3155.x, x_3155.z), x_3158);
      u_xlat10 = x_3159;
      let x_3162 : bool = u_xlatb2.w;
      if (x_3162) {
        let x_3167 : f32 = u_xlat10.w;
        x_3163 = x_3167;
      } else {
        let x_3170 : f32 = u_xlat10.x;
        x_3163 = x_3170;
      }
      let x_3171 : f32 = x_3163;
      u_xlat73 = x_3171;
      let x_3173 : bool = u_xlatb2.x;
      if (x_3173) {
        let x_3177 : vec4<f32> = u_xlat10;
        x_3174 = vec3<f32>(x_3177.x, x_3177.y, x_3177.z);
      } else {
        let x_3180 : f32 = u_xlat73;
        x_3174 = vec3<f32>(x_3180, x_3180, x_3180);
      }
      let x_3182 : vec3<f32> = x_3174;
      let x_3183 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3182.x, x_3182.y, x_3182.z, x_3183.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_3189 : vec4<f32> = u_xlat10;
    let x_3191 : u32 = u_xlatu69;
    let x_3194 : vec4<f32> = x_2657.x_AdditionalLightsColor[bitcast<i32>(x_3191)];
    let x_3196 : vec3<f32> = (vec3<f32>(x_3189.x, x_3189.y, x_3189.z) * vec3<f32>(x_3194.x, x_3194.y, x_3194.z));
    let x_3197 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3196.x, x_3196.y, x_3196.z, x_3197.w);
    let x_3199 : f32 = u_xlat68;
    let x_3201 : vec4<f32> = u_xlat10;
    let x_3203 : vec3<f32> = (vec3<f32>(x_3199, x_3199, x_3199) * vec3<f32>(x_3201.x, x_3201.y, x_3201.z));
    let x_3204 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3203.x, x_3203.y, x_3203.z, x_3204.w);
    let x_3206 : vec4<f32> = u_xlat1;
    let x_3208 : vec3<f32> = u_xlat30;
    u_xlat69 = dot(vec3<f32>(x_3206.x, x_3206.y, x_3206.z), x_3208);
    let x_3210 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3210, 0.0f, 1.0f);
    let x_3212 : f32 = u_xlat69;
    let x_3213 : f32 = u_xlat70;
    u_xlat69 = (x_3212 * x_3213);
    let x_3215 : f32 = u_xlat69;
    let x_3217 : vec4<f32> = u_xlat10;
    let x_3219 : vec3<f32> = (vec3<f32>(x_3215, x_3215, x_3215) * vec3<f32>(x_3217.x, x_3217.y, x_3217.z));
    let x_3220 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3219.x, x_3219.y, x_3219.z, x_3220.w);
    let x_3222 : vec3<f32> = u_xlat29;
    let x_3223 : vec4<f32> = u_xlat9;
    let x_3226 : vec4<f32> = u_xlat3;
    u_xlat29 = ((x_3222 * vec3<f32>(x_3223.x, x_3223.x, x_3223.x)) + vec3<f32>(x_3226.x, x_3226.y, x_3226.z));
    let x_3229 : vec3<f32> = u_xlat29;
    let x_3230 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(x_3229, x_3230);
    let x_3232 : f32 = u_xlat69;
    u_xlat69 = max(x_3232, 1.17549435e-37f);
    let x_3234 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_3234);
    let x_3236 : f32 = u_xlat69;
    let x_3238 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_3236, x_3236, x_3236) * x_3238);
    let x_3240 : vec4<f32> = u_xlat1;
    let x_3242 : vec3<f32> = u_xlat29;
    u_xlat69 = dot(vec3<f32>(x_3240.x, x_3240.y, x_3240.z), x_3242);
    let x_3244 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3244, 0.0f, 1.0f);
    let x_3246 : vec3<f32> = u_xlat30;
    let x_3247 : vec3<f32> = u_xlat29;
    u_xlat70 = dot(x_3246, x_3247);
    let x_3249 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3249, 0.0f, 1.0f);
    let x_3251 : f32 = u_xlat69;
    let x_3252 : f32 = u_xlat69;
    u_xlat69 = (x_3251 * x_3252);
    let x_3254 : f32 = u_xlat69;
    let x_3256 : f32 = u_xlat8.x;
    u_xlat69 = ((x_3254 * x_3256) + 1.000010014f);
    let x_3259 : f32 = u_xlat70;
    let x_3260 : f32 = u_xlat70;
    u_xlat70 = (x_3259 * x_3260);
    let x_3262 : f32 = u_xlat69;
    let x_3263 : f32 = u_xlat69;
    u_xlat69 = (x_3262 * x_3263);
    let x_3265 : f32 = u_xlat70;
    u_xlat70 = max(x_3265, 0.100000001f);
    let x_3267 : f32 = u_xlat69;
    let x_3268 : f32 = u_xlat70;
    u_xlat69 = (x_3267 * x_3268);
    let x_3270 : f32 = u_xlat66;
    let x_3271 : f32 = u_xlat69;
    u_xlat69 = (x_3270 * x_3271);
    let x_3273 : f32 = u_xlat23;
    let x_3274 : f32 = u_xlat69;
    u_xlat69 = (x_3273 / x_3274);
    let x_3276 : vec4<f32> = u_xlat0;
    let x_3278 : f32 = u_xlat69;
    let x_3281 : vec3<f32> = u_xlat7;
    u_xlat29 = ((vec3<f32>(x_3276.x, x_3276.y, x_3276.z) * vec3<f32>(x_3278, x_3278, x_3278)) + x_3281);
    let x_3283 : vec3<f32> = u_xlat29;
    let x_3284 : vec4<f32> = u_xlat10;
    let x_3287 : vec4<f32> = u_xlat6;
    let x_3289 : vec3<f32> = ((x_3283 * vec3<f32>(x_3284.x, x_3284.y, x_3284.z)) + vec3<f32>(x_3287.x, x_3287.y, x_3287.z));
    let x_3290 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3289.x, x_3289.y, x_3289.z, x_3290.w);

    continuing {
      let x_3292 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3292 + bitcast<u32>(1i));
    }
  }
  let x_3294 : vec4<f32> = u_xlat5;
  let x_3296 : f32 = u_xlat44;
  let x_3299 : vec4<f32> = u_xlat4;
  let x_3301 : vec3<f32> = ((vec3<f32>(x_3294.x, x_3294.y, x_3294.z) * vec3<f32>(x_3296, x_3296, x_3296)) + vec3<f32>(x_3299.x, x_3299.y, x_3299.z));
  let x_3302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3301.x, x_3301.y, x_3301.z, x_3302.w);
  let x_3304 : vec4<f32> = u_xlat6;
  let x_3306 : vec4<f32> = u_xlat0;
  let x_3308 : vec3<f32> = (vec3<f32>(x_3304.x, x_3304.y, x_3304.z) + vec3<f32>(x_3306.x, x_3306.y, x_3306.z));
  let x_3309 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3308.x, x_3308.y, x_3308.z, x_3309.w);
  let x_3311 : f32 = u_xlat63;
  let x_3312 : f32 = u_xlat63;
  u_xlat63 = (x_3311 * -(x_3312));
  let x_3315 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3315);
  let x_3317 : vec4<f32> = u_xlat0;
  let x_3321 : vec4<f32> = x_44.unity_FogColor;
  let x_3324 : vec3<f32> = (vec3<f32>(x_3317.x, x_3317.y, x_3317.z) + -(vec3<f32>(x_3321.x, x_3321.y, x_3321.z)));
  let x_3325 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3324.x, x_3324.y, x_3324.z, x_3325.w);
  let x_3329 : f32 = u_xlat63;
  let x_3331 : vec4<f32> = u_xlat0;
  let x_3335 : vec4<f32> = x_44.unity_FogColor;
  let x_3337 : vec3<f32> = ((vec3<f32>(x_3329, x_3329, x_3329) * vec3<f32>(x_3331.x, x_3331.y, x_3331.z)) + vec3<f32>(x_3335.x, x_3335.y, x_3335.z));
  let x_3338 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3337.x, x_3337.y, x_3337.z, x_3338.w);
  let x_3343 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3345 : f32 = x_359.unity_RenderingLayer.x;
  u_xlatu0 = (x_3343 & bitcast<u32>(x_3345));
  let x_3348 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3348);
  let x_3353 : f32 = u_xlat0.x;
  let x_3355 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3353 * x_3355);
  let x_3360 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3360, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3364 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3364.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

