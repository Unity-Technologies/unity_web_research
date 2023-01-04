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

@group(1) @binding(1) var<uniform> x_1301 : AdditionalLights;

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
  let x_738 : f32 = x_153.x_ProjectionParams.y;
  u_xlat12.x = (-(x_734) + -(x_738));
  let x_743 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_743, 0.0f);
  let x_747 : f32 = u_xlat12.x;
  let x_750 : f32 = x_153.unity_FogParams.x;
  u_xlat12.x = (x_747 * x_750);
  u_xlat3.w = 1.0f;
  let x_756 : vec4<f32> = x_89.unity_SHAr;
  let x_757 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_756, x_757);
  let x_762 : vec4<f32> = x_89.unity_SHAg;
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_762, x_763);
  let x_768 : vec4<f32> = x_89.unity_SHAb;
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_768, x_769);
  let x_772 : vec4<f32> = u_xlat3;
  let x_774 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_772.y, x_772.z, x_772.z, x_772.x) * vec4<f32>(x_774.x, x_774.y, x_774.z, x_774.z));
  let x_779 : vec4<f32> = x_89.unity_SHBr;
  let x_780 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_779, x_780);
  let x_785 : vec4<f32> = x_89.unity_SHBg;
  let x_786 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_785, x_786);
  let x_790 : vec4<f32> = x_89.unity_SHBb;
  let x_791 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_790, x_791);
  let x_797 : f32 = u_xlat3.y;
  let x_799 : f32 = u_xlat3.y;
  u_xlat24.x = (x_797 * x_799);
  let x_803 : f32 = u_xlat3.x;
  let x_805 : f32 = u_xlat3.x;
  let x_808 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_803 * x_805) + -(x_808));
  let x_814 : vec4<f32> = x_89.unity_SHC;
  let x_816 : vec2<f32> = u_xlat24;
  let x_819 : vec4<f32> = u_xlat9;
  u_xlat14 = ((vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_816.x, x_816.x, x_816.x)) + vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : vec3<f32> = u_xlat14;
  let x_823 : vec3<f32> = u_xlat5;
  u_xlat14 = (x_822 + x_823);
  let x_825 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_825, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_830 : vec4<f32> = x_153.x_ScaledScreenParams;
  let x_831 : vec2<f32> = vec2<f32>(x_830.x, x_830.y);
  u_xlat24 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_831.x, x_831.y));
  let x_836 : vec2<f32> = u_xlat24;
  let x_837 : vec4<f32> = hlslcc_FragCoord;
  let x_839 : vec2<f32> = (x_836 * vec2<f32>(x_837.x, x_837.y));
  let x_840 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_839.x, x_839.y, x_840.z);
  let x_843 : f32 = u_xlat5.y;
  let x_846 : f32 = x_153.x_ScaleBiasRt.x;
  let x_849 : f32 = x_153.x_ScaleBiasRt.y;
  u_xlat24.x = ((x_843 * x_846) + x_849);
  let x_853 : f32 = u_xlat24.x;
  u_xlat5.z = (-(x_853) + 1.0f);
  let x_858 : f32 = u_xlat8.x;
  u_xlat8.x = x_858;
  let x_861 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_861, 0.0f, 1.0f);
  let x_864 : f32 = u_xlat0;
  u_xlat0 = x_864;
  let x_865 : f32 = u_xlat0;
  u_xlat0 = clamp(x_865, 0.0f, 1.0f);
  let x_867 : vec3<f32> = u_xlat7;
  let x_870 : vec3<f32> = (x_867 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_871 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_874 : f32 = u_xlat8.x;
  u_xlat24.x = (-(x_874) + 1.0f);
  let x_880 : f32 = u_xlat24.x;
  let x_882 : f32 = u_xlat24.x;
  u_xlat36 = (x_880 * x_882);
  let x_884 : f32 = u_xlat36;
  u_xlat36 = max(x_884, 0.0078125f);
  let x_888 : f32 = u_xlat36;
  let x_889 : f32 = u_xlat36;
  u_xlat39 = (x_888 * x_889);
  let x_893 : f32 = u_xlat8.x;
  u_xlat40 = (x_893 + 0.040000021f);
  let x_896 : f32 = u_xlat40;
  u_xlat40 = min(x_896, 1.0f);
  let x_899 : f32 = u_xlat36;
  u_xlat17 = ((x_899 * 4.0f) + 2.0f);
  let x_908 : vec3<f32> = u_xlat5;
  let x_911 : f32 = x_153.x_GlobalMipBias.x;
  let x_912 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_908.x, x_908.z), x_911);
  u_xlat5.x = x_912.x;
  let x_917 : f32 = u_xlat5.x;
  u_xlat29 = (x_917 + -1.0f);
  let x_921 : f32 = x_153.x_AmbientOcclusionParam.w;
  let x_922 : f32 = u_xlat29;
  u_xlat29 = ((x_921 * x_922) + 1.0f);
  let x_926 : f32 = u_xlat5.x;
  let x_928 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_926, x_928);
  let x_933 : vec4<f32> = vs_INTERP9;
  let x_934 : vec2<f32> = vec2<f32>(x_933.x, x_933.y);
  let x_936 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_934.x, x_934.y, x_936);
  let x_944 : vec3<f32> = txVec1;
  let x_946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_944.xy, x_944.z);
  u_xlat41 = x_946;
  let x_947 : f32 = u_xlat41;
  let x_949 : f32 = x_341.x_MainLightShadowParams.x;
  let x_951 : f32 = u_xlat37;
  u_xlat37 = ((x_947 * x_949) + x_951);
  let x_955 : f32 = vs_INTERP9.z;
  u_xlatb41 = (0.0f >= x_955);
  let x_959 : f32 = vs_INTERP9.z;
  u_xlatb42 = (x_959 >= 1.0f);
  let x_961 : bool = u_xlatb41;
  let x_962 : bool = u_xlatb42;
  u_xlatb41 = (x_961 | x_962);
  let x_964 : bool = u_xlatb41;
  let x_965 : f32 = u_xlat37;
  u_xlat37 = select(x_965, 1.0f, x_964);
  let x_967 : vec3<f32> = vs_INTERP0;
  let x_969 : vec3<f32> = x_153.x_WorldSpaceCameraPos;
  u_xlat7 = (x_967 + -(x_969));
  let x_972 : vec3<f32> = u_xlat7;
  let x_973 : vec3<f32> = u_xlat7;
  u_xlat41 = dot(x_972, x_973);
  let x_975 : f32 = u_xlat41;
  let x_977 : f32 = x_341.x_MainLightShadowParams.z;
  let x_980 : f32 = x_341.x_MainLightShadowParams.w;
  u_xlat41 = ((x_975 * x_977) + x_980);
  let x_982 : f32 = u_xlat41;
  u_xlat41 = clamp(x_982, 0.0f, 1.0f);
  let x_985 : f32 = u_xlat37;
  u_xlat42 = (-(x_985) + 1.0f);
  let x_988 : f32 = u_xlat41;
  let x_989 : f32 = u_xlat42;
  let x_991 : f32 = u_xlat37;
  u_xlat37 = ((x_988 * x_989) + x_991);
  let x_993 : f32 = u_xlat29;
  let x_996 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_993, x_993, x_993) * vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : vec3<f32> = u_xlat4;
  let x_1001 : vec4<f32> = u_xlat3;
  u_xlat41 = dot(-(x_999), vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : f32 = u_xlat41;
  let x_1005 : f32 = u_xlat41;
  u_xlat41 = (x_1004 + x_1005);
  let x_1007 : vec4<f32> = u_xlat3;
  let x_1009 : f32 = u_xlat41;
  let x_1013 : vec3<f32> = u_xlat4;
  let x_1015 : vec3<f32> = ((vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * -(vec3<f32>(x_1009, x_1009, x_1009))) + -(x_1013));
  let x_1016 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec4<f32> = u_xlat3;
  let x_1020 : vec3<f32> = u_xlat4;
  u_xlat41 = dot(vec3<f32>(x_1018.x, x_1018.y, x_1018.z), x_1020);
  let x_1022 : f32 = u_xlat41;
  u_xlat41 = clamp(x_1022, 0.0f, 1.0f);
  let x_1024 : f32 = u_xlat41;
  u_xlat41 = (-(x_1024) + 1.0f);
  let x_1027 : f32 = u_xlat41;
  let x_1028 : f32 = u_xlat41;
  u_xlat41 = (x_1027 * x_1028);
  let x_1030 : f32 = u_xlat41;
  let x_1031 : f32 = u_xlat41;
  u_xlat41 = (x_1030 * x_1031);
  let x_1034 : f32 = u_xlat24.x;
  u_xlat42 = ((-(x_1034) * 0.699999988f) + 1.700000048f);
  let x_1041 : f32 = u_xlat24.x;
  let x_1042 : f32 = u_xlat42;
  u_xlat24.x = (x_1041 * x_1042);
  let x_1046 : f32 = u_xlat24.x;
  u_xlat24.x = (x_1046 * 6.0f);
  let x_1058 : vec4<f32> = u_xlat8;
  let x_1061 : f32 = u_xlat24.x;
  let x_1062 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1058.x, x_1058.y, x_1058.z), x_1061);
  u_xlat8 = x_1062;
  let x_1064 : f32 = u_xlat8.w;
  u_xlat24.x = (x_1064 + -1.0f);
  let x_1068 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_1070 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_1068 * x_1070) + 1.0f);
  let x_1075 : f32 = u_xlat24.x;
  u_xlat24.x = max(x_1075, 0.0f);
  let x_1079 : f32 = u_xlat24.x;
  u_xlat24.x = log2(x_1079);
  let x_1083 : f32 = u_xlat24.x;
  let x_1085 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat24.x = (x_1083 * x_1085);
  let x_1089 : f32 = u_xlat24.x;
  u_xlat24.x = exp2(x_1089);
  let x_1093 : f32 = u_xlat24.x;
  let x_1095 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat24.x = (x_1093 * x_1095);
  let x_1098 : vec4<f32> = u_xlat8;
  let x_1100 : vec2<f32> = u_xlat24;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1098.x, x_1098.y, x_1098.z) * vec3<f32>(x_1100.x, x_1100.x, x_1100.x));
  let x_1103 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : f32 = u_xlat36;
  let x_1107 : f32 = u_xlat36;
  u_xlat24 = ((vec2<f32>(x_1105, x_1105) * vec2<f32>(x_1107, x_1107)) + vec2<f32>(-1.0f, 1.0f));
  let x_1113 : f32 = u_xlat24.y;
  u_xlat36 = (1.0f / x_1113);
  let x_1115 : f32 = u_xlat40;
  u_xlat40 = (x_1115 + -0.039999999f);
  let x_1118 : f32 = u_xlat41;
  let x_1119 : f32 = u_xlat40;
  u_xlat40 = ((x_1118 * x_1119) + 0.039999999f);
  let x_1123 : f32 = u_xlat36;
  let x_1124 : f32 = u_xlat40;
  u_xlat36 = (x_1123 * x_1124);
  let x_1126 : f32 = u_xlat36;
  let x_1128 : vec4<f32> = u_xlat8;
  let x_1130 : vec3<f32> = (vec3<f32>(x_1126, x_1126, x_1126) * vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
  let x_1131 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : vec3<f32> = u_xlat14;
  let x_1134 : vec4<f32> = u_xlat6;
  let x_1137 : vec4<f32> = u_xlat8;
  u_xlat14 = ((x_1133 * vec3<f32>(x_1134.x, x_1134.y, x_1134.z)) + vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : f32 = u_xlat37;
  let x_1142 : f32 = x_89.unity_LightData.z;
  u_xlat36 = (x_1140 * x_1142);
  let x_1144 : vec4<f32> = u_xlat3;
  let x_1147 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_1144.x, x_1144.y, x_1144.z), vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1150, 0.0f, 1.0f);
  let x_1152 : f32 = u_xlat36;
  let x_1153 : f32 = u_xlat37;
  u_xlat36 = (x_1152 * x_1153);
  let x_1155 : f32 = u_xlat36;
  let x_1157 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1155, x_1155, x_1155) * x_1157);
  let x_1159 : vec3<f32> = u_xlat4;
  let x_1161 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1163 : vec3<f32> = (x_1159 + vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1166 : vec4<f32> = u_xlat8;
  let x_1168 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1166.x, x_1166.y, x_1166.z), vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1171 : f32 = u_xlat36;
  u_xlat36 = max(x_1171, 1.17549435e-37f);
  let x_1173 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1173);
  let x_1175 : f32 = u_xlat36;
  let x_1177 : vec4<f32> = u_xlat8;
  let x_1179 : vec3<f32> = (vec3<f32>(x_1175, x_1175, x_1175) * vec3<f32>(x_1177.x, x_1177.y, x_1177.z));
  let x_1180 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
  let x_1182 : vec4<f32> = u_xlat3;
  let x_1184 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1182.x, x_1182.y, x_1182.z), vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1187, 0.0f, 1.0f);
  let x_1190 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1192 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1190.x, x_1190.y, x_1190.z), vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
  let x_1195 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1195, 0.0f, 1.0f);
  let x_1197 : f32 = u_xlat36;
  let x_1198 : f32 = u_xlat36;
  u_xlat36 = (x_1197 * x_1198);
  let x_1200 : f32 = u_xlat36;
  let x_1202 : f32 = u_xlat24.x;
  u_xlat36 = ((x_1200 * x_1202) + 1.000010014f);
  let x_1206 : f32 = u_xlat37;
  let x_1207 : f32 = u_xlat37;
  u_xlat37 = (x_1206 * x_1207);
  let x_1209 : f32 = u_xlat36;
  let x_1210 : f32 = u_xlat36;
  u_xlat36 = (x_1209 * x_1210);
  let x_1212 : f32 = u_xlat37;
  u_xlat37 = max(x_1212, 0.100000001f);
  let x_1215 : f32 = u_xlat36;
  let x_1216 : f32 = u_xlat37;
  u_xlat36 = (x_1215 * x_1216);
  let x_1218 : f32 = u_xlat17;
  let x_1219 : f32 = u_xlat36;
  u_xlat36 = (x_1218 * x_1219);
  let x_1221 : f32 = u_xlat39;
  let x_1222 : f32 = u_xlat36;
  u_xlat36 = (x_1221 / x_1222);
  let x_1224 : f32 = u_xlat36;
  let x_1228 : vec4<f32> = u_xlat6;
  let x_1230 : vec3<f32> = ((vec3<f32>(x_1224, x_1224, x_1224) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1231 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1233 : vec3<f32> = u_xlat7;
  let x_1234 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1233 * vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
  let x_1239 : f32 = x_153.x_AdditionalLightsCount.x;
  let x_1241 : f32 = x_89.unity_LightData.y;
  u_xlat36 = min(x_1239, x_1241);
  let x_1244 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1244));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1256 : u32 = u_xlatu_loop_1;
    let x_1257 : u32 = u_xlatu36;
    if ((x_1256 < x_1257)) {
    } else {
      break;
    }
    let x_1260 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1260 >> 2u);
    let x_1263 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_1263 & 3u));
    let x_1266 : u32 = u_xlatu40;
    let x_1269 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1266)];
    let x_1279 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1284 : vec4<u32> = indexable[x_1279];
    u_xlat40 = dot(x_1269, bitcast<vec4<f32>>(x_1284));
    let x_1288 : f32 = u_xlat40;
    u_xlati40 = i32(x_1288);
    let x_1290 : vec3<f32> = vs_INTERP0;
    let x_1302 : i32 = u_xlati40;
    let x_1304 : vec4<f32> = x_1301.x_AdditionalLightsPosition[x_1302];
    let x_1307 : i32 = u_xlati40;
    let x_1309 : vec4<f32> = x_1301.x_AdditionalLightsPosition[x_1307];
    let x_1311 : vec3<f32> = ((-(x_1290) * vec3<f32>(x_1304.w, x_1304.w, x_1304.w)) + vec3<f32>(x_1309.x, x_1309.y, x_1309.z));
    let x_1312 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
    let x_1314 : vec4<f32> = u_xlat9;
    let x_1316 : vec4<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1314.x, x_1314.y, x_1314.z), vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
    let x_1319 : f32 = u_xlat41;
    u_xlat41 = max(x_1319, 6.10351562e-05f);
    let x_1322 : f32 = u_xlat41;
    u_xlat42 = inverseSqrt(x_1322);
    let x_1325 : f32 = u_xlat42;
    let x_1327 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1325, x_1325, x_1325) * vec3<f32>(x_1327.x, x_1327.y, x_1327.z));
    let x_1331 : f32 = u_xlat41;
    u_xlat43 = (1.0f / x_1331);
    let x_1333 : f32 = u_xlat41;
    let x_1334 : i32 = u_xlati40;
    let x_1336 : f32 = x_1301.x_AdditionalLightsAttenuation[x_1334].x;
    u_xlat41 = (x_1333 * x_1336);
    let x_1338 : f32 = u_xlat41;
    let x_1340 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1338) * x_1340) + 1.0f);
    let x_1343 : f32 = u_xlat41;
    u_xlat41 = max(x_1343, 0.0f);
    let x_1345 : f32 = u_xlat41;
    let x_1346 : f32 = u_xlat41;
    u_xlat41 = (x_1345 * x_1346);
    let x_1348 : f32 = u_xlat41;
    let x_1349 : f32 = u_xlat43;
    u_xlat41 = (x_1348 * x_1349);
    let x_1351 : i32 = u_xlati40;
    let x_1353 : vec4<f32> = x_1301.x_AdditionalLightsSpotDir[x_1351];
    let x_1355 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1353.x, x_1353.y, x_1353.z), x_1355);
    let x_1357 : f32 = u_xlat43;
    let x_1358 : i32 = u_xlati40;
    let x_1360 : f32 = x_1301.x_AdditionalLightsAttenuation[x_1358].z;
    let x_1362 : i32 = u_xlati40;
    let x_1364 : f32 = x_1301.x_AdditionalLightsAttenuation[x_1362].w;
    u_xlat43 = ((x_1357 * x_1360) + x_1364);
    let x_1366 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1366, 0.0f, 1.0f);
    let x_1368 : f32 = u_xlat43;
    let x_1369 : f32 = u_xlat43;
    u_xlat43 = (x_1368 * x_1369);
    let x_1371 : f32 = u_xlat41;
    let x_1372 : f32 = u_xlat43;
    u_xlat41 = (x_1371 * x_1372);
    let x_1375 : f32 = u_xlat29;
    let x_1377 : i32 = u_xlati40;
    let x_1379 : vec4<f32> = x_1301.x_AdditionalLightsColor[x_1377];
    u_xlat11 = (vec3<f32>(x_1375, x_1375, x_1375) * vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
    let x_1382 : vec4<f32> = u_xlat3;
    let x_1384 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_1382.x, x_1382.y, x_1382.z), x_1384);
    let x_1386 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1386, 0.0f, 1.0f);
    let x_1388 : f32 = u_xlat40;
    let x_1389 : f32 = u_xlat41;
    u_xlat40 = (x_1388 * x_1389);
    let x_1391 : f32 = u_xlat40;
    let x_1393 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1391, x_1391, x_1391) * x_1393);
    let x_1395 : vec4<f32> = u_xlat9;
    let x_1397 : f32 = u_xlat42;
    let x_1400 : vec3<f32> = u_xlat4;
    let x_1401 : vec3<f32> = ((vec3<f32>(x_1395.x, x_1395.y, x_1395.z) * vec3<f32>(x_1397, x_1397, x_1397)) + x_1400);
    let x_1402 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
    let x_1404 : vec4<f32> = u_xlat9;
    let x_1406 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1404.x, x_1404.y, x_1404.z), vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
    let x_1409 : f32 = u_xlat40;
    u_xlat40 = max(x_1409, 1.17549435e-37f);
    let x_1411 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1411);
    let x_1413 : f32 = u_xlat40;
    let x_1415 : vec4<f32> = u_xlat9;
    let x_1417 : vec3<f32> = (vec3<f32>(x_1413, x_1413, x_1413) * vec3<f32>(x_1415.x, x_1415.y, x_1415.z));
    let x_1418 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
    let x_1420 : vec4<f32> = u_xlat3;
    let x_1422 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1420.x, x_1420.y, x_1420.z), vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
    let x_1425 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1425, 0.0f, 1.0f);
    let x_1427 : vec3<f32> = u_xlat10;
    let x_1428 : vec4<f32> = u_xlat9;
    u_xlat41 = dot(x_1427, vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
    let x_1431 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1431, 0.0f, 1.0f);
    let x_1433 : f32 = u_xlat40;
    let x_1434 : f32 = u_xlat40;
    u_xlat40 = (x_1433 * x_1434);
    let x_1436 : f32 = u_xlat40;
    let x_1438 : f32 = u_xlat24.x;
    u_xlat40 = ((x_1436 * x_1438) + 1.000010014f);
    let x_1441 : f32 = u_xlat41;
    let x_1442 : f32 = u_xlat41;
    u_xlat41 = (x_1441 * x_1442);
    let x_1444 : f32 = u_xlat40;
    let x_1445 : f32 = u_xlat40;
    u_xlat40 = (x_1444 * x_1445);
    let x_1447 : f32 = u_xlat41;
    u_xlat41 = max(x_1447, 0.100000001f);
    let x_1449 : f32 = u_xlat40;
    let x_1450 : f32 = u_xlat41;
    u_xlat40 = (x_1449 * x_1450);
    let x_1452 : f32 = u_xlat17;
    let x_1453 : f32 = u_xlat40;
    u_xlat40 = (x_1452 * x_1453);
    let x_1455 : f32 = u_xlat39;
    let x_1456 : f32 = u_xlat40;
    u_xlat40 = (x_1455 / x_1456);
    let x_1458 : f32 = u_xlat40;
    let x_1461 : vec4<f32> = u_xlat6;
    let x_1463 : vec3<f32> = ((vec3<f32>(x_1458, x_1458, x_1458) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
    let x_1464 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
    let x_1466 : vec4<f32> = u_xlat9;
    let x_1468 : vec3<f32> = u_xlat11;
    let x_1470 : vec4<f32> = u_xlat8;
    let x_1472 : vec3<f32> = ((vec3<f32>(x_1466.x, x_1466.y, x_1466.z) * x_1468) + vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
    let x_1473 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);

    continuing {
      let x_1475 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1475 + bitcast<u32>(1i));
    }
  }
  let x_1477 : vec3<f32> = u_xlat14;
  let x_1478 : vec3<f32> = u_xlat5;
  let x_1481 : vec3<f32> = u_xlat7;
  u_xlat14 = ((x_1477 * vec3<f32>(x_1478.x, x_1478.x, x_1478.x)) + x_1481);
  let x_1483 : vec4<f32> = u_xlat8;
  let x_1485 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_1483.x, x_1483.y, x_1483.z) + x_1485);
  let x_1487 : vec4<f32> = vs_INTERP4;
  let x_1489 : vec3<f32> = u_xlat1;
  let x_1491 : vec3<f32> = u_xlat14;
  u_xlat1 = ((vec3<f32>(x_1487.w, x_1487.w, x_1487.w) * x_1489) + x_1491);
  let x_1494 : f32 = u_xlat12.x;
  let x_1496 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1494 * -(x_1496));
  let x_1501 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1501);
  let x_1504 : vec3<f32> = u_xlat1;
  let x_1507 : vec4<f32> = x_153.unity_FogColor;
  u_xlat1 = (x_1504 + -(vec3<f32>(x_1507.x, x_1507.y, x_1507.z)));
  let x_1513 : vec3<f32> = u_xlat12;
  let x_1515 : vec3<f32> = u_xlat1;
  let x_1518 : vec4<f32> = x_153.unity_FogColor;
  let x_1520 : vec3<f32> = ((vec3<f32>(x_1513.x, x_1513.x, x_1513.x) * x_1515) + vec3<f32>(x_1518.x, x_1518.y, x_1518.z));
  let x_1521 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
  let x_1523 : bool = u_xlatb2;
  let x_1524 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1524, x_1523);
  let x_1532 : u32 = x_153.x_RenderingLayerMaxInt;
  let x_1534 : f32 = x_89.unity_RenderingLayer.x;
  u_xlatu0 = (x_1532 & bitcast<u32>(x_1534));
  let x_1537 : u32 = u_xlatu0;
  u_xlat0 = f32(x_1537);
  let x_1540 : f32 = u_xlat0;
  let x_1542 : f32 = x_153.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1540 * x_1542);
  let x_1546 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1546, 0.0f, 1.0f);
  let x_1549 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1549.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

