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
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_89 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_151 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(6) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_251 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_337 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_937 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1381 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1483 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlatb15 : vec2<bool>;
  var u_xlat15 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat5 : vec3<f32>;
  var x_190 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlatb17 : bool;
  var x_441 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlatu17 : vec3<u32>;
  var u_xlatu47 : u32;
  var u_xlatu3 : u32;
  var u_xlati47 : i32;
  var u_xlati32 : i32;
  var u_xlatu32 : u32;
  var u_xlati17 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat32 : vec2<f32>;
  var x_577 : f32;
  var x_603 : f32;
  var x_650 : f32;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat20 : f32;
  var u_xlat35 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatb50 : bool;
  var u_xlatb51 : bool;
  var u_xlat51 : f32;
  var u_xlatb8 : vec2<bool>;
  var x_1020 : f32;
  var x_1031 : vec3<f32>;
  var u_xlatu46 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlat52 : f32;
  var u_xlatu52 : u32;
  var u_xlati38 : i32;
  var u_xlati52 : i32;
  var u_xlati53 : i32;
  var u_xlat12 : vec4<f32>;
  var u_xlatb52 : bool;
  var u_xlat42 : vec2<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb38 : vec2<bool>;
  var u_xlat38 : vec2<f32>;
  var x_1778 : f32;
  var x_1791 : f32;
  var x_1843 : f32;
  var x_1854 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec4<f32> = gl_FragCoord;
  let x_50 : vec3<f32> = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_55 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_50.x, x_50.y, x_50.z, (1.0f / x_55));
  let x_65 : vec3<f32> = vs_INTERP1;
  let x_66 : vec3<f32> = vs_INTERP1;
  u_xlat0 = dot(x_65, x_66);
  let x_68 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_68);
  let x_70 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_70);
  let x_79 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_79);
  let x_93 : f32 = x_89.unity_WorldTransformParams.w;
  u_xlatb15.y = (x_93 >= 0.0f);
  let x_100 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_100);
  let x_105 : bool = u_xlatb15.y;
  u_xlat15.y = select(-1.0f, 1.0f, x_105);
  let x_109 : f32 = u_xlat15.y;
  let x_111 : f32 = u_xlat15.x;
  u_xlat15.x = (x_109 * x_111);
  let x_115 : vec3<f32> = vs_INTERP1;
  let x_117 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_115.z, x_115.x, x_115.y) * vec3<f32>(x_117.y, x_117.z, x_117.x));
  let x_120 : vec3<f32> = vs_INTERP1;
  let x_122 : vec4<f32> = vs_INTERP2;
  let x_125 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_120.y, x_120.z, x_120.x) * vec3<f32>(x_122.z, x_122.x, x_122.y)) + -(x_125));
  let x_128 : vec3<f32> = u_xlat15;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_128.x, x_128.x, x_128.x) * x_130);
  let x_132 : f32 = u_xlat0;
  let x_134 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_132, x_132, x_132) * x_134);
  let x_137 : f32 = u_xlat0;
  let x_139 : vec4<f32> = vs_INTERP2;
  u_xlat2 = (vec3<f32>(x_137, x_137, x_137) * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_143 : vec3<f32> = u_xlat15;
  let x_144 : f32 = u_xlat0;
  u_xlat3 = (x_143 * vec3<f32>(x_144, x_144, x_144));
  let x_154 : f32 = x_151.unity_OrthoParams.w;
  u_xlatb0 = (x_154 == 0.0f);
  let x_158 : vec3<f32> = vs_INTERP0;
  let x_163 : vec3<f32> = x_151.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_158) + x_163);
  let x_166 : vec3<f32> = u_xlat4;
  let x_167 : vec3<f32> = u_xlat4;
  u_xlat46 = dot(x_166, x_167);
  let x_169 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_169);
  let x_171 : f32 = u_xlat46;
  let x_173 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_171, x_171, x_171) * x_173);
  let x_179 : f32 = x_151.unity_MatrixV[0i].z;
  u_xlat5.x = x_179;
  let x_183 : f32 = x_151.unity_MatrixV[1i].z;
  u_xlat5.y = x_183;
  let x_187 : f32 = x_151.unity_MatrixV[2i].z;
  u_xlat5.z = x_187;
  let x_189 : bool = u_xlatb0;
  if (x_189) {
    let x_193 : vec3<f32> = u_xlat4;
    x_190 = x_193;
  } else {
    let x_195 : vec3<f32> = u_xlat5;
    x_190 = x_195;
  }
  let x_196 : vec3<f32> = x_190;
  u_xlat4 = x_196;
  let x_197 : vec3<f32> = u_xlat4;
  let x_201 : vec4<f32> = x_89.unity_WorldToObject[1i];
  u_xlat5 = (vec3<f32>(x_197.y, x_197.y, x_197.y) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec4<f32> = x_89.unity_WorldToObject[0i];
  let x_207 : vec3<f32> = u_xlat4;
  let x_210 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.x, x_207.x, x_207.x)) + x_210);
  let x_213 : vec4<f32> = x_89.unity_WorldToObject[2i];
  let x_215 : vec3<f32> = u_xlat4;
  let x_218 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215.z, x_215.z, x_215.z)) + x_218);
  let x_220 : vec3<f32> = u_xlat5;
  let x_221 : vec3<f32> = u_xlat5;
  u_xlat0 = dot(x_220, x_221);
  let x_223 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_223);
  let x_225 : f32 = u_xlat0;
  let x_227 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_225, x_225, x_225) * x_227);
  let x_241 : vec4<f32> = vs_INTERP3;
  let x_244 : f32 = x_151.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_241.x, x_241.y), x_244);
  u_xlat6 = x_245;
  let x_247 : vec4<f32> = u_xlat6;
  let x_253 : vec4<f32> = x_251.Color_C30C7CA3;
  let x_255 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_264 : vec4<f32> = vs_INTERP3;
  let x_267 : f32 = x_151.x_GlobalMipBias.x;
  let x_268 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_264.x, x_264.y), x_267);
  u_xlat8 = vec4<f32>(x_268.w, x_268.x, x_268.y, x_268.z);
  let x_271 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_271.y, x_271.z, x_271.w, x_271.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_278 : vec4<f32> = u_xlat9;
  let x_279 : vec4<f32> = u_xlat9;
  u_xlat0 = dot(x_278, x_279);
  let x_281 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_281);
  let x_284 : f32 = u_xlat0;
  let x_286 : vec4<f32> = u_xlat9;
  u_xlat23 = (vec3<f32>(x_284, x_284, x_284) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_291 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_291 * 200.0f);
  let x_294 : f32 = u_xlat0;
  u_xlat0 = min(x_294, 1.0f);
  let x_296 : f32 = u_xlat0;
  let x_298 : vec4<f32> = u_xlat6;
  let x_300 : vec3<f32> = (vec3<f32>(x_296, x_296, x_296) * vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec3<f32> = u_xlat3;
  let x_304 : vec3<f32> = u_xlat23;
  u_xlat3 = (x_303 * vec3<f32>(x_304.y, x_304.y, x_304.y));
  let x_307 : vec3<f32> = u_xlat23;
  let x_309 : vec3<f32> = u_xlat2;
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_307.x, x_307.x, x_307.x) * x_309) + x_311);
  let x_313 : vec3<f32> = u_xlat23;
  let x_315 : vec3<f32> = u_xlat1;
  let x_317 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_313.z, x_313.z, x_313.z) * x_315) + x_317);
  let x_319 : vec3<f32> = u_xlat1;
  let x_320 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_319, x_320);
  let x_322 : f32 = u_xlat0;
  u_xlat0 = max(x_322, 1.17549435e-37f);
  let x_325 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_325);
  let x_327 : f32 = u_xlat0;
  let x_329 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_327, x_327, x_327) * x_329);
  let x_331 : vec3<f32> = vs_INTERP0;
  let x_339 : vec4<f32> = x_337.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_331.y, x_331.y, x_331.y) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_343 : vec4<f32> = x_337.x_MainLightWorldToShadow[0i][0i];
  let x_345 : vec3<f32> = vs_INTERP0;
  let x_348 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.x, x_345.x)) + x_348);
  let x_351 : vec4<f32> = x_337.x_MainLightWorldToShadow[0i][2i];
  let x_353 : vec3<f32> = vs_INTERP0;
  let x_356 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353.z, x_353.z, x_353.z)) + x_356);
  let x_358 : vec3<f32> = u_xlat2;
  let x_360 : vec4<f32> = x_337.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_358 + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_364 : vec3<f32> = u_xlat2;
  let x_365 : vec2<f32> = vec2<f32>(x_364.x, x_364.y);
  let x_367 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_365.x, x_365.y, x_367);
  let x_379 : vec3<f32> = txVec0;
  let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_379.xy, x_379.z);
  u_xlat0 = x_381;
  let x_384 : f32 = x_337.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_384) + 1.0f);
  let x_387 : f32 = u_xlat0;
  let x_389 : f32 = x_337.x_MainLightShadowParams.x;
  let x_391 : f32 = u_xlat46;
  u_xlat0 = ((x_387 * x_389) + x_391);
  let x_395 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_395);
  let x_399 : f32 = u_xlat2.z;
  u_xlatb17 = (x_399 >= 1.0f);
  let x_401 : bool = u_xlatb17;
  let x_402 : bool = u_xlatb2;
  u_xlatb2 = (x_401 | x_402);
  let x_404 : bool = u_xlatb2;
  let x_405 : f32 = u_xlat0;
  u_xlat0 = select(x_405, 1.0f, x_404);
  let x_407 : vec3<f32> = u_xlat1;
  let x_409 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat1.x = dot(x_407, -(vec3<f32>(x_409.x, x_409.y, x_409.z)));
  let x_415 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_415, 0.0f, 1.0f);
  let x_418 : f32 = u_xlat0;
  let x_422 : vec4<f32> = x_151.x_MainLightColor;
  u_xlat2 = (vec3<f32>(x_418, x_418, x_418) * vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec3<f32> = u_xlat1;
  let x_427 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_425.x, x_425.x, x_425.x) * x_427);
  let x_429 : vec3<f32> = u_xlat1;
  let x_430 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_429 * vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_434 : f32 = x_89.unity_LODFade.x;
  u_xlatb0 = (x_434 < 0.0f);
  let x_437 : f32 = x_89.unity_LODFade.x;
  u_xlat2.x = (x_437 + 1.0f);
  let x_440 : bool = u_xlatb0;
  if (x_440) {
    let x_445 : f32 = u_xlat2.x;
    x_441 = x_445;
  } else {
    let x_448 : f32 = x_89.unity_LODFade.x;
    x_441 = x_448;
  }
  let x_449 : f32 = x_441;
  u_xlat0 = x_449;
  let x_451 : f32 = u_xlat0;
  u_xlatb2 = (0.5f >= x_451);
  let x_454 : vec3<f32> = u_xlat5;
  let x_458 : vec4<f32> = x_151.x_ScreenParams;
  u_xlat17 = (abs(x_454) * vec3<f32>(x_458.x, x_458.y, x_458.x));
  let x_464 : vec3<f32> = u_xlat17;
  u_xlatu17 = vec3<u32>(x_464);
  let x_468 : u32 = u_xlatu17.z;
  u_xlatu47 = (x_468 * 1025u);
  let x_472 : u32 = u_xlatu47;
  u_xlatu3 = (x_472 >> 6u);
  let x_476 : u32 = u_xlatu47;
  let x_477 : u32 = u_xlatu3;
  u_xlati47 = bitcast<i32>((x_476 ^ x_477));
  let x_480 : i32 = u_xlati47;
  u_xlatu47 = (bitcast<u32>(x_480) * 9u);
  let x_484 : u32 = u_xlatu47;
  u_xlatu3 = (x_484 >> 11u);
  let x_487 : u32 = u_xlatu47;
  let x_488 : u32 = u_xlatu3;
  u_xlati47 = bitcast<i32>((x_487 ^ x_488));
  let x_491 : i32 = u_xlati47;
  u_xlati47 = (x_491 * 32769i);
  let x_495 : i32 = u_xlati47;
  let x_498 : u32 = u_xlatu17.y;
  u_xlati32 = bitcast<i32>((bitcast<u32>(x_495) ^ x_498));
  let x_502 : i32 = u_xlati32;
  u_xlatu32 = (bitcast<u32>(x_502) * 1025u);
  let x_505 : u32 = u_xlatu32;
  u_xlatu47 = (x_505 >> 6u);
  let x_507 : u32 = u_xlatu47;
  let x_508 : u32 = u_xlatu32;
  u_xlati32 = bitcast<i32>((x_507 ^ x_508));
  let x_511 : i32 = u_xlati32;
  u_xlatu32 = (bitcast<u32>(x_511) * 9u);
  let x_514 : u32 = u_xlatu32;
  u_xlatu47 = (x_514 >> 11u);
  let x_516 : u32 = u_xlatu47;
  let x_517 : u32 = u_xlatu32;
  u_xlati32 = bitcast<i32>((x_516 ^ x_517));
  let x_520 : i32 = u_xlati32;
  u_xlati32 = (x_520 * 32769i);
  let x_523 : i32 = u_xlati32;
  let x_526 : u32 = u_xlatu17.x;
  u_xlati17 = bitcast<i32>((bitcast<u32>(x_523) ^ x_526));
  let x_529 : i32 = u_xlati17;
  u_xlatu17.x = (bitcast<u32>(x_529) * 1025u);
  let x_534 : u32 = u_xlatu17.x;
  u_xlatu32 = (x_534 >> 6u);
  let x_536 : u32 = u_xlatu32;
  let x_538 : u32 = u_xlatu17.x;
  u_xlati17 = bitcast<i32>((x_536 ^ x_538));
  let x_541 : i32 = u_xlati17;
  u_xlatu17.x = (bitcast<u32>(x_541) * 9u);
  let x_546 : u32 = u_xlatu17.x;
  u_xlatu32 = (x_546 >> 11u);
  let x_548 : u32 = u_xlatu32;
  let x_550 : u32 = u_xlatu17.x;
  u_xlati17 = bitcast<i32>((x_548 ^ x_550));
  let x_553 : i32 = u_xlati17;
  u_xlati17 = (x_553 * 32769i);
  param = 1065353216i;
  let x_559 : i32 = u_xlati17;
  param_1 = x_559;
  param_2 = 0i;
  param_3 = 23i;
  let x_562 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat17.x = bitcast<f32>(x_562);
  let x_566 : f32 = u_xlat17.x;
  u_xlat17.x = (x_566 + -1.0f);
  let x_572 : f32 = u_xlat17.x;
  u_xlat32.x = (-(x_572) + 1.0f);
  let x_576 : bool = u_xlatb2;
  if (x_576) {
    let x_581 : f32 = u_xlat17.x;
    x_577 = x_581;
  } else {
    let x_584 : f32 = u_xlat32.x;
    x_577 = x_584;
  }
  let x_585 : f32 = x_577;
  u_xlat2.x = x_585;
  let x_587 : f32 = u_xlat0;
  let x_590 : f32 = u_xlat2.x;
  u_xlat0 = ((x_587 * 2.0f) + -(x_590));
  let x_593 : f32 = u_xlat0;
  let x_595 : f32 = u_xlat6.w;
  u_xlat2.x = (x_593 * x_595);
  let x_599 : f32 = u_xlat2.x;
  u_xlatb17 = (x_599 >= 0.400000006f);
  let x_602 : bool = u_xlatb17;
  if (x_602) {
    let x_607 : f32 = u_xlat2.x;
    x_603 = x_607;
  } else {
    x_603 = 0.0f;
  }
  let x_609 : f32 = x_603;
  u_xlat17.x = x_609;
  let x_612 : f32 = u_xlat6.w;
  let x_613 : f32 = u_xlat0;
  u_xlat0 = ((x_612 * x_613) + -0.400000006f);
  let x_618 : f32 = u_xlat2.x;
  u_xlat32.x = dpdxCoarse(x_618);
  let x_622 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_622);
  let x_626 : f32 = u_xlat2.x;
  let x_629 : f32 = u_xlat32.x;
  u_xlat2.x = (abs(x_626) + abs(x_629));
  let x_634 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_634, 0.0001f);
  let x_638 : f32 = u_xlat0;
  let x_640 : f32 = u_xlat2.x;
  u_xlat0 = (x_638 / x_640);
  let x_642 : f32 = u_xlat0;
  u_xlat0 = (x_642 + 0.5f);
  let x_644 : f32 = u_xlat0;
  u_xlat0 = clamp(x_644, 0.0f, 1.0f);
  let x_647 : f32 = x_151.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_647 == 0.0f));
  let x_649 : bool = u_xlatb2;
  if (x_649) {
    let x_653 : f32 = u_xlat0;
    x_650 = x_653;
  } else {
    let x_656 : f32 = u_xlat17.x;
    x_650 = x_656;
  }
  let x_657 : f32 = x_650;
  u_xlat0 = x_657;
  let x_658 : f32 = u_xlat0;
  u_xlat17.x = (x_658 + -0.0001f);
  let x_663 : f32 = u_xlat17.x;
  u_xlatb17 = (x_663 < 0.0f);
  let x_665 : bool = u_xlatb17;
  if (((select(0i, 1i, x_665) * -1i) != 0i)) {
    discard;
  }
  let x_673 : vec3<f32> = u_xlat15;
  let x_674 : vec3<f32> = u_xlat23;
  u_xlat15 = (x_673 * vec3<f32>(x_674.y, x_674.y, x_674.y));
  let x_677 : vec3<f32> = u_xlat23;
  let x_679 : vec4<f32> = vs_INTERP2;
  let x_682 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_677.x, x_677.x, x_677.x) * vec3<f32>(x_679.x, x_679.y, x_679.z)) + x_682);
  let x_684 : vec3<f32> = u_xlat23;
  let x_686 : vec3<f32> = vs_INTERP1;
  let x_688 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_684.z, x_684.z, x_684.z) * x_686) + x_688);
  let x_690 : vec3<f32> = u_xlat15;
  let x_691 : vec3<f32> = u_xlat15;
  u_xlat17.x = dot(x_690, x_691);
  let x_695 : f32 = u_xlat17.x;
  u_xlat17.x = inverseSqrt(x_695);
  let x_698 : vec3<f32> = u_xlat15;
  let x_699 : vec3<f32> = u_xlat17;
  u_xlat15 = (x_698 * vec3<f32>(x_699.x, x_699.x, x_699.x));
  let x_703 : f32 = vs_INTERP0.y;
  let x_705 : f32 = x_151.unity_MatrixV[1i].z;
  u_xlat17.x = (x_703 * x_705);
  let x_709 : f32 = x_151.unity_MatrixV[0i].z;
  let x_711 : f32 = vs_INTERP0.x;
  let x_714 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_709 * x_711) + x_714);
  let x_718 : f32 = x_151.unity_MatrixV[2i].z;
  let x_720 : f32 = vs_INTERP0.z;
  let x_723 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_718 * x_720) + x_723);
  let x_727 : f32 = u_xlat17.x;
  let x_729 : f32 = x_151.unity_MatrixV[3i].z;
  u_xlat17.x = (x_727 + x_729);
  let x_733 : f32 = u_xlat17.x;
  let x_736 : f32 = x_151.x_ProjectionParams.y;
  u_xlat17.x = (-(x_733) + -(x_736));
  let x_741 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_741, 0.0f);
  let x_745 : f32 = u_xlat17.x;
  let x_748 : f32 = x_151.unity_FogParams.x;
  u_xlat17.x = (x_745 * x_748);
  let x_758 : vec2<f32> = vs_INTERP5;
  let x_760 : f32 = x_151.x_GlobalMipBias.x;
  let x_761 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_758, x_760);
  u_xlat3 = vec3<f32>(x_761.x, x_761.y, x_761.z);
  let x_765 : vec4<f32> = x_151.x_ScaledScreenParams;
  let x_766 : vec2<f32> = vec2<f32>(x_765.x, x_765.y);
  u_xlat32 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_766.x, x_766.y));
  let x_771 : vec2<f32> = u_xlat32;
  let x_772 : vec4<f32> = hlslcc_FragCoord;
  let x_774 : vec2<f32> = (x_771 * vec2<f32>(x_772.x, x_772.y));
  let x_775 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_774.x, x_774.y, x_775.z);
  let x_778 : f32 = u_xlat5.y;
  let x_781 : f32 = x_151.x_ScaleBiasRt.x;
  let x_784 : f32 = x_151.x_ScaleBiasRt.y;
  u_xlat32.x = ((x_778 * x_781) + x_784);
  let x_788 : f32 = u_xlat32.x;
  u_xlat5.z = (-(x_788) + 1.0f);
  let x_793 : f32 = u_xlat8.x;
  u_xlat8.x = x_793;
  let x_796 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_796, 0.0f, 1.0f);
  let x_799 : f32 = u_xlat0;
  u_xlat0 = x_799;
  let x_800 : f32 = u_xlat0;
  u_xlat0 = clamp(x_800, 0.0f, 1.0f);
  let x_802 : vec4<f32> = u_xlat7;
  let x_806 : vec3<f32> = (vec3<f32>(x_802.x, x_802.y, x_802.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_807 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_810 : f32 = u_xlat8.x;
  u_xlat32.x = (-(x_810) + 1.0f);
  let x_816 : f32 = u_xlat32.x;
  let x_818 : f32 = u_xlat32.x;
  u_xlat47 = (x_816 * x_818);
  let x_820 : f32 = u_xlat47;
  u_xlat47 = max(x_820, 0.0078125f);
  let x_824 : f32 = u_xlat47;
  let x_825 : f32 = u_xlat47;
  u_xlat48 = (x_824 * x_825);
  let x_829 : f32 = u_xlat8.x;
  u_xlat49 = (x_829 + 0.040000021f);
  let x_832 : f32 = u_xlat49;
  u_xlat49 = min(x_832, 1.0f);
  let x_835 : f32 = u_xlat47;
  u_xlat20 = ((x_835 * 4.0f) + 2.0f);
  let x_844 : vec3<f32> = u_xlat5;
  let x_847 : f32 = x_151.x_GlobalMipBias.x;
  let x_848 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_844.x, x_844.z), x_847);
  u_xlat5.x = x_848.x;
  let x_853 : f32 = u_xlat5.x;
  u_xlat35 = (x_853 + -1.0f);
  let x_857 : f32 = x_151.x_AmbientOcclusionParam.w;
  let x_858 : f32 = u_xlat35;
  u_xlat35 = ((x_857 * x_858) + 1.0f);
  let x_862 : f32 = u_xlat5.x;
  let x_864 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_862, x_864);
  let x_869 : vec4<f32> = vs_INTERP9;
  let x_870 : vec2<f32> = vec2<f32>(x_869.x, x_869.y);
  let x_872 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_870.x, x_870.y, x_872);
  let x_880 : vec3<f32> = txVec1;
  let x_882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_880.xy, x_880.z);
  u_xlat50 = x_882;
  let x_883 : f32 = u_xlat50;
  let x_885 : f32 = x_337.x_MainLightShadowParams.x;
  let x_887 : f32 = u_xlat46;
  u_xlat46 = ((x_883 * x_885) + x_887);
  let x_891 : f32 = vs_INTERP9.z;
  u_xlatb50 = (0.0f >= x_891);
  let x_895 : f32 = vs_INTERP9.z;
  u_xlatb51 = (x_895 >= 1.0f);
  let x_897 : bool = u_xlatb50;
  let x_898 : bool = u_xlatb51;
  u_xlatb50 = (x_897 | x_898);
  let x_900 : bool = u_xlatb50;
  let x_901 : f32 = u_xlat46;
  u_xlat46 = select(x_901, 1.0f, x_900);
  let x_903 : vec3<f32> = vs_INTERP0;
  let x_905 : vec3<f32> = x_151.x_WorldSpaceCameraPos;
  let x_907 : vec3<f32> = (x_903 + -(x_905));
  let x_908 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec4<f32> = u_xlat7;
  let x_912 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_910.x, x_910.y, x_910.z), vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : f32 = u_xlat50;
  let x_917 : f32 = x_337.x_MainLightShadowParams.z;
  let x_920 : f32 = x_337.x_MainLightShadowParams.w;
  u_xlat50 = ((x_915 * x_917) + x_920);
  let x_922 : f32 = u_xlat50;
  u_xlat50 = clamp(x_922, 0.0f, 1.0f);
  let x_925 : f32 = u_xlat46;
  u_xlat51 = (-(x_925) + 1.0f);
  let x_928 : f32 = u_xlat50;
  let x_929 : f32 = u_xlat51;
  let x_931 : f32 = u_xlat46;
  u_xlat46 = ((x_928 * x_929) + x_931);
  let x_939 : f32 = x_937.x_MainLightCookieTextureFormat;
  u_xlatb50 = !((x_939 == -1.0f));
  let x_941 : bool = u_xlatb50;
  if (x_941) {
    let x_944 : vec3<f32> = vs_INTERP0;
    let x_947 : vec4<f32> = x_937.x_MainLightWorldToLight[1i];
    let x_949 : vec2<f32> = (vec2<f32>(x_944.y, x_944.y) * vec2<f32>(x_947.x, x_947.y));
    let x_950 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
    let x_953 : vec4<f32> = x_937.x_MainLightWorldToLight[0i];
    let x_955 : vec3<f32> = vs_INTERP0;
    let x_958 : vec4<f32> = u_xlat7;
    let x_960 : vec2<f32> = ((vec2<f32>(x_953.x, x_953.y) * vec2<f32>(x_955.x, x_955.x)) + vec2<f32>(x_958.x, x_958.y));
    let x_961 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
    let x_964 : vec4<f32> = x_937.x_MainLightWorldToLight[2i];
    let x_966 : vec3<f32> = vs_INTERP0;
    let x_969 : vec4<f32> = u_xlat7;
    let x_971 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_966.z, x_966.z)) + vec2<f32>(x_969.x, x_969.y));
    let x_972 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
    let x_974 : vec4<f32> = u_xlat7;
    let x_977 : vec4<f32> = x_937.x_MainLightWorldToLight[3i];
    let x_979 : vec2<f32> = (vec2<f32>(x_974.x, x_974.y) + vec2<f32>(x_977.x, x_977.y));
    let x_980 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
    let x_982 : vec4<f32> = u_xlat7;
    let x_986 : vec2<f32> = ((vec2<f32>(x_982.x, x_982.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_987 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_986.x, x_986.y, x_987.z, x_987.w);
    let x_994 : vec4<f32> = u_xlat7;
    let x_997 : f32 = x_151.x_GlobalMipBias.x;
    let x_998 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_994.x, x_994.y), x_997);
    u_xlat7 = x_998;
    let x_1001 : f32 = x_937.x_MainLightCookieTextureFormat;
    let x_1003 : f32 = x_937.x_MainLightCookieTextureFormat;
    let x_1005 : f32 = x_937.x_MainLightCookieTextureFormat;
    let x_1007 : f32 = x_937.x_MainLightCookieTextureFormat;
    let x_1008 : vec4<f32> = vec4<f32>(x_1001, x_1003, x_1005, x_1007);
    let x_1016 : vec4<bool> = (vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1008.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1016.x, x_1016.y);
    let x_1019 : bool = u_xlatb8.y;
    if (x_1019) {
      let x_1024 : f32 = u_xlat7.w;
      x_1020 = x_1024;
    } else {
      let x_1027 : f32 = u_xlat7.x;
      x_1020 = x_1027;
    }
    let x_1028 : f32 = x_1020;
    u_xlat50 = x_1028;
    let x_1030 : bool = u_xlatb8.x;
    if (x_1030) {
      let x_1034 : vec4<f32> = u_xlat7;
      x_1031 = vec3<f32>(x_1034.x, x_1034.y, x_1034.z);
    } else {
      let x_1037 : f32 = u_xlat50;
      x_1031 = vec3<f32>(x_1037, x_1037, x_1037);
    }
    let x_1039 : vec3<f32> = x_1031;
    let x_1040 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1046 : vec4<f32> = u_xlat7;
  let x_1049 : vec4<f32> = x_151.x_MainLightColor;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) * vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : f32 = u_xlat35;
  let x_1056 : vec4<f32> = u_xlat7;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1054, x_1054, x_1054) * vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec3<f32> = u_xlat4;
  let x_1063 : vec3<f32> = u_xlat15;
  u_xlat50 = dot(-(x_1061), x_1063);
  let x_1065 : f32 = u_xlat50;
  let x_1066 : f32 = u_xlat50;
  u_xlat50 = (x_1065 + x_1066);
  let x_1068 : vec3<f32> = u_xlat15;
  let x_1069 : f32 = u_xlat50;
  let x_1073 : vec3<f32> = u_xlat4;
  let x_1075 : vec3<f32> = ((x_1068 * -(vec3<f32>(x_1069, x_1069, x_1069))) + -(x_1073));
  let x_1076 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1078 : vec3<f32> = u_xlat15;
  let x_1079 : vec3<f32> = u_xlat4;
  u_xlat50 = dot(x_1078, x_1079);
  let x_1081 : f32 = u_xlat50;
  u_xlat50 = clamp(x_1081, 0.0f, 1.0f);
  let x_1083 : f32 = u_xlat50;
  u_xlat50 = (-(x_1083) + 1.0f);
  let x_1086 : f32 = u_xlat50;
  let x_1087 : f32 = u_xlat50;
  u_xlat50 = (x_1086 * x_1087);
  let x_1089 : f32 = u_xlat50;
  let x_1090 : f32 = u_xlat50;
  u_xlat50 = (x_1089 * x_1090);
  let x_1093 : f32 = u_xlat32.x;
  u_xlat51 = ((-(x_1093) * 0.699999988f) + 1.700000048f);
  let x_1100 : f32 = u_xlat32.x;
  let x_1101 : f32 = u_xlat51;
  u_xlat32.x = (x_1100 * x_1101);
  let x_1105 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1105 * 6.0f);
  let x_1117 : vec4<f32> = u_xlat8;
  let x_1120 : f32 = u_xlat32.x;
  let x_1121 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1117.x, x_1117.y, x_1117.z), x_1120);
  u_xlat8 = x_1121;
  let x_1123 : f32 = u_xlat8.w;
  u_xlat32.x = (x_1123 + -1.0f);
  let x_1127 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_1129 : f32 = u_xlat32.x;
  u_xlat32.x = ((x_1127 * x_1129) + 1.0f);
  let x_1134 : f32 = u_xlat32.x;
  u_xlat32.x = max(x_1134, 0.0f);
  let x_1138 : f32 = u_xlat32.x;
  u_xlat32.x = log2(x_1138);
  let x_1142 : f32 = u_xlat32.x;
  let x_1144 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat32.x = (x_1142 * x_1144);
  let x_1148 : f32 = u_xlat32.x;
  u_xlat32.x = exp2(x_1148);
  let x_1152 : f32 = u_xlat32.x;
  let x_1154 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat32.x = (x_1152 * x_1154);
  let x_1157 : vec4<f32> = u_xlat8;
  let x_1159 : vec2<f32> = u_xlat32;
  let x_1161 : vec3<f32> = (vec3<f32>(x_1157.x, x_1157.y, x_1157.z) * vec3<f32>(x_1159.x, x_1159.x, x_1159.x));
  let x_1162 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : f32 = u_xlat47;
  let x_1166 : f32 = u_xlat47;
  u_xlat32 = ((vec2<f32>(x_1164, x_1164) * vec2<f32>(x_1166, x_1166)) + vec2<f32>(-1.0f, 1.0f));
  let x_1172 : f32 = u_xlat32.y;
  u_xlat47 = (1.0f / x_1172);
  let x_1174 : f32 = u_xlat49;
  u_xlat49 = (x_1174 + -0.039999999f);
  let x_1177 : f32 = u_xlat50;
  let x_1178 : f32 = u_xlat49;
  u_xlat49 = ((x_1177 * x_1178) + 0.039999999f);
  let x_1182 : f32 = u_xlat47;
  let x_1183 : f32 = u_xlat49;
  u_xlat47 = (x_1182 * x_1183);
  let x_1185 : f32 = u_xlat47;
  let x_1187 : vec4<f32> = u_xlat8;
  let x_1189 : vec3<f32> = (vec3<f32>(x_1185, x_1185, x_1185) * vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1190 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
  let x_1192 : vec3<f32> = u_xlat3;
  let x_1193 : vec4<f32> = u_xlat6;
  let x_1196 : vec4<f32> = u_xlat8;
  u_xlat3 = ((x_1192 * vec3<f32>(x_1193.x, x_1193.y, x_1193.z)) + vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : f32 = u_xlat46;
  let x_1201 : f32 = x_89.unity_LightData.z;
  u_xlat46 = (x_1199 * x_1201);
  let x_1203 : vec3<f32> = u_xlat15;
  let x_1205 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat47 = dot(x_1203, vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
  let x_1208 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1208, 0.0f, 1.0f);
  let x_1210 : f32 = u_xlat46;
  let x_1211 : f32 = u_xlat47;
  u_xlat46 = (x_1210 * x_1211);
  let x_1213 : f32 = u_xlat46;
  let x_1215 : vec4<f32> = u_xlat7;
  let x_1217 : vec3<f32> = (vec3<f32>(x_1213, x_1213, x_1213) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : vec3<f32> = u_xlat4;
  let x_1222 : vec4<f32> = x_151.x_MainLightPosition;
  let x_1224 : vec3<f32> = (x_1220 + vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1227 : vec4<f32> = u_xlat8;
  let x_1229 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_1227.x, x_1227.y, x_1227.z), vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
  let x_1232 : f32 = u_xlat46;
  u_xlat46 = max(x_1232, 1.17549435e-37f);
  let x_1234 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_1234);
  let x_1236 : f32 = u_xlat46;
  let x_1238 : vec4<f32> = u_xlat8;
  let x_1240 : vec3<f32> = (vec3<f32>(x_1236, x_1236, x_1236) * vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : vec3<f32> = u_xlat15;
  let x_1244 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(x_1243, vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
  let x_1247 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1247, 0.0f, 1.0f);
  let x_1250 : vec4<f32> = x_151.x_MainLightPosition;
  let x_1252 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_1250.x, x_1250.y, x_1250.z), vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
  let x_1255 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1255, 0.0f, 1.0f);
  let x_1257 : f32 = u_xlat46;
  let x_1258 : f32 = u_xlat46;
  u_xlat46 = (x_1257 * x_1258);
  let x_1260 : f32 = u_xlat46;
  let x_1262 : f32 = u_xlat32.x;
  u_xlat46 = ((x_1260 * x_1262) + 1.000010014f);
  let x_1266 : f32 = u_xlat47;
  let x_1267 : f32 = u_xlat47;
  u_xlat47 = (x_1266 * x_1267);
  let x_1269 : f32 = u_xlat46;
  let x_1270 : f32 = u_xlat46;
  u_xlat46 = (x_1269 * x_1270);
  let x_1272 : f32 = u_xlat47;
  u_xlat47 = max(x_1272, 0.100000001f);
  let x_1275 : f32 = u_xlat46;
  let x_1276 : f32 = u_xlat47;
  u_xlat46 = (x_1275 * x_1276);
  let x_1278 : f32 = u_xlat20;
  let x_1279 : f32 = u_xlat46;
  u_xlat46 = (x_1278 * x_1279);
  let x_1281 : f32 = u_xlat48;
  let x_1282 : f32 = u_xlat46;
  u_xlat46 = (x_1281 / x_1282);
  let x_1284 : f32 = u_xlat46;
  let x_1288 : vec4<f32> = u_xlat6;
  let x_1290 : vec3<f32> = ((vec3<f32>(x_1284, x_1284, x_1284) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1293 : vec4<f32> = u_xlat7;
  let x_1295 : vec4<f32> = u_xlat8;
  let x_1297 : vec3<f32> = (vec3<f32>(x_1293.x, x_1293.y, x_1293.z) * vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
  let x_1298 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
  let x_1302 : f32 = x_151.x_AdditionalLightsCount.x;
  let x_1304 : f32 = x_89.unity_LightData.y;
  u_xlat46 = min(x_1302, x_1304);
  let x_1307 : f32 = u_xlat46;
  u_xlatu46 = bitcast<u32>(i32(x_1307));
  let x_1311 : f32 = x_937.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1313 : f32 = x_937.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1315 : f32 = x_937.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1317 : f32 = x_937.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1318 : vec4<f32> = vec4<f32>(x_1311, x_1313, x_1315, x_1317);
  let x_1324 : vec4<bool> = (vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1318.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_1324.x, x_1324.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1335 : u32 = u_xlatu_loop_1;
    let x_1336 : u32 = u_xlatu46;
    if ((x_1335 < x_1336)) {
    } else {
      break;
    }
    let x_1339 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1339 >> 2u);
    let x_1342 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_1342 & 3u));
    let x_1345 : u32 = u_xlatu49;
    let x_1348 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1345)];
    let x_1358 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1363 : vec4<u32> = indexable[x_1358];
    u_xlat49 = dot(x_1348, bitcast<vec4<f32>>(x_1363));
    let x_1366 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_1366));
    let x_1370 : vec3<f32> = vs_INTERP0;
    let x_1382 : u32 = u_xlatu49;
    let x_1385 : vec4<f32> = x_1381.x_AdditionalLightsPosition[bitcast<i32>(x_1382)];
    let x_1388 : u32 = u_xlatu49;
    let x_1391 : vec4<f32> = x_1381.x_AdditionalLightsPosition[bitcast<i32>(x_1388)];
    u_xlat10 = ((-(x_1370) * vec3<f32>(x_1385.w, x_1385.w, x_1385.w)) + vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
    let x_1394 : vec3<f32> = u_xlat10;
    let x_1395 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_1394, x_1395);
    let x_1397 : f32 = u_xlat50;
    u_xlat50 = max(x_1397, 6.10351562e-05f);
    let x_1400 : f32 = u_xlat50;
    u_xlat51 = inverseSqrt(x_1400);
    let x_1403 : f32 = u_xlat51;
    let x_1405 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1403, x_1403, x_1403) * x_1405);
    let x_1408 : f32 = u_xlat50;
    u_xlat52 = (1.0f / x_1408);
    let x_1410 : f32 = u_xlat50;
    let x_1411 : u32 = u_xlatu49;
    let x_1414 : f32 = x_1381.x_AdditionalLightsAttenuation[bitcast<i32>(x_1411)].x;
    u_xlat50 = (x_1410 * x_1414);
    let x_1416 : f32 = u_xlat50;
    let x_1418 : f32 = u_xlat50;
    u_xlat50 = ((-(x_1416) * x_1418) + 1.0f);
    let x_1421 : f32 = u_xlat50;
    u_xlat50 = max(x_1421, 0.0f);
    let x_1423 : f32 = u_xlat50;
    let x_1424 : f32 = u_xlat50;
    u_xlat50 = (x_1423 * x_1424);
    let x_1426 : f32 = u_xlat50;
    let x_1427 : f32 = u_xlat52;
    u_xlat50 = (x_1426 * x_1427);
    let x_1429 : u32 = u_xlatu49;
    let x_1432 : vec4<f32> = x_1381.x_AdditionalLightsSpotDir[bitcast<i32>(x_1429)];
    let x_1434 : vec3<f32> = u_xlat11;
    u_xlat52 = dot(vec3<f32>(x_1432.x, x_1432.y, x_1432.z), x_1434);
    let x_1436 : f32 = u_xlat52;
    let x_1437 : u32 = u_xlatu49;
    let x_1440 : f32 = x_1381.x_AdditionalLightsAttenuation[bitcast<i32>(x_1437)].z;
    let x_1442 : u32 = u_xlatu49;
    let x_1445 : f32 = x_1381.x_AdditionalLightsAttenuation[bitcast<i32>(x_1442)].w;
    u_xlat52 = ((x_1436 * x_1440) + x_1445);
    let x_1447 : f32 = u_xlat52;
    u_xlat52 = clamp(x_1447, 0.0f, 1.0f);
    let x_1449 : f32 = u_xlat52;
    let x_1450 : f32 = u_xlat52;
    u_xlat52 = (x_1449 * x_1450);
    let x_1452 : f32 = u_xlat50;
    let x_1453 : f32 = u_xlat52;
    u_xlat50 = (x_1452 * x_1453);
    let x_1456 : u32 = u_xlatu49;
    u_xlatu52 = (x_1456 >> 5u);
    let x_1459 : u32 = u_xlatu49;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_1459) & 31i)));
    let x_1465 : i32 = u_xlati38;
    let x_1467 : u32 = u_xlatu52;
    let x_1470 : f32 = x_937.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1467)].el;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1465) & bitcast<u32>(x_1470)));
    let x_1474 : i32 = u_xlati52;
    if ((x_1474 != 0i)) {
      let x_1484 : u32 = u_xlatu49;
      let x_1487 : f32 = x_1483.x_AdditionalLightsLightTypes[bitcast<i32>(x_1484)].el;
      u_xlati52 = i32(x_1487);
      let x_1489 : i32 = u_xlati52;
      u_xlati38 = select(1i, 0i, (x_1489 != 0i));
      let x_1493 : u32 = u_xlatu49;
      u_xlati53 = (bitcast<i32>(x_1493) << bitcast<u32>(2i));
      let x_1496 : i32 = u_xlati38;
      if ((x_1496 != 0i)) {
        let x_1501 : vec3<f32> = vs_INTERP0;
        let x_1503 : i32 = u_xlati53;
        let x_1506 : i32 = u_xlati53;
        let x_1510 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[((x_1503 + 1i) / 4i)][((x_1506 + 1i) % 4i)];
        let x_1512 : vec3<f32> = (vec3<f32>(x_1501.y, x_1501.y, x_1501.y) * vec3<f32>(x_1510.x, x_1510.y, x_1510.w));
        let x_1513 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
        let x_1515 : i32 = u_xlati53;
        let x_1517 : i32 = u_xlati53;
        let x_1520 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[(x_1515 / 4i)][(x_1517 % 4i)];
        let x_1522 : vec3<f32> = vs_INTERP0;
        let x_1525 : vec4<f32> = u_xlat12;
        let x_1527 : vec3<f32> = ((vec3<f32>(x_1520.x, x_1520.y, x_1520.w) * vec3<f32>(x_1522.x, x_1522.x, x_1522.x)) + vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
        let x_1528 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
        let x_1530 : i32 = u_xlati53;
        let x_1533 : i32 = u_xlati53;
        let x_1537 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[((x_1530 + 2i) / 4i)][((x_1533 + 2i) % 4i)];
        let x_1539 : vec3<f32> = vs_INTERP0;
        let x_1542 : vec4<f32> = u_xlat12;
        let x_1544 : vec3<f32> = ((vec3<f32>(x_1537.x, x_1537.y, x_1537.w) * vec3<f32>(x_1539.z, x_1539.z, x_1539.z)) + vec3<f32>(x_1542.x, x_1542.y, x_1542.z));
        let x_1545 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
        let x_1547 : vec4<f32> = u_xlat12;
        let x_1549 : i32 = u_xlati53;
        let x_1552 : i32 = u_xlati53;
        let x_1556 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[((x_1549 + 3i) / 4i)][((x_1552 + 3i) % 4i)];
        let x_1558 : vec3<f32> = (vec3<f32>(x_1547.x, x_1547.y, x_1547.z) + vec3<f32>(x_1556.x, x_1556.y, x_1556.w));
        let x_1559 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1559.w);
        let x_1561 : vec4<f32> = u_xlat12;
        let x_1563 : vec4<f32> = u_xlat12;
        let x_1565 : vec2<f32> = (vec2<f32>(x_1561.x, x_1561.y) / vec2<f32>(x_1563.z, x_1563.z));
        let x_1566 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1565.x, x_1565.y, x_1566.z, x_1566.w);
        let x_1568 : vec4<f32> = u_xlat12;
        let x_1571 : vec2<f32> = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1572 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1571.x, x_1571.y, x_1572.z, x_1572.w);
        let x_1574 : vec4<f32> = u_xlat12;
        let x_1578 : vec2<f32> = clamp(vec2<f32>(x_1574.x, x_1574.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1579 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1578.x, x_1578.y, x_1579.z, x_1579.w);
        let x_1581 : u32 = u_xlatu49;
        let x_1584 : vec4<f32> = x_1483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1581)];
        let x_1586 : vec4<f32> = u_xlat12;
        let x_1589 : u32 = u_xlatu49;
        let x_1592 : vec4<f32> = x_1483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1589)];
        let x_1594 : vec2<f32> = ((vec2<f32>(x_1584.x, x_1584.y) * vec2<f32>(x_1586.x, x_1586.y)) + vec2<f32>(x_1592.z, x_1592.w));
        let x_1595 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1594.x, x_1594.y, x_1595.z, x_1595.w);
      } else {
        let x_1599 : i32 = u_xlati52;
        u_xlatb52 = (x_1599 == 1i);
        let x_1601 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1601);
        let x_1603 : i32 = u_xlati52;
        if ((x_1603 != 0i)) {
          let x_1608 : vec3<f32> = vs_INTERP0;
          let x_1610 : i32 = u_xlati53;
          let x_1613 : i32 = u_xlati53;
          let x_1617 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[((x_1610 + 1i) / 4i)][((x_1613 + 1i) % 4i)];
          u_xlat42 = (vec2<f32>(x_1608.y, x_1608.y) * vec2<f32>(x_1617.x, x_1617.y));
          let x_1620 : i32 = u_xlati53;
          let x_1622 : i32 = u_xlati53;
          let x_1625 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[(x_1620 / 4i)][(x_1622 % 4i)];
          let x_1627 : vec3<f32> = vs_INTERP0;
          let x_1630 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1625.x, x_1625.y) * vec2<f32>(x_1627.x, x_1627.x)) + x_1630);
          let x_1632 : i32 = u_xlati53;
          let x_1635 : i32 = u_xlati53;
          let x_1639 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[((x_1632 + 2i) / 4i)][((x_1635 + 2i) % 4i)];
          let x_1641 : vec3<f32> = vs_INTERP0;
          let x_1644 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1639.x, x_1639.y) * vec2<f32>(x_1641.z, x_1641.z)) + x_1644);
          let x_1646 : vec2<f32> = u_xlat42;
          let x_1647 : i32 = u_xlati53;
          let x_1650 : i32 = u_xlati53;
          let x_1654 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[((x_1647 + 3i) / 4i)][((x_1650 + 3i) % 4i)];
          u_xlat42 = (x_1646 + vec2<f32>(x_1654.x, x_1654.y));
          let x_1657 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1657 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1660 : vec2<f32> = u_xlat42;
          u_xlat42 = fract(x_1660);
          let x_1662 : u32 = u_xlatu49;
          let x_1665 : vec4<f32> = x_1483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1662)];
          let x_1667 : vec2<f32> = u_xlat42;
          let x_1669 : u32 = u_xlatu49;
          let x_1672 : vec4<f32> = x_1483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1669)];
          let x_1674 : vec2<f32> = ((vec2<f32>(x_1665.x, x_1665.y) * x_1667) + vec2<f32>(x_1672.z, x_1672.w));
          let x_1675 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1674.x, x_1674.y, x_1675.z, x_1675.w);
        } else {
          let x_1679 : vec3<f32> = vs_INTERP0;
          let x_1681 : i32 = u_xlati53;
          let x_1684 : i32 = u_xlati53;
          let x_1688 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[((x_1681 + 1i) / 4i)][((x_1684 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1679.y, x_1679.y, x_1679.y, x_1679.y) * x_1688);
          let x_1690 : i32 = u_xlati53;
          let x_1692 : i32 = u_xlati53;
          let x_1695 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[(x_1690 / 4i)][(x_1692 % 4i)];
          let x_1696 : vec3<f32> = vs_INTERP0;
          let x_1699 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1695 * vec4<f32>(x_1696.x, x_1696.x, x_1696.x, x_1696.x)) + x_1699);
          let x_1701 : i32 = u_xlati53;
          let x_1704 : i32 = u_xlati53;
          let x_1708 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[((x_1701 + 2i) / 4i)][((x_1704 + 2i) % 4i)];
          let x_1709 : vec3<f32> = vs_INTERP0;
          let x_1712 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1708 * vec4<f32>(x_1709.z, x_1709.z, x_1709.z, x_1709.z)) + x_1712);
          let x_1714 : vec4<f32> = u_xlat13;
          let x_1715 : i32 = u_xlati53;
          let x_1718 : i32 = u_xlati53;
          let x_1722 : vec4<f32> = x_1483.x_AdditionalLightsWorldToLights[((x_1715 + 3i) / 4i)][((x_1718 + 3i) % 4i)];
          u_xlat13 = (x_1714 + x_1722);
          let x_1724 : vec4<f32> = u_xlat13;
          let x_1726 : vec4<f32> = u_xlat13;
          let x_1728 : vec3<f32> = (vec3<f32>(x_1724.x, x_1724.y, x_1724.z) / vec3<f32>(x_1726.w, x_1726.w, x_1726.w));
          let x_1729 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
          let x_1731 : vec4<f32> = u_xlat13;
          let x_1733 : vec4<f32> = u_xlat13;
          u_xlat52 = dot(vec3<f32>(x_1731.x, x_1731.y, x_1731.z), vec3<f32>(x_1733.x, x_1733.y, x_1733.z));
          let x_1736 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1736);
          let x_1738 : f32 = u_xlat52;
          let x_1740 : vec4<f32> = u_xlat13;
          let x_1742 : vec3<f32> = (vec3<f32>(x_1738, x_1738, x_1738) * vec3<f32>(x_1740.x, x_1740.y, x_1740.z));
          let x_1743 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1742.x, x_1742.y, x_1742.z, x_1743.w);
          let x_1745 : vec4<f32> = u_xlat13;
          u_xlat52 = dot(abs(vec3<f32>(x_1745.x, x_1745.y, x_1745.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1750 : f32 = u_xlat52;
          u_xlat52 = max(x_1750, 0.000001f);
          let x_1753 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1753);
          let x_1756 : f32 = u_xlat52;
          let x_1758 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1756, x_1756, x_1756) * vec3<f32>(x_1758.z, x_1758.x, x_1758.y));
          let x_1762 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1762);
          let x_1766 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1766, 0.0f, 1.0f);
          let x_1770 : vec3<f32> = u_xlat14;
          let x_1773 : vec4<bool> = (vec4<f32>(x_1770.y, x_1770.z, x_1770.y, x_1770.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb38 = vec2<bool>(x_1773.x, x_1773.y);
          let x_1777 : bool = u_xlatb38.x;
          if (x_1777) {
            let x_1782 : f32 = u_xlat14.x;
            x_1778 = x_1782;
          } else {
            let x_1785 : f32 = u_xlat14.x;
            x_1778 = -(x_1785);
          }
          let x_1787 : f32 = x_1778;
          u_xlat38.x = x_1787;
          let x_1790 : bool = u_xlatb38.y;
          if (x_1790) {
            let x_1795 : f32 = u_xlat14.x;
            x_1791 = x_1795;
          } else {
            let x_1798 : f32 = u_xlat14.x;
            x_1791 = -(x_1798);
          }
          let x_1800 : f32 = x_1791;
          u_xlat38.y = x_1800;
          let x_1802 : vec4<f32> = u_xlat13;
          let x_1804 : f32 = u_xlat52;
          let x_1807 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1802.x, x_1802.y) * vec2<f32>(x_1804, x_1804)) + x_1807);
          let x_1809 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1809 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1812 : vec2<f32> = u_xlat38;
          u_xlat38 = clamp(x_1812, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1816 : u32 = u_xlatu49;
          let x_1819 : vec4<f32> = x_1483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1816)];
          let x_1821 : vec2<f32> = u_xlat38;
          let x_1823 : u32 = u_xlatu49;
          let x_1826 : vec4<f32> = x_1483.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1823)];
          let x_1828 : vec2<f32> = ((vec2<f32>(x_1819.x, x_1819.y) * x_1821) + vec2<f32>(x_1826.z, x_1826.w));
          let x_1829 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1828.x, x_1828.y, x_1829.z, x_1829.w);
        }
      }
      let x_1836 : vec4<f32> = u_xlat12;
      let x_1839 : f32 = x_151.x_GlobalMipBias.x;
      let x_1840 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1836.x, x_1836.y), x_1839);
      u_xlat12 = x_1840;
      let x_1842 : bool = u_xlatb8.y;
      if (x_1842) {
        let x_1847 : f32 = u_xlat12.w;
        x_1843 = x_1847;
      } else {
        let x_1850 : f32 = u_xlat12.x;
        x_1843 = x_1850;
      }
      let x_1851 : f32 = x_1843;
      u_xlat52 = x_1851;
      let x_1853 : bool = u_xlatb8.x;
      if (x_1853) {
        let x_1857 : vec4<f32> = u_xlat12;
        x_1854 = vec3<f32>(x_1857.x, x_1857.y, x_1857.z);
      } else {
        let x_1860 : f32 = u_xlat52;
        x_1854 = vec3<f32>(x_1860, x_1860, x_1860);
      }
      let x_1862 : vec3<f32> = x_1854;
      let x_1863 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1869 : vec4<f32> = u_xlat12;
    let x_1871 : u32 = u_xlatu49;
    let x_1874 : vec4<f32> = x_1381.x_AdditionalLightsColor[bitcast<i32>(x_1871)];
    let x_1876 : vec3<f32> = (vec3<f32>(x_1869.x, x_1869.y, x_1869.z) * vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
    let x_1877 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1877.w);
    let x_1879 : f32 = u_xlat35;
    let x_1881 : vec4<f32> = u_xlat12;
    let x_1883 : vec3<f32> = (vec3<f32>(x_1879, x_1879, x_1879) * vec3<f32>(x_1881.x, x_1881.y, x_1881.z));
    let x_1884 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);
    let x_1886 : vec3<f32> = u_xlat15;
    let x_1887 : vec3<f32> = u_xlat11;
    u_xlat49 = dot(x_1886, x_1887);
    let x_1889 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1889, 0.0f, 1.0f);
    let x_1891 : f32 = u_xlat49;
    let x_1892 : f32 = u_xlat50;
    u_xlat49 = (x_1891 * x_1892);
    let x_1894 : f32 = u_xlat49;
    let x_1896 : vec4<f32> = u_xlat12;
    let x_1898 : vec3<f32> = (vec3<f32>(x_1894, x_1894, x_1894) * vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
    let x_1899 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
    let x_1901 : vec3<f32> = u_xlat10;
    let x_1902 : f32 = u_xlat51;
    let x_1905 : vec3<f32> = u_xlat4;
    u_xlat10 = ((x_1901 * vec3<f32>(x_1902, x_1902, x_1902)) + x_1905);
    let x_1907 : vec3<f32> = u_xlat10;
    let x_1908 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1907, x_1908);
    let x_1910 : f32 = u_xlat49;
    u_xlat49 = max(x_1910, 1.17549435e-37f);
    let x_1912 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1912);
    let x_1914 : f32 = u_xlat49;
    let x_1916 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1914, x_1914, x_1914) * x_1916);
    let x_1918 : vec3<f32> = u_xlat15;
    let x_1919 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1918, x_1919);
    let x_1921 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1921, 0.0f, 1.0f);
    let x_1923 : vec3<f32> = u_xlat11;
    let x_1924 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_1923, x_1924);
    let x_1926 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1926, 0.0f, 1.0f);
    let x_1928 : f32 = u_xlat49;
    let x_1929 : f32 = u_xlat49;
    u_xlat49 = (x_1928 * x_1929);
    let x_1931 : f32 = u_xlat49;
    let x_1933 : f32 = u_xlat32.x;
    u_xlat49 = ((x_1931 * x_1933) + 1.000010014f);
    let x_1936 : f32 = u_xlat50;
    let x_1937 : f32 = u_xlat50;
    u_xlat50 = (x_1936 * x_1937);
    let x_1939 : f32 = u_xlat49;
    let x_1940 : f32 = u_xlat49;
    u_xlat49 = (x_1939 * x_1940);
    let x_1942 : f32 = u_xlat50;
    u_xlat50 = max(x_1942, 0.100000001f);
    let x_1944 : f32 = u_xlat49;
    let x_1945 : f32 = u_xlat50;
    u_xlat49 = (x_1944 * x_1945);
    let x_1947 : f32 = u_xlat20;
    let x_1948 : f32 = u_xlat49;
    u_xlat49 = (x_1947 * x_1948);
    let x_1950 : f32 = u_xlat48;
    let x_1951 : f32 = u_xlat49;
    u_xlat49 = (x_1950 / x_1951);
    let x_1953 : f32 = u_xlat49;
    let x_1956 : vec4<f32> = u_xlat6;
    u_xlat10 = ((vec3<f32>(x_1953, x_1953, x_1953) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
    let x_1959 : vec3<f32> = u_xlat10;
    let x_1960 : vec4<f32> = u_xlat12;
    let x_1963 : vec4<f32> = u_xlat9;
    let x_1965 : vec3<f32> = ((x_1959 * vec3<f32>(x_1960.x, x_1960.y, x_1960.z)) + vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
    let x_1966 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1965.x, x_1965.y, x_1965.z, x_1966.w);

    continuing {
      let x_1968 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1968 + bitcast<u32>(1i));
    }
  }
  let x_1970 : vec3<f32> = u_xlat3;
  let x_1971 : vec3<f32> = u_xlat5;
  let x_1974 : vec4<f32> = u_xlat7;
  u_xlat15 = ((x_1970 * vec3<f32>(x_1971.x, x_1971.x, x_1971.x)) + vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
  let x_1977 : vec4<f32> = u_xlat9;
  let x_1979 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_1977.x, x_1977.y, x_1977.z) + x_1979);
  let x_1981 : vec4<f32> = vs_INTERP4;
  let x_1983 : vec3<f32> = u_xlat1;
  let x_1985 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_1981.w, x_1981.w, x_1981.w) * x_1983) + x_1985);
  let x_1988 : f32 = u_xlat17.x;
  let x_1990 : f32 = u_xlat17.x;
  u_xlat1.x = (x_1988 * -(x_1990));
  let x_1995 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1995);
  let x_1998 : vec3<f32> = u_xlat15;
  let x_2001 : vec4<f32> = x_151.unity_FogColor;
  u_xlat15 = (x_1998 + -(vec3<f32>(x_2001.x, x_2001.y, x_2001.z)));
  let x_2007 : vec3<f32> = u_xlat1;
  let x_2009 : vec3<f32> = u_xlat15;
  let x_2012 : vec4<f32> = x_151.unity_FogColor;
  let x_2014 : vec3<f32> = ((vec3<f32>(x_2007.x, x_2007.x, x_2007.x) * x_2009) + vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
  let x_2015 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2015.w);
  let x_2017 : bool = u_xlatb2;
  let x_2018 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_2018, x_2017);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>, @location(6) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

