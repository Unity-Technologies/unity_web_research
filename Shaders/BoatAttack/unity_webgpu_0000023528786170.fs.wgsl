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

@group(1) @binding(0) var<uniform> x_153 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_253 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_343 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_984 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1431 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1533 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat3 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat5 : vec3<f32>;
  var x_192 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlatb17 : bool;
  var x_447 : f32;
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
  var x_583 : f32;
  var x_609 : f32;
  var x_656 : f32;
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
  var x_1067 : f32;
  var x_1078 : vec3<f32>;
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
  var x_1828 : f32;
  var x_1841 : f32;
  var x_1893 : f32;
  var x_1904 : vec3<f32>;
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
  let x_146 : vec3<f32> = (x_143 * vec3<f32>(x_144, x_144, x_144));
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_156 : f32 = x_153.unity_OrthoParams.w;
  u_xlatb0 = (x_156 == 0.0f);
  let x_160 : vec3<f32> = vs_INTERP0;
  let x_165 : vec3<f32> = x_153.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_160) + x_165);
  let x_168 : vec3<f32> = u_xlat4;
  let x_169 : vec3<f32> = u_xlat4;
  u_xlat46 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat46;
  let x_175 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_173, x_173, x_173) * x_175);
  let x_181 : f32 = x_153.unity_MatrixV[0i].z;
  u_xlat5.x = x_181;
  let x_185 : f32 = x_153.unity_MatrixV[1i].z;
  u_xlat5.y = x_185;
  let x_189 : f32 = x_153.unity_MatrixV[2i].z;
  u_xlat5.z = x_189;
  let x_191 : bool = u_xlatb0;
  if (x_191) {
    let x_195 : vec3<f32> = u_xlat4;
    x_192 = x_195;
  } else {
    let x_197 : vec3<f32> = u_xlat5;
    x_192 = x_197;
  }
  let x_198 : vec3<f32> = x_192;
  u_xlat4 = x_198;
  let x_199 : vec3<f32> = u_xlat4;
  let x_203 : vec4<f32> = x_89.unity_WorldToObject[1i];
  u_xlat5 = (vec3<f32>(x_199.y, x_199.y, x_199.y) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_207 : vec4<f32> = x_89.unity_WorldToObject[0i];
  let x_209 : vec3<f32> = u_xlat4;
  let x_212 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.x, x_209.x, x_209.x)) + x_212);
  let x_215 : vec4<f32> = x_89.unity_WorldToObject[2i];
  let x_217 : vec3<f32> = u_xlat4;
  let x_220 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_215.x, x_215.y, x_215.z) * vec3<f32>(x_217.z, x_217.z, x_217.z)) + x_220);
  let x_222 : vec3<f32> = u_xlat5;
  let x_223 : vec3<f32> = u_xlat5;
  u_xlat0 = dot(x_222, x_223);
  let x_225 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat0;
  let x_229 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_227, x_227, x_227) * x_229);
  let x_243 : vec4<f32> = vs_INTERP3;
  let x_246 : f32 = x_153.x_GlobalMipBias.x;
  let x_247 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_243.x, x_243.y), x_246);
  u_xlat6 = x_247;
  let x_249 : vec4<f32> = u_xlat6;
  let x_255 : vec4<f32> = x_253.Color_C30C7CA3;
  let x_257 : vec3<f32> = (vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_266 : vec4<f32> = vs_INTERP3;
  let x_269 : f32 = x_153.x_GlobalMipBias.x;
  let x_270 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_266.x, x_266.y), x_269);
  u_xlat8 = vec4<f32>(x_270.w, x_270.x, x_270.y, x_270.z);
  let x_273 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_273.y, x_273.z, x_273.w, x_273.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_280 : vec4<f32> = u_xlat9;
  let x_281 : vec4<f32> = u_xlat9;
  u_xlat0 = dot(x_280, x_281);
  let x_283 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_283);
  let x_286 : f32 = u_xlat0;
  let x_288 : vec4<f32> = u_xlat9;
  u_xlat23 = (vec3<f32>(x_286, x_286, x_286) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_293 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_293 * 200.0f);
  let x_296 : f32 = u_xlat0;
  u_xlat0 = min(x_296, 1.0f);
  let x_298 : f32 = u_xlat0;
  let x_300 : vec4<f32> = u_xlat6;
  let x_302 : vec3<f32> = (vec3<f32>(x_298, x_298, x_298) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat3;
  let x_307 : vec3<f32> = u_xlat23;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.y, x_307.y, x_307.y));
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec3<f32> = u_xlat23;
  let x_314 : vec3<f32> = u_xlat2;
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_312.x, x_312.x, x_312.x) * x_314) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec3<f32> = u_xlat23;
  let x_321 : vec3<f32> = u_xlat1;
  let x_323 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_319.z, x_319.z, x_319.z) * x_321) + x_323);
  let x_325 : vec3<f32> = u_xlat1;
  let x_326 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_325, x_326);
  let x_328 : f32 = u_xlat0;
  u_xlat0 = max(x_328, 1.17549435e-37f);
  let x_331 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_331);
  let x_333 : f32 = u_xlat0;
  let x_335 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_333, x_333, x_333) * x_335);
  let x_337 : vec3<f32> = vs_INTERP0;
  let x_345 : vec4<f32> = x_343.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_337.y, x_337.y, x_337.y) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_349 : vec4<f32> = x_343.x_MainLightWorldToShadow[0i][0i];
  let x_351 : vec3<f32> = vs_INTERP0;
  let x_354 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_351.x, x_351.x, x_351.x)) + x_354);
  let x_357 : vec4<f32> = x_343.x_MainLightWorldToShadow[0i][2i];
  let x_359 : vec3<f32> = vs_INTERP0;
  let x_362 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.z, x_359.z, x_359.z)) + x_362);
  let x_364 : vec3<f32> = u_xlat2;
  let x_366 : vec4<f32> = x_343.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_364 + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_370 : vec3<f32> = u_xlat2;
  let x_371 : vec2<f32> = vec2<f32>(x_370.x, x_370.y);
  let x_373 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_371.x, x_371.y, x_373);
  let x_385 : vec3<f32> = txVec0;
  let x_387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_385.xy, x_385.z);
  u_xlat0 = x_387;
  let x_390 : f32 = x_343.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_390) + 1.0f);
  let x_393 : f32 = u_xlat0;
  let x_395 : f32 = x_343.x_MainLightShadowParams.x;
  let x_397 : f32 = u_xlat46;
  u_xlat0 = ((x_393 * x_395) + x_397);
  let x_401 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_401);
  let x_405 : f32 = u_xlat2.z;
  u_xlatb17 = (x_405 >= 1.0f);
  let x_407 : bool = u_xlatb17;
  let x_408 : bool = u_xlatb2;
  u_xlatb2 = (x_407 | x_408);
  let x_410 : bool = u_xlatb2;
  let x_411 : f32 = u_xlat0;
  u_xlat0 = select(x_411, 1.0f, x_410);
  let x_413 : vec3<f32> = u_xlat1;
  let x_415 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat1.x = dot(x_413, -(vec3<f32>(x_415.x, x_415.y, x_415.z)));
  let x_421 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_421, 0.0f, 1.0f);
  let x_424 : f32 = u_xlat0;
  let x_428 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat2 = (vec3<f32>(x_424, x_424, x_424) * vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec3<f32> = u_xlat1;
  let x_433 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_431.x, x_431.x, x_431.x) * x_433);
  let x_435 : vec3<f32> = u_xlat1;
  let x_436 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_435 * vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_440 : f32 = x_89.unity_LODFade.x;
  u_xlatb0 = (x_440 < 0.0f);
  let x_443 : f32 = x_89.unity_LODFade.x;
  u_xlat2.x = (x_443 + 1.0f);
  let x_446 : bool = u_xlatb0;
  if (x_446) {
    let x_451 : f32 = u_xlat2.x;
    x_447 = x_451;
  } else {
    let x_454 : f32 = x_89.unity_LODFade.x;
    x_447 = x_454;
  }
  let x_455 : f32 = x_447;
  u_xlat0 = x_455;
  let x_457 : f32 = u_xlat0;
  u_xlatb2 = (0.5f >= x_457);
  let x_460 : vec3<f32> = u_xlat5;
  let x_464 : vec4<f32> = x_153.x_ScreenParams;
  u_xlat17 = (abs(x_460) * vec3<f32>(x_464.x, x_464.y, x_464.x));
  let x_470 : vec3<f32> = u_xlat17;
  u_xlatu17 = vec3<u32>(x_470);
  let x_474 : u32 = u_xlatu17.z;
  u_xlatu47 = (x_474 * 1025u);
  let x_478 : u32 = u_xlatu47;
  u_xlatu3 = (x_478 >> 6u);
  let x_482 : u32 = u_xlatu47;
  let x_483 : u32 = u_xlatu3;
  u_xlati47 = bitcast<i32>((x_482 ^ x_483));
  let x_486 : i32 = u_xlati47;
  u_xlatu47 = (bitcast<u32>(x_486) * 9u);
  let x_490 : u32 = u_xlatu47;
  u_xlatu3 = (x_490 >> 11u);
  let x_493 : u32 = u_xlatu47;
  let x_494 : u32 = u_xlatu3;
  u_xlati47 = bitcast<i32>((x_493 ^ x_494));
  let x_497 : i32 = u_xlati47;
  u_xlati47 = (x_497 * 32769i);
  let x_501 : i32 = u_xlati47;
  let x_504 : u32 = u_xlatu17.y;
  u_xlati32 = bitcast<i32>((bitcast<u32>(x_501) ^ x_504));
  let x_508 : i32 = u_xlati32;
  u_xlatu32 = (bitcast<u32>(x_508) * 1025u);
  let x_511 : u32 = u_xlatu32;
  u_xlatu47 = (x_511 >> 6u);
  let x_513 : u32 = u_xlatu47;
  let x_514 : u32 = u_xlatu32;
  u_xlati32 = bitcast<i32>((x_513 ^ x_514));
  let x_517 : i32 = u_xlati32;
  u_xlatu32 = (bitcast<u32>(x_517) * 9u);
  let x_520 : u32 = u_xlatu32;
  u_xlatu47 = (x_520 >> 11u);
  let x_522 : u32 = u_xlatu47;
  let x_523 : u32 = u_xlatu32;
  u_xlati32 = bitcast<i32>((x_522 ^ x_523));
  let x_526 : i32 = u_xlati32;
  u_xlati32 = (x_526 * 32769i);
  let x_529 : i32 = u_xlati32;
  let x_532 : u32 = u_xlatu17.x;
  u_xlati17 = bitcast<i32>((bitcast<u32>(x_529) ^ x_532));
  let x_535 : i32 = u_xlati17;
  u_xlatu17.x = (bitcast<u32>(x_535) * 1025u);
  let x_540 : u32 = u_xlatu17.x;
  u_xlatu32 = (x_540 >> 6u);
  let x_542 : u32 = u_xlatu32;
  let x_544 : u32 = u_xlatu17.x;
  u_xlati17 = bitcast<i32>((x_542 ^ x_544));
  let x_547 : i32 = u_xlati17;
  u_xlatu17.x = (bitcast<u32>(x_547) * 9u);
  let x_552 : u32 = u_xlatu17.x;
  u_xlatu32 = (x_552 >> 11u);
  let x_554 : u32 = u_xlatu32;
  let x_556 : u32 = u_xlatu17.x;
  u_xlati17 = bitcast<i32>((x_554 ^ x_556));
  let x_559 : i32 = u_xlati17;
  u_xlati17 = (x_559 * 32769i);
  param = 1065353216i;
  let x_565 : i32 = u_xlati17;
  param_1 = x_565;
  param_2 = 0i;
  param_3 = 23i;
  let x_568 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat17.x = bitcast<f32>(x_568);
  let x_572 : f32 = u_xlat17.x;
  u_xlat17.x = (x_572 + -1.0f);
  let x_578 : f32 = u_xlat17.x;
  u_xlat32.x = (-(x_578) + 1.0f);
  let x_582 : bool = u_xlatb2;
  if (x_582) {
    let x_587 : f32 = u_xlat17.x;
    x_583 = x_587;
  } else {
    let x_590 : f32 = u_xlat32.x;
    x_583 = x_590;
  }
  let x_591 : f32 = x_583;
  u_xlat2.x = x_591;
  let x_593 : f32 = u_xlat0;
  let x_596 : f32 = u_xlat2.x;
  u_xlat0 = ((x_593 * 2.0f) + -(x_596));
  let x_599 : f32 = u_xlat0;
  let x_601 : f32 = u_xlat6.w;
  u_xlat2.x = (x_599 * x_601);
  let x_605 : f32 = u_xlat2.x;
  u_xlatb17 = (x_605 >= 0.400000006f);
  let x_608 : bool = u_xlatb17;
  if (x_608) {
    let x_613 : f32 = u_xlat2.x;
    x_609 = x_613;
  } else {
    x_609 = 0.0f;
  }
  let x_615 : f32 = x_609;
  u_xlat17.x = x_615;
  let x_618 : f32 = u_xlat6.w;
  let x_619 : f32 = u_xlat0;
  u_xlat0 = ((x_618 * x_619) + -0.400000006f);
  let x_624 : f32 = u_xlat2.x;
  u_xlat32.x = dpdxCoarse(x_624);
  let x_628 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_628);
  let x_632 : f32 = u_xlat2.x;
  let x_635 : f32 = u_xlat32.x;
  u_xlat2.x = (abs(x_632) + abs(x_635));
  let x_640 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_640, 0.0001f);
  let x_644 : f32 = u_xlat0;
  let x_646 : f32 = u_xlat2.x;
  u_xlat0 = (x_644 / x_646);
  let x_648 : f32 = u_xlat0;
  u_xlat0 = (x_648 + 0.5f);
  let x_650 : f32 = u_xlat0;
  u_xlat0 = clamp(x_650, 0.0f, 1.0f);
  let x_653 : f32 = x_153.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_653 == 0.0f));
  let x_655 : bool = u_xlatb2;
  if (x_655) {
    let x_659 : f32 = u_xlat0;
    x_656 = x_659;
  } else {
    let x_662 : f32 = u_xlat17.x;
    x_656 = x_662;
  }
  let x_663 : f32 = x_656;
  u_xlat0 = x_663;
  let x_664 : f32 = u_xlat0;
  u_xlat17.x = (x_664 + -0.0001f);
  let x_669 : f32 = u_xlat17.x;
  u_xlatb17 = (x_669 < 0.0f);
  let x_671 : bool = u_xlatb17;
  if (((select(0i, 1i, x_671) * -1i) != 0i)) {
    discard;
  }
  let x_679 : vec3<f32> = u_xlat15;
  let x_680 : vec3<f32> = u_xlat23;
  u_xlat15 = (x_679 * vec3<f32>(x_680.y, x_680.y, x_680.y));
  let x_683 : vec3<f32> = u_xlat23;
  let x_685 : vec4<f32> = vs_INTERP2;
  let x_688 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_683.x, x_683.x, x_683.x) * vec3<f32>(x_685.x, x_685.y, x_685.z)) + x_688);
  let x_690 : vec3<f32> = u_xlat23;
  let x_692 : vec3<f32> = vs_INTERP1;
  let x_694 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_690.z, x_690.z, x_690.z) * x_692) + x_694);
  let x_696 : vec3<f32> = u_xlat15;
  let x_697 : vec3<f32> = u_xlat15;
  u_xlat17.x = dot(x_696, x_697);
  let x_701 : f32 = u_xlat17.x;
  u_xlat17.x = inverseSqrt(x_701);
  let x_704 : vec3<f32> = u_xlat15;
  let x_705 : vec3<f32> = u_xlat17;
  u_xlat15 = (x_704 * vec3<f32>(x_705.x, x_705.x, x_705.x));
  let x_709 : f32 = vs_INTERP0.y;
  let x_711 : f32 = x_153.unity_MatrixV[1i].z;
  u_xlat17.x = (x_709 * x_711);
  let x_715 : f32 = x_153.unity_MatrixV[0i].z;
  let x_717 : f32 = vs_INTERP0.x;
  let x_720 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_715 * x_717) + x_720);
  let x_724 : f32 = x_153.unity_MatrixV[2i].z;
  let x_726 : f32 = vs_INTERP0.z;
  let x_729 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_724 * x_726) + x_729);
  let x_733 : f32 = u_xlat17.x;
  let x_735 : f32 = x_153.unity_MatrixV[3i].z;
  u_xlat17.x = (x_733 + x_735);
  let x_739 : f32 = u_xlat17.x;
  let x_742 : f32 = x_153.x_ProjectionParams.y;
  u_xlat17.x = (-(x_739) + -(x_742));
  let x_747 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_747, 0.0f);
  let x_751 : f32 = u_xlat17.x;
  let x_754 : f32 = x_153.unity_FogParams.x;
  u_xlat17.x = (x_751 * x_754);
  let x_764 : vec2<f32> = vs_INTERP5;
  let x_766 : f32 = x_153.x_GlobalMipBias.x;
  let x_767 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_764, x_766);
  u_xlat3 = x_767;
  let x_772 : vec2<f32> = vs_INTERP5;
  let x_774 : f32 = x_153.x_GlobalMipBias.x;
  let x_775 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_772, x_774);
  u_xlat5 = vec3<f32>(x_775.x, x_775.y, x_775.z);
  let x_777 : vec4<f32> = u_xlat3;
  let x_781 : vec3<f32> = (vec3<f32>(x_777.x, x_777.y, x_777.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec3<f32> = u_xlat15;
  let x_785 : vec4<f32> = u_xlat3;
  u_xlat32.x = dot(x_784, vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_790 : f32 = u_xlat32.x;
  u_xlat32.x = (x_790 + 0.5f);
  let x_793 : vec2<f32> = u_xlat32;
  let x_795 : vec3<f32> = u_xlat5;
  let x_796 : vec3<f32> = (vec3<f32>(x_793.x, x_793.x, x_793.x) * x_795);
  let x_797 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_800 : f32 = u_xlat3.w;
  u_xlat32.x = max(x_800, 0.0001f);
  let x_803 : vec4<f32> = u_xlat3;
  let x_805 : vec2<f32> = u_xlat32;
  let x_807 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) / vec3<f32>(x_805.x, x_805.x, x_805.x));
  let x_808 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_812 : vec4<f32> = x_153.x_ScaledScreenParams;
  let x_813 : vec2<f32> = vec2<f32>(x_812.x, x_812.y);
  u_xlat32 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_813.x, x_813.y));
  let x_818 : vec2<f32> = u_xlat32;
  let x_819 : vec4<f32> = hlslcc_FragCoord;
  let x_821 : vec2<f32> = (x_818 * vec2<f32>(x_819.x, x_819.y));
  let x_822 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_821.x, x_821.y, x_822.z);
  let x_825 : f32 = u_xlat5.y;
  let x_828 : f32 = x_153.x_ScaleBiasRt.x;
  let x_831 : f32 = x_153.x_ScaleBiasRt.y;
  u_xlat32.x = ((x_825 * x_828) + x_831);
  let x_835 : f32 = u_xlat32.x;
  u_xlat5.z = (-(x_835) + 1.0f);
  let x_840 : f32 = u_xlat8.x;
  u_xlat8.x = x_840;
  let x_843 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_843, 0.0f, 1.0f);
  let x_846 : f32 = u_xlat0;
  u_xlat0 = x_846;
  let x_847 : f32 = u_xlat0;
  u_xlat0 = clamp(x_847, 0.0f, 1.0f);
  let x_849 : vec4<f32> = u_xlat7;
  let x_853 : vec3<f32> = (vec3<f32>(x_849.x, x_849.y, x_849.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_854 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_857 : f32 = u_xlat8.x;
  u_xlat32.x = (-(x_857) + 1.0f);
  let x_863 : f32 = u_xlat32.x;
  let x_865 : f32 = u_xlat32.x;
  u_xlat47 = (x_863 * x_865);
  let x_867 : f32 = u_xlat47;
  u_xlat47 = max(x_867, 0.0078125f);
  let x_871 : f32 = u_xlat47;
  let x_872 : f32 = u_xlat47;
  u_xlat48 = (x_871 * x_872);
  let x_876 : f32 = u_xlat8.x;
  u_xlat49 = (x_876 + 0.040000021f);
  let x_879 : f32 = u_xlat49;
  u_xlat49 = min(x_879, 1.0f);
  let x_882 : f32 = u_xlat47;
  u_xlat20 = ((x_882 * 4.0f) + 2.0f);
  let x_891 : vec3<f32> = u_xlat5;
  let x_894 : f32 = x_153.x_GlobalMipBias.x;
  let x_895 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_891.x, x_891.z), x_894);
  u_xlat5.x = x_895.x;
  let x_900 : f32 = u_xlat5.x;
  u_xlat35 = (x_900 + -1.0f);
  let x_904 : f32 = x_153.x_AmbientOcclusionParam.w;
  let x_905 : f32 = u_xlat35;
  u_xlat35 = ((x_904 * x_905) + 1.0f);
  let x_909 : f32 = u_xlat5.x;
  let x_911 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_909, x_911);
  let x_916 : vec4<f32> = vs_INTERP9;
  let x_917 : vec2<f32> = vec2<f32>(x_916.x, x_916.y);
  let x_919 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_917.x, x_917.y, x_919);
  let x_927 : vec3<f32> = txVec1;
  let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_927.xy, x_927.z);
  u_xlat50 = x_929;
  let x_930 : f32 = u_xlat50;
  let x_932 : f32 = x_343.x_MainLightShadowParams.x;
  let x_934 : f32 = u_xlat46;
  u_xlat46 = ((x_930 * x_932) + x_934);
  let x_938 : f32 = vs_INTERP9.z;
  u_xlatb50 = (0.0f >= x_938);
  let x_942 : f32 = vs_INTERP9.z;
  u_xlatb51 = (x_942 >= 1.0f);
  let x_944 : bool = u_xlatb50;
  let x_945 : bool = u_xlatb51;
  u_xlatb50 = (x_944 | x_945);
  let x_947 : bool = u_xlatb50;
  let x_948 : f32 = u_xlat46;
  u_xlat46 = select(x_948, 1.0f, x_947);
  let x_950 : vec3<f32> = vs_INTERP0;
  let x_952 : vec3<f32> = x_153.x_WorldSpaceCameraPos;
  let x_954 : vec3<f32> = (x_950 + -(x_952));
  let x_955 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
  let x_957 : vec4<f32> = u_xlat7;
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_957.x, x_957.y, x_957.z), vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : f32 = u_xlat50;
  let x_964 : f32 = x_343.x_MainLightShadowParams.z;
  let x_967 : f32 = x_343.x_MainLightShadowParams.w;
  u_xlat50 = ((x_962 * x_964) + x_967);
  let x_969 : f32 = u_xlat50;
  u_xlat50 = clamp(x_969, 0.0f, 1.0f);
  let x_972 : f32 = u_xlat46;
  u_xlat51 = (-(x_972) + 1.0f);
  let x_975 : f32 = u_xlat50;
  let x_976 : f32 = u_xlat51;
  let x_978 : f32 = u_xlat46;
  u_xlat46 = ((x_975 * x_976) + x_978);
  let x_986 : f32 = x_984.x_MainLightCookieTextureFormat;
  u_xlatb50 = !((x_986 == -1.0f));
  let x_988 : bool = u_xlatb50;
  if (x_988) {
    let x_991 : vec3<f32> = vs_INTERP0;
    let x_994 : vec4<f32> = x_984.x_MainLightWorldToLight[1i];
    let x_996 : vec2<f32> = (vec2<f32>(x_991.y, x_991.y) * vec2<f32>(x_994.x, x_994.y));
    let x_997 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_996.x, x_996.y, x_997.z, x_997.w);
    let x_1000 : vec4<f32> = x_984.x_MainLightWorldToLight[0i];
    let x_1002 : vec3<f32> = vs_INTERP0;
    let x_1005 : vec4<f32> = u_xlat7;
    let x_1007 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1002.x, x_1002.x)) + vec2<f32>(x_1005.x, x_1005.y));
    let x_1008 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
    let x_1011 : vec4<f32> = x_984.x_MainLightWorldToLight[2i];
    let x_1013 : vec3<f32> = vs_INTERP0;
    let x_1016 : vec4<f32> = u_xlat7;
    let x_1018 : vec2<f32> = ((vec2<f32>(x_1011.x, x_1011.y) * vec2<f32>(x_1013.z, x_1013.z)) + vec2<f32>(x_1016.x, x_1016.y));
    let x_1019 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
    let x_1021 : vec4<f32> = u_xlat7;
    let x_1024 : vec4<f32> = x_984.x_MainLightWorldToLight[3i];
    let x_1026 : vec2<f32> = (vec2<f32>(x_1021.x, x_1021.y) + vec2<f32>(x_1024.x, x_1024.y));
    let x_1027 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1027.w);
    let x_1029 : vec4<f32> = u_xlat7;
    let x_1033 : vec2<f32> = ((vec2<f32>(x_1029.x, x_1029.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1034 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
    let x_1041 : vec4<f32> = u_xlat7;
    let x_1044 : f32 = x_153.x_GlobalMipBias.x;
    let x_1045 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1041.x, x_1041.y), x_1044);
    u_xlat7 = x_1045;
    let x_1048 : f32 = x_984.x_MainLightCookieTextureFormat;
    let x_1050 : f32 = x_984.x_MainLightCookieTextureFormat;
    let x_1052 : f32 = x_984.x_MainLightCookieTextureFormat;
    let x_1054 : f32 = x_984.x_MainLightCookieTextureFormat;
    let x_1055 : vec4<f32> = vec4<f32>(x_1048, x_1050, x_1052, x_1054);
    let x_1063 : vec4<bool> = (vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1055.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1063.x, x_1063.y);
    let x_1066 : bool = u_xlatb8.y;
    if (x_1066) {
      let x_1071 : f32 = u_xlat7.w;
      x_1067 = x_1071;
    } else {
      let x_1074 : f32 = u_xlat7.x;
      x_1067 = x_1074;
    }
    let x_1075 : f32 = x_1067;
    u_xlat50 = x_1075;
    let x_1077 : bool = u_xlatb8.x;
    if (x_1077) {
      let x_1081 : vec4<f32> = u_xlat7;
      x_1078 = vec3<f32>(x_1081.x, x_1081.y, x_1081.z);
    } else {
      let x_1084 : f32 = u_xlat50;
      x_1078 = vec3<f32>(x_1084, x_1084, x_1084);
    }
    let x_1086 : vec3<f32> = x_1078;
    let x_1087 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1093 : vec4<f32> = u_xlat7;
  let x_1096 : vec4<f32> = x_153.x_MainLightColor;
  let x_1098 : vec3<f32> = (vec3<f32>(x_1093.x, x_1093.y, x_1093.z) * vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
  let x_1099 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1101 : f32 = u_xlat35;
  let x_1103 : vec4<f32> = u_xlat7;
  let x_1105 : vec3<f32> = (vec3<f32>(x_1101, x_1101, x_1101) * vec3<f32>(x_1103.x, x_1103.y, x_1103.z));
  let x_1106 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
  let x_1108 : vec3<f32> = u_xlat4;
  let x_1110 : vec3<f32> = u_xlat15;
  u_xlat50 = dot(-(x_1108), x_1110);
  let x_1112 : f32 = u_xlat50;
  let x_1113 : f32 = u_xlat50;
  u_xlat50 = (x_1112 + x_1113);
  let x_1115 : vec3<f32> = u_xlat15;
  let x_1116 : f32 = u_xlat50;
  let x_1120 : vec3<f32> = u_xlat4;
  let x_1122 : vec3<f32> = ((x_1115 * -(vec3<f32>(x_1116, x_1116, x_1116))) + -(x_1120));
  let x_1123 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1125 : vec3<f32> = u_xlat15;
  let x_1126 : vec3<f32> = u_xlat4;
  u_xlat50 = dot(x_1125, x_1126);
  let x_1128 : f32 = u_xlat50;
  u_xlat50 = clamp(x_1128, 0.0f, 1.0f);
  let x_1130 : f32 = u_xlat50;
  u_xlat50 = (-(x_1130) + 1.0f);
  let x_1133 : f32 = u_xlat50;
  let x_1134 : f32 = u_xlat50;
  u_xlat50 = (x_1133 * x_1134);
  let x_1136 : f32 = u_xlat50;
  let x_1137 : f32 = u_xlat50;
  u_xlat50 = (x_1136 * x_1137);
  let x_1140 : f32 = u_xlat32.x;
  u_xlat51 = ((-(x_1140) * 0.699999988f) + 1.700000048f);
  let x_1147 : f32 = u_xlat32.x;
  let x_1148 : f32 = u_xlat51;
  u_xlat32.x = (x_1147 * x_1148);
  let x_1152 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1152 * 6.0f);
  let x_1164 : vec4<f32> = u_xlat8;
  let x_1167 : f32 = u_xlat32.x;
  let x_1168 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1164.x, x_1164.y, x_1164.z), x_1167);
  u_xlat8 = x_1168;
  let x_1170 : f32 = u_xlat8.w;
  u_xlat32.x = (x_1170 + -1.0f);
  let x_1174 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_1176 : f32 = u_xlat32.x;
  u_xlat32.x = ((x_1174 * x_1176) + 1.0f);
  let x_1181 : f32 = u_xlat32.x;
  u_xlat32.x = max(x_1181, 0.0f);
  let x_1185 : f32 = u_xlat32.x;
  u_xlat32.x = log2(x_1185);
  let x_1189 : f32 = u_xlat32.x;
  let x_1191 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat32.x = (x_1189 * x_1191);
  let x_1195 : f32 = u_xlat32.x;
  u_xlat32.x = exp2(x_1195);
  let x_1199 : f32 = u_xlat32.x;
  let x_1201 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat32.x = (x_1199 * x_1201);
  let x_1204 : vec4<f32> = u_xlat8;
  let x_1206 : vec2<f32> = u_xlat32;
  let x_1208 : vec3<f32> = (vec3<f32>(x_1204.x, x_1204.y, x_1204.z) * vec3<f32>(x_1206.x, x_1206.x, x_1206.x));
  let x_1209 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  let x_1211 : f32 = u_xlat47;
  let x_1213 : f32 = u_xlat47;
  u_xlat32 = ((vec2<f32>(x_1211, x_1211) * vec2<f32>(x_1213, x_1213)) + vec2<f32>(-1.0f, 1.0f));
  let x_1219 : f32 = u_xlat32.y;
  u_xlat47 = (1.0f / x_1219);
  let x_1221 : f32 = u_xlat49;
  u_xlat49 = (x_1221 + -0.039999999f);
  let x_1224 : f32 = u_xlat50;
  let x_1225 : f32 = u_xlat49;
  u_xlat49 = ((x_1224 * x_1225) + 0.039999999f);
  let x_1229 : f32 = u_xlat47;
  let x_1230 : f32 = u_xlat49;
  u_xlat47 = (x_1229 * x_1230);
  let x_1232 : f32 = u_xlat47;
  let x_1234 : vec4<f32> = u_xlat8;
  let x_1236 : vec3<f32> = (vec3<f32>(x_1232, x_1232, x_1232) * vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
  let x_1237 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
  let x_1239 : vec4<f32> = u_xlat3;
  let x_1241 : vec4<f32> = u_xlat6;
  let x_1244 : vec4<f32> = u_xlat8;
  let x_1246 : vec3<f32> = ((vec3<f32>(x_1239.x, x_1239.y, x_1239.z) * vec3<f32>(x_1241.x, x_1241.y, x_1241.z)) + vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
  let x_1247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
  let x_1249 : f32 = u_xlat46;
  let x_1251 : f32 = x_89.unity_LightData.z;
  u_xlat46 = (x_1249 * x_1251);
  let x_1253 : vec3<f32> = u_xlat15;
  let x_1255 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat47 = dot(x_1253, vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1258 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1258, 0.0f, 1.0f);
  let x_1260 : f32 = u_xlat46;
  let x_1261 : f32 = u_xlat47;
  u_xlat46 = (x_1260 * x_1261);
  let x_1263 : f32 = u_xlat46;
  let x_1265 : vec4<f32> = u_xlat7;
  let x_1267 : vec3<f32> = (vec3<f32>(x_1263, x_1263, x_1263) * vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
  let x_1268 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
  let x_1270 : vec3<f32> = u_xlat4;
  let x_1272 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1274 : vec3<f32> = (x_1270 + vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
  let x_1277 : vec4<f32> = u_xlat8;
  let x_1279 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_1277.x, x_1277.y, x_1277.z), vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
  let x_1282 : f32 = u_xlat46;
  u_xlat46 = max(x_1282, 1.17549435e-37f);
  let x_1284 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_1284);
  let x_1286 : f32 = u_xlat46;
  let x_1288 : vec4<f32> = u_xlat8;
  let x_1290 : vec3<f32> = (vec3<f32>(x_1286, x_1286, x_1286) * vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1293 : vec3<f32> = u_xlat15;
  let x_1294 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(x_1293, vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
  let x_1297 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1297, 0.0f, 1.0f);
  let x_1300 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1302 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_1300.x, x_1300.y, x_1300.z), vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
  let x_1305 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1305, 0.0f, 1.0f);
  let x_1307 : f32 = u_xlat46;
  let x_1308 : f32 = u_xlat46;
  u_xlat46 = (x_1307 * x_1308);
  let x_1310 : f32 = u_xlat46;
  let x_1312 : f32 = u_xlat32.x;
  u_xlat46 = ((x_1310 * x_1312) + 1.000010014f);
  let x_1316 : f32 = u_xlat47;
  let x_1317 : f32 = u_xlat47;
  u_xlat47 = (x_1316 * x_1317);
  let x_1319 : f32 = u_xlat46;
  let x_1320 : f32 = u_xlat46;
  u_xlat46 = (x_1319 * x_1320);
  let x_1322 : f32 = u_xlat47;
  u_xlat47 = max(x_1322, 0.100000001f);
  let x_1325 : f32 = u_xlat46;
  let x_1326 : f32 = u_xlat47;
  u_xlat46 = (x_1325 * x_1326);
  let x_1328 : f32 = u_xlat20;
  let x_1329 : f32 = u_xlat46;
  u_xlat46 = (x_1328 * x_1329);
  let x_1331 : f32 = u_xlat48;
  let x_1332 : f32 = u_xlat46;
  u_xlat46 = (x_1331 / x_1332);
  let x_1334 : f32 = u_xlat46;
  let x_1338 : vec4<f32> = u_xlat6;
  let x_1340 : vec3<f32> = ((vec3<f32>(x_1334, x_1334, x_1334) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
  let x_1341 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1341.w);
  let x_1343 : vec4<f32> = u_xlat7;
  let x_1345 : vec4<f32> = u_xlat8;
  let x_1347 : vec3<f32> = (vec3<f32>(x_1343.x, x_1343.y, x_1343.z) * vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
  let x_1348 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);
  let x_1352 : f32 = x_153.x_AdditionalLightsCount.x;
  let x_1354 : f32 = x_89.unity_LightData.y;
  u_xlat46 = min(x_1352, x_1354);
  let x_1357 : f32 = u_xlat46;
  u_xlatu46 = bitcast<u32>(i32(x_1357));
  let x_1361 : f32 = x_984.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1363 : f32 = x_984.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1365 : f32 = x_984.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1367 : f32 = x_984.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1368 : vec4<f32> = vec4<f32>(x_1361, x_1363, x_1365, x_1367);
  let x_1374 : vec4<bool> = (vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1368.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_1374.x, x_1374.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1385 : u32 = u_xlatu_loop_1;
    let x_1386 : u32 = u_xlatu46;
    if ((x_1385 < x_1386)) {
    } else {
      break;
    }
    let x_1389 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1389 >> 2u);
    let x_1392 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_1392 & 3u));
    let x_1395 : u32 = u_xlatu49;
    let x_1398 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1395)];
    let x_1408 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1413 : vec4<u32> = indexable[x_1408];
    u_xlat49 = dot(x_1398, bitcast<vec4<f32>>(x_1413));
    let x_1416 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_1416));
    let x_1420 : vec3<f32> = vs_INTERP0;
    let x_1432 : u32 = u_xlatu49;
    let x_1435 : vec4<f32> = x_1431.x_AdditionalLightsPosition[bitcast<i32>(x_1432)];
    let x_1438 : u32 = u_xlatu49;
    let x_1441 : vec4<f32> = x_1431.x_AdditionalLightsPosition[bitcast<i32>(x_1438)];
    u_xlat10 = ((-(x_1420) * vec3<f32>(x_1435.w, x_1435.w, x_1435.w)) + vec3<f32>(x_1441.x, x_1441.y, x_1441.z));
    let x_1444 : vec3<f32> = u_xlat10;
    let x_1445 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_1444, x_1445);
    let x_1447 : f32 = u_xlat50;
    u_xlat50 = max(x_1447, 6.10351562e-05f);
    let x_1450 : f32 = u_xlat50;
    u_xlat51 = inverseSqrt(x_1450);
    let x_1453 : f32 = u_xlat51;
    let x_1455 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1453, x_1453, x_1453) * x_1455);
    let x_1458 : f32 = u_xlat50;
    u_xlat52 = (1.0f / x_1458);
    let x_1460 : f32 = u_xlat50;
    let x_1461 : u32 = u_xlatu49;
    let x_1464 : f32 = x_1431.x_AdditionalLightsAttenuation[bitcast<i32>(x_1461)].x;
    u_xlat50 = (x_1460 * x_1464);
    let x_1466 : f32 = u_xlat50;
    let x_1468 : f32 = u_xlat50;
    u_xlat50 = ((-(x_1466) * x_1468) + 1.0f);
    let x_1471 : f32 = u_xlat50;
    u_xlat50 = max(x_1471, 0.0f);
    let x_1473 : f32 = u_xlat50;
    let x_1474 : f32 = u_xlat50;
    u_xlat50 = (x_1473 * x_1474);
    let x_1476 : f32 = u_xlat50;
    let x_1477 : f32 = u_xlat52;
    u_xlat50 = (x_1476 * x_1477);
    let x_1479 : u32 = u_xlatu49;
    let x_1482 : vec4<f32> = x_1431.x_AdditionalLightsSpotDir[bitcast<i32>(x_1479)];
    let x_1484 : vec3<f32> = u_xlat11;
    u_xlat52 = dot(vec3<f32>(x_1482.x, x_1482.y, x_1482.z), x_1484);
    let x_1486 : f32 = u_xlat52;
    let x_1487 : u32 = u_xlatu49;
    let x_1490 : f32 = x_1431.x_AdditionalLightsAttenuation[bitcast<i32>(x_1487)].z;
    let x_1492 : u32 = u_xlatu49;
    let x_1495 : f32 = x_1431.x_AdditionalLightsAttenuation[bitcast<i32>(x_1492)].w;
    u_xlat52 = ((x_1486 * x_1490) + x_1495);
    let x_1497 : f32 = u_xlat52;
    u_xlat52 = clamp(x_1497, 0.0f, 1.0f);
    let x_1499 : f32 = u_xlat52;
    let x_1500 : f32 = u_xlat52;
    u_xlat52 = (x_1499 * x_1500);
    let x_1502 : f32 = u_xlat50;
    let x_1503 : f32 = u_xlat52;
    u_xlat50 = (x_1502 * x_1503);
    let x_1506 : u32 = u_xlatu49;
    u_xlatu52 = (x_1506 >> 5u);
    let x_1509 : u32 = u_xlatu49;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_1509) & 31i)));
    let x_1515 : i32 = u_xlati38;
    let x_1517 : u32 = u_xlatu52;
    let x_1520 : f32 = x_984.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1517)].el;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1515) & bitcast<u32>(x_1520)));
    let x_1524 : i32 = u_xlati52;
    if ((x_1524 != 0i)) {
      let x_1534 : u32 = u_xlatu49;
      let x_1537 : f32 = x_1533.x_AdditionalLightsLightTypes[bitcast<i32>(x_1534)].el;
      u_xlati52 = i32(x_1537);
      let x_1539 : i32 = u_xlati52;
      u_xlati38 = select(1i, 0i, (x_1539 != 0i));
      let x_1543 : u32 = u_xlatu49;
      u_xlati53 = (bitcast<i32>(x_1543) << bitcast<u32>(2i));
      let x_1546 : i32 = u_xlati38;
      if ((x_1546 != 0i)) {
        let x_1551 : vec3<f32> = vs_INTERP0;
        let x_1553 : i32 = u_xlati53;
        let x_1556 : i32 = u_xlati53;
        let x_1560 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1553 + 1i) / 4i)][((x_1556 + 1i) % 4i)];
        let x_1562 : vec3<f32> = (vec3<f32>(x_1551.y, x_1551.y, x_1551.y) * vec3<f32>(x_1560.x, x_1560.y, x_1560.w));
        let x_1563 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
        let x_1565 : i32 = u_xlati53;
        let x_1567 : i32 = u_xlati53;
        let x_1570 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[(x_1565 / 4i)][(x_1567 % 4i)];
        let x_1572 : vec3<f32> = vs_INTERP0;
        let x_1575 : vec4<f32> = u_xlat12;
        let x_1577 : vec3<f32> = ((vec3<f32>(x_1570.x, x_1570.y, x_1570.w) * vec3<f32>(x_1572.x, x_1572.x, x_1572.x)) + vec3<f32>(x_1575.x, x_1575.y, x_1575.z));
        let x_1578 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
        let x_1580 : i32 = u_xlati53;
        let x_1583 : i32 = u_xlati53;
        let x_1587 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1580 + 2i) / 4i)][((x_1583 + 2i) % 4i)];
        let x_1589 : vec3<f32> = vs_INTERP0;
        let x_1592 : vec4<f32> = u_xlat12;
        let x_1594 : vec3<f32> = ((vec3<f32>(x_1587.x, x_1587.y, x_1587.w) * vec3<f32>(x_1589.z, x_1589.z, x_1589.z)) + vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
        let x_1595 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
        let x_1597 : vec4<f32> = u_xlat12;
        let x_1599 : i32 = u_xlati53;
        let x_1602 : i32 = u_xlati53;
        let x_1606 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1599 + 3i) / 4i)][((x_1602 + 3i) % 4i)];
        let x_1608 : vec3<f32> = (vec3<f32>(x_1597.x, x_1597.y, x_1597.z) + vec3<f32>(x_1606.x, x_1606.y, x_1606.w));
        let x_1609 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1608.x, x_1608.y, x_1608.z, x_1609.w);
        let x_1611 : vec4<f32> = u_xlat12;
        let x_1613 : vec4<f32> = u_xlat12;
        let x_1615 : vec2<f32> = (vec2<f32>(x_1611.x, x_1611.y) / vec2<f32>(x_1613.z, x_1613.z));
        let x_1616 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1615.x, x_1615.y, x_1616.z, x_1616.w);
        let x_1618 : vec4<f32> = u_xlat12;
        let x_1621 : vec2<f32> = ((vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1622 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1621.x, x_1621.y, x_1622.z, x_1622.w);
        let x_1624 : vec4<f32> = u_xlat12;
        let x_1628 : vec2<f32> = clamp(vec2<f32>(x_1624.x, x_1624.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1629 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1628.x, x_1628.y, x_1629.z, x_1629.w);
        let x_1631 : u32 = u_xlatu49;
        let x_1634 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1631)];
        let x_1636 : vec4<f32> = u_xlat12;
        let x_1639 : u32 = u_xlatu49;
        let x_1642 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1639)];
        let x_1644 : vec2<f32> = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1636.x, x_1636.y)) + vec2<f32>(x_1642.z, x_1642.w));
        let x_1645 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1644.x, x_1644.y, x_1645.z, x_1645.w);
      } else {
        let x_1649 : i32 = u_xlati52;
        u_xlatb52 = (x_1649 == 1i);
        let x_1651 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1651);
        let x_1653 : i32 = u_xlati52;
        if ((x_1653 != 0i)) {
          let x_1658 : vec3<f32> = vs_INTERP0;
          let x_1660 : i32 = u_xlati53;
          let x_1663 : i32 = u_xlati53;
          let x_1667 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1660 + 1i) / 4i)][((x_1663 + 1i) % 4i)];
          u_xlat42 = (vec2<f32>(x_1658.y, x_1658.y) * vec2<f32>(x_1667.x, x_1667.y));
          let x_1670 : i32 = u_xlati53;
          let x_1672 : i32 = u_xlati53;
          let x_1675 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[(x_1670 / 4i)][(x_1672 % 4i)];
          let x_1677 : vec3<f32> = vs_INTERP0;
          let x_1680 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1675.x, x_1675.y) * vec2<f32>(x_1677.x, x_1677.x)) + x_1680);
          let x_1682 : i32 = u_xlati53;
          let x_1685 : i32 = u_xlati53;
          let x_1689 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1682 + 2i) / 4i)][((x_1685 + 2i) % 4i)];
          let x_1691 : vec3<f32> = vs_INTERP0;
          let x_1694 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1689.x, x_1689.y) * vec2<f32>(x_1691.z, x_1691.z)) + x_1694);
          let x_1696 : vec2<f32> = u_xlat42;
          let x_1697 : i32 = u_xlati53;
          let x_1700 : i32 = u_xlati53;
          let x_1704 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1697 + 3i) / 4i)][((x_1700 + 3i) % 4i)];
          u_xlat42 = (x_1696 + vec2<f32>(x_1704.x, x_1704.y));
          let x_1707 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1707 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1710 : vec2<f32> = u_xlat42;
          u_xlat42 = fract(x_1710);
          let x_1712 : u32 = u_xlatu49;
          let x_1715 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1712)];
          let x_1717 : vec2<f32> = u_xlat42;
          let x_1719 : u32 = u_xlatu49;
          let x_1722 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1719)];
          let x_1724 : vec2<f32> = ((vec2<f32>(x_1715.x, x_1715.y) * x_1717) + vec2<f32>(x_1722.z, x_1722.w));
          let x_1725 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1724.x, x_1724.y, x_1725.z, x_1725.w);
        } else {
          let x_1729 : vec3<f32> = vs_INTERP0;
          let x_1731 : i32 = u_xlati53;
          let x_1734 : i32 = u_xlati53;
          let x_1738 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1731 + 1i) / 4i)][((x_1734 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1729.y, x_1729.y, x_1729.y, x_1729.y) * x_1738);
          let x_1740 : i32 = u_xlati53;
          let x_1742 : i32 = u_xlati53;
          let x_1745 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[(x_1740 / 4i)][(x_1742 % 4i)];
          let x_1746 : vec3<f32> = vs_INTERP0;
          let x_1749 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1745 * vec4<f32>(x_1746.x, x_1746.x, x_1746.x, x_1746.x)) + x_1749);
          let x_1751 : i32 = u_xlati53;
          let x_1754 : i32 = u_xlati53;
          let x_1758 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1751 + 2i) / 4i)][((x_1754 + 2i) % 4i)];
          let x_1759 : vec3<f32> = vs_INTERP0;
          let x_1762 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1758 * vec4<f32>(x_1759.z, x_1759.z, x_1759.z, x_1759.z)) + x_1762);
          let x_1764 : vec4<f32> = u_xlat13;
          let x_1765 : i32 = u_xlati53;
          let x_1768 : i32 = u_xlati53;
          let x_1772 : vec4<f32> = x_1533.x_AdditionalLightsWorldToLights[((x_1765 + 3i) / 4i)][((x_1768 + 3i) % 4i)];
          u_xlat13 = (x_1764 + x_1772);
          let x_1774 : vec4<f32> = u_xlat13;
          let x_1776 : vec4<f32> = u_xlat13;
          let x_1778 : vec3<f32> = (vec3<f32>(x_1774.x, x_1774.y, x_1774.z) / vec3<f32>(x_1776.w, x_1776.w, x_1776.w));
          let x_1779 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
          let x_1781 : vec4<f32> = u_xlat13;
          let x_1783 : vec4<f32> = u_xlat13;
          u_xlat52 = dot(vec3<f32>(x_1781.x, x_1781.y, x_1781.z), vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
          let x_1786 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1786);
          let x_1788 : f32 = u_xlat52;
          let x_1790 : vec4<f32> = u_xlat13;
          let x_1792 : vec3<f32> = (vec3<f32>(x_1788, x_1788, x_1788) * vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
          let x_1793 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
          let x_1795 : vec4<f32> = u_xlat13;
          u_xlat52 = dot(abs(vec3<f32>(x_1795.x, x_1795.y, x_1795.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1800 : f32 = u_xlat52;
          u_xlat52 = max(x_1800, 0.000001f);
          let x_1803 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1803);
          let x_1806 : f32 = u_xlat52;
          let x_1808 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1806, x_1806, x_1806) * vec3<f32>(x_1808.z, x_1808.x, x_1808.y));
          let x_1812 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1812);
          let x_1816 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1816, 0.0f, 1.0f);
          let x_1820 : vec3<f32> = u_xlat14;
          let x_1823 : vec4<bool> = (vec4<f32>(x_1820.y, x_1820.z, x_1820.y, x_1820.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb38 = vec2<bool>(x_1823.x, x_1823.y);
          let x_1827 : bool = u_xlatb38.x;
          if (x_1827) {
            let x_1832 : f32 = u_xlat14.x;
            x_1828 = x_1832;
          } else {
            let x_1835 : f32 = u_xlat14.x;
            x_1828 = -(x_1835);
          }
          let x_1837 : f32 = x_1828;
          u_xlat38.x = x_1837;
          let x_1840 : bool = u_xlatb38.y;
          if (x_1840) {
            let x_1845 : f32 = u_xlat14.x;
            x_1841 = x_1845;
          } else {
            let x_1848 : f32 = u_xlat14.x;
            x_1841 = -(x_1848);
          }
          let x_1850 : f32 = x_1841;
          u_xlat38.y = x_1850;
          let x_1852 : vec4<f32> = u_xlat13;
          let x_1854 : f32 = u_xlat52;
          let x_1857 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1852.x, x_1852.y) * vec2<f32>(x_1854, x_1854)) + x_1857);
          let x_1859 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1859 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1862 : vec2<f32> = u_xlat38;
          u_xlat38 = clamp(x_1862, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1866 : u32 = u_xlatu49;
          let x_1869 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1866)];
          let x_1871 : vec2<f32> = u_xlat38;
          let x_1873 : u32 = u_xlatu49;
          let x_1876 : vec4<f32> = x_1533.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1873)];
          let x_1878 : vec2<f32> = ((vec2<f32>(x_1869.x, x_1869.y) * x_1871) + vec2<f32>(x_1876.z, x_1876.w));
          let x_1879 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1878.x, x_1878.y, x_1879.z, x_1879.w);
        }
      }
      let x_1886 : vec4<f32> = u_xlat12;
      let x_1889 : f32 = x_153.x_GlobalMipBias.x;
      let x_1890 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1886.x, x_1886.y), x_1889);
      u_xlat12 = x_1890;
      let x_1892 : bool = u_xlatb8.y;
      if (x_1892) {
        let x_1897 : f32 = u_xlat12.w;
        x_1893 = x_1897;
      } else {
        let x_1900 : f32 = u_xlat12.x;
        x_1893 = x_1900;
      }
      let x_1901 : f32 = x_1893;
      u_xlat52 = x_1901;
      let x_1903 : bool = u_xlatb8.x;
      if (x_1903) {
        let x_1907 : vec4<f32> = u_xlat12;
        x_1904 = vec3<f32>(x_1907.x, x_1907.y, x_1907.z);
      } else {
        let x_1910 : f32 = u_xlat52;
        x_1904 = vec3<f32>(x_1910, x_1910, x_1910);
      }
      let x_1912 : vec3<f32> = x_1904;
      let x_1913 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1912.x, x_1912.y, x_1912.z, x_1913.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1919 : vec4<f32> = u_xlat12;
    let x_1921 : u32 = u_xlatu49;
    let x_1924 : vec4<f32> = x_1431.x_AdditionalLightsColor[bitcast<i32>(x_1921)];
    let x_1926 : vec3<f32> = (vec3<f32>(x_1919.x, x_1919.y, x_1919.z) * vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
    let x_1927 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
    let x_1929 : f32 = u_xlat35;
    let x_1931 : vec4<f32> = u_xlat12;
    let x_1933 : vec3<f32> = (vec3<f32>(x_1929, x_1929, x_1929) * vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
    let x_1934 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
    let x_1936 : vec3<f32> = u_xlat15;
    let x_1937 : vec3<f32> = u_xlat11;
    u_xlat49 = dot(x_1936, x_1937);
    let x_1939 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1939, 0.0f, 1.0f);
    let x_1941 : f32 = u_xlat49;
    let x_1942 : f32 = u_xlat50;
    u_xlat49 = (x_1941 * x_1942);
    let x_1944 : f32 = u_xlat49;
    let x_1946 : vec4<f32> = u_xlat12;
    let x_1948 : vec3<f32> = (vec3<f32>(x_1944, x_1944, x_1944) * vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
    let x_1949 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
    let x_1951 : vec3<f32> = u_xlat10;
    let x_1952 : f32 = u_xlat51;
    let x_1955 : vec3<f32> = u_xlat4;
    u_xlat10 = ((x_1951 * vec3<f32>(x_1952, x_1952, x_1952)) + x_1955);
    let x_1957 : vec3<f32> = u_xlat10;
    let x_1958 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1957, x_1958);
    let x_1960 : f32 = u_xlat49;
    u_xlat49 = max(x_1960, 1.17549435e-37f);
    let x_1962 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1962);
    let x_1964 : f32 = u_xlat49;
    let x_1966 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1964, x_1964, x_1964) * x_1966);
    let x_1968 : vec3<f32> = u_xlat15;
    let x_1969 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1968, x_1969);
    let x_1971 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1971, 0.0f, 1.0f);
    let x_1973 : vec3<f32> = u_xlat11;
    let x_1974 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_1973, x_1974);
    let x_1976 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1976, 0.0f, 1.0f);
    let x_1978 : f32 = u_xlat49;
    let x_1979 : f32 = u_xlat49;
    u_xlat49 = (x_1978 * x_1979);
    let x_1981 : f32 = u_xlat49;
    let x_1983 : f32 = u_xlat32.x;
    u_xlat49 = ((x_1981 * x_1983) + 1.000010014f);
    let x_1986 : f32 = u_xlat50;
    let x_1987 : f32 = u_xlat50;
    u_xlat50 = (x_1986 * x_1987);
    let x_1989 : f32 = u_xlat49;
    let x_1990 : f32 = u_xlat49;
    u_xlat49 = (x_1989 * x_1990);
    let x_1992 : f32 = u_xlat50;
    u_xlat50 = max(x_1992, 0.100000001f);
    let x_1994 : f32 = u_xlat49;
    let x_1995 : f32 = u_xlat50;
    u_xlat49 = (x_1994 * x_1995);
    let x_1997 : f32 = u_xlat20;
    let x_1998 : f32 = u_xlat49;
    u_xlat49 = (x_1997 * x_1998);
    let x_2000 : f32 = u_xlat48;
    let x_2001 : f32 = u_xlat49;
    u_xlat49 = (x_2000 / x_2001);
    let x_2003 : f32 = u_xlat49;
    let x_2006 : vec4<f32> = u_xlat6;
    u_xlat10 = ((vec3<f32>(x_2003, x_2003, x_2003) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
    let x_2009 : vec3<f32> = u_xlat10;
    let x_2010 : vec4<f32> = u_xlat12;
    let x_2013 : vec4<f32> = u_xlat9;
    let x_2015 : vec3<f32> = ((x_2009 * vec3<f32>(x_2010.x, x_2010.y, x_2010.z)) + vec3<f32>(x_2013.x, x_2013.y, x_2013.z));
    let x_2016 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);

    continuing {
      let x_2018 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2018 + bitcast<u32>(1i));
    }
  }
  let x_2020 : vec4<f32> = u_xlat3;
  let x_2022 : vec3<f32> = u_xlat5;
  let x_2025 : vec4<f32> = u_xlat7;
  u_xlat15 = ((vec3<f32>(x_2020.x, x_2020.y, x_2020.z) * vec3<f32>(x_2022.x, x_2022.x, x_2022.x)) + vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
  let x_2028 : vec4<f32> = u_xlat9;
  let x_2030 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_2028.x, x_2028.y, x_2028.z) + x_2030);
  let x_2032 : vec4<f32> = vs_INTERP4;
  let x_2034 : vec3<f32> = u_xlat1;
  let x_2036 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_2032.w, x_2032.w, x_2032.w) * x_2034) + x_2036);
  let x_2039 : f32 = u_xlat17.x;
  let x_2041 : f32 = u_xlat17.x;
  u_xlat1.x = (x_2039 * -(x_2041));
  let x_2046 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2046);
  let x_2049 : vec3<f32> = u_xlat15;
  let x_2052 : vec4<f32> = x_153.unity_FogColor;
  u_xlat15 = (x_2049 + -(vec3<f32>(x_2052.x, x_2052.y, x_2052.z)));
  let x_2058 : vec3<f32> = u_xlat1;
  let x_2060 : vec3<f32> = u_xlat15;
  let x_2063 : vec4<f32> = x_153.unity_FogColor;
  let x_2065 : vec3<f32> = ((vec3<f32>(x_2058.x, x_2058.x, x_2058.x) * x_2060) + vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
  let x_2066 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2066.w);
  let x_2068 : bool = u_xlatb2;
  let x_2069 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_2069, x_2068);
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

