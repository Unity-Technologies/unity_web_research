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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(4) var<uniform> x_742 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1206 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1310 : AdditionalLightsCookies;

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
  var x_480 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat32 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat34 : vec2<f32>;
  var u_xlatb34 : vec2<bool>;
  var u_xlatb48 : bool;
  var u_xlat48 : f32;
  var x_811 : f32;
  var x_822 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatu43 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati49 : i32;
  var u_xlat35 : vec2<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlatu51 : u32;
  var u_xlati52 : i32;
  var u_xlati51 : i32;
  var u_xlati11 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb51 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4<f32>;
  var x_1614 : f32;
  var x_1627 : f32;
  var x_1689 : f32;
  var x_1700 : vec3<f32>;
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
  let x_471 : f32 = x_132.unity_MatrixV[0i].z;
  u_xlat4.x = x_471;
  let x_474 : f32 = x_132.unity_MatrixV[1i].z;
  u_xlat4.y = x_474;
  let x_477 : f32 = x_132.unity_MatrixV[2i].z;
  u_xlat4.z = x_477;
  let x_479 : bool = u_xlatb2;
  if (x_479) {
    let x_483 : vec3<f32> = u_xlat3;
    x_480 = x_483;
  } else {
    let x_485 : vec4<f32> = u_xlat4;
    x_480 = vec3<f32>(x_485.x, x_485.y, x_485.z);
  }
  let x_487 : vec3<f32> = x_480;
  let x_488 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_487.x, x_488.y, x_487.y, x_487.z);
  let x_491 : f32 = vs_INTERP0.y;
  let x_493 : f32 = x_132.unity_MatrixV[1i].z;
  u_xlat3.x = (x_491 * x_493);
  let x_497 : f32 = x_132.unity_MatrixV[0i].z;
  let x_499 : f32 = vs_INTERP0.x;
  let x_502 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_497 * x_499) + x_502);
  let x_506 : f32 = x_132.unity_MatrixV[2i].z;
  let x_508 : f32 = vs_INTERP0.z;
  let x_511 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_506 * x_508) + x_511);
  let x_515 : f32 = u_xlat3.x;
  let x_517 : f32 = x_132.unity_MatrixV[3i].z;
  u_xlat3.x = (x_515 + x_517);
  let x_521 : f32 = u_xlat3.x;
  let x_525 : f32 = x_132.x_ProjectionParams.y;
  u_xlat3.x = (-(x_521) + -(x_525));
  let x_530 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_530, 0.0f);
  let x_534 : f32 = u_xlat3.x;
  let x_537 : f32 = x_132.unity_FogParams.x;
  u_xlat3.x = (x_534 * x_537);
  let x_548 : vec2<f32> = vs_INTERP5;
  let x_550 : f32 = x_132.x_GlobalMipBias.x;
  let x_551 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_548, x_550);
  u_xlat17 = vec3<f32>(x_551.x, x_551.y, x_551.z);
  let x_555 : vec4<f32> = x_132.x_ScaledScreenParams;
  let x_556 : vec2<f32> = vec2<f32>(x_555.x, x_555.y);
  let x_560 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_556.x, x_556.y));
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec4<f32> = hlslcc_FragCoord;
  let x_567 : vec2<f32> = (vec2<f32>(x_563.x, x_563.y) * vec2<f32>(x_565.x, x_565.y));
  let x_568 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
  let x_572 : f32 = u_xlat4.y;
  let x_575 : f32 = x_132.x_ScaleBiasRt.x;
  let x_578 : f32 = x_132.x_ScaleBiasRt.y;
  u_xlat18.x = ((x_572 * x_575) + x_578);
  let x_582 : f32 = u_xlat18.x;
  u_xlat4.z = (-(x_582) + 1.0f);
  let x_587 : f32 = u_xlat6.x;
  u_xlat6.x = x_587;
  let x_590 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_590, 0.0f, 1.0f);
  let x_593 : f32 = u_xlat0;
  u_xlat0 = min(x_593, 1.0f);
  let x_595 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_595 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_600 : f32 = u_xlat6.x;
  u_xlat18.x = (-(x_600) + 1.0f);
  let x_606 : f32 = u_xlat18.x;
  let x_608 : f32 = u_xlat18.x;
  u_xlat46 = (x_606 * x_608);
  let x_610 : f32 = u_xlat46;
  u_xlat46 = max(x_610, 0.0078125f);
  let x_614 : f32 = u_xlat46;
  let x_615 : f32 = u_xlat46;
  u_xlat47 = (x_614 * x_615);
  let x_618 : f32 = u_xlat6.x;
  u_xlat6.x = (x_618 + 0.040000021f);
  let x_623 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_623, 1.0f);
  let x_626 : f32 = u_xlat46;
  u_xlat20.x = ((x_626 * 4.0f) + 2.0f);
  let x_636 : vec4<f32> = u_xlat4;
  let x_639 : f32 = x_132.x_GlobalMipBias.x;
  let x_640 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_636.x, x_636.z), x_639);
  u_xlat4.x = x_640.x;
  let x_645 : f32 = u_xlat4.x;
  u_xlat32 = (x_645 + -1.0f);
  let x_649 : f32 = x_132.x_AmbientOcclusionParam.w;
  let x_650 : f32 = u_xlat32;
  u_xlat32 = ((x_649 * x_650) + 1.0f);
  let x_654 : f32 = u_xlat4.x;
  let x_656 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_654, x_656);
  let x_661 : vec4<f32> = vs_INTERP9;
  let x_662 : vec2<f32> = vec2<f32>(x_661.x, x_661.y);
  let x_664 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_662.x, x_662.y, x_664);
  let x_673 : vec3<f32> = txVec1;
  let x_675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_673.xy, x_673.z);
  u_xlat34.x = x_675;
  let x_678 : f32 = u_xlat34.x;
  let x_680 : f32 = x_232.x_MainLightShadowParams.x;
  let x_682 : f32 = u_xlat43;
  u_xlat43 = ((x_678 * x_680) + x_682);
  let x_686 : f32 = vs_INTERP9.z;
  u_xlatb34.x = (0.0f >= x_686);
  let x_691 : f32 = vs_INTERP9.z;
  u_xlatb48 = (x_691 >= 1.0f);
  let x_693 : bool = u_xlatb48;
  let x_695 : bool = u_xlatb34.x;
  u_xlatb34.x = (x_693 | x_695);
  let x_699 : bool = u_xlatb34.x;
  let x_700 : f32 = u_xlat43;
  u_xlat43 = select(x_700, 1.0f, x_699);
  let x_702 : vec3<f32> = vs_INTERP0;
  let x_704 : vec3<f32> = x_132.x_WorldSpaceCameraPos;
  let x_706 : vec3<f32> = (x_702 + -(x_704));
  let x_707 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat7;
  let x_711 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_709.x, x_709.y, x_709.z), vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_716 : f32 = u_xlat34.x;
  let x_718 : f32 = x_232.x_MainLightShadowParams.z;
  let x_721 : f32 = x_232.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_716 * x_718) + x_721);
  let x_725 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_725, 0.0f, 1.0f);
  let x_729 : f32 = u_xlat43;
  u_xlat48 = (-(x_729) + 1.0f);
  let x_733 : f32 = u_xlat34.x;
  let x_734 : f32 = u_xlat48;
  let x_736 : f32 = u_xlat43;
  u_xlat43 = ((x_733 * x_734) + x_736);
  let x_744 : f32 = x_742.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_744 == -1.0f));
  let x_748 : bool = u_xlatb34.x;
  if (x_748) {
    let x_751 : vec3<f32> = vs_INTERP0;
    let x_754 : vec4<f32> = x_742.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_751.y, x_751.y) * vec2<f32>(x_754.x, x_754.y));
    let x_758 : vec4<f32> = x_742.x_MainLightWorldToLight[0i];
    let x_760 : vec3<f32> = vs_INTERP0;
    let x_763 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_758.x, x_758.y) * vec2<f32>(x_760.x, x_760.x)) + x_763);
    let x_766 : vec4<f32> = x_742.x_MainLightWorldToLight[2i];
    let x_768 : vec3<f32> = vs_INTERP0;
    let x_771 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_766.x, x_766.y) * vec2<f32>(x_768.z, x_768.z)) + x_771);
    let x_773 : vec2<f32> = u_xlat34;
    let x_775 : vec4<f32> = x_742.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_773 + vec2<f32>(x_775.x, x_775.y));
    let x_778 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_778 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_787 : vec2<f32> = u_xlat34;
    let x_789 : f32 = x_132.x_GlobalMipBias.x;
    let x_790 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_787, x_789);
    u_xlat7 = x_790;
    let x_792 : f32 = x_742.x_MainLightCookieTextureFormat;
    let x_794 : f32 = x_742.x_MainLightCookieTextureFormat;
    let x_796 : f32 = x_742.x_MainLightCookieTextureFormat;
    let x_798 : f32 = x_742.x_MainLightCookieTextureFormat;
    let x_799 : vec4<f32> = vec4<f32>(x_792, x_794, x_796, x_798);
    let x_807 : vec4<bool> = (vec4<f32>(x_799.x, x_799.y, x_799.z, x_799.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_807.x, x_807.y);
    let x_810 : bool = u_xlatb34.y;
    if (x_810) {
      let x_815 : f32 = u_xlat7.w;
      x_811 = x_815;
    } else {
      let x_818 : f32 = u_xlat7.x;
      x_811 = x_818;
    }
    let x_819 : f32 = x_811;
    u_xlat48 = x_819;
    let x_821 : bool = u_xlatb34.x;
    if (x_821) {
      let x_825 : vec4<f32> = u_xlat7;
      x_822 = vec3<f32>(x_825.x, x_825.y, x_825.z);
    } else {
      let x_828 : f32 = u_xlat48;
      x_822 = vec3<f32>(x_828, x_828, x_828);
    }
    let x_830 : vec3<f32> = x_822;
    let x_831 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_837 : vec4<f32> = u_xlat7;
  let x_840 : vec4<f32> = x_132.x_MainLightColor;
  let x_842 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : f32 = u_xlat32;
  let x_847 : vec4<f32> = u_xlat7;
  let x_849 : vec3<f32> = (vec3<f32>(x_845, x_845, x_845) * vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_850 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat2;
  let x_855 : vec3<f32> = u_xlat14;
  u_xlat34.x = dot(-(vec3<f32>(x_852.x, x_852.z, x_852.w)), x_855);
  let x_859 : f32 = u_xlat34.x;
  let x_861 : f32 = u_xlat34.x;
  u_xlat34.x = (x_859 + x_861);
  let x_865 : vec3<f32> = u_xlat14;
  let x_866 : vec2<f32> = u_xlat34;
  let x_870 : vec4<f32> = u_xlat2;
  let x_873 : vec3<f32> = ((x_865 * -(vec3<f32>(x_866.x, x_866.x, x_866.x))) + -(vec3<f32>(x_870.x, x_870.z, x_870.w)));
  let x_874 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec3<f32> = u_xlat14;
  let x_877 : vec4<f32> = u_xlat2;
  u_xlat34.x = dot(x_876, vec3<f32>(x_877.x, x_877.z, x_877.w));
  let x_882 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_882, 0.0f, 1.0f);
  let x_886 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_886) + 1.0f);
  let x_891 : f32 = u_xlat34.x;
  let x_893 : f32 = u_xlat34.x;
  u_xlat34.x = (x_891 * x_893);
  let x_897 : f32 = u_xlat34.x;
  let x_899 : f32 = u_xlat34.x;
  u_xlat34.x = (x_897 * x_899);
  let x_903 : f32 = u_xlat18.x;
  u_xlat48 = ((-(x_903) * 0.699999988f) + 1.700000048f);
  let x_910 : f32 = u_xlat18.x;
  let x_911 : f32 = u_xlat48;
  u_xlat18.x = (x_910 * x_911);
  let x_915 : f32 = u_xlat18.x;
  u_xlat18.x = (x_915 * 6.0f);
  let x_927 : vec4<f32> = u_xlat8;
  let x_930 : f32 = u_xlat18.x;
  let x_931 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_927.x, x_927.y, x_927.z), x_930);
  u_xlat8 = x_931;
  let x_933 : f32 = u_xlat8.w;
  u_xlat18.x = (x_933 + -1.0f);
  let x_937 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_939 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_937 * x_939) + 1.0f);
  let x_944 : f32 = u_xlat18.x;
  u_xlat18.x = max(x_944, 0.0f);
  let x_948 : f32 = u_xlat18.x;
  u_xlat18.x = log2(x_948);
  let x_952 : f32 = u_xlat18.x;
  let x_954 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat18.x = (x_952 * x_954);
  let x_958 : f32 = u_xlat18.x;
  u_xlat18.x = exp2(x_958);
  let x_962 : f32 = u_xlat18.x;
  let x_964 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat18.x = (x_962 * x_964);
  let x_967 : vec4<f32> = u_xlat8;
  let x_969 : vec3<f32> = u_xlat18;
  let x_971 : vec3<f32> = (vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(x_969.x, x_969.x, x_969.x));
  let x_972 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : f32 = u_xlat46;
  let x_976 : f32 = u_xlat46;
  let x_980 : vec2<f32> = ((vec2<f32>(x_974, x_974) * vec2<f32>(x_976, x_976)) + vec2<f32>(-1.0f, 1.0f));
  let x_981 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_980.x, x_981.y, x_980.y);
  let x_984 : f32 = u_xlat18.z;
  u_xlat46 = (1.0f / x_984);
  let x_987 : f32 = u_xlat6.x;
  u_xlat6.x = (x_987 + -0.039999999f);
  let x_992 : f32 = u_xlat34.x;
  let x_994 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_992 * x_994) + 0.039999999f);
  let x_999 : f32 = u_xlat46;
  let x_1001 : f32 = u_xlat6.x;
  u_xlat46 = (x_999 * x_1001);
  let x_1003 : f32 = u_xlat46;
  let x_1005 : vec4<f32> = u_xlat8;
  let x_1007 : vec3<f32> = (vec3<f32>(x_1003, x_1003, x_1003) * vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1007.x, x_1008.y, x_1007.y, x_1007.z);
  let x_1010 : vec3<f32> = u_xlat17;
  let x_1011 : vec3<f32> = u_xlat5;
  let x_1013 : vec4<f32> = u_xlat6;
  u_xlat17 = ((x_1010 * x_1011) + vec3<f32>(x_1013.x, x_1013.z, x_1013.w));
  let x_1016 : f32 = u_xlat43;
  let x_1018 : f32 = x_54.unity_LightData.z;
  u_xlat43 = (x_1016 * x_1018);
  let x_1020 : vec3<f32> = u_xlat14;
  let x_1022 : vec4<f32> = x_132.x_MainLightPosition;
  u_xlat46 = dot(x_1020, vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1025, 0.0f, 1.0f);
  let x_1027 : f32 = u_xlat43;
  let x_1028 : f32 = u_xlat46;
  u_xlat43 = (x_1027 * x_1028);
  let x_1030 : f32 = u_xlat43;
  let x_1032 : vec4<f32> = u_xlat7;
  let x_1034 : vec3<f32> = (vec3<f32>(x_1030, x_1030, x_1030) * vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1034.x, x_1035.y, x_1034.y, x_1034.z);
  let x_1037 : vec4<f32> = u_xlat2;
  let x_1040 : vec4<f32> = x_132.x_MainLightPosition;
  let x_1042 : vec3<f32> = (vec3<f32>(x_1037.x, x_1037.z, x_1037.w) + vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1043 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1045 : vec4<f32> = u_xlat7;
  let x_1047 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1045.x, x_1045.y, x_1045.z), vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : f32 = u_xlat43;
  u_xlat43 = max(x_1050, 1.17549435e-37f);
  let x_1052 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1052);
  let x_1054 : f32 = u_xlat43;
  let x_1056 : vec4<f32> = u_xlat7;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1054, x_1054, x_1054) * vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec3<f32> = u_xlat14;
  let x_1062 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(x_1061, vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
  let x_1065 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1065, 0.0f, 1.0f);
  let x_1068 : vec4<f32> = x_132.x_MainLightPosition;
  let x_1070 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1073 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1073, 0.0f, 1.0f);
  let x_1075 : f32 = u_xlat43;
  let x_1076 : f32 = u_xlat43;
  u_xlat43 = (x_1075 * x_1076);
  let x_1078 : f32 = u_xlat43;
  let x_1080 : f32 = u_xlat18.x;
  u_xlat43 = ((x_1078 * x_1080) + 1.000010014f);
  let x_1084 : f32 = u_xlat46;
  let x_1085 : f32 = u_xlat46;
  u_xlat46 = (x_1084 * x_1085);
  let x_1087 : f32 = u_xlat43;
  let x_1088 : f32 = u_xlat43;
  u_xlat43 = (x_1087 * x_1088);
  let x_1090 : f32 = u_xlat46;
  u_xlat46 = max(x_1090, 0.100000001f);
  let x_1093 : f32 = u_xlat43;
  let x_1094 : f32 = u_xlat46;
  u_xlat43 = (x_1093 * x_1094);
  let x_1097 : f32 = u_xlat20.x;
  let x_1098 : f32 = u_xlat43;
  u_xlat43 = (x_1097 * x_1098);
  let x_1100 : f32 = u_xlat47;
  let x_1101 : f32 = u_xlat43;
  u_xlat43 = (x_1100 / x_1101);
  let x_1103 : f32 = u_xlat43;
  let x_1107 : vec3<f32> = u_xlat5;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1103, x_1103, x_1103) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1107);
  let x_1109 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : vec4<f32> = u_xlat6;
  let x_1113 : vec4<f32> = u_xlat7;
  let x_1115 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.z, x_1111.w) * vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1115.x, x_1116.y, x_1115.y, x_1115.z);
  let x_1120 : f32 = x_132.x_AdditionalLightsCount.x;
  let x_1122 : f32 = x_54.unity_LightData.y;
  u_xlat43 = min(x_1120, x_1122);
  let x_1126 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1126));
  let x_1131 : f32 = x_742.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1133 : f32 = x_742.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1135 : f32 = x_742.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1137 : f32 = x_742.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1138 : vec4<f32> = vec4<f32>(x_1131, x_1133, x_1135, x_1137);
  let x_1145 : vec4<bool> = (vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1138.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1145.x, x_1145.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1156 : u32 = u_xlatu_loop_1;
    let x_1157 : u32 = u_xlatu43;
    if ((x_1156 < x_1157)) {
    } else {
      break;
    }
    let x_1160 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_1160 >> 2u);
    let x_1164 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1164 & 3u));
    let x_1168 : u32 = u_xlatu35;
    let x_1171 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_1168)];
    let x_1181 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1186 : vec4<u32> = indexable[x_1181];
    u_xlat35.x = dot(x_1171, bitcast<vec4<f32>>(x_1186));
    let x_1191 : f32 = u_xlat35.x;
    u_xlatu35 = bitcast<u32>(i32(x_1191));
    let x_1195 : vec3<f32> = vs_INTERP0;
    let x_1207 : u32 = u_xlatu35;
    let x_1210 : vec4<f32> = x_1206.x_AdditionalLightsPosition[bitcast<i32>(x_1207)];
    let x_1213 : u32 = u_xlatu35;
    let x_1216 : vec4<f32> = x_1206.x_AdditionalLightsPosition[bitcast<i32>(x_1213)];
    u_xlat9 = ((-(x_1195) * vec3<f32>(x_1210.w, x_1210.w, x_1210.w)) + vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
    let x_1220 : vec3<f32> = u_xlat9;
    let x_1221 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1220, x_1221);
    let x_1223 : f32 = u_xlat49;
    u_xlat49 = max(x_1223, 6.10351562e-05f);
    let x_1227 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1227);
    let x_1230 : f32 = u_xlat50;
    let x_1232 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1230, x_1230, x_1230) * x_1232);
    let x_1235 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1235);
    let x_1237 : f32 = u_xlat49;
    let x_1238 : u32 = u_xlatu35;
    let x_1241 : f32 = x_1206.x_AdditionalLightsAttenuation[bitcast<i32>(x_1238)].x;
    u_xlat49 = (x_1237 * x_1241);
    let x_1243 : f32 = u_xlat49;
    let x_1245 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1243) * x_1245) + 1.0f);
    let x_1248 : f32 = u_xlat49;
    u_xlat49 = max(x_1248, 0.0f);
    let x_1250 : f32 = u_xlat49;
    let x_1251 : f32 = u_xlat49;
    u_xlat49 = (x_1250 * x_1251);
    let x_1253 : f32 = u_xlat49;
    let x_1254 : f32 = u_xlat51;
    u_xlat49 = (x_1253 * x_1254);
    let x_1256 : u32 = u_xlatu35;
    let x_1259 : vec4<f32> = x_1206.x_AdditionalLightsSpotDir[bitcast<i32>(x_1256)];
    let x_1261 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1259.x, x_1259.y, x_1259.z), x_1261);
    let x_1263 : f32 = u_xlat51;
    let x_1264 : u32 = u_xlatu35;
    let x_1267 : f32 = x_1206.x_AdditionalLightsAttenuation[bitcast<i32>(x_1264)].z;
    let x_1269 : u32 = u_xlatu35;
    let x_1272 : f32 = x_1206.x_AdditionalLightsAttenuation[bitcast<i32>(x_1269)].w;
    u_xlat51 = ((x_1263 * x_1267) + x_1272);
    let x_1274 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1274, 0.0f, 1.0f);
    let x_1276 : f32 = u_xlat51;
    let x_1277 : f32 = u_xlat51;
    u_xlat51 = (x_1276 * x_1277);
    let x_1279 : f32 = u_xlat49;
    let x_1280 : f32 = u_xlat51;
    u_xlat49 = (x_1279 * x_1280);
    let x_1283 : u32 = u_xlatu35;
    u_xlatu51 = (x_1283 >> 5u);
    let x_1286 : u32 = u_xlatu35;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1286) & 31i)));
    let x_1292 : i32 = u_xlati52;
    let x_1294 : u32 = u_xlatu51;
    let x_1297 : f32 = x_742.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1294)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1292) & bitcast<u32>(x_1297)));
    let x_1301 : i32 = u_xlati51;
    if ((x_1301 != 0i)) {
      let x_1311 : u32 = u_xlatu35;
      let x_1314 : f32 = x_1310.x_AdditionalLightsLightTypes[bitcast<i32>(x_1311)].el;
      u_xlati51 = i32(x_1314);
      let x_1316 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1316 != 0i));
      let x_1320 : u32 = u_xlatu35;
      u_xlati11 = (bitcast<i32>(x_1320) << bitcast<u32>(2i));
      let x_1323 : i32 = u_xlati52;
      if ((x_1323 != 0i)) {
        let x_1328 : vec3<f32> = vs_INTERP0;
        let x_1330 : i32 = u_xlati11;
        let x_1333 : i32 = u_xlati11;
        let x_1337 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1330 + 1i) / 4i)][((x_1333 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1328.y, x_1328.y, x_1328.y) * vec3<f32>(x_1337.x, x_1337.y, x_1337.w));
        let x_1340 : i32 = u_xlati11;
        let x_1342 : i32 = u_xlati11;
        let x_1345 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[(x_1340 / 4i)][(x_1342 % 4i)];
        let x_1347 : vec3<f32> = vs_INTERP0;
        let x_1350 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1345.x, x_1345.y, x_1345.w) * vec3<f32>(x_1347.x, x_1347.x, x_1347.x)) + x_1350);
        let x_1352 : i32 = u_xlati11;
        let x_1355 : i32 = u_xlati11;
        let x_1359 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1352 + 2i) / 4i)][((x_1355 + 2i) % 4i)];
        let x_1361 : vec3<f32> = vs_INTERP0;
        let x_1364 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1359.x, x_1359.y, x_1359.w) * vec3<f32>(x_1361.z, x_1361.z, x_1361.z)) + x_1364);
        let x_1366 : vec3<f32> = u_xlat25;
        let x_1367 : i32 = u_xlati11;
        let x_1370 : i32 = u_xlati11;
        let x_1374 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1367 + 3i) / 4i)][((x_1370 + 3i) % 4i)];
        u_xlat25 = (x_1366 + vec3<f32>(x_1374.x, x_1374.y, x_1374.w));
        let x_1377 : vec3<f32> = u_xlat25;
        let x_1379 : vec3<f32> = u_xlat25;
        let x_1381 : vec2<f32> = (vec2<f32>(x_1377.x, x_1377.y) / vec2<f32>(x_1379.z, x_1379.z));
        let x_1382 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1381.x, x_1381.y, x_1382.z);
        let x_1384 : vec3<f32> = u_xlat25;
        let x_1387 : vec2<f32> = ((vec2<f32>(x_1384.x, x_1384.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1388 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1387.x, x_1387.y, x_1388.z);
        let x_1390 : vec3<f32> = u_xlat25;
        let x_1394 : vec2<f32> = clamp(vec2<f32>(x_1390.x, x_1390.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1395 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1394.x, x_1394.y, x_1395.z);
        let x_1397 : u32 = u_xlatu35;
        let x_1400 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1397)];
        let x_1402 : vec3<f32> = u_xlat25;
        let x_1405 : u32 = u_xlatu35;
        let x_1408 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1405)];
        let x_1410 : vec2<f32> = ((vec2<f32>(x_1400.x, x_1400.y) * vec2<f32>(x_1402.x, x_1402.y)) + vec2<f32>(x_1408.z, x_1408.w));
        let x_1411 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1410.x, x_1410.y, x_1411.z);
      } else {
        let x_1415 : i32 = u_xlati51;
        u_xlatb51 = (x_1415 == 1i);
        let x_1417 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1417);
        let x_1419 : i32 = u_xlati51;
        if ((x_1419 != 0i)) {
          let x_1424 : vec3<f32> = vs_INTERP0;
          let x_1426 : i32 = u_xlati11;
          let x_1429 : i32 = u_xlati11;
          let x_1433 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1426 + 1i) / 4i)][((x_1429 + 1i) % 4i)];
          let x_1435 : vec2<f32> = (vec2<f32>(x_1424.y, x_1424.y) * vec2<f32>(x_1433.x, x_1433.y));
          let x_1436 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1435.x, x_1435.y, x_1436.z, x_1436.w);
          let x_1438 : i32 = u_xlati11;
          let x_1440 : i32 = u_xlati11;
          let x_1443 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[(x_1438 / 4i)][(x_1440 % 4i)];
          let x_1445 : vec3<f32> = vs_INTERP0;
          let x_1448 : vec4<f32> = u_xlat12;
          let x_1450 : vec2<f32> = ((vec2<f32>(x_1443.x, x_1443.y) * vec2<f32>(x_1445.x, x_1445.x)) + vec2<f32>(x_1448.x, x_1448.y));
          let x_1451 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1450.x, x_1450.y, x_1451.z, x_1451.w);
          let x_1453 : i32 = u_xlati11;
          let x_1456 : i32 = u_xlati11;
          let x_1460 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1453 + 2i) / 4i)][((x_1456 + 2i) % 4i)];
          let x_1462 : vec3<f32> = vs_INTERP0;
          let x_1465 : vec4<f32> = u_xlat12;
          let x_1467 : vec2<f32> = ((vec2<f32>(x_1460.x, x_1460.y) * vec2<f32>(x_1462.z, x_1462.z)) + vec2<f32>(x_1465.x, x_1465.y));
          let x_1468 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1467.x, x_1467.y, x_1468.z, x_1468.w);
          let x_1470 : vec4<f32> = u_xlat12;
          let x_1472 : i32 = u_xlati11;
          let x_1475 : i32 = u_xlati11;
          let x_1479 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1472 + 3i) / 4i)][((x_1475 + 3i) % 4i)];
          let x_1481 : vec2<f32> = (vec2<f32>(x_1470.x, x_1470.y) + vec2<f32>(x_1479.x, x_1479.y));
          let x_1482 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1481.x, x_1481.y, x_1482.z, x_1482.w);
          let x_1484 : vec4<f32> = u_xlat12;
          let x_1487 : vec2<f32> = ((vec2<f32>(x_1484.x, x_1484.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1488 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1487.x, x_1487.y, x_1488.z, x_1488.w);
          let x_1490 : vec4<f32> = u_xlat12;
          let x_1492 : vec2<f32> = fract(vec2<f32>(x_1490.x, x_1490.y));
          let x_1493 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1492.x, x_1492.y, x_1493.z, x_1493.w);
          let x_1495 : u32 = u_xlatu35;
          let x_1498 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1495)];
          let x_1500 : vec4<f32> = u_xlat12;
          let x_1503 : u32 = u_xlatu35;
          let x_1506 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1503)];
          let x_1508 : vec2<f32> = ((vec2<f32>(x_1498.x, x_1498.y) * vec2<f32>(x_1500.x, x_1500.y)) + vec2<f32>(x_1506.z, x_1506.w));
          let x_1509 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1508.x, x_1508.y, x_1509.z);
        } else {
          let x_1512 : vec3<f32> = vs_INTERP0;
          let x_1514 : i32 = u_xlati11;
          let x_1517 : i32 = u_xlati11;
          let x_1521 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1514 + 1i) / 4i)][((x_1517 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1512.y, x_1512.y, x_1512.y, x_1512.y) * x_1521);
          let x_1523 : i32 = u_xlati11;
          let x_1525 : i32 = u_xlati11;
          let x_1528 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[(x_1523 / 4i)][(x_1525 % 4i)];
          let x_1529 : vec3<f32> = vs_INTERP0;
          let x_1532 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1528 * vec4<f32>(x_1529.x, x_1529.x, x_1529.x, x_1529.x)) + x_1532);
          let x_1534 : i32 = u_xlati11;
          let x_1537 : i32 = u_xlati11;
          let x_1541 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1534 + 2i) / 4i)][((x_1537 + 2i) % 4i)];
          let x_1542 : vec3<f32> = vs_INTERP0;
          let x_1545 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1541 * vec4<f32>(x_1542.z, x_1542.z, x_1542.z, x_1542.z)) + x_1545);
          let x_1547 : vec4<f32> = u_xlat12;
          let x_1548 : i32 = u_xlati11;
          let x_1551 : i32 = u_xlati11;
          let x_1555 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1548 + 3i) / 4i)][((x_1551 + 3i) % 4i)];
          u_xlat12 = (x_1547 + x_1555);
          let x_1557 : vec4<f32> = u_xlat12;
          let x_1559 : vec4<f32> = u_xlat12;
          let x_1561 : vec3<f32> = (vec3<f32>(x_1557.x, x_1557.y, x_1557.z) / vec3<f32>(x_1559.w, x_1559.w, x_1559.w));
          let x_1562 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1561.x, x_1561.y, x_1561.z, x_1562.w);
          let x_1564 : vec4<f32> = u_xlat12;
          let x_1566 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1564.x, x_1564.y, x_1564.z), vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
          let x_1569 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1569);
          let x_1571 : f32 = u_xlat51;
          let x_1573 : vec4<f32> = u_xlat12;
          let x_1575 : vec3<f32> = (vec3<f32>(x_1571, x_1571, x_1571) * vec3<f32>(x_1573.x, x_1573.y, x_1573.z));
          let x_1576 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1575.x, x_1575.y, x_1575.z, x_1576.w);
          let x_1578 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1578.x, x_1578.y, x_1578.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1583 : f32 = u_xlat51;
          u_xlat51 = max(x_1583, 0.000001f);
          let x_1586 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1586);
          let x_1589 : f32 = u_xlat51;
          let x_1591 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1589, x_1589, x_1589) * vec3<f32>(x_1591.z, x_1591.x, x_1591.y));
          let x_1595 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1595);
          let x_1599 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1599, 0.0f, 1.0f);
          let x_1604 : vec3<f32> = u_xlat13;
          let x_1607 : vec4<bool> = (vec4<f32>(x_1604.y, x_1604.y, x_1604.y, x_1604.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1608 : vec2<bool> = vec2<bool>(x_1607.x, x_1607.w);
          let x_1609 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1608.x, x_1609.y, x_1609.z, x_1608.y);
          let x_1613 : bool = u_xlatb11.x;
          if (x_1613) {
            let x_1618 : f32 = u_xlat13.x;
            x_1614 = x_1618;
          } else {
            let x_1621 : f32 = u_xlat13.x;
            x_1614 = -(x_1621);
          }
          let x_1623 : f32 = x_1614;
          u_xlat11.x = x_1623;
          let x_1626 : bool = u_xlatb11.w;
          if (x_1626) {
            let x_1631 : f32 = u_xlat13.x;
            x_1627 = x_1631;
          } else {
            let x_1634 : f32 = u_xlat13.x;
            x_1627 = -(x_1634);
          }
          let x_1636 : f32 = x_1627;
          u_xlat11.w = x_1636;
          let x_1638 : vec4<f32> = u_xlat12;
          let x_1640 : f32 = u_xlat51;
          let x_1643 : vec4<f32> = u_xlat11;
          let x_1645 : vec2<f32> = ((vec2<f32>(x_1638.x, x_1638.y) * vec2<f32>(x_1640, x_1640)) + vec2<f32>(x_1643.x, x_1643.w));
          let x_1646 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1645.x, x_1646.y, x_1646.z, x_1645.y);
          let x_1648 : vec4<f32> = u_xlat11;
          let x_1651 : vec2<f32> = ((vec2<f32>(x_1648.x, x_1648.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1652 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1651.x, x_1652.y, x_1652.z, x_1651.y);
          let x_1654 : vec4<f32> = u_xlat11;
          let x_1658 : vec2<f32> = clamp(vec2<f32>(x_1654.x, x_1654.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1659 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1658.x, x_1659.y, x_1659.z, x_1658.y);
          let x_1661 : u32 = u_xlatu35;
          let x_1664 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1661)];
          let x_1666 : vec4<f32> = u_xlat11;
          let x_1669 : u32 = u_xlatu35;
          let x_1672 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1669)];
          let x_1674 : vec2<f32> = ((vec2<f32>(x_1664.x, x_1664.y) * vec2<f32>(x_1666.x, x_1666.w)) + vec2<f32>(x_1672.z, x_1672.w));
          let x_1675 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1674.x, x_1674.y, x_1675.z);
        }
      }
      let x_1682 : vec3<f32> = u_xlat25;
      let x_1685 : f32 = x_132.x_GlobalMipBias.x;
      let x_1686 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1682.x, x_1682.y), x_1685);
      u_xlat11 = x_1686;
      let x_1688 : bool = u_xlatb7.y;
      if (x_1688) {
        let x_1693 : f32 = u_xlat11.w;
        x_1689 = x_1693;
      } else {
        let x_1696 : f32 = u_xlat11.x;
        x_1689 = x_1696;
      }
      let x_1697 : f32 = x_1689;
      u_xlat51 = x_1697;
      let x_1699 : bool = u_xlatb7.x;
      if (x_1699) {
        let x_1703 : vec4<f32> = u_xlat11;
        x_1700 = vec3<f32>(x_1703.x, x_1703.y, x_1703.z);
      } else {
        let x_1706 : f32 = u_xlat51;
        x_1700 = vec3<f32>(x_1706, x_1706, x_1706);
      }
      let x_1708 : vec3<f32> = x_1700;
      let x_1709 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1715 : vec4<f32> = u_xlat11;
    let x_1717 : u32 = u_xlatu35;
    let x_1720 : vec4<f32> = x_1206.x_AdditionalLightsColor[bitcast<i32>(x_1717)];
    let x_1722 : vec3<f32> = (vec3<f32>(x_1715.x, x_1715.y, x_1715.z) * vec3<f32>(x_1720.x, x_1720.y, x_1720.z));
    let x_1723 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);
    let x_1725 : f32 = u_xlat32;
    let x_1727 : vec4<f32> = u_xlat11;
    let x_1729 : vec3<f32> = (vec3<f32>(x_1725, x_1725, x_1725) * vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
    let x_1730 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
    let x_1732 : vec3<f32> = u_xlat14;
    let x_1733 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(x_1732, x_1733);
    let x_1737 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_1737, 0.0f, 1.0f);
    let x_1741 : f32 = u_xlat35.x;
    let x_1742 : f32 = u_xlat49;
    u_xlat35.x = (x_1741 * x_1742);
    let x_1745 : vec2<f32> = u_xlat35;
    let x_1747 : vec4<f32> = u_xlat11;
    let x_1749 : vec3<f32> = (vec3<f32>(x_1745.x, x_1745.x, x_1745.x) * vec3<f32>(x_1747.x, x_1747.y, x_1747.z));
    let x_1750 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
    let x_1752 : vec3<f32> = u_xlat9;
    let x_1753 : f32 = u_xlat50;
    let x_1756 : vec4<f32> = u_xlat2;
    u_xlat9 = ((x_1752 * vec3<f32>(x_1753, x_1753, x_1753)) + vec3<f32>(x_1756.x, x_1756.z, x_1756.w));
    let x_1759 : vec3<f32> = u_xlat9;
    let x_1760 : vec3<f32> = u_xlat9;
    u_xlat35.x = dot(x_1759, x_1760);
    let x_1764 : f32 = u_xlat35.x;
    u_xlat35.x = max(x_1764, 1.17549435e-37f);
    let x_1768 : f32 = u_xlat35.x;
    u_xlat35.x = inverseSqrt(x_1768);
    let x_1771 : vec2<f32> = u_xlat35;
    let x_1773 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1771.x, x_1771.x, x_1771.x) * x_1773);
    let x_1775 : vec3<f32> = u_xlat14;
    let x_1776 : vec3<f32> = u_xlat9;
    u_xlat35.x = dot(x_1775, x_1776);
    let x_1780 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_1780, 0.0f, 1.0f);
    let x_1783 : vec3<f32> = u_xlat10;
    let x_1784 : vec3<f32> = u_xlat9;
    u_xlat35.y = dot(x_1783, x_1784);
    let x_1788 : f32 = u_xlat35.y;
    u_xlat35.y = clamp(x_1788, 0.0f, 1.0f);
    let x_1791 : vec2<f32> = u_xlat35;
    let x_1792 : vec2<f32> = u_xlat35;
    u_xlat35 = (x_1791 * x_1792);
    let x_1795 : f32 = u_xlat35.x;
    let x_1797 : f32 = u_xlat18.x;
    u_xlat35.x = ((x_1795 * x_1797) + 1.000010014f);
    let x_1802 : f32 = u_xlat35.x;
    let x_1804 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1802 * x_1804);
    let x_1808 : f32 = u_xlat35.y;
    u_xlat49 = max(x_1808, 0.100000001f);
    let x_1810 : f32 = u_xlat49;
    let x_1812 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1810 * x_1812);
    let x_1816 : f32 = u_xlat20.x;
    let x_1818 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1816 * x_1818);
    let x_1821 : f32 = u_xlat47;
    let x_1823 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1821 / x_1823);
    let x_1826 : vec2<f32> = u_xlat35;
    let x_1829 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1826.x, x_1826.x, x_1826.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1829);
    let x_1831 : vec3<f32> = u_xlat9;
    let x_1832 : vec4<f32> = u_xlat11;
    let x_1835 : vec4<f32> = u_xlat8;
    let x_1837 : vec3<f32> = ((x_1831 * vec3<f32>(x_1832.x, x_1832.y, x_1832.z)) + vec3<f32>(x_1835.x, x_1835.y, x_1835.z));
    let x_1838 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);

    continuing {
      let x_1840 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1840 + bitcast<u32>(1i));
    }
  }
  let x_1842 : vec3<f32> = u_xlat17;
  let x_1843 : vec4<f32> = u_xlat4;
  let x_1846 : vec4<f32> = u_xlat6;
  u_xlat14 = ((x_1842 * vec3<f32>(x_1843.x, x_1843.x, x_1843.x)) + vec3<f32>(x_1846.x, x_1846.z, x_1846.w));
  let x_1849 : vec4<f32> = u_xlat8;
  let x_1851 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_1849.x, x_1849.y, x_1849.z) + x_1851);
  let x_1853 : vec4<f32> = vs_INTERP4;
  let x_1855 : vec3<f32> = u_xlat1;
  let x_1857 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_1853.w, x_1853.w, x_1853.w) * x_1855) + x_1857);
  let x_1860 : f32 = u_xlat3.x;
  let x_1862 : f32 = u_xlat3.x;
  u_xlat1.x = (x_1860 * -(x_1862));
  let x_1867 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1867);
  let x_1870 : vec3<f32> = u_xlat14;
  let x_1873 : vec4<f32> = x_132.unity_FogColor;
  u_xlat14 = (x_1870 + -(vec3<f32>(x_1873.x, x_1873.y, x_1873.z)));
  let x_1879 : vec3<f32> = u_xlat1;
  let x_1881 : vec3<f32> = u_xlat14;
  let x_1884 : vec4<f32> = x_132.unity_FogColor;
  let x_1886 : vec3<f32> = ((vec3<f32>(x_1879.x, x_1879.x, x_1879.x) * x_1881) + vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
  let x_1889 : bool = u_xlatb16;
  let x_1890 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1890, x_1889);
  let x_1898 : u32 = x_132.x_RenderingLayerMaxInt;
  let x_1900 : f32 = x_54.unity_RenderingLayer.x;
  u_xlatu0 = (x_1898 & bitcast<u32>(x_1900));
  let x_1903 : u32 = u_xlatu0;
  u_xlat0 = f32(x_1903);
  let x_1906 : f32 = u_xlat0;
  let x_1908 : f32 = x_132.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1906 * x_1908);
  let x_1912 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1912, 0.0f, 1.0f);
  let x_1916 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1916.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

