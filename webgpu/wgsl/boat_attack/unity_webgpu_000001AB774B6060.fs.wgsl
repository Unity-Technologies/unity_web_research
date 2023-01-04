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

@group(1) @binding(4) var<uniform> x_938 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1382 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1484 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_1021 : f32;
  var x_1032 : vec3<f32>;
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
  var x_1779 : f32;
  var x_1792 : f32;
  var x_1844 : f32;
  var x_1855 : vec3<f32>;
  var u_xlatu0 : u32;
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
  let x_737 : f32 = x_151.x_ProjectionParams.y;
  u_xlat17.x = (-(x_733) + -(x_737));
  let x_742 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_742, 0.0f);
  let x_746 : f32 = u_xlat17.x;
  let x_749 : f32 = x_151.unity_FogParams.x;
  u_xlat17.x = (x_746 * x_749);
  let x_759 : vec2<f32> = vs_INTERP5;
  let x_761 : f32 = x_151.x_GlobalMipBias.x;
  let x_762 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_759, x_761);
  u_xlat3 = vec3<f32>(x_762.x, x_762.y, x_762.z);
  let x_766 : vec4<f32> = x_151.x_ScaledScreenParams;
  let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
  u_xlat32 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_767.x, x_767.y));
  let x_772 : vec2<f32> = u_xlat32;
  let x_773 : vec4<f32> = hlslcc_FragCoord;
  let x_775 : vec2<f32> = (x_772 * vec2<f32>(x_773.x, x_773.y));
  let x_776 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_775.x, x_775.y, x_776.z);
  let x_779 : f32 = u_xlat5.y;
  let x_782 : f32 = x_151.x_ScaleBiasRt.x;
  let x_785 : f32 = x_151.x_ScaleBiasRt.y;
  u_xlat32.x = ((x_779 * x_782) + x_785);
  let x_789 : f32 = u_xlat32.x;
  u_xlat5.z = (-(x_789) + 1.0f);
  let x_794 : f32 = u_xlat8.x;
  u_xlat8.x = x_794;
  let x_797 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_797, 0.0f, 1.0f);
  let x_800 : f32 = u_xlat0;
  u_xlat0 = x_800;
  let x_801 : f32 = u_xlat0;
  u_xlat0 = clamp(x_801, 0.0f, 1.0f);
  let x_803 : vec4<f32> = u_xlat7;
  let x_807 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_808 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_811 : f32 = u_xlat8.x;
  u_xlat32.x = (-(x_811) + 1.0f);
  let x_817 : f32 = u_xlat32.x;
  let x_819 : f32 = u_xlat32.x;
  u_xlat47 = (x_817 * x_819);
  let x_821 : f32 = u_xlat47;
  u_xlat47 = max(x_821, 0.0078125f);
  let x_825 : f32 = u_xlat47;
  let x_826 : f32 = u_xlat47;
  u_xlat48 = (x_825 * x_826);
  let x_830 : f32 = u_xlat8.x;
  u_xlat49 = (x_830 + 0.040000021f);
  let x_833 : f32 = u_xlat49;
  u_xlat49 = min(x_833, 1.0f);
  let x_836 : f32 = u_xlat47;
  u_xlat20 = ((x_836 * 4.0f) + 2.0f);
  let x_845 : vec3<f32> = u_xlat5;
  let x_848 : f32 = x_151.x_GlobalMipBias.x;
  let x_849 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_845.x, x_845.z), x_848);
  u_xlat5.x = x_849.x;
  let x_854 : f32 = u_xlat5.x;
  u_xlat35 = (x_854 + -1.0f);
  let x_858 : f32 = x_151.x_AmbientOcclusionParam.w;
  let x_859 : f32 = u_xlat35;
  u_xlat35 = ((x_858 * x_859) + 1.0f);
  let x_863 : f32 = u_xlat5.x;
  let x_865 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_863, x_865);
  let x_870 : vec4<f32> = vs_INTERP9;
  let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
  let x_873 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_871.x, x_871.y, x_873);
  let x_881 : vec3<f32> = txVec1;
  let x_883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_881.xy, x_881.z);
  u_xlat50 = x_883;
  let x_884 : f32 = u_xlat50;
  let x_886 : f32 = x_337.x_MainLightShadowParams.x;
  let x_888 : f32 = u_xlat46;
  u_xlat46 = ((x_884 * x_886) + x_888);
  let x_892 : f32 = vs_INTERP9.z;
  u_xlatb50 = (0.0f >= x_892);
  let x_896 : f32 = vs_INTERP9.z;
  u_xlatb51 = (x_896 >= 1.0f);
  let x_898 : bool = u_xlatb50;
  let x_899 : bool = u_xlatb51;
  u_xlatb50 = (x_898 | x_899);
  let x_901 : bool = u_xlatb50;
  let x_902 : f32 = u_xlat46;
  u_xlat46 = select(x_902, 1.0f, x_901);
  let x_904 : vec3<f32> = vs_INTERP0;
  let x_906 : vec3<f32> = x_151.x_WorldSpaceCameraPos;
  let x_908 : vec3<f32> = (x_904 + -(x_906));
  let x_909 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat7;
  let x_913 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_911.x, x_911.y, x_911.z), vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : f32 = u_xlat50;
  let x_918 : f32 = x_337.x_MainLightShadowParams.z;
  let x_921 : f32 = x_337.x_MainLightShadowParams.w;
  u_xlat50 = ((x_916 * x_918) + x_921);
  let x_923 : f32 = u_xlat50;
  u_xlat50 = clamp(x_923, 0.0f, 1.0f);
  let x_926 : f32 = u_xlat46;
  u_xlat51 = (-(x_926) + 1.0f);
  let x_929 : f32 = u_xlat50;
  let x_930 : f32 = u_xlat51;
  let x_932 : f32 = u_xlat46;
  u_xlat46 = ((x_929 * x_930) + x_932);
  let x_940 : f32 = x_938.x_MainLightCookieTextureFormat;
  u_xlatb50 = !((x_940 == -1.0f));
  let x_942 : bool = u_xlatb50;
  if (x_942) {
    let x_945 : vec3<f32> = vs_INTERP0;
    let x_948 : vec4<f32> = x_938.x_MainLightWorldToLight[1i];
    let x_950 : vec2<f32> = (vec2<f32>(x_945.y, x_945.y) * vec2<f32>(x_948.x, x_948.y));
    let x_951 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_950.x, x_950.y, x_951.z, x_951.w);
    let x_954 : vec4<f32> = x_938.x_MainLightWorldToLight[0i];
    let x_956 : vec3<f32> = vs_INTERP0;
    let x_959 : vec4<f32> = u_xlat7;
    let x_961 : vec2<f32> = ((vec2<f32>(x_954.x, x_954.y) * vec2<f32>(x_956.x, x_956.x)) + vec2<f32>(x_959.x, x_959.y));
    let x_962 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
    let x_965 : vec4<f32> = x_938.x_MainLightWorldToLight[2i];
    let x_967 : vec3<f32> = vs_INTERP0;
    let x_970 : vec4<f32> = u_xlat7;
    let x_972 : vec2<f32> = ((vec2<f32>(x_965.x, x_965.y) * vec2<f32>(x_967.z, x_967.z)) + vec2<f32>(x_970.x, x_970.y));
    let x_973 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
    let x_975 : vec4<f32> = u_xlat7;
    let x_978 : vec4<f32> = x_938.x_MainLightWorldToLight[3i];
    let x_980 : vec2<f32> = (vec2<f32>(x_975.x, x_975.y) + vec2<f32>(x_978.x, x_978.y));
    let x_981 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
    let x_983 : vec4<f32> = u_xlat7;
    let x_987 : vec2<f32> = ((vec2<f32>(x_983.x, x_983.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_988 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_988.w);
    let x_995 : vec4<f32> = u_xlat7;
    let x_998 : f32 = x_151.x_GlobalMipBias.x;
    let x_999 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_995.x, x_995.y), x_998);
    u_xlat7 = x_999;
    let x_1002 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_1004 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_1006 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_1008 : f32 = x_938.x_MainLightCookieTextureFormat;
    let x_1009 : vec4<f32> = vec4<f32>(x_1002, x_1004, x_1006, x_1008);
    let x_1017 : vec4<bool> = (vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1009.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1017.x, x_1017.y);
    let x_1020 : bool = u_xlatb8.y;
    if (x_1020) {
      let x_1025 : f32 = u_xlat7.w;
      x_1021 = x_1025;
    } else {
      let x_1028 : f32 = u_xlat7.x;
      x_1021 = x_1028;
    }
    let x_1029 : f32 = x_1021;
    u_xlat50 = x_1029;
    let x_1031 : bool = u_xlatb8.x;
    if (x_1031) {
      let x_1035 : vec4<f32> = u_xlat7;
      x_1032 = vec3<f32>(x_1035.x, x_1035.y, x_1035.z);
    } else {
      let x_1038 : f32 = u_xlat50;
      x_1032 = vec3<f32>(x_1038, x_1038, x_1038);
    }
    let x_1040 : vec3<f32> = x_1032;
    let x_1041 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1047 : vec4<f32> = u_xlat7;
  let x_1050 : vec4<f32> = x_151.x_MainLightColor;
  let x_1052 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.y, x_1047.z) * vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
  let x_1053 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : f32 = u_xlat35;
  let x_1057 : vec4<f32> = u_xlat7;
  let x_1059 : vec3<f32> = (vec3<f32>(x_1055, x_1055, x_1055) * vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : vec3<f32> = u_xlat4;
  let x_1064 : vec3<f32> = u_xlat15;
  u_xlat50 = dot(-(x_1062), x_1064);
  let x_1066 : f32 = u_xlat50;
  let x_1067 : f32 = u_xlat50;
  u_xlat50 = (x_1066 + x_1067);
  let x_1069 : vec3<f32> = u_xlat15;
  let x_1070 : f32 = u_xlat50;
  let x_1074 : vec3<f32> = u_xlat4;
  let x_1076 : vec3<f32> = ((x_1069 * -(vec3<f32>(x_1070, x_1070, x_1070))) + -(x_1074));
  let x_1077 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1079 : vec3<f32> = u_xlat15;
  let x_1080 : vec3<f32> = u_xlat4;
  u_xlat50 = dot(x_1079, x_1080);
  let x_1082 : f32 = u_xlat50;
  u_xlat50 = clamp(x_1082, 0.0f, 1.0f);
  let x_1084 : f32 = u_xlat50;
  u_xlat50 = (-(x_1084) + 1.0f);
  let x_1087 : f32 = u_xlat50;
  let x_1088 : f32 = u_xlat50;
  u_xlat50 = (x_1087 * x_1088);
  let x_1090 : f32 = u_xlat50;
  let x_1091 : f32 = u_xlat50;
  u_xlat50 = (x_1090 * x_1091);
  let x_1094 : f32 = u_xlat32.x;
  u_xlat51 = ((-(x_1094) * 0.699999988f) + 1.700000048f);
  let x_1101 : f32 = u_xlat32.x;
  let x_1102 : f32 = u_xlat51;
  u_xlat32.x = (x_1101 * x_1102);
  let x_1106 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1106 * 6.0f);
  let x_1118 : vec4<f32> = u_xlat8;
  let x_1121 : f32 = u_xlat32.x;
  let x_1122 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1118.x, x_1118.y, x_1118.z), x_1121);
  u_xlat8 = x_1122;
  let x_1124 : f32 = u_xlat8.w;
  u_xlat32.x = (x_1124 + -1.0f);
  let x_1128 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_1130 : f32 = u_xlat32.x;
  u_xlat32.x = ((x_1128 * x_1130) + 1.0f);
  let x_1135 : f32 = u_xlat32.x;
  u_xlat32.x = max(x_1135, 0.0f);
  let x_1139 : f32 = u_xlat32.x;
  u_xlat32.x = log2(x_1139);
  let x_1143 : f32 = u_xlat32.x;
  let x_1145 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat32.x = (x_1143 * x_1145);
  let x_1149 : f32 = u_xlat32.x;
  u_xlat32.x = exp2(x_1149);
  let x_1153 : f32 = u_xlat32.x;
  let x_1155 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat32.x = (x_1153 * x_1155);
  let x_1158 : vec4<f32> = u_xlat8;
  let x_1160 : vec2<f32> = u_xlat32;
  let x_1162 : vec3<f32> = (vec3<f32>(x_1158.x, x_1158.y, x_1158.z) * vec3<f32>(x_1160.x, x_1160.x, x_1160.x));
  let x_1163 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
  let x_1165 : f32 = u_xlat47;
  let x_1167 : f32 = u_xlat47;
  u_xlat32 = ((vec2<f32>(x_1165, x_1165) * vec2<f32>(x_1167, x_1167)) + vec2<f32>(-1.0f, 1.0f));
  let x_1173 : f32 = u_xlat32.y;
  u_xlat47 = (1.0f / x_1173);
  let x_1175 : f32 = u_xlat49;
  u_xlat49 = (x_1175 + -0.039999999f);
  let x_1178 : f32 = u_xlat50;
  let x_1179 : f32 = u_xlat49;
  u_xlat49 = ((x_1178 * x_1179) + 0.039999999f);
  let x_1183 : f32 = u_xlat47;
  let x_1184 : f32 = u_xlat49;
  u_xlat47 = (x_1183 * x_1184);
  let x_1186 : f32 = u_xlat47;
  let x_1188 : vec4<f32> = u_xlat8;
  let x_1190 : vec3<f32> = (vec3<f32>(x_1186, x_1186, x_1186) * vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1191 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1193 : vec3<f32> = u_xlat3;
  let x_1194 : vec4<f32> = u_xlat6;
  let x_1197 : vec4<f32> = u_xlat8;
  u_xlat3 = ((x_1193 * vec3<f32>(x_1194.x, x_1194.y, x_1194.z)) + vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1200 : f32 = u_xlat46;
  let x_1202 : f32 = x_89.unity_LightData.z;
  u_xlat46 = (x_1200 * x_1202);
  let x_1204 : vec3<f32> = u_xlat15;
  let x_1206 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat47 = dot(x_1204, vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
  let x_1209 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1209, 0.0f, 1.0f);
  let x_1211 : f32 = u_xlat46;
  let x_1212 : f32 = u_xlat47;
  u_xlat46 = (x_1211 * x_1212);
  let x_1214 : f32 = u_xlat46;
  let x_1216 : vec4<f32> = u_xlat7;
  let x_1218 : vec3<f32> = (vec3<f32>(x_1214, x_1214, x_1214) * vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
  let x_1219 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
  let x_1221 : vec3<f32> = u_xlat4;
  let x_1223 : vec4<f32> = x_151.x_MainLightPosition;
  let x_1225 : vec3<f32> = (x_1221 + vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
  let x_1226 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
  let x_1228 : vec4<f32> = u_xlat8;
  let x_1230 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_1228.x, x_1228.y, x_1228.z), vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
  let x_1233 : f32 = u_xlat46;
  u_xlat46 = max(x_1233, 1.17549435e-37f);
  let x_1235 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_1235);
  let x_1237 : f32 = u_xlat46;
  let x_1239 : vec4<f32> = u_xlat8;
  let x_1241 : vec3<f32> = (vec3<f32>(x_1237, x_1237, x_1237) * vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec3<f32> = u_xlat15;
  let x_1245 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(x_1244, vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
  let x_1248 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1248, 0.0f, 1.0f);
  let x_1251 : vec4<f32> = x_151.x_MainLightPosition;
  let x_1253 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_1251.x, x_1251.y, x_1251.z), vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
  let x_1256 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1256, 0.0f, 1.0f);
  let x_1258 : f32 = u_xlat46;
  let x_1259 : f32 = u_xlat46;
  u_xlat46 = (x_1258 * x_1259);
  let x_1261 : f32 = u_xlat46;
  let x_1263 : f32 = u_xlat32.x;
  u_xlat46 = ((x_1261 * x_1263) + 1.000010014f);
  let x_1267 : f32 = u_xlat47;
  let x_1268 : f32 = u_xlat47;
  u_xlat47 = (x_1267 * x_1268);
  let x_1270 : f32 = u_xlat46;
  let x_1271 : f32 = u_xlat46;
  u_xlat46 = (x_1270 * x_1271);
  let x_1273 : f32 = u_xlat47;
  u_xlat47 = max(x_1273, 0.100000001f);
  let x_1276 : f32 = u_xlat46;
  let x_1277 : f32 = u_xlat47;
  u_xlat46 = (x_1276 * x_1277);
  let x_1279 : f32 = u_xlat20;
  let x_1280 : f32 = u_xlat46;
  u_xlat46 = (x_1279 * x_1280);
  let x_1282 : f32 = u_xlat48;
  let x_1283 : f32 = u_xlat46;
  u_xlat46 = (x_1282 / x_1283);
  let x_1285 : f32 = u_xlat46;
  let x_1289 : vec4<f32> = u_xlat6;
  let x_1291 : vec3<f32> = ((vec3<f32>(x_1285, x_1285, x_1285) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
  let x_1292 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
  let x_1294 : vec4<f32> = u_xlat7;
  let x_1296 : vec4<f32> = u_xlat8;
  let x_1298 : vec3<f32> = (vec3<f32>(x_1294.x, x_1294.y, x_1294.z) * vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
  let x_1299 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
  let x_1303 : f32 = x_151.x_AdditionalLightsCount.x;
  let x_1305 : f32 = x_89.unity_LightData.y;
  u_xlat46 = min(x_1303, x_1305);
  let x_1308 : f32 = u_xlat46;
  u_xlatu46 = bitcast<u32>(i32(x_1308));
  let x_1312 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1314 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1316 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1318 : f32 = x_938.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1319 : vec4<f32> = vec4<f32>(x_1312, x_1314, x_1316, x_1318);
  let x_1325 : vec4<bool> = (vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1319.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_1325.x, x_1325.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1336 : u32 = u_xlatu_loop_1;
    let x_1337 : u32 = u_xlatu46;
    if ((x_1336 < x_1337)) {
    } else {
      break;
    }
    let x_1340 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1340 >> 2u);
    let x_1343 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_1343 & 3u));
    let x_1346 : u32 = u_xlatu49;
    let x_1349 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1346)];
    let x_1359 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1364 : vec4<u32> = indexable[x_1359];
    u_xlat49 = dot(x_1349, bitcast<vec4<f32>>(x_1364));
    let x_1367 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_1367));
    let x_1371 : vec3<f32> = vs_INTERP0;
    let x_1383 : u32 = u_xlatu49;
    let x_1386 : vec4<f32> = x_1382.x_AdditionalLightsPosition[bitcast<i32>(x_1383)];
    let x_1389 : u32 = u_xlatu49;
    let x_1392 : vec4<f32> = x_1382.x_AdditionalLightsPosition[bitcast<i32>(x_1389)];
    u_xlat10 = ((-(x_1371) * vec3<f32>(x_1386.w, x_1386.w, x_1386.w)) + vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
    let x_1395 : vec3<f32> = u_xlat10;
    let x_1396 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_1395, x_1396);
    let x_1398 : f32 = u_xlat50;
    u_xlat50 = max(x_1398, 6.10351562e-05f);
    let x_1401 : f32 = u_xlat50;
    u_xlat51 = inverseSqrt(x_1401);
    let x_1404 : f32 = u_xlat51;
    let x_1406 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1404, x_1404, x_1404) * x_1406);
    let x_1409 : f32 = u_xlat50;
    u_xlat52 = (1.0f / x_1409);
    let x_1411 : f32 = u_xlat50;
    let x_1412 : u32 = u_xlatu49;
    let x_1415 : f32 = x_1382.x_AdditionalLightsAttenuation[bitcast<i32>(x_1412)].x;
    u_xlat50 = (x_1411 * x_1415);
    let x_1417 : f32 = u_xlat50;
    let x_1419 : f32 = u_xlat50;
    u_xlat50 = ((-(x_1417) * x_1419) + 1.0f);
    let x_1422 : f32 = u_xlat50;
    u_xlat50 = max(x_1422, 0.0f);
    let x_1424 : f32 = u_xlat50;
    let x_1425 : f32 = u_xlat50;
    u_xlat50 = (x_1424 * x_1425);
    let x_1427 : f32 = u_xlat50;
    let x_1428 : f32 = u_xlat52;
    u_xlat50 = (x_1427 * x_1428);
    let x_1430 : u32 = u_xlatu49;
    let x_1433 : vec4<f32> = x_1382.x_AdditionalLightsSpotDir[bitcast<i32>(x_1430)];
    let x_1435 : vec3<f32> = u_xlat11;
    u_xlat52 = dot(vec3<f32>(x_1433.x, x_1433.y, x_1433.z), x_1435);
    let x_1437 : f32 = u_xlat52;
    let x_1438 : u32 = u_xlatu49;
    let x_1441 : f32 = x_1382.x_AdditionalLightsAttenuation[bitcast<i32>(x_1438)].z;
    let x_1443 : u32 = u_xlatu49;
    let x_1446 : f32 = x_1382.x_AdditionalLightsAttenuation[bitcast<i32>(x_1443)].w;
    u_xlat52 = ((x_1437 * x_1441) + x_1446);
    let x_1448 : f32 = u_xlat52;
    u_xlat52 = clamp(x_1448, 0.0f, 1.0f);
    let x_1450 : f32 = u_xlat52;
    let x_1451 : f32 = u_xlat52;
    u_xlat52 = (x_1450 * x_1451);
    let x_1453 : f32 = u_xlat50;
    let x_1454 : f32 = u_xlat52;
    u_xlat50 = (x_1453 * x_1454);
    let x_1457 : u32 = u_xlatu49;
    u_xlatu52 = (x_1457 >> 5u);
    let x_1460 : u32 = u_xlatu49;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_1460) & 31i)));
    let x_1466 : i32 = u_xlati38;
    let x_1468 : u32 = u_xlatu52;
    let x_1471 : f32 = x_938.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1468)].el;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1466) & bitcast<u32>(x_1471)));
    let x_1475 : i32 = u_xlati52;
    if ((x_1475 != 0i)) {
      let x_1485 : u32 = u_xlatu49;
      let x_1488 : f32 = x_1484.x_AdditionalLightsLightTypes[bitcast<i32>(x_1485)].el;
      u_xlati52 = i32(x_1488);
      let x_1490 : i32 = u_xlati52;
      u_xlati38 = select(1i, 0i, (x_1490 != 0i));
      let x_1494 : u32 = u_xlatu49;
      u_xlati53 = (bitcast<i32>(x_1494) << bitcast<u32>(2i));
      let x_1497 : i32 = u_xlati38;
      if ((x_1497 != 0i)) {
        let x_1502 : vec3<f32> = vs_INTERP0;
        let x_1504 : i32 = u_xlati53;
        let x_1507 : i32 = u_xlati53;
        let x_1511 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[((x_1504 + 1i) / 4i)][((x_1507 + 1i) % 4i)];
        let x_1513 : vec3<f32> = (vec3<f32>(x_1502.y, x_1502.y, x_1502.y) * vec3<f32>(x_1511.x, x_1511.y, x_1511.w));
        let x_1514 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
        let x_1516 : i32 = u_xlati53;
        let x_1518 : i32 = u_xlati53;
        let x_1521 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[(x_1516 / 4i)][(x_1518 % 4i)];
        let x_1523 : vec3<f32> = vs_INTERP0;
        let x_1526 : vec4<f32> = u_xlat12;
        let x_1528 : vec3<f32> = ((vec3<f32>(x_1521.x, x_1521.y, x_1521.w) * vec3<f32>(x_1523.x, x_1523.x, x_1523.x)) + vec3<f32>(x_1526.x, x_1526.y, x_1526.z));
        let x_1529 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1528.x, x_1528.y, x_1528.z, x_1529.w);
        let x_1531 : i32 = u_xlati53;
        let x_1534 : i32 = u_xlati53;
        let x_1538 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[((x_1531 + 2i) / 4i)][((x_1534 + 2i) % 4i)];
        let x_1540 : vec3<f32> = vs_INTERP0;
        let x_1543 : vec4<f32> = u_xlat12;
        let x_1545 : vec3<f32> = ((vec3<f32>(x_1538.x, x_1538.y, x_1538.w) * vec3<f32>(x_1540.z, x_1540.z, x_1540.z)) + vec3<f32>(x_1543.x, x_1543.y, x_1543.z));
        let x_1546 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1546.w);
        let x_1548 : vec4<f32> = u_xlat12;
        let x_1550 : i32 = u_xlati53;
        let x_1553 : i32 = u_xlati53;
        let x_1557 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[((x_1550 + 3i) / 4i)][((x_1553 + 3i) % 4i)];
        let x_1559 : vec3<f32> = (vec3<f32>(x_1548.x, x_1548.y, x_1548.z) + vec3<f32>(x_1557.x, x_1557.y, x_1557.w));
        let x_1560 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
        let x_1562 : vec4<f32> = u_xlat12;
        let x_1564 : vec4<f32> = u_xlat12;
        let x_1566 : vec2<f32> = (vec2<f32>(x_1562.x, x_1562.y) / vec2<f32>(x_1564.z, x_1564.z));
        let x_1567 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1566.x, x_1566.y, x_1567.z, x_1567.w);
        let x_1569 : vec4<f32> = u_xlat12;
        let x_1572 : vec2<f32> = ((vec2<f32>(x_1569.x, x_1569.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1573 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1572.x, x_1572.y, x_1573.z, x_1573.w);
        let x_1575 : vec4<f32> = u_xlat12;
        let x_1579 : vec2<f32> = clamp(vec2<f32>(x_1575.x, x_1575.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1580 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1579.x, x_1579.y, x_1580.z, x_1580.w);
        let x_1582 : u32 = u_xlatu49;
        let x_1585 : vec4<f32> = x_1484.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1582)];
        let x_1587 : vec4<f32> = u_xlat12;
        let x_1590 : u32 = u_xlatu49;
        let x_1593 : vec4<f32> = x_1484.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1590)];
        let x_1595 : vec2<f32> = ((vec2<f32>(x_1585.x, x_1585.y) * vec2<f32>(x_1587.x, x_1587.y)) + vec2<f32>(x_1593.z, x_1593.w));
        let x_1596 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1595.x, x_1595.y, x_1596.z, x_1596.w);
      } else {
        let x_1600 : i32 = u_xlati52;
        u_xlatb52 = (x_1600 == 1i);
        let x_1602 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1602);
        let x_1604 : i32 = u_xlati52;
        if ((x_1604 != 0i)) {
          let x_1609 : vec3<f32> = vs_INTERP0;
          let x_1611 : i32 = u_xlati53;
          let x_1614 : i32 = u_xlati53;
          let x_1618 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[((x_1611 + 1i) / 4i)][((x_1614 + 1i) % 4i)];
          u_xlat42 = (vec2<f32>(x_1609.y, x_1609.y) * vec2<f32>(x_1618.x, x_1618.y));
          let x_1621 : i32 = u_xlati53;
          let x_1623 : i32 = u_xlati53;
          let x_1626 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[(x_1621 / 4i)][(x_1623 % 4i)];
          let x_1628 : vec3<f32> = vs_INTERP0;
          let x_1631 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1626.x, x_1626.y) * vec2<f32>(x_1628.x, x_1628.x)) + x_1631);
          let x_1633 : i32 = u_xlati53;
          let x_1636 : i32 = u_xlati53;
          let x_1640 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[((x_1633 + 2i) / 4i)][((x_1636 + 2i) % 4i)];
          let x_1642 : vec3<f32> = vs_INTERP0;
          let x_1645 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1642.z, x_1642.z)) + x_1645);
          let x_1647 : vec2<f32> = u_xlat42;
          let x_1648 : i32 = u_xlati53;
          let x_1651 : i32 = u_xlati53;
          let x_1655 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[((x_1648 + 3i) / 4i)][((x_1651 + 3i) % 4i)];
          u_xlat42 = (x_1647 + vec2<f32>(x_1655.x, x_1655.y));
          let x_1658 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1658 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1661 : vec2<f32> = u_xlat42;
          u_xlat42 = fract(x_1661);
          let x_1663 : u32 = u_xlatu49;
          let x_1666 : vec4<f32> = x_1484.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1663)];
          let x_1668 : vec2<f32> = u_xlat42;
          let x_1670 : u32 = u_xlatu49;
          let x_1673 : vec4<f32> = x_1484.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1670)];
          let x_1675 : vec2<f32> = ((vec2<f32>(x_1666.x, x_1666.y) * x_1668) + vec2<f32>(x_1673.z, x_1673.w));
          let x_1676 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1675.x, x_1675.y, x_1676.z, x_1676.w);
        } else {
          let x_1680 : vec3<f32> = vs_INTERP0;
          let x_1682 : i32 = u_xlati53;
          let x_1685 : i32 = u_xlati53;
          let x_1689 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[((x_1682 + 1i) / 4i)][((x_1685 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1680.y, x_1680.y, x_1680.y, x_1680.y) * x_1689);
          let x_1691 : i32 = u_xlati53;
          let x_1693 : i32 = u_xlati53;
          let x_1696 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[(x_1691 / 4i)][(x_1693 % 4i)];
          let x_1697 : vec3<f32> = vs_INTERP0;
          let x_1700 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1696 * vec4<f32>(x_1697.x, x_1697.x, x_1697.x, x_1697.x)) + x_1700);
          let x_1702 : i32 = u_xlati53;
          let x_1705 : i32 = u_xlati53;
          let x_1709 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[((x_1702 + 2i) / 4i)][((x_1705 + 2i) % 4i)];
          let x_1710 : vec3<f32> = vs_INTERP0;
          let x_1713 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1709 * vec4<f32>(x_1710.z, x_1710.z, x_1710.z, x_1710.z)) + x_1713);
          let x_1715 : vec4<f32> = u_xlat13;
          let x_1716 : i32 = u_xlati53;
          let x_1719 : i32 = u_xlati53;
          let x_1723 : vec4<f32> = x_1484.x_AdditionalLightsWorldToLights[((x_1716 + 3i) / 4i)][((x_1719 + 3i) % 4i)];
          u_xlat13 = (x_1715 + x_1723);
          let x_1725 : vec4<f32> = u_xlat13;
          let x_1727 : vec4<f32> = u_xlat13;
          let x_1729 : vec3<f32> = (vec3<f32>(x_1725.x, x_1725.y, x_1725.z) / vec3<f32>(x_1727.w, x_1727.w, x_1727.w));
          let x_1730 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
          let x_1732 : vec4<f32> = u_xlat13;
          let x_1734 : vec4<f32> = u_xlat13;
          u_xlat52 = dot(vec3<f32>(x_1732.x, x_1732.y, x_1732.z), vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
          let x_1737 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1737);
          let x_1739 : f32 = u_xlat52;
          let x_1741 : vec4<f32> = u_xlat13;
          let x_1743 : vec3<f32> = (vec3<f32>(x_1739, x_1739, x_1739) * vec3<f32>(x_1741.x, x_1741.y, x_1741.z));
          let x_1744 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1744.w);
          let x_1746 : vec4<f32> = u_xlat13;
          u_xlat52 = dot(abs(vec3<f32>(x_1746.x, x_1746.y, x_1746.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1751 : f32 = u_xlat52;
          u_xlat52 = max(x_1751, 0.000001f);
          let x_1754 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1754);
          let x_1757 : f32 = u_xlat52;
          let x_1759 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1757, x_1757, x_1757) * vec3<f32>(x_1759.z, x_1759.x, x_1759.y));
          let x_1763 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1763);
          let x_1767 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1767, 0.0f, 1.0f);
          let x_1771 : vec3<f32> = u_xlat14;
          let x_1774 : vec4<bool> = (vec4<f32>(x_1771.y, x_1771.z, x_1771.y, x_1771.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb38 = vec2<bool>(x_1774.x, x_1774.y);
          let x_1778 : bool = u_xlatb38.x;
          if (x_1778) {
            let x_1783 : f32 = u_xlat14.x;
            x_1779 = x_1783;
          } else {
            let x_1786 : f32 = u_xlat14.x;
            x_1779 = -(x_1786);
          }
          let x_1788 : f32 = x_1779;
          u_xlat38.x = x_1788;
          let x_1791 : bool = u_xlatb38.y;
          if (x_1791) {
            let x_1796 : f32 = u_xlat14.x;
            x_1792 = x_1796;
          } else {
            let x_1799 : f32 = u_xlat14.x;
            x_1792 = -(x_1799);
          }
          let x_1801 : f32 = x_1792;
          u_xlat38.y = x_1801;
          let x_1803 : vec4<f32> = u_xlat13;
          let x_1805 : f32 = u_xlat52;
          let x_1808 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(x_1805, x_1805)) + x_1808);
          let x_1810 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1810 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1813 : vec2<f32> = u_xlat38;
          u_xlat38 = clamp(x_1813, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1817 : u32 = u_xlatu49;
          let x_1820 : vec4<f32> = x_1484.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1817)];
          let x_1822 : vec2<f32> = u_xlat38;
          let x_1824 : u32 = u_xlatu49;
          let x_1827 : vec4<f32> = x_1484.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1824)];
          let x_1829 : vec2<f32> = ((vec2<f32>(x_1820.x, x_1820.y) * x_1822) + vec2<f32>(x_1827.z, x_1827.w));
          let x_1830 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1829.x, x_1829.y, x_1830.z, x_1830.w);
        }
      }
      let x_1837 : vec4<f32> = u_xlat12;
      let x_1840 : f32 = x_151.x_GlobalMipBias.x;
      let x_1841 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1837.x, x_1837.y), x_1840);
      u_xlat12 = x_1841;
      let x_1843 : bool = u_xlatb8.y;
      if (x_1843) {
        let x_1848 : f32 = u_xlat12.w;
        x_1844 = x_1848;
      } else {
        let x_1851 : f32 = u_xlat12.x;
        x_1844 = x_1851;
      }
      let x_1852 : f32 = x_1844;
      u_xlat52 = x_1852;
      let x_1854 : bool = u_xlatb8.x;
      if (x_1854) {
        let x_1858 : vec4<f32> = u_xlat12;
        x_1855 = vec3<f32>(x_1858.x, x_1858.y, x_1858.z);
      } else {
        let x_1861 : f32 = u_xlat52;
        x_1855 = vec3<f32>(x_1861, x_1861, x_1861);
      }
      let x_1863 : vec3<f32> = x_1855;
      let x_1864 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1870 : vec4<f32> = u_xlat12;
    let x_1872 : u32 = u_xlatu49;
    let x_1875 : vec4<f32> = x_1382.x_AdditionalLightsColor[bitcast<i32>(x_1872)];
    let x_1877 : vec3<f32> = (vec3<f32>(x_1870.x, x_1870.y, x_1870.z) * vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
    let x_1878 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1878.w);
    let x_1880 : f32 = u_xlat35;
    let x_1882 : vec4<f32> = u_xlat12;
    let x_1884 : vec3<f32> = (vec3<f32>(x_1880, x_1880, x_1880) * vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
    let x_1885 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
    let x_1887 : vec3<f32> = u_xlat15;
    let x_1888 : vec3<f32> = u_xlat11;
    u_xlat49 = dot(x_1887, x_1888);
    let x_1890 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1890, 0.0f, 1.0f);
    let x_1892 : f32 = u_xlat49;
    let x_1893 : f32 = u_xlat50;
    u_xlat49 = (x_1892 * x_1893);
    let x_1895 : f32 = u_xlat49;
    let x_1897 : vec4<f32> = u_xlat12;
    let x_1899 : vec3<f32> = (vec3<f32>(x_1895, x_1895, x_1895) * vec3<f32>(x_1897.x, x_1897.y, x_1897.z));
    let x_1900 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);
    let x_1902 : vec3<f32> = u_xlat10;
    let x_1903 : f32 = u_xlat51;
    let x_1906 : vec3<f32> = u_xlat4;
    u_xlat10 = ((x_1902 * vec3<f32>(x_1903, x_1903, x_1903)) + x_1906);
    let x_1908 : vec3<f32> = u_xlat10;
    let x_1909 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1908, x_1909);
    let x_1911 : f32 = u_xlat49;
    u_xlat49 = max(x_1911, 1.17549435e-37f);
    let x_1913 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1913);
    let x_1915 : f32 = u_xlat49;
    let x_1917 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1915, x_1915, x_1915) * x_1917);
    let x_1919 : vec3<f32> = u_xlat15;
    let x_1920 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1919, x_1920);
    let x_1922 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1922, 0.0f, 1.0f);
    let x_1924 : vec3<f32> = u_xlat11;
    let x_1925 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_1924, x_1925);
    let x_1927 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1927, 0.0f, 1.0f);
    let x_1929 : f32 = u_xlat49;
    let x_1930 : f32 = u_xlat49;
    u_xlat49 = (x_1929 * x_1930);
    let x_1932 : f32 = u_xlat49;
    let x_1934 : f32 = u_xlat32.x;
    u_xlat49 = ((x_1932 * x_1934) + 1.000010014f);
    let x_1937 : f32 = u_xlat50;
    let x_1938 : f32 = u_xlat50;
    u_xlat50 = (x_1937 * x_1938);
    let x_1940 : f32 = u_xlat49;
    let x_1941 : f32 = u_xlat49;
    u_xlat49 = (x_1940 * x_1941);
    let x_1943 : f32 = u_xlat50;
    u_xlat50 = max(x_1943, 0.100000001f);
    let x_1945 : f32 = u_xlat49;
    let x_1946 : f32 = u_xlat50;
    u_xlat49 = (x_1945 * x_1946);
    let x_1948 : f32 = u_xlat20;
    let x_1949 : f32 = u_xlat49;
    u_xlat49 = (x_1948 * x_1949);
    let x_1951 : f32 = u_xlat48;
    let x_1952 : f32 = u_xlat49;
    u_xlat49 = (x_1951 / x_1952);
    let x_1954 : f32 = u_xlat49;
    let x_1957 : vec4<f32> = u_xlat6;
    u_xlat10 = ((vec3<f32>(x_1954, x_1954, x_1954) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
    let x_1960 : vec3<f32> = u_xlat10;
    let x_1961 : vec4<f32> = u_xlat12;
    let x_1964 : vec4<f32> = u_xlat9;
    let x_1966 : vec3<f32> = ((x_1960 * vec3<f32>(x_1961.x, x_1961.y, x_1961.z)) + vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
    let x_1967 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);

    continuing {
      let x_1969 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1969 + bitcast<u32>(1i));
    }
  }
  let x_1971 : vec3<f32> = u_xlat3;
  let x_1972 : vec3<f32> = u_xlat5;
  let x_1975 : vec4<f32> = u_xlat7;
  u_xlat15 = ((x_1971 * vec3<f32>(x_1972.x, x_1972.x, x_1972.x)) + vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : vec4<f32> = u_xlat9;
  let x_1980 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_1978.x, x_1978.y, x_1978.z) + x_1980);
  let x_1982 : vec4<f32> = vs_INTERP4;
  let x_1984 : vec3<f32> = u_xlat1;
  let x_1986 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_1982.w, x_1982.w, x_1982.w) * x_1984) + x_1986);
  let x_1989 : f32 = u_xlat17.x;
  let x_1991 : f32 = u_xlat17.x;
  u_xlat1.x = (x_1989 * -(x_1991));
  let x_1996 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1996);
  let x_1999 : vec3<f32> = u_xlat15;
  let x_2002 : vec4<f32> = x_151.unity_FogColor;
  u_xlat15 = (x_1999 + -(vec3<f32>(x_2002.x, x_2002.y, x_2002.z)));
  let x_2008 : vec3<f32> = u_xlat1;
  let x_2010 : vec3<f32> = u_xlat15;
  let x_2013 : vec4<f32> = x_151.unity_FogColor;
  let x_2015 : vec3<f32> = ((vec3<f32>(x_2008.x, x_2008.x, x_2008.x) * x_2010) + vec3<f32>(x_2013.x, x_2013.y, x_2013.z));
  let x_2016 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
  let x_2018 : bool = u_xlatb2;
  let x_2019 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_2019, x_2018);
  let x_2027 : u32 = x_151.x_RenderingLayerMaxInt;
  let x_2029 : f32 = x_89.unity_RenderingLayer.x;
  u_xlatu0 = (x_2027 & bitcast<u32>(x_2029));
  let x_2032 : u32 = u_xlatu0;
  u_xlat0 = f32(x_2032);
  let x_2035 : f32 = u_xlat0;
  let x_2037 : f32 = x_151.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2035 * x_2037);
  let x_2041 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2041, 0.0f, 1.0f);
  let x_2045 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2045.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

