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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_89 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_153 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_253 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_341 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1300 : AdditionalLights;

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
  var u_xlatb12 : vec2<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat5 : vec3<f32>;
  var x_192 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat20 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlatb14 : bool;
  var x_445 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlatu14 : vec3<u32>;
  var u_xlatu38 : u32;
  var u_xlatu3 : u32;
  var u_xlati38 : i32;
  var u_xlati26 : i32;
  var u_xlatu26 : u32;
  var u_xlati14 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat26 : f32;
  var x_579 : f32;
  var x_604 : f32;
  var x_649 : f32;
  var u_xlat24 : vec2<f32>;
  var u_xlat36 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat17 : f32;
  var u_xlat29 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlatb41 : bool;
  var u_xlatb42 : bool;
  var u_xlat42 : f32;
  var u_xlatu36 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati41 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati40 : i32;
  var u_xlat10 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat11 : vec3<f32>;
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
  u_xlatb12.x = (0.0f < x_79);
  let x_93 : f32 = x_89.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_93 >= 0.0f);
  let x_100 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_100);
  let x_105 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_105);
  let x_109 : f32 = u_xlat12.y;
  let x_111 : f32 = u_xlat12.x;
  u_xlat12.x = (x_109 * x_111);
  let x_115 : vec3<f32> = vs_INTERP1;
  let x_117 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_115.z, x_115.x, x_115.y) * vec3<f32>(x_117.y, x_117.z, x_117.x));
  let x_120 : vec3<f32> = vs_INTERP1;
  let x_122 : vec4<f32> = vs_INTERP2;
  let x_125 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_120.y, x_120.z, x_120.x) * vec3<f32>(x_122.z, x_122.x, x_122.y)) + -(x_125));
  let x_128 : vec3<f32> = u_xlat12;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_128.x, x_128.x, x_128.x) * x_130);
  let x_132 : f32 = u_xlat0;
  let x_134 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_132, x_132, x_132) * x_134);
  let x_137 : f32 = u_xlat0;
  let x_139 : vec4<f32> = vs_INTERP2;
  u_xlat2 = (vec3<f32>(x_137, x_137, x_137) * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_143 : vec3<f32> = u_xlat12;
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
  u_xlat37 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat37;
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
  u_xlat7 = (vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_264 : vec4<f32> = vs_INTERP3;
  let x_267 : f32 = x_153.x_GlobalMipBias.x;
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
  u_xlat20 = (vec3<f32>(x_284, x_284, x_284) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_291 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_291 * 200.0f);
  let x_294 : f32 = u_xlat0;
  u_xlat0 = min(x_294, 1.0f);
  let x_296 : f32 = u_xlat0;
  let x_298 : vec4<f32> = u_xlat6;
  let x_300 : vec3<f32> = (vec3<f32>(x_296, x_296, x_296) * vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat3;
  let x_305 : vec3<f32> = u_xlat20;
  let x_307 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.y, x_305.y, x_305.y));
  let x_308 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec3<f32> = u_xlat20;
  let x_312 : vec3<f32> = u_xlat2;
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_310.x, x_310.x, x_310.x) * x_312) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec3<f32> = u_xlat20;
  let x_319 : vec3<f32> = u_xlat1;
  let x_321 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_317.z, x_317.z, x_317.z) * x_319) + x_321);
  let x_323 : vec3<f32> = u_xlat1;
  let x_324 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_323, x_324);
  let x_326 : f32 = u_xlat0;
  u_xlat0 = max(x_326, 1.17549435e-37f);
  let x_329 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_329);
  let x_331 : f32 = u_xlat0;
  let x_333 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_331, x_331, x_331) * x_333);
  let x_335 : vec3<f32> = vs_INTERP0;
  let x_343 : vec4<f32> = x_341.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_335.y, x_335.y, x_335.y) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_347 : vec4<f32> = x_341.x_MainLightWorldToShadow[0i][0i];
  let x_349 : vec3<f32> = vs_INTERP0;
  let x_352 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_349.x, x_349.x, x_349.x)) + x_352);
  let x_355 : vec4<f32> = x_341.x_MainLightWorldToShadow[0i][2i];
  let x_357 : vec3<f32> = vs_INTERP0;
  let x_360 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.z, x_357.z, x_357.z)) + x_360);
  let x_362 : vec3<f32> = u_xlat2;
  let x_364 : vec4<f32> = x_341.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_362 + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_368 : vec3<f32> = u_xlat2;
  let x_369 : vec2<f32> = vec2<f32>(x_368.x, x_368.y);
  let x_371 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_369.x, x_369.y, x_371);
  let x_383 : vec3<f32> = txVec0;
  let x_385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_383.xy, x_383.z);
  u_xlat0 = x_385;
  let x_388 : f32 = x_341.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_388) + 1.0f);
  let x_391 : f32 = u_xlat0;
  let x_393 : f32 = x_341.x_MainLightShadowParams.x;
  let x_395 : f32 = u_xlat37;
  u_xlat0 = ((x_391 * x_393) + x_395);
  let x_399 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_399);
  let x_403 : f32 = u_xlat2.z;
  u_xlatb14 = (x_403 >= 1.0f);
  let x_405 : bool = u_xlatb14;
  let x_406 : bool = u_xlatb2;
  u_xlatb2 = (x_405 | x_406);
  let x_408 : bool = u_xlatb2;
  let x_409 : f32 = u_xlat0;
  u_xlat0 = select(x_409, 1.0f, x_408);
  let x_411 : vec3<f32> = u_xlat1;
  let x_413 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat1.x = dot(x_411, -(vec3<f32>(x_413.x, x_413.y, x_413.z)));
  let x_419 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_419, 0.0f, 1.0f);
  let x_422 : f32 = u_xlat0;
  let x_426 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat2 = (vec3<f32>(x_422, x_422, x_422) * vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec3<f32> = u_xlat1;
  let x_431 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_429.x, x_429.x, x_429.x) * x_431);
  let x_433 : vec3<f32> = u_xlat1;
  let x_434 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_433 * vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_438 : f32 = x_89.unity_LODFade.x;
  u_xlatb0 = (x_438 < 0.0f);
  let x_441 : f32 = x_89.unity_LODFade.x;
  u_xlat2.x = (x_441 + 1.0f);
  let x_444 : bool = u_xlatb0;
  if (x_444) {
    let x_449 : f32 = u_xlat2.x;
    x_445 = x_449;
  } else {
    let x_452 : f32 = x_89.unity_LODFade.x;
    x_445 = x_452;
  }
  let x_453 : f32 = x_445;
  u_xlat0 = x_453;
  let x_455 : f32 = u_xlat0;
  u_xlatb2 = (0.5f >= x_455);
  let x_458 : vec3<f32> = u_xlat5;
  let x_462 : vec4<f32> = x_153.x_ScreenParams;
  u_xlat14 = (abs(x_458) * vec3<f32>(x_462.x, x_462.y, x_462.x));
  let x_468 : vec3<f32> = u_xlat14;
  u_xlatu14 = vec3<u32>(x_468);
  let x_472 : u32 = u_xlatu14.z;
  u_xlatu38 = (x_472 * 1025u);
  let x_476 : u32 = u_xlatu38;
  u_xlatu3 = (x_476 >> 6u);
  let x_480 : u32 = u_xlatu38;
  let x_481 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_480 ^ x_481));
  let x_484 : i32 = u_xlati38;
  u_xlatu38 = (bitcast<u32>(x_484) * 9u);
  let x_488 : u32 = u_xlatu38;
  u_xlatu3 = (x_488 >> 11u);
  let x_491 : u32 = u_xlatu38;
  let x_492 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_491 ^ x_492));
  let x_495 : i32 = u_xlati38;
  u_xlati38 = (x_495 * 32769i);
  let x_499 : i32 = u_xlati38;
  let x_502 : u32 = u_xlatu14.y;
  u_xlati26 = bitcast<i32>((bitcast<u32>(x_499) ^ x_502));
  let x_506 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_506) * 1025u);
  let x_509 : u32 = u_xlatu26;
  u_xlatu38 = (x_509 >> 6u);
  let x_511 : u32 = u_xlatu38;
  let x_512 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_511 ^ x_512));
  let x_515 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_515) * 9u);
  let x_518 : u32 = u_xlatu26;
  u_xlatu38 = (x_518 >> 11u);
  let x_520 : u32 = u_xlatu38;
  let x_521 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_520 ^ x_521));
  let x_524 : i32 = u_xlati26;
  u_xlati26 = (x_524 * 32769i);
  let x_527 : i32 = u_xlati26;
  let x_530 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_527) ^ x_530));
  let x_533 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_533) * 1025u);
  let x_538 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_538 >> 6u);
  let x_540 : u32 = u_xlatu26;
  let x_542 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_540 ^ x_542));
  let x_545 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_545) * 9u);
  let x_550 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_550 >> 11u);
  let x_552 : u32 = u_xlatu26;
  let x_554 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_552 ^ x_554));
  let x_557 : i32 = u_xlati14;
  u_xlati14 = (x_557 * 32769i);
  param = 1065353216i;
  let x_563 : i32 = u_xlati14;
  param_1 = x_563;
  param_2 = 0i;
  param_3 = 23i;
  let x_566 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat14.x = bitcast<f32>(x_566);
  let x_570 : f32 = u_xlat14.x;
  u_xlat14.x = (x_570 + -1.0f);
  let x_575 : f32 = u_xlat14.x;
  u_xlat26 = (-(x_575) + 1.0f);
  let x_578 : bool = u_xlatb2;
  if (x_578) {
    let x_583 : f32 = u_xlat14.x;
    x_579 = x_583;
  } else {
    let x_585 : f32 = u_xlat26;
    x_579 = x_585;
  }
  let x_586 : f32 = x_579;
  u_xlat2.x = x_586;
  let x_588 : f32 = u_xlat0;
  let x_591 : f32 = u_xlat2.x;
  u_xlat0 = ((x_588 * 2.0f) + -(x_591));
  let x_594 : f32 = u_xlat0;
  let x_596 : f32 = u_xlat6.w;
  u_xlat2.x = (x_594 * x_596);
  let x_600 : f32 = u_xlat2.x;
  u_xlatb14 = (x_600 >= 0.400000006f);
  let x_603 : bool = u_xlatb14;
  if (x_603) {
    let x_608 : f32 = u_xlat2.x;
    x_604 = x_608;
  } else {
    x_604 = 0.0f;
  }
  let x_610 : f32 = x_604;
  u_xlat14.x = x_610;
  let x_613 : f32 = u_xlat6.w;
  let x_614 : f32 = u_xlat0;
  u_xlat0 = ((x_613 * x_614) + -0.400000006f);
  let x_619 : f32 = u_xlat2.x;
  u_xlat26 = dpdxCoarse(x_619);
  let x_622 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_622);
  let x_626 : f32 = u_xlat2.x;
  let x_628 : f32 = u_xlat26;
  u_xlat2.x = (abs(x_626) + abs(x_628));
  let x_633 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_633, 0.0001f);
  let x_637 : f32 = u_xlat0;
  let x_639 : f32 = u_xlat2.x;
  u_xlat0 = (x_637 / x_639);
  let x_641 : f32 = u_xlat0;
  u_xlat0 = (x_641 + 0.5f);
  let x_643 : f32 = u_xlat0;
  u_xlat0 = clamp(x_643, 0.0f, 1.0f);
  let x_646 : f32 = x_153.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_646 == 0.0f));
  let x_648 : bool = u_xlatb2;
  if (x_648) {
    let x_652 : f32 = u_xlat0;
    x_649 = x_652;
  } else {
    let x_655 : f32 = u_xlat14.x;
    x_649 = x_655;
  }
  let x_656 : f32 = x_649;
  u_xlat0 = x_656;
  let x_657 : f32 = u_xlat0;
  u_xlat14.x = (x_657 + -0.0001f);
  let x_662 : f32 = u_xlat14.x;
  u_xlatb14 = (x_662 < 0.0f);
  let x_664 : bool = u_xlatb14;
  if (((select(0i, 1i, x_664) * -1i) != 0i)) {
    discard;
  }
  let x_672 : vec3<f32> = u_xlat12;
  let x_673 : vec3<f32> = u_xlat20;
  u_xlat12 = (x_672 * vec3<f32>(x_673.y, x_673.y, x_673.y));
  let x_676 : vec3<f32> = u_xlat20;
  let x_678 : vec4<f32> = vs_INTERP2;
  let x_681 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_676.x, x_676.x, x_676.x) * vec3<f32>(x_678.x, x_678.y, x_678.z)) + x_681);
  let x_683 : vec3<f32> = u_xlat20;
  let x_685 : vec3<f32> = vs_INTERP1;
  let x_687 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_683.z, x_683.z, x_683.z) * x_685) + x_687);
  let x_689 : vec3<f32> = u_xlat12;
  let x_690 : vec3<f32> = u_xlat12;
  u_xlat14.x = dot(x_689, x_690);
  let x_694 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_694);
  let x_697 : vec3<f32> = u_xlat12;
  let x_698 : vec3<f32> = u_xlat14;
  let x_700 : vec3<f32> = (x_697 * vec3<f32>(x_698.x, x_698.x, x_698.x));
  let x_701 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_704 : f32 = vs_INTERP0.y;
  let x_706 : f32 = x_153.unity_MatrixV[1i].z;
  u_xlat12.x = (x_704 * x_706);
  let x_710 : f32 = x_153.unity_MatrixV[0i].z;
  let x_712 : f32 = vs_INTERP0.x;
  let x_715 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_710 * x_712) + x_715);
  let x_719 : f32 = x_153.unity_MatrixV[2i].z;
  let x_721 : f32 = vs_INTERP0.z;
  let x_724 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_719 * x_721) + x_724);
  let x_728 : f32 = u_xlat12.x;
  let x_730 : f32 = x_153.unity_MatrixV[3i].z;
  u_xlat12.x = (x_728 + x_730);
  let x_734 : f32 = u_xlat12.x;
  let x_737 : f32 = x_153.x_ProjectionParams.y;
  u_xlat12.x = (-(x_734) + -(x_737));
  let x_742 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_742, 0.0f);
  let x_746 : f32 = u_xlat12.x;
  let x_749 : f32 = x_153.unity_FogParams.x;
  u_xlat12.x = (x_746 * x_749);
  u_xlat3.w = 1.0f;
  let x_755 : vec4<f32> = x_89.unity_SHAr;
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_755, x_756);
  let x_761 : vec4<f32> = x_89.unity_SHAg;
  let x_762 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_761, x_762);
  let x_767 : vec4<f32> = x_89.unity_SHAb;
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_767, x_768);
  let x_771 : vec4<f32> = u_xlat3;
  let x_773 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_771.y, x_771.z, x_771.z, x_771.x) * vec4<f32>(x_773.x, x_773.y, x_773.z, x_773.z));
  let x_778 : vec4<f32> = x_89.unity_SHBr;
  let x_779 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_778, x_779);
  let x_784 : vec4<f32> = x_89.unity_SHBg;
  let x_785 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_784, x_785);
  let x_789 : vec4<f32> = x_89.unity_SHBb;
  let x_790 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_789, x_790);
  let x_796 : f32 = u_xlat3.y;
  let x_798 : f32 = u_xlat3.y;
  u_xlat24.x = (x_796 * x_798);
  let x_802 : f32 = u_xlat3.x;
  let x_804 : f32 = u_xlat3.x;
  let x_807 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_802 * x_804) + -(x_807));
  let x_813 : vec4<f32> = x_89.unity_SHC;
  let x_815 : vec2<f32> = u_xlat24;
  let x_818 : vec4<f32> = u_xlat9;
  u_xlat14 = ((vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(x_815.x, x_815.x, x_815.x)) + vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec3<f32> = u_xlat14;
  let x_822 : vec3<f32> = u_xlat5;
  u_xlat14 = (x_821 + x_822);
  let x_824 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_824, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_829 : vec4<f32> = x_153.x_ScaledScreenParams;
  let x_830 : vec2<f32> = vec2<f32>(x_829.x, x_829.y);
  u_xlat24 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_830.x, x_830.y));
  let x_835 : vec2<f32> = u_xlat24;
  let x_836 : vec4<f32> = hlslcc_FragCoord;
  let x_838 : vec2<f32> = (x_835 * vec2<f32>(x_836.x, x_836.y));
  let x_839 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_838.x, x_838.y, x_839.z);
  let x_842 : f32 = u_xlat5.y;
  let x_845 : f32 = x_153.x_ScaleBiasRt.x;
  let x_848 : f32 = x_153.x_ScaleBiasRt.y;
  u_xlat24.x = ((x_842 * x_845) + x_848);
  let x_852 : f32 = u_xlat24.x;
  u_xlat5.z = (-(x_852) + 1.0f);
  let x_857 : f32 = u_xlat8.x;
  u_xlat8.x = x_857;
  let x_860 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_860, 0.0f, 1.0f);
  let x_863 : f32 = u_xlat0;
  u_xlat0 = x_863;
  let x_864 : f32 = u_xlat0;
  u_xlat0 = clamp(x_864, 0.0f, 1.0f);
  let x_866 : vec3<f32> = u_xlat7;
  let x_869 : vec3<f32> = (x_866 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_870 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_873 : f32 = u_xlat8.x;
  u_xlat24.x = (-(x_873) + 1.0f);
  let x_879 : f32 = u_xlat24.x;
  let x_881 : f32 = u_xlat24.x;
  u_xlat36 = (x_879 * x_881);
  let x_883 : f32 = u_xlat36;
  u_xlat36 = max(x_883, 0.0078125f);
  let x_887 : f32 = u_xlat36;
  let x_888 : f32 = u_xlat36;
  u_xlat39 = (x_887 * x_888);
  let x_892 : f32 = u_xlat8.x;
  u_xlat40 = (x_892 + 0.040000021f);
  let x_895 : f32 = u_xlat40;
  u_xlat40 = min(x_895, 1.0f);
  let x_898 : f32 = u_xlat36;
  u_xlat17 = ((x_898 * 4.0f) + 2.0f);
  let x_907 : vec3<f32> = u_xlat5;
  let x_910 : f32 = x_153.x_GlobalMipBias.x;
  let x_911 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_907.x, x_907.z), x_910);
  u_xlat5.x = x_911.x;
  let x_916 : f32 = u_xlat5.x;
  u_xlat29 = (x_916 + -1.0f);
  let x_920 : f32 = x_153.x_AmbientOcclusionParam.w;
  let x_921 : f32 = u_xlat29;
  u_xlat29 = ((x_920 * x_921) + 1.0f);
  let x_925 : f32 = u_xlat5.x;
  let x_927 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_925, x_927);
  let x_932 : vec4<f32> = vs_INTERP9;
  let x_933 : vec2<f32> = vec2<f32>(x_932.x, x_932.y);
  let x_935 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_933.x, x_933.y, x_935);
  let x_943 : vec3<f32> = txVec1;
  let x_945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_943.xy, x_943.z);
  u_xlat41 = x_945;
  let x_946 : f32 = u_xlat41;
  let x_948 : f32 = x_341.x_MainLightShadowParams.x;
  let x_950 : f32 = u_xlat37;
  u_xlat37 = ((x_946 * x_948) + x_950);
  let x_954 : f32 = vs_INTERP9.z;
  u_xlatb41 = (0.0f >= x_954);
  let x_958 : f32 = vs_INTERP9.z;
  u_xlatb42 = (x_958 >= 1.0f);
  let x_960 : bool = u_xlatb41;
  let x_961 : bool = u_xlatb42;
  u_xlatb41 = (x_960 | x_961);
  let x_963 : bool = u_xlatb41;
  let x_964 : f32 = u_xlat37;
  u_xlat37 = select(x_964, 1.0f, x_963);
  let x_966 : vec3<f32> = vs_INTERP0;
  let x_968 : vec3<f32> = x_153.x_WorldSpaceCameraPos;
  u_xlat7 = (x_966 + -(x_968));
  let x_971 : vec3<f32> = u_xlat7;
  let x_972 : vec3<f32> = u_xlat7;
  u_xlat41 = dot(x_971, x_972);
  let x_974 : f32 = u_xlat41;
  let x_976 : f32 = x_341.x_MainLightShadowParams.z;
  let x_979 : f32 = x_341.x_MainLightShadowParams.w;
  u_xlat41 = ((x_974 * x_976) + x_979);
  let x_981 : f32 = u_xlat41;
  u_xlat41 = clamp(x_981, 0.0f, 1.0f);
  let x_984 : f32 = u_xlat37;
  u_xlat42 = (-(x_984) + 1.0f);
  let x_987 : f32 = u_xlat41;
  let x_988 : f32 = u_xlat42;
  let x_990 : f32 = u_xlat37;
  u_xlat37 = ((x_987 * x_988) + x_990);
  let x_992 : f32 = u_xlat29;
  let x_995 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_992, x_992, x_992) * vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : vec3<f32> = u_xlat4;
  let x_1000 : vec4<f32> = u_xlat3;
  u_xlat41 = dot(-(x_998), vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : f32 = u_xlat41;
  let x_1004 : f32 = u_xlat41;
  u_xlat41 = (x_1003 + x_1004);
  let x_1006 : vec4<f32> = u_xlat3;
  let x_1008 : f32 = u_xlat41;
  let x_1012 : vec3<f32> = u_xlat4;
  let x_1014 : vec3<f32> = ((vec3<f32>(x_1006.x, x_1006.y, x_1006.z) * -(vec3<f32>(x_1008, x_1008, x_1008))) + -(x_1012));
  let x_1015 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : vec4<f32> = u_xlat3;
  let x_1019 : vec3<f32> = u_xlat4;
  u_xlat41 = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), x_1019);
  let x_1021 : f32 = u_xlat41;
  u_xlat41 = clamp(x_1021, 0.0f, 1.0f);
  let x_1023 : f32 = u_xlat41;
  u_xlat41 = (-(x_1023) + 1.0f);
  let x_1026 : f32 = u_xlat41;
  let x_1027 : f32 = u_xlat41;
  u_xlat41 = (x_1026 * x_1027);
  let x_1029 : f32 = u_xlat41;
  let x_1030 : f32 = u_xlat41;
  u_xlat41 = (x_1029 * x_1030);
  let x_1033 : f32 = u_xlat24.x;
  u_xlat42 = ((-(x_1033) * 0.699999988f) + 1.700000048f);
  let x_1040 : f32 = u_xlat24.x;
  let x_1041 : f32 = u_xlat42;
  u_xlat24.x = (x_1040 * x_1041);
  let x_1045 : f32 = u_xlat24.x;
  u_xlat24.x = (x_1045 * 6.0f);
  let x_1057 : vec4<f32> = u_xlat8;
  let x_1060 : f32 = u_xlat24.x;
  let x_1061 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1057.x, x_1057.y, x_1057.z), x_1060);
  u_xlat8 = x_1061;
  let x_1063 : f32 = u_xlat8.w;
  u_xlat24.x = (x_1063 + -1.0f);
  let x_1067 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_1069 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_1067 * x_1069) + 1.0f);
  let x_1074 : f32 = u_xlat24.x;
  u_xlat24.x = max(x_1074, 0.0f);
  let x_1078 : f32 = u_xlat24.x;
  u_xlat24.x = log2(x_1078);
  let x_1082 : f32 = u_xlat24.x;
  let x_1084 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat24.x = (x_1082 * x_1084);
  let x_1088 : f32 = u_xlat24.x;
  u_xlat24.x = exp2(x_1088);
  let x_1092 : f32 = u_xlat24.x;
  let x_1094 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat24.x = (x_1092 * x_1094);
  let x_1097 : vec4<f32> = u_xlat8;
  let x_1099 : vec2<f32> = u_xlat24;
  let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) * vec3<f32>(x_1099.x, x_1099.x, x_1099.x));
  let x_1102 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1104 : f32 = u_xlat36;
  let x_1106 : f32 = u_xlat36;
  u_xlat24 = ((vec2<f32>(x_1104, x_1104) * vec2<f32>(x_1106, x_1106)) + vec2<f32>(-1.0f, 1.0f));
  let x_1112 : f32 = u_xlat24.y;
  u_xlat36 = (1.0f / x_1112);
  let x_1114 : f32 = u_xlat40;
  u_xlat40 = (x_1114 + -0.039999999f);
  let x_1117 : f32 = u_xlat41;
  let x_1118 : f32 = u_xlat40;
  u_xlat40 = ((x_1117 * x_1118) + 0.039999999f);
  let x_1122 : f32 = u_xlat36;
  let x_1123 : f32 = u_xlat40;
  u_xlat36 = (x_1122 * x_1123);
  let x_1125 : f32 = u_xlat36;
  let x_1127 : vec4<f32> = u_xlat8;
  let x_1129 : vec3<f32> = (vec3<f32>(x_1125, x_1125, x_1125) * vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
  let x_1130 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : vec3<f32> = u_xlat14;
  let x_1133 : vec4<f32> = u_xlat6;
  let x_1136 : vec4<f32> = u_xlat8;
  u_xlat14 = ((x_1132 * vec3<f32>(x_1133.x, x_1133.y, x_1133.z)) + vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : f32 = u_xlat37;
  let x_1141 : f32 = x_89.unity_LightData.z;
  u_xlat36 = (x_1139 * x_1141);
  let x_1143 : vec4<f32> = u_xlat3;
  let x_1146 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_1143.x, x_1143.y, x_1143.z), vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
  let x_1149 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1149, 0.0f, 1.0f);
  let x_1151 : f32 = u_xlat36;
  let x_1152 : f32 = u_xlat37;
  u_xlat36 = (x_1151 * x_1152);
  let x_1154 : f32 = u_xlat36;
  let x_1156 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1154, x_1154, x_1154) * x_1156);
  let x_1158 : vec3<f32> = u_xlat4;
  let x_1160 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1162 : vec3<f32> = (x_1158 + vec3<f32>(x_1160.x, x_1160.y, x_1160.z));
  let x_1163 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
  let x_1165 : vec4<f32> = u_xlat8;
  let x_1167 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1165.x, x_1165.y, x_1165.z), vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
  let x_1170 : f32 = u_xlat36;
  u_xlat36 = max(x_1170, 1.17549435e-37f);
  let x_1172 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1172);
  let x_1174 : f32 = u_xlat36;
  let x_1176 : vec4<f32> = u_xlat8;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1174, x_1174, x_1174) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec4<f32> = u_xlat3;
  let x_1183 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1181.x, x_1181.y, x_1181.z), vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1186, 0.0f, 1.0f);
  let x_1189 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1191 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1189.x, x_1189.y, x_1189.z), vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1194, 0.0f, 1.0f);
  let x_1196 : f32 = u_xlat36;
  let x_1197 : f32 = u_xlat36;
  u_xlat36 = (x_1196 * x_1197);
  let x_1199 : f32 = u_xlat36;
  let x_1201 : f32 = u_xlat24.x;
  u_xlat36 = ((x_1199 * x_1201) + 1.000010014f);
  let x_1205 : f32 = u_xlat37;
  let x_1206 : f32 = u_xlat37;
  u_xlat37 = (x_1205 * x_1206);
  let x_1208 : f32 = u_xlat36;
  let x_1209 : f32 = u_xlat36;
  u_xlat36 = (x_1208 * x_1209);
  let x_1211 : f32 = u_xlat37;
  u_xlat37 = max(x_1211, 0.100000001f);
  let x_1214 : f32 = u_xlat36;
  let x_1215 : f32 = u_xlat37;
  u_xlat36 = (x_1214 * x_1215);
  let x_1217 : f32 = u_xlat17;
  let x_1218 : f32 = u_xlat36;
  u_xlat36 = (x_1217 * x_1218);
  let x_1220 : f32 = u_xlat39;
  let x_1221 : f32 = u_xlat36;
  u_xlat36 = (x_1220 / x_1221);
  let x_1223 : f32 = u_xlat36;
  let x_1227 : vec4<f32> = u_xlat6;
  let x_1229 : vec3<f32> = ((vec3<f32>(x_1223, x_1223, x_1223) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1230 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
  let x_1232 : vec3<f32> = u_xlat7;
  let x_1233 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1232 * vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1238 : f32 = x_153.x_AdditionalLightsCount.x;
  let x_1240 : f32 = x_89.unity_LightData.y;
  u_xlat36 = min(x_1238, x_1240);
  let x_1243 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1243));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1255 : u32 = u_xlatu_loop_1;
    let x_1256 : u32 = u_xlatu36;
    if ((x_1255 < x_1256)) {
    } else {
      break;
    }
    let x_1259 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1259 >> 2u);
    let x_1262 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_1262 & 3u));
    let x_1265 : u32 = u_xlatu40;
    let x_1268 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1265)];
    let x_1278 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1283 : vec4<u32> = indexable[x_1278];
    u_xlat40 = dot(x_1268, bitcast<vec4<f32>>(x_1283));
    let x_1287 : f32 = u_xlat40;
    u_xlati40 = i32(x_1287);
    let x_1289 : vec3<f32> = vs_INTERP0;
    let x_1301 : i32 = u_xlati40;
    let x_1303 : vec4<f32> = x_1300.x_AdditionalLightsPosition[x_1301];
    let x_1306 : i32 = u_xlati40;
    let x_1308 : vec4<f32> = x_1300.x_AdditionalLightsPosition[x_1306];
    let x_1310 : vec3<f32> = ((-(x_1289) * vec3<f32>(x_1303.w, x_1303.w, x_1303.w)) + vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
    let x_1311 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
    let x_1313 : vec4<f32> = u_xlat9;
    let x_1315 : vec4<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1313.x, x_1313.y, x_1313.z), vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
    let x_1318 : f32 = u_xlat41;
    u_xlat41 = max(x_1318, 6.10351562e-05f);
    let x_1321 : f32 = u_xlat41;
    u_xlat42 = inverseSqrt(x_1321);
    let x_1324 : f32 = u_xlat42;
    let x_1326 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1324, x_1324, x_1324) * vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
    let x_1330 : f32 = u_xlat41;
    u_xlat43 = (1.0f / x_1330);
    let x_1332 : f32 = u_xlat41;
    let x_1333 : i32 = u_xlati40;
    let x_1335 : f32 = x_1300.x_AdditionalLightsAttenuation[x_1333].x;
    u_xlat41 = (x_1332 * x_1335);
    let x_1337 : f32 = u_xlat41;
    let x_1339 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1337) * x_1339) + 1.0f);
    let x_1342 : f32 = u_xlat41;
    u_xlat41 = max(x_1342, 0.0f);
    let x_1344 : f32 = u_xlat41;
    let x_1345 : f32 = u_xlat41;
    u_xlat41 = (x_1344 * x_1345);
    let x_1347 : f32 = u_xlat41;
    let x_1348 : f32 = u_xlat43;
    u_xlat41 = (x_1347 * x_1348);
    let x_1350 : i32 = u_xlati40;
    let x_1352 : vec4<f32> = x_1300.x_AdditionalLightsSpotDir[x_1350];
    let x_1354 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1352.x, x_1352.y, x_1352.z), x_1354);
    let x_1356 : f32 = u_xlat43;
    let x_1357 : i32 = u_xlati40;
    let x_1359 : f32 = x_1300.x_AdditionalLightsAttenuation[x_1357].z;
    let x_1361 : i32 = u_xlati40;
    let x_1363 : f32 = x_1300.x_AdditionalLightsAttenuation[x_1361].w;
    u_xlat43 = ((x_1356 * x_1359) + x_1363);
    let x_1365 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1365, 0.0f, 1.0f);
    let x_1367 : f32 = u_xlat43;
    let x_1368 : f32 = u_xlat43;
    u_xlat43 = (x_1367 * x_1368);
    let x_1370 : f32 = u_xlat41;
    let x_1371 : f32 = u_xlat43;
    u_xlat41 = (x_1370 * x_1371);
    let x_1374 : f32 = u_xlat29;
    let x_1376 : i32 = u_xlati40;
    let x_1378 : vec4<f32> = x_1300.x_AdditionalLightsColor[x_1376];
    u_xlat11 = (vec3<f32>(x_1374, x_1374, x_1374) * vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
    let x_1381 : vec4<f32> = u_xlat3;
    let x_1383 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_1381.x, x_1381.y, x_1381.z), x_1383);
    let x_1385 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1385, 0.0f, 1.0f);
    let x_1387 : f32 = u_xlat40;
    let x_1388 : f32 = u_xlat41;
    u_xlat40 = (x_1387 * x_1388);
    let x_1390 : f32 = u_xlat40;
    let x_1392 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1390, x_1390, x_1390) * x_1392);
    let x_1394 : vec4<f32> = u_xlat9;
    let x_1396 : f32 = u_xlat42;
    let x_1399 : vec3<f32> = u_xlat4;
    let x_1400 : vec3<f32> = ((vec3<f32>(x_1394.x, x_1394.y, x_1394.z) * vec3<f32>(x_1396, x_1396, x_1396)) + x_1399);
    let x_1401 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
    let x_1403 : vec4<f32> = u_xlat9;
    let x_1405 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1403.x, x_1403.y, x_1403.z), vec3<f32>(x_1405.x, x_1405.y, x_1405.z));
    let x_1408 : f32 = u_xlat40;
    u_xlat40 = max(x_1408, 1.17549435e-37f);
    let x_1410 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1410);
    let x_1412 : f32 = u_xlat40;
    let x_1414 : vec4<f32> = u_xlat9;
    let x_1416 : vec3<f32> = (vec3<f32>(x_1412, x_1412, x_1412) * vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
    let x_1417 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
    let x_1419 : vec4<f32> = u_xlat3;
    let x_1421 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1419.x, x_1419.y, x_1419.z), vec3<f32>(x_1421.x, x_1421.y, x_1421.z));
    let x_1424 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1424, 0.0f, 1.0f);
    let x_1426 : vec3<f32> = u_xlat10;
    let x_1427 : vec4<f32> = u_xlat9;
    u_xlat41 = dot(x_1426, vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
    let x_1430 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1430, 0.0f, 1.0f);
    let x_1432 : f32 = u_xlat40;
    let x_1433 : f32 = u_xlat40;
    u_xlat40 = (x_1432 * x_1433);
    let x_1435 : f32 = u_xlat40;
    let x_1437 : f32 = u_xlat24.x;
    u_xlat40 = ((x_1435 * x_1437) + 1.000010014f);
    let x_1440 : f32 = u_xlat41;
    let x_1441 : f32 = u_xlat41;
    u_xlat41 = (x_1440 * x_1441);
    let x_1443 : f32 = u_xlat40;
    let x_1444 : f32 = u_xlat40;
    u_xlat40 = (x_1443 * x_1444);
    let x_1446 : f32 = u_xlat41;
    u_xlat41 = max(x_1446, 0.100000001f);
    let x_1448 : f32 = u_xlat40;
    let x_1449 : f32 = u_xlat41;
    u_xlat40 = (x_1448 * x_1449);
    let x_1451 : f32 = u_xlat17;
    let x_1452 : f32 = u_xlat40;
    u_xlat40 = (x_1451 * x_1452);
    let x_1454 : f32 = u_xlat39;
    let x_1455 : f32 = u_xlat40;
    u_xlat40 = (x_1454 / x_1455);
    let x_1457 : f32 = u_xlat40;
    let x_1460 : vec4<f32> = u_xlat6;
    let x_1462 : vec3<f32> = ((vec3<f32>(x_1457, x_1457, x_1457) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
    let x_1463 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
    let x_1465 : vec4<f32> = u_xlat9;
    let x_1467 : vec3<f32> = u_xlat11;
    let x_1469 : vec4<f32> = u_xlat8;
    let x_1471 : vec3<f32> = ((vec3<f32>(x_1465.x, x_1465.y, x_1465.z) * x_1467) + vec3<f32>(x_1469.x, x_1469.y, x_1469.z));
    let x_1472 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);

    continuing {
      let x_1474 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1474 + bitcast<u32>(1i));
    }
  }
  let x_1476 : vec3<f32> = u_xlat14;
  let x_1477 : vec3<f32> = u_xlat5;
  let x_1480 : vec3<f32> = u_xlat7;
  u_xlat14 = ((x_1476 * vec3<f32>(x_1477.x, x_1477.x, x_1477.x)) + x_1480);
  let x_1482 : vec4<f32> = u_xlat8;
  let x_1484 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_1482.x, x_1482.y, x_1482.z) + x_1484);
  let x_1486 : vec4<f32> = vs_INTERP4;
  let x_1488 : vec3<f32> = u_xlat1;
  let x_1490 : vec3<f32> = u_xlat14;
  u_xlat1 = ((vec3<f32>(x_1486.w, x_1486.w, x_1486.w) * x_1488) + x_1490);
  let x_1493 : f32 = u_xlat12.x;
  let x_1495 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1493 * -(x_1495));
  let x_1500 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1500);
  let x_1503 : vec3<f32> = u_xlat1;
  let x_1506 : vec4<f32> = x_153.unity_FogColor;
  u_xlat1 = (x_1503 + -(vec3<f32>(x_1506.x, x_1506.y, x_1506.z)));
  let x_1512 : vec3<f32> = u_xlat12;
  let x_1514 : vec3<f32> = u_xlat1;
  let x_1517 : vec4<f32> = x_153.unity_FogColor;
  let x_1519 : vec3<f32> = ((vec3<f32>(x_1512.x, x_1512.x, x_1512.x) * x_1514) + vec3<f32>(x_1517.x, x_1517.y, x_1517.z));
  let x_1520 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1519.x, x_1519.y, x_1519.z, x_1520.w);
  let x_1522 : bool = u_xlatb2;
  let x_1523 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1523, x_1522);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

