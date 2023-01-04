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

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
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
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_54 : UnityPerDraw;

@group(0) @binding(6) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_132 : PGlobals;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_232 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_698 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1148 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1251 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlatb14 : vec2<bool>;
  var u_xlat14 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat20 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb2 : bool;
  var u_xlatb16 : bool;
  var u_xlatb0 : bool;
  var x_351 : f32;
  var u_xlat16 : f32;
  var u_xlat30 : f32;
  var x_397 : f32;
  var x_470 : f32;
  var x_482 : f32;
  var x_493 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat31 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var x_782 : f32;
  var x_793 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu43 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1546 : f32;
  var x_1559 : f32;
  var x_1611 : f32;
  var x_1622 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP1;
  let x_31 : vec3<f32> = vs_INTERP1;
  u_xlat0 = dot(x_30, x_31);
  let x_33 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_33);
  let x_35 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_35);
  let x_44 : f32 = vs_INTERP2.w;
  u_xlatb14.x = (0.0f < x_44);
  let x_59 : f32 = x_54.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_59 >= 0.0f);
  let x_66 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_66);
  let x_71 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_71);
  let x_75 : f32 = u_xlat14.y;
  let x_77 : f32 = u_xlat14.x;
  u_xlat14.x = (x_75 * x_77);
  let x_81 : vec3<f32> = vs_INTERP1;
  let x_83 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_81.z, x_81.x, x_81.y) * vec3<f32>(x_83.y, x_83.z, x_83.x));
  let x_86 : vec3<f32> = vs_INTERP1;
  let x_88 : vec4<f32> = vs_INTERP2;
  let x_91 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_86.y, x_86.z, x_86.x) * vec3<f32>(x_88.z, x_88.x, x_88.y)) + -(x_91));
  let x_94 : vec3<f32> = u_xlat14;
  let x_96 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_94.x, x_94.x, x_94.x) * x_96);
  let x_98 : f32 = u_xlat0;
  let x_100 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : f32 = u_xlat0;
  let x_105 : vec4<f32> = vs_INTERP2;
  let x_107 : vec3<f32> = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat14;
  let x_112 : f32 = u_xlat0;
  u_xlat3 = (x_111 * vec3<f32>(x_112, x_112, x_112));
  let x_128 : vec4<f32> = vs_INTERP3;
  let x_135 : f32 = x_132.x_GlobalMipBias.x;
  let x_136 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_128.x, x_128.y), x_135);
  u_xlat4 = x_136;
  let x_138 : vec4<f32> = u_xlat4;
  let x_145 : vec4<f32> = x_142.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_154 : vec4<f32> = vs_INTERP3;
  let x_157 : f32 = x_132.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat6 = vec4<f32>(x_158.w, x_158.x, x_158.y, x_158.z);
  let x_161 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_161.y, x_161.z, x_161.w, x_161.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_168 : vec4<f32> = u_xlat7;
  let x_169 : vec4<f32> = u_xlat7;
  u_xlat0 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_171);
  let x_174 : f32 = u_xlat0;
  let x_176 : vec4<f32> = u_xlat7;
  u_xlat20 = (vec3<f32>(x_174, x_174, x_174) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_181 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_181 * 200.0f);
  let x_184 : f32 = u_xlat0;
  u_xlat0 = min(x_184, 1.0f);
  let x_186 : f32 = u_xlat0;
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = (vec3<f32>(x_186, x_186, x_186) * vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec3<f32> = u_xlat3;
  let x_194 : vec3<f32> = u_xlat20;
  u_xlat3 = (x_193 * vec3<f32>(x_194.y, x_194.y, x_194.y));
  let x_197 : vec3<f32> = u_xlat20;
  let x_199 : vec4<f32> = u_xlat2;
  let x_202 : vec3<f32> = u_xlat3;
  let x_203 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.x, x_197.x) * vec3<f32>(x_199.x, x_199.y, x_199.z)) + x_202);
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec3<f32> = u_xlat20;
  let x_208 : vec3<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_206.z, x_206.z, x_206.z) * x_208) + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec3<f32> = u_xlat1;
  let x_214 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_213, x_214);
  let x_216 : f32 = u_xlat0;
  u_xlat0 = max(x_216, 1.17549435e-37f);
  let x_219 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_219);
  let x_221 : f32 = u_xlat0;
  let x_223 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_221, x_221, x_221) * x_223);
  let x_226 : vec3<f32> = vs_INTERP0;
  let x_235 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][1i];
  let x_237 : vec3<f32> = (vec3<f32>(x_226.y, x_226.y, x_226.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_241 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][0i];
  let x_243 : vec3<f32> = vs_INTERP0;
  let x_246 : vec4<f32> = u_xlat2;
  let x_248 : vec3<f32> = ((vec3<f32>(x_241.x, x_241.y, x_241.z) * vec3<f32>(x_243.x, x_243.x, x_243.x)) + vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_253 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][2i];
  let x_255 : vec3<f32> = vs_INTERP0;
  let x_258 : vec4<f32> = u_xlat2;
  let x_260 : vec3<f32> = ((vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_255.z, x_255.z, x_255.z)) + vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat2;
  let x_266 : vec4<f32> = x_232.x_MainLightWorldToShadow[0i][3i];
  let x_268 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) + vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec4<f32> = u_xlat2;
  let x_273 : vec2<f32> = vec2<f32>(x_272.x, x_272.y);
  let x_275 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_273.x, x_273.y, x_275);
  let x_287 : vec3<f32> = txVec0;
  let x_289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_287.xy, x_287.z);
  u_xlat0 = x_289;
  let x_293 : f32 = x_232.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_293) + 1.0f);
  let x_296 : f32 = u_xlat0;
  let x_298 : f32 = x_232.x_MainLightShadowParams.x;
  let x_300 : f32 = u_xlat43;
  u_xlat0 = ((x_296 * x_298) + x_300);
  let x_304 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_304);
  let x_308 : f32 = u_xlat2.z;
  u_xlatb16 = (x_308 >= 1.0f);
  let x_310 : bool = u_xlatb16;
  let x_311 : bool = u_xlatb2;
  u_xlatb2 = (x_310 | x_311);
  let x_313 : bool = u_xlatb2;
  let x_314 : f32 = u_xlat0;
  u_xlat0 = select(x_314, 1.0f, x_313);
  let x_316 : vec3<f32> = u_xlat1;
  let x_318 : vec4<f32> = x_132.x_MainLightPosition;
  u_xlat1.x = dot(x_316, -(vec3<f32>(x_318.x, x_318.y, x_318.z)));
  let x_324 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_324, 0.0f, 1.0f);
  let x_327 : f32 = u_xlat0;
  let x_331 : vec4<f32> = x_132.x_MainLightColor;
  let x_333 : vec3<f32> = (vec3<f32>(x_327, x_327, x_327) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec3<f32> = u_xlat1;
  let x_338 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_336.x, x_336.x, x_336.x) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec3<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_341 * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_347 : f32 = u_xlat4.w;
  u_xlatb0 = (x_347 >= 0.400000006f);
  let x_350 : bool = u_xlatb0;
  if (x_350) {
    let x_355 : f32 = u_xlat4.w;
    x_351 = x_355;
  } else {
    x_351 = 0.0f;
  }
  let x_357 : f32 = x_351;
  u_xlat0 = x_357;
  let x_359 : f32 = u_xlat4.w;
  u_xlat2.x = (x_359 + -0.400000006f);
  let x_365 : f32 = u_xlat4.w;
  u_xlat16 = dpdxCoarse(x_365);
  let x_369 : f32 = u_xlat4.w;
  u_xlat30 = dpdyCoarse(x_369);
  let x_371 : f32 = u_xlat30;
  let x_373 : f32 = u_xlat16;
  u_xlat16 = (abs(x_371) + abs(x_373));
  let x_376 : f32 = u_xlat16;
  u_xlat16 = max(x_376, 0.0001f);
  let x_380 : f32 = u_xlat2.x;
  let x_381 : f32 = u_xlat16;
  u_xlat2.x = (x_380 / x_381);
  let x_385 : f32 = u_xlat2.x;
  u_xlat2.x = (x_385 + 0.5f);
  let x_390 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_390, 0.0f, 1.0f);
  let x_394 : f32 = x_132.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_394 == 0.0f));
  let x_396 : bool = u_xlatb16;
  if (x_396) {
    let x_401 : f32 = u_xlat2.x;
    x_397 = x_401;
  } else {
    let x_403 : f32 = u_xlat0;
    x_397 = x_403;
  }
  let x_404 : f32 = x_397;
  u_xlat0 = x_404;
  let x_405 : f32 = u_xlat0;
  u_xlat2.x = (x_405 + -0.0001f);
  let x_410 : f32 = u_xlat2.x;
  u_xlatb2 = (x_410 < 0.0f);
  let x_412 : bool = u_xlatb2;
  if (((select(0i, 1i, x_412) * -1i) != 0i)) {
    discard;
  }
  let x_420 : vec3<f32> = u_xlat14;
  let x_421 : vec3<f32> = u_xlat20;
  u_xlat14 = (x_420 * vec3<f32>(x_421.y, x_421.y, x_421.y));
  let x_424 : vec3<f32> = u_xlat20;
  let x_426 : vec4<f32> = vs_INTERP2;
  let x_429 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_424.x, x_424.x, x_424.x) * vec3<f32>(x_426.x, x_426.y, x_426.z)) + x_429);
  let x_431 : vec3<f32> = u_xlat20;
  let x_433 : vec3<f32> = vs_INTERP1;
  let x_435 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_431.z, x_431.z, x_431.z) * x_433) + x_435);
  let x_437 : vec3<f32> = u_xlat14;
  let x_438 : vec3<f32> = u_xlat14;
  u_xlat2.x = dot(x_437, x_438);
  let x_442 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_442);
  let x_445 : vec3<f32> = u_xlat14;
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat14 = (x_445 * vec3<f32>(x_446.x, x_446.x, x_446.x));
  let x_451 : f32 = x_132.unity_OrthoParams.w;
  u_xlatb2 = (x_451 == 0.0f);
  let x_453 : vec3<f32> = vs_INTERP0;
  let x_458 : vec3<f32> = x_132.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_453) + x_458);
  let x_460 : vec3<f32> = u_xlat3;
  let x_461 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(x_460, x_461);
  let x_463 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_463);
  let x_465 : f32 = u_xlat30;
  let x_467 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_465, x_465, x_465) * x_467);
  let x_469 : bool = u_xlatb2;
  if (x_469) {
    let x_474 : f32 = u_xlat3.x;
    x_470 = x_474;
  } else {
    let x_478 : f32 = x_132.unity_MatrixV[0i].z;
    x_470 = x_478;
  }
  let x_479 : f32 = x_470;
  u_xlat4.x = x_479;
  let x_481 : bool = u_xlatb2;
  if (x_481) {
    let x_486 : f32 = u_xlat3.y;
    x_482 = x_486;
  } else {
    let x_489 : f32 = x_132.unity_MatrixV[1i].z;
    x_482 = x_489;
  }
  let x_490 : f32 = x_482;
  u_xlat4.y = x_490;
  let x_492 : bool = u_xlatb2;
  if (x_492) {
    let x_497 : f32 = u_xlat3.z;
    x_493 = x_497;
  } else {
    let x_500 : f32 = x_132.unity_MatrixV[2i].z;
    x_493 = x_500;
  }
  let x_501 : f32 = x_493;
  u_xlat4.z = x_501;
  let x_510 : vec2<f32> = vs_INTERP5;
  let x_512 : f32 = x_132.x_GlobalMipBias.x;
  let x_513 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_510, x_512);
  let x_514 : vec3<f32> = vec3<f32>(x_513.x, x_513.y, x_513.z);
  let x_515 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_514.x, x_515.y, x_514.y, x_514.z);
  let x_519 : vec4<f32> = x_132.x_ScaledScreenParams;
  let x_520 : vec2<f32> = vec2<f32>(x_519.x, x_519.y);
  let x_524 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_520.x, x_520.y));
  let x_525 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_524.x, x_524.y, x_525.z);
  let x_527 : vec3<f32> = u_xlat3;
  let x_529 : vec4<f32> = hlslcc_FragCoord;
  let x_531 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_529.x, x_529.y));
  let x_532 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_531.x, x_531.y, x_532.z);
  let x_536 : f32 = u_xlat3.y;
  let x_539 : f32 = x_132.x_ScaleBiasRt.x;
  let x_542 : f32 = x_132.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_536 * x_539) + x_542);
  let x_546 : f32 = u_xlat17.x;
  u_xlat3.z = (-(x_546) + 1.0f);
  let x_551 : f32 = u_xlat6.x;
  u_xlat6.x = x_551;
  let x_554 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_554, 0.0f, 1.0f);
  let x_557 : f32 = u_xlat0;
  u_xlat0 = min(x_557, 1.0f);
  let x_559 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_559 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_564 : f32 = u_xlat6.x;
  u_xlat17.x = (-(x_564) + 1.0f);
  let x_570 : f32 = u_xlat17.x;
  let x_572 : f32 = u_xlat17.x;
  u_xlat45 = (x_570 * x_572);
  let x_574 : f32 = u_xlat45;
  u_xlat45 = max(x_574, 0.0078125f);
  let x_578 : f32 = u_xlat45;
  let x_579 : f32 = u_xlat45;
  u_xlat46 = (x_578 * x_579);
  let x_583 : f32 = u_xlat6.x;
  u_xlat47 = (x_583 + 0.040000021f);
  let x_586 : f32 = u_xlat47;
  u_xlat47 = min(x_586, 1.0f);
  let x_588 : f32 = u_xlat45;
  u_xlat6.x = ((x_588 * 4.0f) + 2.0f);
  let x_598 : vec3<f32> = u_xlat3;
  let x_601 : f32 = x_132.x_GlobalMipBias.x;
  let x_602 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_598.x, x_598.z), x_601);
  u_xlat3.x = x_602.x;
  let x_607 : f32 = u_xlat3.x;
  u_xlat31 = (x_607 + -1.0f);
  let x_611 : f32 = x_132.x_AmbientOcclusionParam.w;
  let x_612 : f32 = u_xlat31;
  u_xlat31 = ((x_611 * x_612) + 1.0f);
  let x_616 : f32 = u_xlat3.x;
  let x_618 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_616, x_618);
  let x_623 : vec4<f32> = vs_INTERP9;
  let x_624 : vec2<f32> = vec2<f32>(x_623.x, x_623.y);
  let x_626 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_624.x, x_624.y, x_626);
  let x_633 : vec3<f32> = txVec1;
  let x_635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_633.xy, x_633.z);
  u_xlat20.x = x_635;
  let x_638 : f32 = u_xlat20.x;
  let x_640 : f32 = x_232.x_MainLightShadowParams.x;
  let x_642 : f32 = u_xlat43;
  u_xlat43 = ((x_638 * x_640) + x_642);
  let x_646 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_646);
  let x_651 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_651 >= 1.0f);
  let x_653 : bool = u_xlatb34;
  let x_655 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_653 | x_655);
  let x_659 : bool = u_xlatb20.x;
  let x_660 : f32 = u_xlat43;
  u_xlat43 = select(x_660, 1.0f, x_659);
  let x_662 : vec3<f32> = vs_INTERP0;
  let x_664 : vec3<f32> = x_132.x_WorldSpaceCameraPos;
  u_xlat20 = (x_662 + -(x_664));
  let x_667 : vec3<f32> = u_xlat20;
  let x_668 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_667, x_668);
  let x_672 : f32 = u_xlat20.x;
  let x_674 : f32 = x_232.x_MainLightShadowParams.z;
  let x_677 : f32 = x_232.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_672 * x_674) + x_677);
  let x_681 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_681, 0.0f, 1.0f);
  let x_685 : f32 = u_xlat43;
  u_xlat34 = (-(x_685) + 1.0f);
  let x_689 : f32 = u_xlat20.x;
  let x_690 : f32 = u_xlat34;
  let x_692 : f32 = u_xlat43;
  u_xlat43 = ((x_689 * x_690) + x_692);
  let x_700 : f32 = x_698.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_700 == -1.0f));
  let x_704 : bool = u_xlatb20.x;
  if (x_704) {
    let x_707 : vec3<f32> = vs_INTERP0;
    let x_710 : vec4<f32> = x_698.x_MainLightWorldToLight[1i];
    let x_712 : vec2<f32> = (vec2<f32>(x_707.y, x_707.y) * vec2<f32>(x_710.x, x_710.y));
    let x_713 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_712.x, x_712.y, x_713.z);
    let x_716 : vec4<f32> = x_698.x_MainLightWorldToLight[0i];
    let x_718 : vec3<f32> = vs_INTERP0;
    let x_721 : vec3<f32> = u_xlat20;
    let x_723 : vec2<f32> = ((vec2<f32>(x_716.x, x_716.y) * vec2<f32>(x_718.x, x_718.x)) + vec2<f32>(x_721.x, x_721.y));
    let x_724 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_723.x, x_723.y, x_724.z);
    let x_727 : vec4<f32> = x_698.x_MainLightWorldToLight[2i];
    let x_729 : vec3<f32> = vs_INTERP0;
    let x_732 : vec3<f32> = u_xlat20;
    let x_734 : vec2<f32> = ((vec2<f32>(x_727.x, x_727.y) * vec2<f32>(x_729.z, x_729.z)) + vec2<f32>(x_732.x, x_732.y));
    let x_735 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_734.x, x_734.y, x_735.z);
    let x_737 : vec3<f32> = u_xlat20;
    let x_740 : vec4<f32> = x_698.x_MainLightWorldToLight[3i];
    let x_742 : vec2<f32> = (vec2<f32>(x_737.x, x_737.y) + vec2<f32>(x_740.x, x_740.y));
    let x_743 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_742.x, x_742.y, x_743.z);
    let x_745 : vec3<f32> = u_xlat20;
    let x_749 : vec2<f32> = ((vec2<f32>(x_745.x, x_745.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_750 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_749.x, x_749.y, x_750.z);
    let x_757 : vec3<f32> = u_xlat20;
    let x_760 : f32 = x_132.x_GlobalMipBias.x;
    let x_761 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_757.x, x_757.y), x_760);
    u_xlat7 = x_761;
    let x_763 : f32 = x_698.x_MainLightCookieTextureFormat;
    let x_765 : f32 = x_698.x_MainLightCookieTextureFormat;
    let x_767 : f32 = x_698.x_MainLightCookieTextureFormat;
    let x_769 : f32 = x_698.x_MainLightCookieTextureFormat;
    let x_770 : vec4<f32> = vec4<f32>(x_763, x_765, x_767, x_769);
    let x_778 : vec4<bool> = (vec4<f32>(x_770.x, x_770.y, x_770.z, x_770.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_778.x, x_778.y);
    let x_781 : bool = u_xlatb20.y;
    if (x_781) {
      let x_786 : f32 = u_xlat7.w;
      x_782 = x_786;
    } else {
      let x_789 : f32 = u_xlat7.x;
      x_782 = x_789;
    }
    let x_790 : f32 = x_782;
    u_xlat34 = x_790;
    let x_792 : bool = u_xlatb20.x;
    if (x_792) {
      let x_796 : vec4<f32> = u_xlat7;
      x_793 = vec3<f32>(x_796.x, x_796.y, x_796.z);
    } else {
      let x_799 : f32 = u_xlat34;
      x_793 = vec3<f32>(x_799, x_799, x_799);
    }
    let x_801 : vec3<f32> = x_793;
    u_xlat20 = x_801;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_806 : vec3<f32> = u_xlat20;
  let x_808 : vec4<f32> = x_132.x_MainLightColor;
  u_xlat20 = (x_806 * vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : f32 = u_xlat31;
  let x_813 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_811, x_811, x_811) * x_813);
  let x_815 : vec4<f32> = u_xlat4;
  let x_818 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(vec3<f32>(x_815.x, x_815.y, x_815.z)), x_818);
  let x_822 : f32 = u_xlat7.x;
  let x_824 : f32 = u_xlat7.x;
  u_xlat7.x = (x_822 + x_824);
  let x_827 : vec3<f32> = u_xlat14;
  let x_828 : vec4<f32> = u_xlat7;
  let x_832 : vec4<f32> = u_xlat4;
  let x_835 : vec3<f32> = ((x_827 * -(vec3<f32>(x_828.x, x_828.x, x_828.x))) + -(vec3<f32>(x_832.x, x_832.y, x_832.z)));
  let x_836 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_839 : vec3<f32> = u_xlat14;
  let x_840 : vec4<f32> = u_xlat4;
  u_xlat49 = dot(x_839, vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : f32 = u_xlat49;
  u_xlat49 = clamp(x_843, 0.0f, 1.0f);
  let x_845 : f32 = u_xlat49;
  u_xlat49 = (-(x_845) + 1.0f);
  let x_848 : f32 = u_xlat49;
  let x_849 : f32 = u_xlat49;
  u_xlat49 = (x_848 * x_849);
  let x_851 : f32 = u_xlat49;
  let x_852 : f32 = u_xlat49;
  u_xlat49 = (x_851 * x_852);
  let x_856 : f32 = u_xlat17.x;
  u_xlat8.x = ((-(x_856) * 0.699999988f) + 1.700000048f);
  let x_864 : f32 = u_xlat17.x;
  let x_866 : f32 = u_xlat8.x;
  u_xlat17.x = (x_864 * x_866);
  let x_870 : f32 = u_xlat17.x;
  u_xlat17.x = (x_870 * 6.0f);
  let x_882 : vec4<f32> = u_xlat7;
  let x_885 : f32 = u_xlat17.x;
  let x_886 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_882.x, x_882.y, x_882.z), x_885);
  u_xlat8 = x_886;
  let x_888 : f32 = u_xlat8.w;
  u_xlat17.x = (x_888 + -1.0f);
  let x_892 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_894 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_892 * x_894) + 1.0f);
  let x_899 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_899, 0.0f);
  let x_903 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_903);
  let x_907 : f32 = u_xlat17.x;
  let x_909 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_907 * x_909);
  let x_913 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_913);
  let x_917 : f32 = u_xlat17.x;
  let x_919 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_917 * x_919);
  let x_922 : vec4<f32> = u_xlat8;
  let x_924 : vec3<f32> = u_xlat17;
  let x_926 : vec3<f32> = (vec3<f32>(x_922.x, x_922.y, x_922.z) * vec3<f32>(x_924.x, x_924.x, x_924.x));
  let x_927 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : f32 = u_xlat45;
  let x_931 : f32 = u_xlat45;
  let x_935 : vec2<f32> = ((vec2<f32>(x_929, x_929) * vec2<f32>(x_931, x_931)) + vec2<f32>(-1.0f, 1.0f));
  let x_936 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_935.x, x_936.y, x_935.y);
  let x_939 : f32 = u_xlat17.z;
  u_xlat45 = (1.0f / x_939);
  let x_941 : f32 = u_xlat47;
  u_xlat47 = (x_941 + -0.039999999f);
  let x_944 : f32 = u_xlat49;
  let x_945 : f32 = u_xlat47;
  u_xlat47 = ((x_944 * x_945) + 0.039999999f);
  let x_949 : f32 = u_xlat45;
  let x_950 : f32 = u_xlat47;
  u_xlat45 = (x_949 * x_950);
  let x_952 : f32 = u_xlat45;
  let x_954 : vec4<f32> = u_xlat7;
  let x_956 : vec3<f32> = (vec3<f32>(x_952, x_952, x_952) * vec3<f32>(x_954.x, x_954.y, x_954.z));
  let x_957 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec4<f32> = u_xlat2;
  let x_961 : vec3<f32> = u_xlat5;
  let x_963 : vec4<f32> = u_xlat7;
  let x_965 : vec3<f32> = ((vec3<f32>(x_959.x, x_959.z, x_959.w) * x_961) + vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_965.x, x_966.y, x_965.y, x_965.z);
  let x_968 : f32 = u_xlat43;
  let x_970 : f32 = x_54.unity_LightData.z;
  u_xlat43 = (x_968 * x_970);
  let x_972 : vec3<f32> = u_xlat14;
  let x_974 : vec4<f32> = x_132.x_MainLightPosition;
  u_xlat45 = dot(x_972, vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : f32 = u_xlat45;
  u_xlat45 = clamp(x_977, 0.0f, 1.0f);
  let x_979 : f32 = u_xlat43;
  let x_980 : f32 = u_xlat45;
  u_xlat43 = (x_979 * x_980);
  let x_982 : f32 = u_xlat43;
  let x_984 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_982, x_982, x_982) * x_984);
  let x_986 : vec4<f32> = u_xlat4;
  let x_989 : vec4<f32> = x_132.x_MainLightPosition;
  let x_991 : vec3<f32> = (vec3<f32>(x_986.x, x_986.y, x_986.z) + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : vec4<f32> = u_xlat7;
  let x_996 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_994.x, x_994.y, x_994.z), vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : f32 = u_xlat43;
  u_xlat43 = max(x_999, 1.17549435e-37f);
  let x_1001 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1001);
  let x_1003 : f32 = u_xlat43;
  let x_1005 : vec4<f32> = u_xlat7;
  let x_1007 : vec3<f32> = (vec3<f32>(x_1003, x_1003, x_1003) * vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  let x_1010 : vec3<f32> = u_xlat14;
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(x_1010, vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1014, 0.0f, 1.0f);
  let x_1017 : vec4<f32> = x_132.x_MainLightPosition;
  let x_1019 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1022 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1022, 0.0f, 1.0f);
  let x_1024 : f32 = u_xlat43;
  let x_1025 : f32 = u_xlat43;
  u_xlat43 = (x_1024 * x_1025);
  let x_1027 : f32 = u_xlat43;
  let x_1029 : f32 = u_xlat17.x;
  u_xlat43 = ((x_1027 * x_1029) + 1.000010014f);
  let x_1033 : f32 = u_xlat45;
  let x_1034 : f32 = u_xlat45;
  u_xlat45 = (x_1033 * x_1034);
  let x_1036 : f32 = u_xlat43;
  let x_1037 : f32 = u_xlat43;
  u_xlat43 = (x_1036 * x_1037);
  let x_1039 : f32 = u_xlat45;
  u_xlat45 = max(x_1039, 0.100000001f);
  let x_1042 : f32 = u_xlat43;
  let x_1043 : f32 = u_xlat45;
  u_xlat43 = (x_1042 * x_1043);
  let x_1046 : f32 = u_xlat6.x;
  let x_1047 : f32 = u_xlat43;
  u_xlat43 = (x_1046 * x_1047);
  let x_1049 : f32 = u_xlat46;
  let x_1050 : f32 = u_xlat43;
  u_xlat43 = (x_1049 / x_1050);
  let x_1052 : f32 = u_xlat43;
  let x_1056 : vec3<f32> = u_xlat5;
  let x_1057 : vec3<f32> = ((vec3<f32>(x_1052, x_1052, x_1052) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1056);
  let x_1058 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : vec3<f32> = u_xlat20;
  let x_1061 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1060 * vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1066 : f32 = x_132.x_AdditionalLightsCount.x;
  let x_1068 : f32 = x_54.unity_LightData.y;
  u_xlat43 = min(x_1066, x_1068);
  let x_1072 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1072));
  let x_1077 : f32 = x_698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1079 : f32 = x_698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1081 : f32 = x_698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1083 : f32 = x_698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1084 : vec4<f32> = vec4<f32>(x_1077, x_1079, x_1081, x_1083);
  let x_1090 : vec4<bool> = (vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1084.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1090.x, x_1090.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1101 : u32 = u_xlatu_loop_1;
    let x_1102 : u32 = u_xlatu43;
    if ((x_1101 < x_1102)) {
    } else {
      break;
    }
    let x_1105 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1105 >> 2u);
    let x_1109 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1109 & 3u));
    let x_1112 : u32 = u_xlatu47;
    let x_1115 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_1112)];
    let x_1125 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1130 : vec4<u32> = indexable[x_1125];
    u_xlat47 = dot(x_1115, bitcast<vec4<f32>>(x_1130));
    let x_1133 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1133));
    let x_1137 : vec3<f32> = vs_INTERP0;
    let x_1149 : u32 = u_xlatu47;
    let x_1152 : vec4<f32> = x_1148.x_AdditionalLightsPosition[bitcast<i32>(x_1149)];
    let x_1155 : u32 = u_xlatu47;
    let x_1158 : vec4<f32> = x_1148.x_AdditionalLightsPosition[bitcast<i32>(x_1155)];
    u_xlat9 = ((-(x_1137) * vec3<f32>(x_1152.w, x_1152.w, x_1152.w)) + vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
    let x_1162 : vec3<f32> = u_xlat9;
    let x_1163 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1162, x_1163);
    let x_1165 : f32 = u_xlat35;
    u_xlat35 = max(x_1165, 6.10351562e-05f);
    let x_1168 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1168);
    let x_1171 : f32 = u_xlat49;
    let x_1173 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1171, x_1171, x_1171) * x_1173);
    let x_1176 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1176);
    let x_1178 : f32 = u_xlat35;
    let x_1179 : u32 = u_xlatu47;
    let x_1182 : f32 = x_1148.x_AdditionalLightsAttenuation[bitcast<i32>(x_1179)].x;
    u_xlat35 = (x_1178 * x_1182);
    let x_1184 : f32 = u_xlat35;
    let x_1186 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1184) * x_1186) + 1.0f);
    let x_1189 : f32 = u_xlat35;
    u_xlat35 = max(x_1189, 0.0f);
    let x_1191 : f32 = u_xlat35;
    let x_1192 : f32 = u_xlat35;
    u_xlat35 = (x_1191 * x_1192);
    let x_1194 : f32 = u_xlat35;
    let x_1195 : f32 = u_xlat50;
    u_xlat35 = (x_1194 * x_1195);
    let x_1197 : u32 = u_xlatu47;
    let x_1200 : vec4<f32> = x_1148.x_AdditionalLightsSpotDir[bitcast<i32>(x_1197)];
    let x_1202 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1200.x, x_1200.y, x_1200.z), x_1202);
    let x_1204 : f32 = u_xlat50;
    let x_1205 : u32 = u_xlatu47;
    let x_1208 : f32 = x_1148.x_AdditionalLightsAttenuation[bitcast<i32>(x_1205)].z;
    let x_1210 : u32 = u_xlatu47;
    let x_1213 : f32 = x_1148.x_AdditionalLightsAttenuation[bitcast<i32>(x_1210)].w;
    u_xlat50 = ((x_1204 * x_1208) + x_1213);
    let x_1215 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1215, 0.0f, 1.0f);
    let x_1217 : f32 = u_xlat50;
    let x_1218 : f32 = u_xlat50;
    u_xlat50 = (x_1217 * x_1218);
    let x_1220 : f32 = u_xlat35;
    let x_1221 : f32 = u_xlat50;
    u_xlat35 = (x_1220 * x_1221);
    let x_1224 : u32 = u_xlatu47;
    u_xlatu50 = (x_1224 >> 5u);
    let x_1227 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1227) & 31i)));
    let x_1233 : i32 = u_xlati51;
    let x_1235 : u32 = u_xlatu50;
    let x_1238 : f32 = x_698.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1235)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1233) & bitcast<u32>(x_1238)));
    let x_1242 : i32 = u_xlati50;
    if ((x_1242 != 0i)) {
      let x_1252 : u32 = u_xlatu47;
      let x_1255 : f32 = x_1251.x_AdditionalLightsLightTypes[bitcast<i32>(x_1252)].el;
      u_xlati50 = i32(x_1255);
      let x_1257 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1257 != 0i));
      let x_1261 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1261) << bitcast<u32>(2i));
      let x_1264 : i32 = u_xlati51;
      if ((x_1264 != 0i)) {
        let x_1269 : vec3<f32> = vs_INTERP0;
        let x_1271 : i32 = u_xlati52;
        let x_1274 : i32 = u_xlati52;
        let x_1278 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[((x_1271 + 1i) / 4i)][((x_1274 + 1i) % 4i)];
        let x_1280 : vec3<f32> = (vec3<f32>(x_1269.y, x_1269.y, x_1269.y) * vec3<f32>(x_1278.x, x_1278.y, x_1278.w));
        let x_1281 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
        let x_1283 : i32 = u_xlati52;
        let x_1285 : i32 = u_xlati52;
        let x_1288 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[(x_1283 / 4i)][(x_1285 % 4i)];
        let x_1290 : vec3<f32> = vs_INTERP0;
        let x_1293 : vec4<f32> = u_xlat11;
        let x_1295 : vec3<f32> = ((vec3<f32>(x_1288.x, x_1288.y, x_1288.w) * vec3<f32>(x_1290.x, x_1290.x, x_1290.x)) + vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
        let x_1296 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
        let x_1298 : i32 = u_xlati52;
        let x_1301 : i32 = u_xlati52;
        let x_1305 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[((x_1298 + 2i) / 4i)][((x_1301 + 2i) % 4i)];
        let x_1307 : vec3<f32> = vs_INTERP0;
        let x_1310 : vec4<f32> = u_xlat11;
        let x_1312 : vec3<f32> = ((vec3<f32>(x_1305.x, x_1305.y, x_1305.w) * vec3<f32>(x_1307.z, x_1307.z, x_1307.z)) + vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
        let x_1313 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
        let x_1315 : vec4<f32> = u_xlat11;
        let x_1317 : i32 = u_xlati52;
        let x_1320 : i32 = u_xlati52;
        let x_1324 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[((x_1317 + 3i) / 4i)][((x_1320 + 3i) % 4i)];
        let x_1326 : vec3<f32> = (vec3<f32>(x_1315.x, x_1315.y, x_1315.z) + vec3<f32>(x_1324.x, x_1324.y, x_1324.w));
        let x_1327 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
        let x_1329 : vec4<f32> = u_xlat11;
        let x_1331 : vec4<f32> = u_xlat11;
        let x_1333 : vec2<f32> = (vec2<f32>(x_1329.x, x_1329.y) / vec2<f32>(x_1331.z, x_1331.z));
        let x_1334 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
        let x_1336 : vec4<f32> = u_xlat11;
        let x_1339 : vec2<f32> = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1340 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
        let x_1342 : vec4<f32> = u_xlat11;
        let x_1346 : vec2<f32> = clamp(vec2<f32>(x_1342.x, x_1342.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1347 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1346.x, x_1346.y, x_1347.z, x_1347.w);
        let x_1349 : u32 = u_xlatu47;
        let x_1352 : vec4<f32> = x_1251.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1349)];
        let x_1354 : vec4<f32> = u_xlat11;
        let x_1357 : u32 = u_xlatu47;
        let x_1360 : vec4<f32> = x_1251.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1357)];
        let x_1362 : vec2<f32> = ((vec2<f32>(x_1352.x, x_1352.y) * vec2<f32>(x_1354.x, x_1354.y)) + vec2<f32>(x_1360.z, x_1360.w));
        let x_1363 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1362.x, x_1362.y, x_1363.z, x_1363.w);
      } else {
        let x_1367 : i32 = u_xlati50;
        u_xlatb50 = (x_1367 == 1i);
        let x_1369 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1369);
        let x_1371 : i32 = u_xlati50;
        if ((x_1371 != 0i)) {
          let x_1377 : vec3<f32> = vs_INTERP0;
          let x_1379 : i32 = u_xlati52;
          let x_1382 : i32 = u_xlati52;
          let x_1386 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[((x_1379 + 1i) / 4i)][((x_1382 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1377.y, x_1377.y) * vec2<f32>(x_1386.x, x_1386.y));
          let x_1389 : i32 = u_xlati52;
          let x_1391 : i32 = u_xlati52;
          let x_1394 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[(x_1389 / 4i)][(x_1391 % 4i)];
          let x_1396 : vec3<f32> = vs_INTERP0;
          let x_1399 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1394.x, x_1394.y) * vec2<f32>(x_1396.x, x_1396.x)) + x_1399);
          let x_1401 : i32 = u_xlati52;
          let x_1404 : i32 = u_xlati52;
          let x_1408 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[((x_1401 + 2i) / 4i)][((x_1404 + 2i) % 4i)];
          let x_1410 : vec3<f32> = vs_INTERP0;
          let x_1413 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1408.x, x_1408.y) * vec2<f32>(x_1410.z, x_1410.z)) + x_1413);
          let x_1415 : vec2<f32> = u_xlat39;
          let x_1416 : i32 = u_xlati52;
          let x_1419 : i32 = u_xlati52;
          let x_1423 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[((x_1416 + 3i) / 4i)][((x_1419 + 3i) % 4i)];
          u_xlat39 = (x_1415 + vec2<f32>(x_1423.x, x_1423.y));
          let x_1426 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1426 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1429 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1429);
          let x_1431 : u32 = u_xlatu47;
          let x_1434 : vec4<f32> = x_1251.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1431)];
          let x_1436 : vec2<f32> = u_xlat39;
          let x_1438 : u32 = u_xlatu47;
          let x_1441 : vec4<f32> = x_1251.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1438)];
          let x_1443 : vec2<f32> = ((vec2<f32>(x_1434.x, x_1434.y) * x_1436) + vec2<f32>(x_1441.z, x_1441.w));
          let x_1444 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1443.x, x_1443.y, x_1444.z, x_1444.w);
        } else {
          let x_1448 : vec3<f32> = vs_INTERP0;
          let x_1450 : i32 = u_xlati52;
          let x_1453 : i32 = u_xlati52;
          let x_1457 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[((x_1450 + 1i) / 4i)][((x_1453 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1448.y, x_1448.y, x_1448.y, x_1448.y) * x_1457);
          let x_1459 : i32 = u_xlati52;
          let x_1461 : i32 = u_xlati52;
          let x_1464 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[(x_1459 / 4i)][(x_1461 % 4i)];
          let x_1465 : vec3<f32> = vs_INTERP0;
          let x_1468 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1464 * vec4<f32>(x_1465.x, x_1465.x, x_1465.x, x_1465.x)) + x_1468);
          let x_1470 : i32 = u_xlati52;
          let x_1473 : i32 = u_xlati52;
          let x_1477 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[((x_1470 + 2i) / 4i)][((x_1473 + 2i) % 4i)];
          let x_1478 : vec3<f32> = vs_INTERP0;
          let x_1481 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1477 * vec4<f32>(x_1478.z, x_1478.z, x_1478.z, x_1478.z)) + x_1481);
          let x_1483 : vec4<f32> = u_xlat12;
          let x_1484 : i32 = u_xlati52;
          let x_1487 : i32 = u_xlati52;
          let x_1491 : vec4<f32> = x_1251.x_AdditionalLightsWorldToLights[((x_1484 + 3i) / 4i)][((x_1487 + 3i) % 4i)];
          u_xlat12 = (x_1483 + x_1491);
          let x_1493 : vec4<f32> = u_xlat12;
          let x_1495 : vec4<f32> = u_xlat12;
          let x_1497 : vec3<f32> = (vec3<f32>(x_1493.x, x_1493.y, x_1493.z) / vec3<f32>(x_1495.w, x_1495.w, x_1495.w));
          let x_1498 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1497.x, x_1497.y, x_1497.z, x_1498.w);
          let x_1500 : vec4<f32> = u_xlat12;
          let x_1502 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1500.x, x_1500.y, x_1500.z), vec3<f32>(x_1502.x, x_1502.y, x_1502.z));
          let x_1505 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1505);
          let x_1507 : f32 = u_xlat50;
          let x_1509 : vec4<f32> = u_xlat12;
          let x_1511 : vec3<f32> = (vec3<f32>(x_1507, x_1507, x_1507) * vec3<f32>(x_1509.x, x_1509.y, x_1509.z));
          let x_1512 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1512.w);
          let x_1514 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1514.x, x_1514.y, x_1514.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1519 : f32 = u_xlat50;
          u_xlat50 = max(x_1519, 0.000001f);
          let x_1522 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1522);
          let x_1525 : f32 = u_xlat50;
          let x_1527 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1525, x_1525, x_1525) * vec3<f32>(x_1527.z, x_1527.x, x_1527.y));
          let x_1531 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1531);
          let x_1535 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1535, 0.0f, 1.0f);
          let x_1539 : vec3<f32> = u_xlat13;
          let x_1542 : vec4<bool> = (vec4<f32>(x_1539.y, x_1539.z, x_1539.y, x_1539.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1542.x, x_1542.y);
          let x_1545 : bool = u_xlatb39.x;
          if (x_1545) {
            let x_1550 : f32 = u_xlat13.x;
            x_1546 = x_1550;
          } else {
            let x_1553 : f32 = u_xlat13.x;
            x_1546 = -(x_1553);
          }
          let x_1555 : f32 = x_1546;
          u_xlat39.x = x_1555;
          let x_1558 : bool = u_xlatb39.y;
          if (x_1558) {
            let x_1563 : f32 = u_xlat13.x;
            x_1559 = x_1563;
          } else {
            let x_1566 : f32 = u_xlat13.x;
            x_1559 = -(x_1566);
          }
          let x_1568 : f32 = x_1559;
          u_xlat39.y = x_1568;
          let x_1570 : vec4<f32> = u_xlat12;
          let x_1572 : f32 = u_xlat50;
          let x_1575 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1570.x, x_1570.y) * vec2<f32>(x_1572, x_1572)) + x_1575);
          let x_1577 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1577 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1580 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1580, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1584 : u32 = u_xlatu47;
          let x_1587 : vec4<f32> = x_1251.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1584)];
          let x_1589 : vec2<f32> = u_xlat39;
          let x_1591 : u32 = u_xlatu47;
          let x_1594 : vec4<f32> = x_1251.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1591)];
          let x_1596 : vec2<f32> = ((vec2<f32>(x_1587.x, x_1587.y) * x_1589) + vec2<f32>(x_1594.z, x_1594.w));
          let x_1597 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1596.x, x_1596.y, x_1597.z, x_1597.w);
        }
      }
      let x_1604 : vec4<f32> = u_xlat11;
      let x_1607 : f32 = x_132.x_GlobalMipBias.x;
      let x_1608 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1604.x, x_1604.y), x_1607);
      u_xlat11 = x_1608;
      let x_1610 : bool = u_xlatb7.y;
      if (x_1610) {
        let x_1615 : f32 = u_xlat11.w;
        x_1611 = x_1615;
      } else {
        let x_1618 : f32 = u_xlat11.x;
        x_1611 = x_1618;
      }
      let x_1619 : f32 = x_1611;
      u_xlat50 = x_1619;
      let x_1621 : bool = u_xlatb7.x;
      if (x_1621) {
        let x_1625 : vec4<f32> = u_xlat11;
        x_1622 = vec3<f32>(x_1625.x, x_1625.y, x_1625.z);
      } else {
        let x_1628 : f32 = u_xlat50;
        x_1622 = vec3<f32>(x_1628, x_1628, x_1628);
      }
      let x_1630 : vec3<f32> = x_1622;
      let x_1631 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1637 : vec4<f32> = u_xlat11;
    let x_1639 : u32 = u_xlatu47;
    let x_1642 : vec4<f32> = x_1148.x_AdditionalLightsColor[bitcast<i32>(x_1639)];
    let x_1644 : vec3<f32> = (vec3<f32>(x_1637.x, x_1637.y, x_1637.z) * vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
    let x_1645 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1644.x, x_1644.y, x_1644.z, x_1645.w);
    let x_1647 : f32 = u_xlat31;
    let x_1649 : vec4<f32> = u_xlat11;
    let x_1651 : vec3<f32> = (vec3<f32>(x_1647, x_1647, x_1647) * vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
    let x_1652 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1651.x, x_1651.y, x_1651.z, x_1652.w);
    let x_1654 : vec3<f32> = u_xlat14;
    let x_1655 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1654, x_1655);
    let x_1657 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1657, 0.0f, 1.0f);
    let x_1659 : f32 = u_xlat47;
    let x_1660 : f32 = u_xlat35;
    u_xlat47 = (x_1659 * x_1660);
    let x_1662 : f32 = u_xlat47;
    let x_1664 : vec4<f32> = u_xlat11;
    let x_1666 : vec3<f32> = (vec3<f32>(x_1662, x_1662, x_1662) * vec3<f32>(x_1664.x, x_1664.y, x_1664.z));
    let x_1667 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1666.x, x_1666.y, x_1666.z, x_1667.w);
    let x_1669 : vec3<f32> = u_xlat9;
    let x_1670 : f32 = u_xlat49;
    let x_1673 : vec4<f32> = u_xlat4;
    u_xlat9 = ((x_1669 * vec3<f32>(x_1670, x_1670, x_1670)) + vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
    let x_1676 : vec3<f32> = u_xlat9;
    let x_1677 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1676, x_1677);
    let x_1679 : f32 = u_xlat47;
    u_xlat47 = max(x_1679, 1.17549435e-37f);
    let x_1681 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1681);
    let x_1683 : f32 = u_xlat47;
    let x_1685 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1683, x_1683, x_1683) * x_1685);
    let x_1687 : vec3<f32> = u_xlat14;
    let x_1688 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1687, x_1688);
    let x_1690 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1690, 0.0f, 1.0f);
    let x_1692 : vec3<f32> = u_xlat10;
    let x_1693 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1692, x_1693);
    let x_1695 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1695, 0.0f, 1.0f);
    let x_1697 : f32 = u_xlat47;
    let x_1698 : f32 = u_xlat47;
    u_xlat47 = (x_1697 * x_1698);
    let x_1700 : f32 = u_xlat47;
    let x_1702 : f32 = u_xlat17.x;
    u_xlat47 = ((x_1700 * x_1702) + 1.000010014f);
    let x_1705 : f32 = u_xlat35;
    let x_1706 : f32 = u_xlat35;
    u_xlat35 = (x_1705 * x_1706);
    let x_1708 : f32 = u_xlat47;
    let x_1709 : f32 = u_xlat47;
    u_xlat47 = (x_1708 * x_1709);
    let x_1711 : f32 = u_xlat35;
    u_xlat35 = max(x_1711, 0.100000001f);
    let x_1713 : f32 = u_xlat47;
    let x_1714 : f32 = u_xlat35;
    u_xlat47 = (x_1713 * x_1714);
    let x_1717 : f32 = u_xlat6.x;
    let x_1718 : f32 = u_xlat47;
    u_xlat47 = (x_1717 * x_1718);
    let x_1720 : f32 = u_xlat46;
    let x_1721 : f32 = u_xlat47;
    u_xlat47 = (x_1720 / x_1721);
    let x_1723 : f32 = u_xlat47;
    let x_1726 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1723, x_1723, x_1723) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1726);
    let x_1728 : vec3<f32> = u_xlat9;
    let x_1729 : vec4<f32> = u_xlat11;
    let x_1732 : vec4<f32> = u_xlat8;
    let x_1734 : vec3<f32> = ((x_1728 * vec3<f32>(x_1729.x, x_1729.y, x_1729.z)) + vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
    let x_1735 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);

    continuing {
      let x_1737 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1737 + bitcast<u32>(1i));
    }
  }
  let x_1739 : vec4<f32> = u_xlat2;
  let x_1741 : vec3<f32> = u_xlat3;
  let x_1744 : vec3<f32> = u_xlat20;
  u_xlat14 = ((vec3<f32>(x_1739.x, x_1739.z, x_1739.w) * vec3<f32>(x_1741.x, x_1741.x, x_1741.x)) + x_1744);
  let x_1746 : vec4<f32> = u_xlat8;
  let x_1748 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_1746.x, x_1746.y, x_1746.z) + x_1748);
  let x_1752 : vec4<f32> = vs_INTERP4;
  let x_1754 : vec3<f32> = u_xlat1;
  let x_1756 : vec3<f32> = u_xlat14;
  let x_1757 : vec3<f32> = ((vec3<f32>(x_1752.w, x_1752.w, x_1752.w) * x_1754) + x_1756);
  let x_1758 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
  let x_1760 : bool = u_xlatb16;
  let x_1761 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1761, x_1760);
  let x_1769 : u32 = x_132.x_RenderingLayerMaxInt;
  let x_1771 : f32 = x_54.unity_RenderingLayer.x;
  u_xlatu0 = (x_1769 & bitcast<u32>(x_1771));
  let x_1774 : u32 = u_xlatu0;
  u_xlat0 = f32(x_1774);
  let x_1777 : f32 = u_xlat0;
  let x_1779 : f32 = x_132.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1777 * x_1779);
  let x_1783 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1783, 0.0f, 1.0f);
  let x_1787 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1787.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(5) vs_INTERP5_param : vec2<f32>, @location(6) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

