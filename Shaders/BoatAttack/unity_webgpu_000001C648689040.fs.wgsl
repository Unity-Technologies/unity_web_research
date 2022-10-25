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

@group(1) @binding(1) var<uniform> x_1400 : AdditionalLights;

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
  let x_868 : f32 = x_90.x_ProjectionParams.y;
  u_xlat14.x = (-(x_864) + -(x_868));
  let x_873 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_873, 0.0f);
  let x_877 : f32 = u_xlat14.x;
  let x_880 : f32 = x_90.unity_FogParams.x;
  u_xlat14.x = (x_877 * x_880);
  u_xlat3.w = 1.0f;
  let x_886 : vec4<f32> = x_145.unity_SHAr;
  let x_887 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_886, x_887);
  let x_892 : vec4<f32> = x_145.unity_SHAg;
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_892, x_893);
  let x_898 : vec4<f32> = x_145.unity_SHAb;
  let x_899 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_898, x_899);
  let x_902 : vec4<f32> = u_xlat3;
  let x_904 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_902.y, x_902.z, x_902.z, x_902.x) * vec4<f32>(x_904.x, x_904.y, x_904.z, x_904.z));
  let x_909 : vec4<f32> = x_145.unity_SHBr;
  let x_910 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_909, x_910);
  let x_915 : vec4<f32> = x_145.unity_SHBg;
  let x_916 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_915, x_916);
  let x_920 : vec4<f32> = x_145.unity_SHBb;
  let x_921 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_920, x_921);
  let x_925 : f32 = u_xlat3.y;
  let x_927 : f32 = u_xlat3.y;
  u_xlat26.x = (x_925 * x_927);
  let x_931 : f32 = u_xlat3.x;
  let x_933 : f32 = u_xlat3.x;
  let x_936 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_931 * x_933) + -(x_936));
  let x_942 : vec4<f32> = x_145.unity_SHC;
  let x_944 : vec2<f32> = u_xlat26;
  let x_947 : vec4<f32> = u_xlat8;
  u_xlat17 = ((vec3<f32>(x_942.x, x_942.y, x_942.z) * vec3<f32>(x_944.x, x_944.x, x_944.x)) + vec3<f32>(x_947.x, x_947.y, x_947.z));
  let x_950 : vec3<f32> = u_xlat17;
  let x_951 : vec4<f32> = u_xlat6;
  u_xlat17 = (x_950 + vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_954 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_954, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_958 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_959 : vec2<f32> = vec2<f32>(x_958.x, x_958.y);
  u_xlat26 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_959.x, x_959.y));
  let x_964 : vec2<f32> = u_xlat26;
  let x_965 : vec4<f32> = hlslcc_FragCoord;
  let x_967 : vec2<f32> = (x_964 * vec2<f32>(x_965.x, x_965.y));
  let x_968 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
  let x_971 : f32 = u_xlat6.y;
  let x_974 : f32 = x_90.x_ScaleBiasRt.x;
  let x_977 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat26.x = ((x_971 * x_974) + x_977);
  let x_981 : f32 = u_xlat26.x;
  u_xlat6.z = (-(x_981) + 1.0f);
  let x_986 : f32 = u_xlat5.x;
  u_xlat5.x = x_986;
  let x_989 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_989, 0.0f, 1.0f);
  let x_992 : f32 = u_xlat37;
  u_xlat37 = x_992;
  let x_993 : f32 = u_xlat37;
  u_xlat37 = clamp(x_993, 0.0f, 1.0f);
  let x_995 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_995 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_1000 : f32 = u_xlat5.x;
  u_xlat26.x = (-(x_1000) + 1.0f);
  let x_1005 : f32 = u_xlat26.x;
  let x_1007 : f32 = u_xlat26.x;
  u_xlat38 = (x_1005 * x_1007);
  let x_1009 : f32 = u_xlat38;
  u_xlat38 = max(x_1009, 0.0078125f);
  let x_1013 : f32 = u_xlat38;
  let x_1014 : f32 = u_xlat38;
  u_xlat39 = (x_1013 * x_1014);
  let x_1018 : f32 = u_xlat5.x;
  u_xlat40 = (x_1018 + 0.040000021f);
  let x_1021 : f32 = u_xlat40;
  u_xlat40 = min(x_1021, 1.0f);
  let x_1023 : f32 = u_xlat38;
  u_xlat5.x = ((x_1023 * 4.0f) + 2.0f);
  let x_1032 : vec4<f32> = u_xlat6;
  let x_1035 : f32 = x_90.x_GlobalMipBias.x;
  let x_1036 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1032.x, x_1032.z), x_1035);
  u_xlat6.x = x_1036.x;
  let x_1041 : f32 = u_xlat6.x;
  u_xlat18 = (x_1041 + -1.0f);
  let x_1044 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_1045 : f32 = u_xlat18;
  u_xlat18 = ((x_1044 * x_1045) + 1.0f);
  let x_1049 : f32 = u_xlat6.x;
  let x_1051 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_1049, x_1051);
  let x_1054 : vec3<f32> = vs_INTERP0;
  let x_1056 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  let x_1058 : vec3<f32> = (x_1054 + -(x_1056));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1062 : vec4<f32> = u_xlat7;
  let x_1064 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_1062.x, x_1062.y, x_1062.z), vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1067 : f32 = u_xlat30;
  let x_1069 : f32 = x_255.x_MainLightShadowParams.z;
  let x_1072 : f32 = x_255.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1067 * x_1069) + x_1072);
  let x_1074 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1074, 0.0f, 1.0f);
  let x_1077 : f32 = u_xlat36;
  u_xlat42 = (-(x_1077) + 1.0f);
  let x_1080 : f32 = u_xlat30;
  let x_1081 : f32 = u_xlat42;
  let x_1083 : f32 = u_xlat36;
  u_xlat36 = ((x_1080 * x_1081) + x_1083);
  let x_1085 : f32 = u_xlat18;
  let x_1088 : vec4<f32> = x_90.x_MainLightColor;
  let x_1090 : vec3<f32> = (vec3<f32>(x_1085, x_1085, x_1085) * vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1093 : vec3<f32> = u_xlat1;
  let x_1095 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_1093), vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
  let x_1098 : f32 = u_xlat30;
  let x_1099 : f32 = u_xlat30;
  u_xlat30 = (x_1098 + x_1099);
  let x_1101 : vec4<f32> = u_xlat3;
  let x_1103 : f32 = u_xlat30;
  let x_1107 : vec3<f32> = u_xlat1;
  let x_1109 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * -(vec3<f32>(x_1103, x_1103, x_1103))) + -(x_1107));
  let x_1110 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1112 : vec4<f32> = u_xlat3;
  let x_1114 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(vec3<f32>(x_1112.x, x_1112.y, x_1112.z), x_1114);
  let x_1116 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1116, 0.0f, 1.0f);
  let x_1118 : f32 = u_xlat30;
  u_xlat30 = (-(x_1118) + 1.0f);
  let x_1121 : f32 = u_xlat30;
  let x_1122 : f32 = u_xlat30;
  u_xlat30 = (x_1121 * x_1122);
  let x_1124 : f32 = u_xlat30;
  let x_1125 : f32 = u_xlat30;
  u_xlat30 = (x_1124 * x_1125);
  let x_1128 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_1128) * 0.699999988f) + 1.700000048f);
  let x_1135 : f32 = u_xlat26.x;
  let x_1136 : f32 = u_xlat42;
  u_xlat26.x = (x_1135 * x_1136);
  let x_1140 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1140 * 6.0f);
  let x_1152 : vec4<f32> = u_xlat8;
  let x_1155 : f32 = u_xlat26.x;
  let x_1156 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1152.x, x_1152.y, x_1152.z), x_1155);
  u_xlat8 = x_1156;
  let x_1158 : f32 = u_xlat8.w;
  u_xlat26.x = (x_1158 + -1.0f);
  let x_1162 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1164 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1162 * x_1164) + 1.0f);
  let x_1169 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_1169, 0.0f);
  let x_1173 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_1173);
  let x_1177 : f32 = u_xlat26.x;
  let x_1179 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_1177 * x_1179);
  let x_1183 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_1183);
  let x_1187 : f32 = u_xlat26.x;
  let x_1189 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_1187 * x_1189);
  let x_1192 : vec4<f32> = u_xlat8;
  let x_1194 : vec2<f32> = u_xlat26;
  let x_1196 : vec3<f32> = (vec3<f32>(x_1192.x, x_1192.y, x_1192.z) * vec3<f32>(x_1194.x, x_1194.x, x_1194.x));
  let x_1197 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
  let x_1199 : f32 = u_xlat38;
  let x_1201 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_1199, x_1199) * vec2<f32>(x_1201, x_1201)) + vec2<f32>(-1.0f, 1.0f));
  let x_1207 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_1207);
  let x_1209 : f32 = u_xlat40;
  u_xlat40 = (x_1209 + -0.039999999f);
  let x_1212 : f32 = u_xlat30;
  let x_1213 : f32 = u_xlat40;
  u_xlat40 = ((x_1212 * x_1213) + 0.039999999f);
  let x_1217 : f32 = u_xlat38;
  let x_1218 : f32 = u_xlat40;
  u_xlat38 = (x_1217 * x_1218);
  let x_1220 : f32 = u_xlat38;
  let x_1222 : vec4<f32> = u_xlat8;
  let x_1224 : vec3<f32> = (vec3<f32>(x_1220, x_1220, x_1220) * vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1227 : vec3<f32> = u_xlat17;
  let x_1228 : vec3<f32> = u_xlat4;
  let x_1230 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_1227 * x_1228) + vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
  let x_1233 : f32 = u_xlat36;
  let x_1235 : f32 = x_145.unity_LightData.z;
  u_xlat36 = (x_1233 * x_1235);
  let x_1237 : vec4<f32> = u_xlat3;
  let x_1240 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_1237.x, x_1237.y, x_1237.z), vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1243, 0.0f, 1.0f);
  let x_1245 : f32 = u_xlat36;
  let x_1246 : f32 = u_xlat38;
  u_xlat36 = (x_1245 * x_1246);
  let x_1248 : f32 = u_xlat36;
  let x_1250 : vec4<f32> = u_xlat7;
  let x_1252 : vec3<f32> = (vec3<f32>(x_1248, x_1248, x_1248) * vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1253 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
  let x_1255 : vec3<f32> = u_xlat1;
  let x_1257 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1259 : vec3<f32> = (x_1255 + vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
  let x_1260 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
  let x_1262 : vec4<f32> = u_xlat8;
  let x_1264 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1262.x, x_1262.y, x_1262.z), vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1267 : f32 = u_xlat36;
  u_xlat36 = max(x_1267, 1.17549435e-37f);
  let x_1270 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1270);
  let x_1272 : f32 = u_xlat36;
  let x_1274 : vec4<f32> = u_xlat8;
  let x_1276 : vec3<f32> = (vec3<f32>(x_1272, x_1272, x_1272) * vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
  let x_1277 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
  let x_1279 : vec4<f32> = u_xlat3;
  let x_1281 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1279.x, x_1279.y, x_1279.z), vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1284 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1284, 0.0f, 1.0f);
  let x_1287 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1289 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1287.x, x_1287.y, x_1287.z), vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
  let x_1292 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1292, 0.0f, 1.0f);
  let x_1294 : f32 = u_xlat36;
  let x_1295 : f32 = u_xlat36;
  u_xlat36 = (x_1294 * x_1295);
  let x_1297 : f32 = u_xlat36;
  let x_1299 : f32 = u_xlat26.x;
  u_xlat36 = ((x_1297 * x_1299) + 1.000010014f);
  let x_1303 : f32 = u_xlat38;
  let x_1304 : f32 = u_xlat38;
  u_xlat38 = (x_1303 * x_1304);
  let x_1306 : f32 = u_xlat36;
  let x_1307 : f32 = u_xlat36;
  u_xlat36 = (x_1306 * x_1307);
  let x_1309 : f32 = u_xlat38;
  u_xlat38 = max(x_1309, 0.100000001f);
  let x_1312 : f32 = u_xlat36;
  let x_1313 : f32 = u_xlat38;
  u_xlat36 = (x_1312 * x_1313);
  let x_1316 : f32 = u_xlat5.x;
  let x_1317 : f32 = u_xlat36;
  u_xlat36 = (x_1316 * x_1317);
  let x_1319 : f32 = u_xlat39;
  let x_1320 : f32 = u_xlat36;
  u_xlat36 = (x_1319 / x_1320);
  let x_1322 : f32 = u_xlat36;
  let x_1326 : vec3<f32> = u_xlat4;
  let x_1327 : vec3<f32> = ((vec3<f32>(x_1322, x_1322, x_1322) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1326);
  let x_1328 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
  let x_1330 : vec4<f32> = u_xlat7;
  let x_1332 : vec4<f32> = u_xlat8;
  let x_1334 : vec3<f32> = (vec3<f32>(x_1330.x, x_1330.y, x_1330.z) * vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
  let x_1335 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
  let x_1339 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1341 : f32 = x_145.unity_LightData.y;
  u_xlat36 = min(x_1339, x_1341);
  let x_1343 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1343));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1355 : u32 = u_xlatu_loop_1;
    let x_1356 : u32 = u_xlatu36;
    if ((x_1355 < x_1356)) {
    } else {
      break;
    }
    let x_1359 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1359 >> 2u);
    let x_1362 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_1362 & 3u));
    let x_1365 : u32 = u_xlatu40;
    let x_1368 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1365)];
    let x_1378 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1383 : vec4<u32> = indexable[x_1378];
    u_xlat40 = dot(x_1368, bitcast<vec4<f32>>(x_1383));
    let x_1387 : f32 = u_xlat40;
    u_xlati40 = i32(x_1387);
    let x_1389 : vec3<f32> = vs_INTERP0;
    let x_1401 : i32 = u_xlati40;
    let x_1403 : vec4<f32> = x_1400.x_AdditionalLightsPosition[x_1401];
    let x_1406 : i32 = u_xlati40;
    let x_1408 : vec4<f32> = x_1400.x_AdditionalLightsPosition[x_1406];
    u_xlat9 = ((-(x_1389) * vec3<f32>(x_1403.w, x_1403.w, x_1403.w)) + vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
    let x_1411 : vec3<f32> = u_xlat9;
    let x_1412 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1411, x_1412);
    let x_1414 : f32 = u_xlat30;
    u_xlat30 = max(x_1414, 6.10351562e-05f);
    let x_1417 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1417);
    let x_1420 : f32 = u_xlat42;
    let x_1422 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1420, x_1420, x_1420) * x_1422);
    let x_1425 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_1425);
    let x_1427 : f32 = u_xlat30;
    let x_1428 : i32 = u_xlati40;
    let x_1430 : f32 = x_1400.x_AdditionalLightsAttenuation[x_1428].x;
    u_xlat30 = (x_1427 * x_1430);
    let x_1432 : f32 = u_xlat30;
    let x_1434 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1432) * x_1434) + 1.0f);
    let x_1437 : f32 = u_xlat30;
    u_xlat30 = max(x_1437, 0.0f);
    let x_1439 : f32 = u_xlat30;
    let x_1440 : f32 = u_xlat30;
    u_xlat30 = (x_1439 * x_1440);
    let x_1442 : f32 = u_xlat30;
    let x_1443 : f32 = u_xlat43;
    u_xlat30 = (x_1442 * x_1443);
    let x_1445 : i32 = u_xlati40;
    let x_1447 : vec4<f32> = x_1400.x_AdditionalLightsSpotDir[x_1445];
    let x_1449 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1447.x, x_1447.y, x_1447.z), x_1449);
    let x_1451 : f32 = u_xlat43;
    let x_1452 : i32 = u_xlati40;
    let x_1454 : f32 = x_1400.x_AdditionalLightsAttenuation[x_1452].z;
    let x_1456 : i32 = u_xlati40;
    let x_1458 : f32 = x_1400.x_AdditionalLightsAttenuation[x_1456].w;
    u_xlat43 = ((x_1451 * x_1454) + x_1458);
    let x_1460 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1460, 0.0f, 1.0f);
    let x_1462 : f32 = u_xlat43;
    let x_1463 : f32 = u_xlat43;
    u_xlat43 = (x_1462 * x_1463);
    let x_1465 : f32 = u_xlat30;
    let x_1466 : f32 = u_xlat43;
    u_xlat30 = (x_1465 * x_1466);
    let x_1469 : f32 = u_xlat18;
    let x_1471 : i32 = u_xlati40;
    let x_1473 : vec4<f32> = x_1400.x_AdditionalLightsColor[x_1471];
    u_xlat11 = (vec3<f32>(x_1469, x_1469, x_1469) * vec3<f32>(x_1473.x, x_1473.y, x_1473.z));
    let x_1476 : vec4<f32> = u_xlat3;
    let x_1478 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_1476.x, x_1476.y, x_1476.z), x_1478);
    let x_1480 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1480, 0.0f, 1.0f);
    let x_1482 : f32 = u_xlat40;
    let x_1483 : f32 = u_xlat30;
    u_xlat40 = (x_1482 * x_1483);
    let x_1485 : f32 = u_xlat40;
    let x_1487 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1485, x_1485, x_1485) * x_1487);
    let x_1489 : vec3<f32> = u_xlat9;
    let x_1490 : f32 = u_xlat42;
    let x_1493 : vec3<f32> = u_xlat1;
    u_xlat9 = ((x_1489 * vec3<f32>(x_1490, x_1490, x_1490)) + x_1493);
    let x_1495 : vec3<f32> = u_xlat9;
    let x_1496 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(x_1495, x_1496);
    let x_1498 : f32 = u_xlat40;
    u_xlat40 = max(x_1498, 1.17549435e-37f);
    let x_1500 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1500);
    let x_1502 : f32 = u_xlat40;
    let x_1504 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1502, x_1502, x_1502) * x_1504);
    let x_1506 : vec4<f32> = u_xlat3;
    let x_1508 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1506.x, x_1506.y, x_1506.z), x_1508);
    let x_1510 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1510, 0.0f, 1.0f);
    let x_1512 : vec3<f32> = u_xlat10;
    let x_1513 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1512, x_1513);
    let x_1515 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1515, 0.0f, 1.0f);
    let x_1517 : f32 = u_xlat40;
    let x_1518 : f32 = u_xlat40;
    u_xlat40 = (x_1517 * x_1518);
    let x_1520 : f32 = u_xlat40;
    let x_1522 : f32 = u_xlat26.x;
    u_xlat40 = ((x_1520 * x_1522) + 1.000010014f);
    let x_1525 : f32 = u_xlat30;
    let x_1526 : f32 = u_xlat30;
    u_xlat30 = (x_1525 * x_1526);
    let x_1528 : f32 = u_xlat40;
    let x_1529 : f32 = u_xlat40;
    u_xlat40 = (x_1528 * x_1529);
    let x_1531 : f32 = u_xlat30;
    u_xlat30 = max(x_1531, 0.100000001f);
    let x_1533 : f32 = u_xlat40;
    let x_1534 : f32 = u_xlat30;
    u_xlat40 = (x_1533 * x_1534);
    let x_1537 : f32 = u_xlat5.x;
    let x_1538 : f32 = u_xlat40;
    u_xlat40 = (x_1537 * x_1538);
    let x_1540 : f32 = u_xlat39;
    let x_1541 : f32 = u_xlat40;
    u_xlat40 = (x_1540 / x_1541);
    let x_1543 : f32 = u_xlat40;
    let x_1546 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1543, x_1543, x_1543) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1546);
    let x_1548 : vec3<f32> = u_xlat9;
    let x_1549 : vec3<f32> = u_xlat11;
    let x_1551 : vec4<f32> = u_xlat8;
    let x_1553 : vec3<f32> = ((x_1548 * x_1549) + vec3<f32>(x_1551.x, x_1551.y, x_1551.z));
    let x_1554 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1554.w);

    continuing {
      let x_1556 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1556 + bitcast<u32>(1i));
    }
  }
  let x_1558 : vec3<f32> = u_xlat17;
  let x_1559 : vec4<f32> = u_xlat6;
  let x_1562 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1558 * vec3<f32>(x_1559.x, x_1559.x, x_1559.x)) + vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
  let x_1565 : vec4<f32> = u_xlat8;
  let x_1567 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1565.x, x_1565.y, x_1565.z) + x_1567);
  let x_1569 : vec4<f32> = vs_INTERP4;
  let x_1571 : vec3<f32> = u_xlat0;
  let x_1573 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1569.w, x_1569.w, x_1569.w) * x_1571) + x_1573);
  let x_1576 : f32 = u_xlat14.x;
  let x_1578 : f32 = u_xlat14.x;
  u_xlat36 = (x_1576 * -(x_1578));
  let x_1581 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1581);
  let x_1583 : vec3<f32> = u_xlat0;
  let x_1586 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_1583 + -(vec3<f32>(x_1586.x, x_1586.y, x_1586.z)));
  let x_1592 : f32 = u_xlat36;
  let x_1594 : vec3<f32> = u_xlat0;
  let x_1597 : vec4<f32> = x_90.unity_FogColor;
  let x_1599 : vec3<f32> = ((vec3<f32>(x_1592, x_1592, x_1592) * x_1594) + vec3<f32>(x_1597.x, x_1597.y, x_1597.z));
  let x_1600 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1599.x, x_1599.y, x_1599.z, x_1600.w);
  let x_1602 : bool = u_xlatb2;
  let x_1603 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1603, x_1602);
  let x_1611 : u32 = x_90.x_RenderingLayerMaxInt;
  let x_1613 : f32 = x_145.unity_RenderingLayer.x;
  u_xlatu0 = (x_1611 & bitcast<u32>(x_1613));
  let x_1616 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1616);
  let x_1621 : f32 = u_xlat0.x;
  let x_1623 : f32 = x_90.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1621 * x_1623);
  let x_1627 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1627, 0.0f, 1.0f);
  let x_1630 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1630.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

