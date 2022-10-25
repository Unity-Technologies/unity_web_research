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

@group(1) @binding(0) var<uniform> x_90 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_145 : UnityPerDraw;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_199 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_255 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1399 : AdditionalLights;

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
  var u_xlat0 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat2 : vec3<f32>;
  var x_133 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb37 : bool;
  var u_xlatb38 : bool;
  var u_xlat38 : f32;
  var x_517 : f32;
  var u_xlatu2 : vec3<u32>;
  var u_xlatu26 : u32;
  var u_xlatu3 : u32;
  var u_xlati26 : i32;
  var u_xlati14 : i32;
  var u_xlatu14 : u32;
  var u_xlati2 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat14 : vec3<f32>;
  var x_650 : f32;
  var u_xlatb14 : vec2<bool>;
  var x_681 : f32;
  var u_xlat26 : vec2<f32>;
  var u_xlatb2 : bool;
  var x_731 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat18 : f32;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati30 : i32;
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
  u_xlat0.x = dot(x_65, x_66);
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_72);
  let x_76 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_76);
  let x_79 : vec3<f32> = u_xlat0;
  let x_81 : vec3<f32> = vs_INTERP1;
  u_xlat0 = (vec3<f32>(x_79.x, x_79.x, x_79.x) * x_81);
  let x_94 : f32 = x_90.unity_OrthoParams.w;
  u_xlatb36 = (x_94 == 0.0f);
  let x_99 : vec3<f32> = vs_INTERP0;
  let x_104 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_99) + x_104);
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec3<f32> = u_xlat1;
  u_xlat37 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat37;
  let x_114 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_121 : f32 = x_90.unity_MatrixV[0i].z;
  u_xlat2.x = x_121;
  let x_125 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat2.y = x_125;
  let x_130 : f32 = x_90.unity_MatrixV[2i].z;
  u_xlat2.z = x_130;
  let x_132 : bool = u_xlatb36;
  if (x_132) {
    let x_136 : vec3<f32> = u_xlat1;
    x_133 = x_136;
  } else {
    let x_138 : vec3<f32> = u_xlat2;
    x_133 = x_138;
  }
  let x_139 : vec3<f32> = x_133;
  u_xlat1 = x_139;
  let x_140 : vec3<f32> = u_xlat1;
  let x_148 : vec4<f32> = x_145.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_152 : vec4<f32> = x_145.unity_WorldToObject[0i];
  let x_154 : vec3<f32> = u_xlat1;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.x, x_154.x, x_154.x)) + x_157);
  let x_160 : vec4<f32> = x_145.unity_WorldToObject[2i];
  let x_162 : vec3<f32> = u_xlat1;
  let x_165 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + x_165);
  let x_168 : vec3<f32> = u_xlat2;
  let x_169 : vec3<f32> = u_xlat2;
  u_xlat36 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat36;
  let x_175 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_173, x_173, x_173) * x_175);
  let x_189 : vec4<f32> = vs_INTERP3;
  let x_192 : f32 = x_90.x_GlobalMipBias.x;
  let x_193 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_189.x, x_189.y), x_192);
  u_xlat3 = x_193;
  let x_195 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = x_199.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_210 : vec4<f32> = vs_INTERP3;
  let x_213 : f32 = x_90.x_GlobalMipBias.x;
  let x_214 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_210.x, x_210.y), x_213);
  u_xlat5 = vec4<f32>(x_214.w, x_214.x, x_214.y, x_214.z);
  let x_217 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_217.y, x_217.z, x_217.w, x_217.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_225 : vec4<f32> = u_xlat6;
  let x_226 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_225, x_226);
  let x_228 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_228);
  let x_231 : f32 = u_xlat36;
  let x_233 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_231, x_231, x_231) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_238 : f32 = vs_INTERP4.y;
  u_xlat36 = (x_238 * 200.0f);
  let x_241 : f32 = u_xlat36;
  u_xlat36 = min(x_241, 1.0f);
  let x_243 : f32 = u_xlat36;
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : vec3<f32> = (vec3<f32>(x_243, x_243, x_243) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec3<f32> = vs_INTERP0;
  let x_257 : vec4<f32> = x_255.x_CascadeShadowSplitSpheres0;
  let x_260 : vec3<f32> = (x_250 + -(vec3<f32>(x_257.x, x_257.y, x_257.z)));
  let x_261 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_264 : vec3<f32> = vs_INTERP0;
  let x_266 : vec4<f32> = x_255.x_CascadeShadowSplitSpheres1;
  let x_269 : vec3<f32> = (x_264 + -(vec3<f32>(x_266.x, x_266.y, x_266.z)));
  let x_270 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec3<f32> = vs_INTERP0;
  let x_276 : vec4<f32> = x_255.x_CascadeShadowSplitSpheres2;
  let x_279 : vec3<f32> = (x_273 + -(vec3<f32>(x_276.x, x_276.y, x_276.z)));
  let x_280 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_283 : vec3<f32> = vs_INTERP0;
  let x_286 : vec4<f32> = x_255.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_283 + -(vec3<f32>(x_286.x, x_286.y, x_286.z)));
  let x_290 : vec4<f32> = u_xlat6;
  let x_292 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_296 : vec4<f32> = u_xlat7;
  let x_298 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_302 : vec4<f32> = u_xlat8;
  let x_304 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_302.x, x_302.y, x_302.z), vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_308 : vec3<f32> = u_xlat9;
  let x_309 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_308, x_309);
  let x_315 : vec4<f32> = u_xlat6;
  let x_318 : vec4<f32> = x_255.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_315 < x_318);
  let x_321 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_321);
  let x_325 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_325);
  let x_329 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_329);
  let x_333 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_333);
  let x_337 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_337);
  let x_342 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_342);
  let x_346 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_346);
  let x_349 : vec4<f32> = u_xlat6;
  let x_351 : vec4<f32> = u_xlat7;
  let x_353 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) + vec3<f32>(x_351.y, x_351.z, x_351.w));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat6;
  let x_359 : vec3<f32> = max(vec3<f32>(x_356.x, x_356.y, x_356.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_360 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_360.x, x_359.x, x_359.y, x_359.z);
  let x_362 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(x_362, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_367 : f32 = u_xlat36;
  u_xlat36 = (-(x_367) + 4.0f);
  let x_371 : f32 = u_xlat36;
  u_xlatu36 = u32(x_371);
  let x_374 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_374) << bitcast<u32>(2i));
  let x_377 : vec3<f32> = vs_INTERP0;
  let x_379 : i32 = u_xlati36;
  let x_382 : i32 = u_xlati36;
  let x_386 : vec4<f32> = x_255.x_MainLightWorldToShadow[((x_379 + 1i) / 4i)][((x_382 + 1i) % 4i)];
  let x_388 : vec3<f32> = (vec3<f32>(x_377.y, x_377.y, x_377.y) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : i32 = u_xlati36;
  let x_393 : i32 = u_xlati36;
  let x_396 : vec4<f32> = x_255.x_MainLightWorldToShadow[(x_391 / 4i)][(x_393 % 4i)];
  let x_398 : vec3<f32> = vs_INTERP0;
  let x_401 : vec4<f32> = u_xlat6;
  let x_403 : vec3<f32> = ((vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(x_398.x, x_398.x, x_398.x)) + vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : i32 = u_xlati36;
  let x_409 : i32 = u_xlati36;
  let x_413 : vec4<f32> = x_255.x_MainLightWorldToShadow[((x_406 + 2i) / 4i)][((x_409 + 2i) % 4i)];
  let x_415 : vec3<f32> = vs_INTERP0;
  let x_418 : vec4<f32> = u_xlat6;
  let x_420 : vec3<f32> = ((vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_415.z, x_415.z, x_415.z)) + vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat6;
  let x_425 : i32 = u_xlati36;
  let x_428 : i32 = u_xlati36;
  let x_432 : vec4<f32> = x_255.x_MainLightWorldToShadow[((x_425 + 3i) / 4i)][((x_428 + 3i) % 4i)];
  let x_434 : vec3<f32> = (vec3<f32>(x_423.x, x_423.y, x_423.z) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_438 : vec4<f32> = u_xlat6;
  let x_439 : vec2<f32> = vec2<f32>(x_438.x, x_438.y);
  let x_441 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_439.x, x_439.y, x_441);
  let x_453 : vec3<f32> = txVec0;
  let x_455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_453.xy, x_453.z);
  u_xlat36 = x_455;
  let x_458 : f32 = x_255.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_458) + 1.0f);
  let x_461 : f32 = u_xlat36;
  let x_463 : f32 = x_255.x_MainLightShadowParams.x;
  let x_465 : f32 = u_xlat37;
  u_xlat36 = ((x_461 * x_463) + x_465);
  let x_469 : f32 = u_xlat6.z;
  u_xlatb37 = (0.0f >= x_469);
  let x_473 : f32 = u_xlat6.z;
  u_xlatb38 = (x_473 >= 1.0f);
  let x_475 : bool = u_xlatb37;
  let x_476 : bool = u_xlatb38;
  u_xlatb37 = (x_475 | x_476);
  let x_478 : bool = u_xlatb37;
  let x_479 : f32 = u_xlat36;
  u_xlat36 = select(x_479, 1.0f, x_478);
  let x_481 : vec3<f32> = u_xlat0;
  let x_483 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_481, -(vec3<f32>(x_483.x, x_483.y, x_483.z)));
  let x_489 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_489, 0.0f, 1.0f);
  let x_492 : f32 = u_xlat36;
  let x_495 : vec4<f32> = x_90.x_MainLightColor;
  let x_497 : vec3<f32> = (vec3<f32>(x_492, x_492, x_492) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec3<f32> = u_xlat0;
  let x_502 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_500.x, x_500.x, x_500.x) * vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec3<f32> = u_xlat0;
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_505 * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_510 : f32 = x_145.unity_LODFade.x;
  u_xlatb37 = (x_510 < 0.0f);
  let x_514 : f32 = x_145.unity_LODFade.x;
  u_xlat38 = (x_514 + 1.0f);
  let x_516 : bool = u_xlatb37;
  if (x_516) {
    let x_520 : f32 = u_xlat38;
    x_517 = x_520;
  } else {
    let x_523 : f32 = x_145.unity_LODFade.x;
    x_517 = x_523;
  }
  let x_524 : f32 = x_517;
  u_xlat37 = x_524;
  let x_526 : f32 = u_xlat37;
  u_xlatb38 = (0.5f >= x_526);
  let x_528 : vec3<f32> = u_xlat2;
  let x_532 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat2 = (abs(x_528) * vec3<f32>(x_532.x, x_532.y, x_532.x));
  let x_538 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_538);
  let x_542 : u32 = u_xlatu2.z;
  u_xlatu26 = (x_542 * 1025u);
  let x_546 : u32 = u_xlatu26;
  u_xlatu3 = (x_546 >> 6u);
  let x_550 : u32 = u_xlatu26;
  let x_551 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_550 ^ x_551));
  let x_554 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_554) * 9u);
  let x_558 : u32 = u_xlatu26;
  u_xlatu3 = (x_558 >> 11u);
  let x_561 : u32 = u_xlatu26;
  let x_562 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_561 ^ x_562));
  let x_565 : i32 = u_xlati26;
  u_xlati26 = (x_565 * 32769i);
  let x_569 : i32 = u_xlati26;
  let x_572 : u32 = u_xlatu2.y;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_569) ^ x_572));
  let x_576 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_576) * 1025u);
  let x_579 : u32 = u_xlatu14;
  u_xlatu26 = (x_579 >> 6u);
  let x_581 : u32 = u_xlatu26;
  let x_582 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_581 ^ x_582));
  let x_585 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_585) * 9u);
  let x_588 : u32 = u_xlatu14;
  u_xlatu26 = (x_588 >> 11u);
  let x_590 : u32 = u_xlatu26;
  let x_591 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_590 ^ x_591));
  let x_594 : i32 = u_xlati14;
  u_xlati14 = (x_594 * 32769i);
  let x_597 : i32 = u_xlati14;
  let x_600 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_597) ^ x_600));
  let x_603 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_603) * 1025u);
  let x_608 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_608 >> 6u);
  let x_610 : u32 = u_xlatu14;
  let x_612 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_610 ^ x_612));
  let x_615 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_615) * 9u);
  let x_620 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_620 >> 11u);
  let x_622 : u32 = u_xlatu14;
  let x_624 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_622 ^ x_624));
  let x_627 : i32 = u_xlati2;
  u_xlati2 = (x_627 * 32769i);
  param = 1065353216i;
  let x_633 : i32 = u_xlati2;
  param_1 = x_633;
  param_2 = 0i;
  param_3 = 23i;
  let x_636 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_636);
  let x_640 : f32 = u_xlat2.x;
  u_xlat2.x = (x_640 + -1.0f);
  let x_645 : f32 = u_xlat2.x;
  u_xlat14.x = (-(x_645) + 1.0f);
  let x_649 : bool = u_xlatb38;
  if (x_649) {
    let x_654 : f32 = u_xlat2.x;
    x_650 = x_654;
  } else {
    let x_657 : f32 = u_xlat14.x;
    x_650 = x_657;
  }
  let x_658 : f32 = x_650;
  u_xlat2.x = x_658;
  let x_660 : f32 = u_xlat37;
  let x_663 : f32 = u_xlat2.x;
  u_xlat37 = ((x_660 * 2.0f) + -(x_663));
  let x_666 : f32 = u_xlat37;
  let x_668 : f32 = u_xlat3.w;
  u_xlat2.x = (x_666 * x_668);
  let x_675 : f32 = u_xlat2.x;
  u_xlatb14.x = (x_675 >= 0.400000006f);
  let x_680 : bool = u_xlatb14.x;
  if (x_680) {
    let x_685 : f32 = u_xlat2.x;
    x_681 = x_685;
  } else {
    x_681 = 0.0f;
  }
  let x_687 : f32 = x_681;
  u_xlat14.x = x_687;
  let x_690 : f32 = u_xlat3.w;
  let x_691 : f32 = u_xlat37;
  u_xlat37 = ((x_690 * x_691) + -0.400000006f);
  let x_698 : f32 = u_xlat2.x;
  u_xlat26.x = dpdxCoarse(x_698);
  let x_702 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_702);
  let x_706 : f32 = u_xlat2.x;
  let x_709 : f32 = u_xlat26.x;
  u_xlat2.x = (abs(x_706) + abs(x_709));
  let x_714 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_714, 0.0001f);
  let x_718 : f32 = u_xlat37;
  let x_720 : f32 = u_xlat2.x;
  u_xlat37 = (x_718 / x_720);
  let x_722 : f32 = u_xlat37;
  u_xlat37 = (x_722 + 0.5f);
  let x_724 : f32 = u_xlat37;
  u_xlat37 = clamp(x_724, 0.0f, 1.0f);
  let x_728 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_728 == 0.0f));
  let x_730 : bool = u_xlatb2;
  if (x_730) {
    let x_734 : f32 = u_xlat37;
    x_731 = x_734;
  } else {
    let x_737 : f32 = u_xlat14.x;
    x_731 = x_737;
  }
  let x_738 : f32 = x_731;
  u_xlat37 = x_738;
  let x_739 : f32 = u_xlat37;
  u_xlat14.x = (x_739 + -0.0001f);
  let x_744 : f32 = u_xlat14.x;
  u_xlatb14.x = (x_744 < 0.0f);
  let x_748 : bool = u_xlatb14.x;
  if (((select(0i, 1i, x_748) * -1i) != 0i)) {
    discard;
  }
  let x_758 : f32 = vs_INTERP2.w;
  u_xlatb14.x = (0.0f < x_758);
  let x_762 : f32 = x_145.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_762 >= 0.0f);
  let x_766 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_766);
  let x_770 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_770);
  let x_774 : f32 = u_xlat14.y;
  let x_776 : f32 = u_xlat14.x;
  u_xlat14.x = (x_774 * x_776);
  let x_779 : vec3<f32> = vs_INTERP1;
  let x_781 : vec4<f32> = vs_INTERP2;
  let x_783 : vec3<f32> = (vec3<f32>(x_779.z, x_779.x, x_779.y) * vec3<f32>(x_781.y, x_781.z, x_781.x));
  let x_784 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec3<f32> = vs_INTERP1;
  let x_788 : vec4<f32> = vs_INTERP2;
  let x_791 : vec4<f32> = u_xlat3;
  let x_794 : vec3<f32> = ((vec3<f32>(x_786.y, x_786.z, x_786.x) * vec3<f32>(x_788.z, x_788.x, x_788.y)) + -(vec3<f32>(x_791.x, x_791.y, x_791.z)));
  let x_795 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec3<f32> = u_xlat14;
  let x_799 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec3<f32>(x_797.x, x_797.x, x_797.x) * vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : vec3<f32> = u_xlat14;
  let x_803 : vec3<f32> = u_xlat17;
  u_xlat14 = (x_802 * vec3<f32>(x_803.y, x_803.y, x_803.y));
  let x_806 : vec3<f32> = u_xlat17;
  let x_808 : vec4<f32> = vs_INTERP2;
  let x_811 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_806.x, x_806.x, x_806.x) * vec3<f32>(x_808.x, x_808.y, x_808.z)) + x_811);
  let x_813 : vec3<f32> = u_xlat17;
  let x_815 : vec3<f32> = vs_INTERP1;
  let x_817 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_813.z, x_813.z, x_813.z) * x_815) + x_817);
  let x_819 : vec3<f32> = u_xlat14;
  let x_820 : vec3<f32> = u_xlat14;
  u_xlat3.x = dot(x_819, x_820);
  let x_824 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_824);
  let x_827 : vec3<f32> = u_xlat14;
  let x_828 : vec4<f32> = u_xlat3;
  let x_830 : vec3<f32> = (x_827 * vec3<f32>(x_828.x, x_828.x, x_828.x));
  let x_831 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_834 : f32 = vs_INTERP0.y;
  let x_836 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat14.x = (x_834 * x_836);
  let x_840 : f32 = x_90.unity_MatrixV[0i].z;
  let x_842 : f32 = vs_INTERP0.x;
  let x_845 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_840 * x_842) + x_845);
  let x_849 : f32 = x_90.unity_MatrixV[2i].z;
  let x_851 : f32 = vs_INTERP0.z;
  let x_854 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_849 * x_851) + x_854);
  let x_858 : f32 = u_xlat14.x;
  let x_860 : f32 = x_90.unity_MatrixV[3i].z;
  u_xlat14.x = (x_858 + x_860);
  let x_864 : f32 = u_xlat14.x;
  let x_867 : f32 = x_90.x_ProjectionParams.y;
  u_xlat14.x = (-(x_864) + -(x_867));
  let x_872 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_872, 0.0f);
  let x_876 : f32 = u_xlat14.x;
  let x_879 : f32 = x_90.unity_FogParams.x;
  u_xlat14.x = (x_876 * x_879);
  u_xlat3.w = 1.0f;
  let x_885 : vec4<f32> = x_145.unity_SHAr;
  let x_886 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_885, x_886);
  let x_891 : vec4<f32> = x_145.unity_SHAg;
  let x_892 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_891, x_892);
  let x_897 : vec4<f32> = x_145.unity_SHAb;
  let x_898 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_897, x_898);
  let x_901 : vec4<f32> = u_xlat3;
  let x_903 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_901.y, x_901.z, x_901.z, x_901.x) * vec4<f32>(x_903.x, x_903.y, x_903.z, x_903.z));
  let x_908 : vec4<f32> = x_145.unity_SHBr;
  let x_909 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_908, x_909);
  let x_914 : vec4<f32> = x_145.unity_SHBg;
  let x_915 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_914, x_915);
  let x_919 : vec4<f32> = x_145.unity_SHBb;
  let x_920 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_919, x_920);
  let x_924 : f32 = u_xlat3.y;
  let x_926 : f32 = u_xlat3.y;
  u_xlat26.x = (x_924 * x_926);
  let x_930 : f32 = u_xlat3.x;
  let x_932 : f32 = u_xlat3.x;
  let x_935 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_930 * x_932) + -(x_935));
  let x_941 : vec4<f32> = x_145.unity_SHC;
  let x_943 : vec2<f32> = u_xlat26;
  let x_946 : vec4<f32> = u_xlat8;
  u_xlat17 = ((vec3<f32>(x_941.x, x_941.y, x_941.z) * vec3<f32>(x_943.x, x_943.x, x_943.x)) + vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec3<f32> = u_xlat17;
  let x_950 : vec4<f32> = u_xlat6;
  u_xlat17 = (x_949 + vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_953, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_957 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_958 : vec2<f32> = vec2<f32>(x_957.x, x_957.y);
  u_xlat26 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_958.x, x_958.y));
  let x_963 : vec2<f32> = u_xlat26;
  let x_964 : vec4<f32> = hlslcc_FragCoord;
  let x_966 : vec2<f32> = (x_963 * vec2<f32>(x_964.x, x_964.y));
  let x_967 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
  let x_970 : f32 = u_xlat6.y;
  let x_973 : f32 = x_90.x_ScaleBiasRt.x;
  let x_976 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat26.x = ((x_970 * x_973) + x_976);
  let x_980 : f32 = u_xlat26.x;
  u_xlat6.z = (-(x_980) + 1.0f);
  let x_985 : f32 = u_xlat5.x;
  u_xlat5.x = x_985;
  let x_988 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_988, 0.0f, 1.0f);
  let x_991 : f32 = u_xlat37;
  u_xlat37 = x_991;
  let x_992 : f32 = u_xlat37;
  u_xlat37 = clamp(x_992, 0.0f, 1.0f);
  let x_994 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_994 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_999 : f32 = u_xlat5.x;
  u_xlat26.x = (-(x_999) + 1.0f);
  let x_1004 : f32 = u_xlat26.x;
  let x_1006 : f32 = u_xlat26.x;
  u_xlat38 = (x_1004 * x_1006);
  let x_1008 : f32 = u_xlat38;
  u_xlat38 = max(x_1008, 0.0078125f);
  let x_1012 : f32 = u_xlat38;
  let x_1013 : f32 = u_xlat38;
  u_xlat39 = (x_1012 * x_1013);
  let x_1017 : f32 = u_xlat5.x;
  u_xlat40 = (x_1017 + 0.040000021f);
  let x_1020 : f32 = u_xlat40;
  u_xlat40 = min(x_1020, 1.0f);
  let x_1022 : f32 = u_xlat38;
  u_xlat5.x = ((x_1022 * 4.0f) + 2.0f);
  let x_1031 : vec4<f32> = u_xlat6;
  let x_1034 : f32 = x_90.x_GlobalMipBias.x;
  let x_1035 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1031.x, x_1031.z), x_1034);
  u_xlat6.x = x_1035.x;
  let x_1040 : f32 = u_xlat6.x;
  u_xlat18 = (x_1040 + -1.0f);
  let x_1043 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_1044 : f32 = u_xlat18;
  u_xlat18 = ((x_1043 * x_1044) + 1.0f);
  let x_1048 : f32 = u_xlat6.x;
  let x_1050 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_1048, x_1050);
  let x_1053 : vec3<f32> = vs_INTERP0;
  let x_1055 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  let x_1057 : vec3<f32> = (x_1053 + -(x_1055));
  let x_1058 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1061 : vec4<f32> = u_xlat7;
  let x_1063 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_1061.x, x_1061.y, x_1061.z), vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : f32 = u_xlat30;
  let x_1068 : f32 = x_255.x_MainLightShadowParams.z;
  let x_1071 : f32 = x_255.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1066 * x_1068) + x_1071);
  let x_1073 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1073, 0.0f, 1.0f);
  let x_1076 : f32 = u_xlat36;
  u_xlat42 = (-(x_1076) + 1.0f);
  let x_1079 : f32 = u_xlat30;
  let x_1080 : f32 = u_xlat42;
  let x_1082 : f32 = u_xlat36;
  u_xlat36 = ((x_1079 * x_1080) + x_1082);
  let x_1084 : f32 = u_xlat18;
  let x_1087 : vec4<f32> = x_90.x_MainLightColor;
  let x_1089 : vec3<f32> = (vec3<f32>(x_1084, x_1084, x_1084) * vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : vec3<f32> = u_xlat1;
  let x_1094 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_1092), vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1097 : f32 = u_xlat30;
  let x_1098 : f32 = u_xlat30;
  u_xlat30 = (x_1097 + x_1098);
  let x_1100 : vec4<f32> = u_xlat3;
  let x_1102 : f32 = u_xlat30;
  let x_1106 : vec3<f32> = u_xlat1;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1100.x, x_1100.y, x_1100.z) * -(vec3<f32>(x_1102, x_1102, x_1102))) + -(x_1106));
  let x_1109 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : vec4<f32> = u_xlat3;
  let x_1113 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(vec3<f32>(x_1111.x, x_1111.y, x_1111.z), x_1113);
  let x_1115 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1115, 0.0f, 1.0f);
  let x_1117 : f32 = u_xlat30;
  u_xlat30 = (-(x_1117) + 1.0f);
  let x_1120 : f32 = u_xlat30;
  let x_1121 : f32 = u_xlat30;
  u_xlat30 = (x_1120 * x_1121);
  let x_1123 : f32 = u_xlat30;
  let x_1124 : f32 = u_xlat30;
  u_xlat30 = (x_1123 * x_1124);
  let x_1127 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_1127) * 0.699999988f) + 1.700000048f);
  let x_1134 : f32 = u_xlat26.x;
  let x_1135 : f32 = u_xlat42;
  u_xlat26.x = (x_1134 * x_1135);
  let x_1139 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1139 * 6.0f);
  let x_1151 : vec4<f32> = u_xlat8;
  let x_1154 : f32 = u_xlat26.x;
  let x_1155 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1151.x, x_1151.y, x_1151.z), x_1154);
  u_xlat8 = x_1155;
  let x_1157 : f32 = u_xlat8.w;
  u_xlat26.x = (x_1157 + -1.0f);
  let x_1161 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1163 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1161 * x_1163) + 1.0f);
  let x_1168 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_1168, 0.0f);
  let x_1172 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_1172);
  let x_1176 : f32 = u_xlat26.x;
  let x_1178 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_1176 * x_1178);
  let x_1182 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_1182);
  let x_1186 : f32 = u_xlat26.x;
  let x_1188 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_1186 * x_1188);
  let x_1191 : vec4<f32> = u_xlat8;
  let x_1193 : vec2<f32> = u_xlat26;
  let x_1195 : vec3<f32> = (vec3<f32>(x_1191.x, x_1191.y, x_1191.z) * vec3<f32>(x_1193.x, x_1193.x, x_1193.x));
  let x_1196 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1195.x, x_1195.y, x_1195.z, x_1196.w);
  let x_1198 : f32 = u_xlat38;
  let x_1200 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_1198, x_1198) * vec2<f32>(x_1200, x_1200)) + vec2<f32>(-1.0f, 1.0f));
  let x_1206 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_1206);
  let x_1208 : f32 = u_xlat40;
  u_xlat40 = (x_1208 + -0.039999999f);
  let x_1211 : f32 = u_xlat30;
  let x_1212 : f32 = u_xlat40;
  u_xlat40 = ((x_1211 * x_1212) + 0.039999999f);
  let x_1216 : f32 = u_xlat38;
  let x_1217 : f32 = u_xlat40;
  u_xlat38 = (x_1216 * x_1217);
  let x_1219 : f32 = u_xlat38;
  let x_1221 : vec4<f32> = u_xlat8;
  let x_1223 : vec3<f32> = (vec3<f32>(x_1219, x_1219, x_1219) * vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1224 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
  let x_1226 : vec3<f32> = u_xlat17;
  let x_1227 : vec3<f32> = u_xlat4;
  let x_1229 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_1226 * x_1227) + vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
  let x_1232 : f32 = u_xlat36;
  let x_1234 : f32 = x_145.unity_LightData.z;
  u_xlat36 = (x_1232 * x_1234);
  let x_1236 : vec4<f32> = u_xlat3;
  let x_1239 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_1236.x, x_1236.y, x_1236.z), vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1242, 0.0f, 1.0f);
  let x_1244 : f32 = u_xlat36;
  let x_1245 : f32 = u_xlat38;
  u_xlat36 = (x_1244 * x_1245);
  let x_1247 : f32 = u_xlat36;
  let x_1249 : vec4<f32> = u_xlat7;
  let x_1251 : vec3<f32> = (vec3<f32>(x_1247, x_1247, x_1247) * vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : vec3<f32> = u_xlat1;
  let x_1256 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1258 : vec3<f32> = (x_1254 + vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
  let x_1259 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
  let x_1261 : vec4<f32> = u_xlat8;
  let x_1263 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1261.x, x_1261.y, x_1261.z), vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
  let x_1266 : f32 = u_xlat36;
  u_xlat36 = max(x_1266, 1.17549435e-37f);
  let x_1269 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1269);
  let x_1271 : f32 = u_xlat36;
  let x_1273 : vec4<f32> = u_xlat8;
  let x_1275 : vec3<f32> = (vec3<f32>(x_1271, x_1271, x_1271) * vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
  let x_1276 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
  let x_1278 : vec4<f32> = u_xlat3;
  let x_1280 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1278.x, x_1278.y, x_1278.z), vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
  let x_1283 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1283, 0.0f, 1.0f);
  let x_1286 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1288 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1286.x, x_1286.y, x_1286.z), vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1291, 0.0f, 1.0f);
  let x_1293 : f32 = u_xlat36;
  let x_1294 : f32 = u_xlat36;
  u_xlat36 = (x_1293 * x_1294);
  let x_1296 : f32 = u_xlat36;
  let x_1298 : f32 = u_xlat26.x;
  u_xlat36 = ((x_1296 * x_1298) + 1.000010014f);
  let x_1302 : f32 = u_xlat38;
  let x_1303 : f32 = u_xlat38;
  u_xlat38 = (x_1302 * x_1303);
  let x_1305 : f32 = u_xlat36;
  let x_1306 : f32 = u_xlat36;
  u_xlat36 = (x_1305 * x_1306);
  let x_1308 : f32 = u_xlat38;
  u_xlat38 = max(x_1308, 0.100000001f);
  let x_1311 : f32 = u_xlat36;
  let x_1312 : f32 = u_xlat38;
  u_xlat36 = (x_1311 * x_1312);
  let x_1315 : f32 = u_xlat5.x;
  let x_1316 : f32 = u_xlat36;
  u_xlat36 = (x_1315 * x_1316);
  let x_1318 : f32 = u_xlat39;
  let x_1319 : f32 = u_xlat36;
  u_xlat36 = (x_1318 / x_1319);
  let x_1321 : f32 = u_xlat36;
  let x_1325 : vec3<f32> = u_xlat4;
  let x_1326 : vec3<f32> = ((vec3<f32>(x_1321, x_1321, x_1321) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1325);
  let x_1327 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
  let x_1329 : vec4<f32> = u_xlat7;
  let x_1331 : vec4<f32> = u_xlat8;
  let x_1333 : vec3<f32> = (vec3<f32>(x_1329.x, x_1329.y, x_1329.z) * vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1334 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
  let x_1338 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1340 : f32 = x_145.unity_LightData.y;
  u_xlat36 = min(x_1338, x_1340);
  let x_1342 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1342));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1354 : u32 = u_xlatu_loop_1;
    let x_1355 : u32 = u_xlatu36;
    if ((x_1354 < x_1355)) {
    } else {
      break;
    }
    let x_1358 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1358 >> 2u);
    let x_1361 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_1361 & 3u));
    let x_1364 : u32 = u_xlatu40;
    let x_1367 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1364)];
    let x_1377 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1382 : vec4<u32> = indexable[x_1377];
    u_xlat40 = dot(x_1367, bitcast<vec4<f32>>(x_1382));
    let x_1386 : f32 = u_xlat40;
    u_xlati40 = i32(x_1386);
    let x_1388 : vec3<f32> = vs_INTERP0;
    let x_1400 : i32 = u_xlati40;
    let x_1402 : vec4<f32> = x_1399.x_AdditionalLightsPosition[x_1400];
    let x_1405 : i32 = u_xlati40;
    let x_1407 : vec4<f32> = x_1399.x_AdditionalLightsPosition[x_1405];
    u_xlat9 = ((-(x_1388) * vec3<f32>(x_1402.w, x_1402.w, x_1402.w)) + vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
    let x_1410 : vec3<f32> = u_xlat9;
    let x_1411 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1410, x_1411);
    let x_1413 : f32 = u_xlat30;
    u_xlat30 = max(x_1413, 6.10351562e-05f);
    let x_1416 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1416);
    let x_1419 : f32 = u_xlat42;
    let x_1421 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1419, x_1419, x_1419) * x_1421);
    let x_1424 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_1424);
    let x_1426 : f32 = u_xlat30;
    let x_1427 : i32 = u_xlati40;
    let x_1429 : f32 = x_1399.x_AdditionalLightsAttenuation[x_1427].x;
    u_xlat30 = (x_1426 * x_1429);
    let x_1431 : f32 = u_xlat30;
    let x_1433 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1431) * x_1433) + 1.0f);
    let x_1436 : f32 = u_xlat30;
    u_xlat30 = max(x_1436, 0.0f);
    let x_1438 : f32 = u_xlat30;
    let x_1439 : f32 = u_xlat30;
    u_xlat30 = (x_1438 * x_1439);
    let x_1441 : f32 = u_xlat30;
    let x_1442 : f32 = u_xlat43;
    u_xlat30 = (x_1441 * x_1442);
    let x_1444 : i32 = u_xlati40;
    let x_1446 : vec4<f32> = x_1399.x_AdditionalLightsSpotDir[x_1444];
    let x_1448 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1446.x, x_1446.y, x_1446.z), x_1448);
    let x_1450 : f32 = u_xlat43;
    let x_1451 : i32 = u_xlati40;
    let x_1453 : f32 = x_1399.x_AdditionalLightsAttenuation[x_1451].z;
    let x_1455 : i32 = u_xlati40;
    let x_1457 : f32 = x_1399.x_AdditionalLightsAttenuation[x_1455].w;
    u_xlat43 = ((x_1450 * x_1453) + x_1457);
    let x_1459 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1459, 0.0f, 1.0f);
    let x_1461 : f32 = u_xlat43;
    let x_1462 : f32 = u_xlat43;
    u_xlat43 = (x_1461 * x_1462);
    let x_1464 : f32 = u_xlat30;
    let x_1465 : f32 = u_xlat43;
    u_xlat30 = (x_1464 * x_1465);
    let x_1468 : f32 = u_xlat18;
    let x_1470 : i32 = u_xlati40;
    let x_1472 : vec4<f32> = x_1399.x_AdditionalLightsColor[x_1470];
    u_xlat11 = (vec3<f32>(x_1468, x_1468, x_1468) * vec3<f32>(x_1472.x, x_1472.y, x_1472.z));
    let x_1475 : vec4<f32> = u_xlat3;
    let x_1477 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_1475.x, x_1475.y, x_1475.z), x_1477);
    let x_1479 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1479, 0.0f, 1.0f);
    let x_1481 : f32 = u_xlat40;
    let x_1482 : f32 = u_xlat30;
    u_xlat40 = (x_1481 * x_1482);
    let x_1484 : f32 = u_xlat40;
    let x_1486 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1484, x_1484, x_1484) * x_1486);
    let x_1488 : vec3<f32> = u_xlat9;
    let x_1489 : f32 = u_xlat42;
    let x_1492 : vec3<f32> = u_xlat1;
    u_xlat9 = ((x_1488 * vec3<f32>(x_1489, x_1489, x_1489)) + x_1492);
    let x_1494 : vec3<f32> = u_xlat9;
    let x_1495 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(x_1494, x_1495);
    let x_1497 : f32 = u_xlat40;
    u_xlat40 = max(x_1497, 1.17549435e-37f);
    let x_1499 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1499);
    let x_1501 : f32 = u_xlat40;
    let x_1503 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1501, x_1501, x_1501) * x_1503);
    let x_1505 : vec4<f32> = u_xlat3;
    let x_1507 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1505.x, x_1505.y, x_1505.z), x_1507);
    let x_1509 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1509, 0.0f, 1.0f);
    let x_1511 : vec3<f32> = u_xlat10;
    let x_1512 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1511, x_1512);
    let x_1514 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1514, 0.0f, 1.0f);
    let x_1516 : f32 = u_xlat40;
    let x_1517 : f32 = u_xlat40;
    u_xlat40 = (x_1516 * x_1517);
    let x_1519 : f32 = u_xlat40;
    let x_1521 : f32 = u_xlat26.x;
    u_xlat40 = ((x_1519 * x_1521) + 1.000010014f);
    let x_1524 : f32 = u_xlat30;
    let x_1525 : f32 = u_xlat30;
    u_xlat30 = (x_1524 * x_1525);
    let x_1527 : f32 = u_xlat40;
    let x_1528 : f32 = u_xlat40;
    u_xlat40 = (x_1527 * x_1528);
    let x_1530 : f32 = u_xlat30;
    u_xlat30 = max(x_1530, 0.100000001f);
    let x_1532 : f32 = u_xlat40;
    let x_1533 : f32 = u_xlat30;
    u_xlat40 = (x_1532 * x_1533);
    let x_1536 : f32 = u_xlat5.x;
    let x_1537 : f32 = u_xlat40;
    u_xlat40 = (x_1536 * x_1537);
    let x_1539 : f32 = u_xlat39;
    let x_1540 : f32 = u_xlat40;
    u_xlat40 = (x_1539 / x_1540);
    let x_1542 : f32 = u_xlat40;
    let x_1545 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1542, x_1542, x_1542) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1545);
    let x_1547 : vec3<f32> = u_xlat9;
    let x_1548 : vec3<f32> = u_xlat11;
    let x_1550 : vec4<f32> = u_xlat8;
    let x_1552 : vec3<f32> = ((x_1547 * x_1548) + vec3<f32>(x_1550.x, x_1550.y, x_1550.z));
    let x_1553 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1553.w);

    continuing {
      let x_1555 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1555 + bitcast<u32>(1i));
    }
  }
  let x_1557 : vec3<f32> = u_xlat17;
  let x_1558 : vec4<f32> = u_xlat6;
  let x_1561 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1557 * vec3<f32>(x_1558.x, x_1558.x, x_1558.x)) + vec3<f32>(x_1561.x, x_1561.y, x_1561.z));
  let x_1564 : vec4<f32> = u_xlat8;
  let x_1566 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1564.x, x_1564.y, x_1564.z) + x_1566);
  let x_1568 : vec4<f32> = vs_INTERP4;
  let x_1570 : vec3<f32> = u_xlat0;
  let x_1572 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1568.w, x_1568.w, x_1568.w) * x_1570) + x_1572);
  let x_1575 : f32 = u_xlat14.x;
  let x_1577 : f32 = u_xlat14.x;
  u_xlat36 = (x_1575 * -(x_1577));
  let x_1580 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1580);
  let x_1582 : vec3<f32> = u_xlat0;
  let x_1585 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_1582 + -(vec3<f32>(x_1585.x, x_1585.y, x_1585.z)));
  let x_1591 : f32 = u_xlat36;
  let x_1593 : vec3<f32> = u_xlat0;
  let x_1596 : vec4<f32> = x_90.unity_FogColor;
  let x_1598 : vec3<f32> = ((vec3<f32>(x_1591, x_1591, x_1591) * x_1593) + vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
  let x_1599 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
  let x_1601 : bool = u_xlatb2;
  let x_1602 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1602, x_1601);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP2 = vs_INTERP2_param;
  main_1();
  return main_out(SV_Target0);
}

