struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_154 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_512 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_635 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_754 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_856 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_60 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_110 : f32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu11 : u32;
  var u_xlati11 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb35 : bool;
  var u_xlat35 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_596 : f32;
  var x_608 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlati27 : i32;
  var u_xlati37 : i32;
  var u_xlati38 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_1152 : f32;
  var x_1165 : f32;
  var x_1217 : f32;
  var x_1228 : vec3<f32>;
  var x_1333 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_42.x_BaseColor.w;
  let x_77 : f32 = x_42.x_Cutoff;
  u_xlat11 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat33;
  let x_90 : f32 = u_xlat22;
  u_xlat22 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat22;
  u_xlat22 = max(x_93, 0.0001f);
  let x_96 : f32 = u_xlat11;
  let x_97 : f32 = u_xlat22;
  u_xlat11 = (x_96 / x_97);
  let x_99 : f32 = u_xlat11;
  u_xlat11 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat11;
  u_xlat11 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb22;
  if (x_109) {
    let x_113 : f32 = u_xlat11;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat11 = (x_120 + -0.0001f);
  let x_124 : f32 = u_xlat11;
  u_xlatb11 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb11;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat11;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_156 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres0;
  let x_159 : vec3<f32> = (x_149 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec3<f32> = vs_TEXCOORD1;
  let x_166 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres1;
  let x_169 : vec3<f32> = (x_163 + -(vec3<f32>(x_166.x, x_166.y, x_166.z)));
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec3<f32> = vs_TEXCOORD1;
  let x_176 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_173 + -(vec3<f32>(x_176.x, x_176.y, x_176.z)));
  let x_181 : vec3<f32> = vs_TEXCOORD1;
  let x_183 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_181 + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat4;
  let x_195 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : vec3<f32> = u_xlat5;
  let x_201 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_200, x_201);
  let x_205 : vec3<f32> = u_xlat6;
  let x_206 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_205, x_206);
  let x_212 : vec4<f32> = u_xlat3;
  let x_215 : vec4<f32> = x_154.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_212 < x_215);
  let x_218 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_218);
  let x_222 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_234);
  let x_240 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_240);
  let x_244 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_244);
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) + vec3<f32>(x_249.y, x_249.z, x_249.w));
  let x_252 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat3;
  let x_257 : vec3<f32> = max(vec3<f32>(x_254.x, x_254.y, x_254.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_258.x, x_257.x, x_257.y, x_257.z);
  let x_260 : vec4<f32> = u_xlat4;
  u_xlat11 = dot(x_260, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_266 : f32 = u_xlat11;
  u_xlat11 = (-(x_266) + 4.0f);
  let x_271 : f32 = u_xlat11;
  u_xlatu11 = u32(x_271);
  let x_275 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_275) << bitcast<u32>(2i));
  let x_278 : vec3<f32> = vs_TEXCOORD1;
  let x_280 : i32 = u_xlati11;
  let x_283 : i32 = u_xlati11;
  let x_287 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_280 + 1i) / 4i)][((x_283 + 1i) % 4i)];
  let x_289 : vec3<f32> = (vec3<f32>(x_278.y, x_278.y, x_278.y) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : i32 = u_xlati11;
  let x_294 : i32 = u_xlati11;
  let x_297 : vec4<f32> = x_154.x_MainLightWorldToShadow[(x_292 / 4i)][(x_294 % 4i)];
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.x, x_299.x, x_299.x)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : i32 = u_xlati11;
  let x_310 : i32 = u_xlati11;
  let x_314 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_307 + 2i) / 4i)][((x_310 + 2i) % 4i)];
  let x_316 : vec3<f32> = vs_TEXCOORD1;
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.z, x_316.z, x_316.z)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : i32 = u_xlati11;
  let x_329 : i32 = u_xlati11;
  let x_333 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_326 + 3i) / 4i)][((x_329 + 3i) % 4i)];
  let x_335 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_340 : f32 = vs_TEXCOORD1.y;
  let x_343 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat11 = (x_340 * x_343);
  let x_346 : f32 = x_28.unity_MatrixV[0i].z;
  let x_348 : f32 = vs_TEXCOORD1.x;
  let x_350 : f32 = u_xlat11;
  u_xlat11 = ((x_346 * x_348) + x_350);
  let x_353 : f32 = x_28.unity_MatrixV[2i].z;
  let x_355 : f32 = vs_TEXCOORD1.z;
  let x_357 : f32 = u_xlat11;
  u_xlat11 = ((x_353 * x_355) + x_357);
  let x_359 : f32 = u_xlat11;
  let x_361 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat11 = (x_359 + x_361);
  let x_363 : f32 = u_xlat11;
  let x_367 : f32 = x_28.x_ProjectionParams.y;
  u_xlat11 = (-(x_363) + -(x_367));
  let x_370 : f32 = u_xlat11;
  u_xlat11 = max(x_370, 0.0f);
  let x_372 : f32 = u_xlat11;
  let x_375 : f32 = x_28.unity_FogParams.x;
  u_xlat11 = (x_372 * x_375);
  let x_383 : vec2<f32> = vs_TEXCOORD7;
  let x_385 : f32 = x_28.x_GlobalMipBias.x;
  let x_386 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_383, x_385);
  u_xlat4 = x_386;
  let x_391 : vec2<f32> = vs_TEXCOORD7;
  let x_393 : f32 = x_28.x_GlobalMipBias.x;
  let x_394 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_391, x_393);
  u_xlat5 = vec3<f32>(x_394.x, x_394.y, x_394.z);
  let x_396 : vec4<f32> = u_xlat4;
  let x_400 : vec3<f32> = (vec3<f32>(x_396.x, x_396.y, x_396.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_401 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec3<f32> = u_xlat2;
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_403, vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : f32 = u_xlat33;
  u_xlat33 = (x_407 + 0.5f);
  let x_409 : f32 = u_xlat33;
  let x_411 : vec3<f32> = u_xlat5;
  let x_412 : vec3<f32> = (vec3<f32>(x_409, x_409, x_409) * x_411);
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat4.w;
  u_xlat33 = max(x_416, 0.0001f);
  let x_418 : vec4<f32> = u_xlat4;
  let x_420 : f32 = u_xlat33;
  let x_422 : vec3<f32> = (vec3<f32>(x_418.x, x_418.y, x_418.z) / vec3<f32>(x_420, x_420, x_420));
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_426 : vec4<f32> = u_xlat3;
  let x_427 : vec2<f32> = vec2<f32>(x_426.x, x_426.y);
  let x_429 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_427.x, x_427.y, x_429);
  let x_441 : vec3<f32> = txVec0;
  let x_443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_441.xy, x_441.z);
  u_xlat33 = x_443;
  let x_446 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_446) + 1.0f);
  let x_450 : f32 = u_xlat33;
  let x_452 : f32 = x_154.x_MainLightShadowParams.x;
  let x_455 : f32 = u_xlat1.x;
  u_xlat33 = ((x_450 * x_452) + x_455);
  let x_459 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_459);
  let x_463 : f32 = u_xlat3.z;
  u_xlatb35 = (x_463 >= 1.0f);
  let x_465 : bool = u_xlatb1;
  let x_466 : bool = u_xlatb35;
  u_xlatb1 = (x_465 | x_466);
  let x_468 : bool = u_xlatb1;
  let x_469 : f32 = u_xlat33;
  u_xlat33 = select(x_469, 1.0f, x_468);
  let x_471 : vec3<f32> = vs_TEXCOORD1;
  let x_474 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_476 : vec3<f32> = (x_471 + -(x_474));
  let x_477 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat3;
  let x_481 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_486 : f32 = u_xlat1.x;
  let x_488 : f32 = x_154.x_MainLightShadowParams.z;
  let x_491 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_486 * x_488) + x_491);
  let x_495 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_495, 0.0f, 1.0f);
  let x_499 : f32 = u_xlat33;
  u_xlat35 = (-(x_499) + 1.0f);
  let x_503 : f32 = u_xlat1.x;
  let x_504 : f32 = u_xlat35;
  let x_506 : f32 = u_xlat33;
  u_xlat33 = ((x_503 * x_504) + x_506);
  let x_514 : f32 = x_512.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_514 == -1.0f));
  let x_516 : bool = u_xlatb1;
  if (x_516) {
    let x_519 : vec3<f32> = vs_TEXCOORD1;
    let x_522 : vec4<f32> = x_512.x_MainLightWorldToLight[1i];
    let x_524 : vec2<f32> = (vec2<f32>(x_519.y, x_519.y) * vec2<f32>(x_522.x, x_522.y));
    let x_525 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
    let x_528 : vec4<f32> = x_512.x_MainLightWorldToLight[0i];
    let x_530 : vec3<f32> = vs_TEXCOORD1;
    let x_533 : vec4<f32> = u_xlat3;
    let x_535 : vec2<f32> = ((vec2<f32>(x_528.x, x_528.y) * vec2<f32>(x_530.x, x_530.x)) + vec2<f32>(x_533.x, x_533.y));
    let x_536 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
    let x_539 : vec4<f32> = x_512.x_MainLightWorldToLight[2i];
    let x_541 : vec3<f32> = vs_TEXCOORD1;
    let x_544 : vec4<f32> = u_xlat3;
    let x_546 : vec2<f32> = ((vec2<f32>(x_539.x, x_539.y) * vec2<f32>(x_541.z, x_541.z)) + vec2<f32>(x_544.x, x_544.y));
    let x_547 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
    let x_549 : vec4<f32> = u_xlat3;
    let x_552 : vec4<f32> = x_512.x_MainLightWorldToLight[3i];
    let x_554 : vec2<f32> = (vec2<f32>(x_549.x, x_549.y) + vec2<f32>(x_552.x, x_552.y));
    let x_555 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
    let x_557 : vec4<f32> = u_xlat3;
    let x_561 : vec2<f32> = ((vec2<f32>(x_557.x, x_557.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_562 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
    let x_569 : vec4<f32> = u_xlat3;
    let x_572 : f32 = x_28.x_GlobalMipBias.x;
    let x_573 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_569.x, x_569.y), x_572);
    u_xlat3 = x_573;
    let x_578 : f32 = x_512.x_MainLightCookieTextureFormat;
    let x_580 : f32 = x_512.x_MainLightCookieTextureFormat;
    let x_582 : f32 = x_512.x_MainLightCookieTextureFormat;
    let x_584 : f32 = x_512.x_MainLightCookieTextureFormat;
    let x_585 : vec4<f32> = vec4<f32>(x_578, x_580, x_582, x_584);
    let x_592 : vec4<bool> = (vec4<f32>(x_585.x, x_585.y, x_585.z, x_585.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_592.x, x_592.y);
    let x_595 : bool = u_xlatb5.y;
    if (x_595) {
      let x_600 : f32 = u_xlat3.w;
      x_596 = x_600;
    } else {
      let x_603 : f32 = u_xlat3.x;
      x_596 = x_603;
    }
    let x_604 : f32 = x_596;
    u_xlat1.x = x_604;
    let x_607 : bool = u_xlatb5.x;
    if (x_607) {
      let x_611 : vec4<f32> = u_xlat3;
      x_608 = vec3<f32>(x_611.x, x_611.y, x_611.z);
    } else {
      let x_614 : vec4<f32> = u_xlat1;
      x_608 = vec3<f32>(x_614.x, x_614.x, x_614.x);
    }
    let x_616 : vec3<f32> = x_608;
    let x_617 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_623 : vec4<f32> = u_xlat3;
  let x_626 : vec4<f32> = x_28.x_MainLightColor;
  let x_628 : vec3<f32> = (vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(x_626.x, x_626.y, x_626.z));
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : f32 = u_xlat33;
  let x_637 : f32 = x_635.unity_LightData.z;
  u_xlat33 = (x_631 * x_637);
  let x_639 : f32 = u_xlat33;
  let x_641 : vec4<f32> = u_xlat3;
  let x_643 : vec3<f32> = (vec3<f32>(x_639, x_639, x_639) * vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec3<f32> = u_xlat2;
  let x_648 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat33 = dot(x_646, vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : f32 = u_xlat33;
  u_xlat33 = clamp(x_651, 0.0f, 1.0f);
  let x_653 : f32 = u_xlat33;
  let x_655 : vec4<f32> = u_xlat3;
  let x_657 : vec3<f32> = (vec3<f32>(x_653, x_653, x_653) * vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat1;
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec3<f32> = (vec3<f32>(x_660.y, x_660.z, x_660.w) * vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_667 : vec4<f32> = u_xlat0;
  let x_669 : vec4<f32> = u_xlat3;
  let x_671 : vec3<f32> = (vec3<f32>(x_667.x, x_667.x, x_667.x) * vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_675 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_677 : f32 = x_635.unity_LightData.y;
  u_xlat33 = min(x_675, x_677);
  let x_680 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_680));
  let x_684 : f32 = x_512.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_686 : f32 = x_512.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_688 : f32 = x_512.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_690 : f32 = x_512.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_691 : vec4<f32> = vec4<f32>(x_684, x_686, x_688, x_690);
  let x_697 : vec4<bool> = (vec4<f32>(x_691.x, x_691.y, x_691.z, x_691.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_697.x, x_697.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_708 : u32 = u_xlatu_loop_1;
    let x_709 : u32 = u_xlatu33;
    if ((x_708 < x_709)) {
    } else {
      break;
    }
    let x_712 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_712 >> 2u);
    let x_715 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_715 & 3u));
    let x_718 : u32 = u_xlatu35;
    let x_721 : vec4<f32> = x_635.unity_LightIndices[bitcast<i32>(x_718)];
    let x_731 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_736 : vec4<u32> = indexable[x_731];
    u_xlat35 = dot(x_721, bitcast<vec4<f32>>(x_736));
    let x_739 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_739));
    let x_743 : vec3<f32> = vs_TEXCOORD1;
    let x_755 : u32 = u_xlatu35;
    let x_758 : vec4<f32> = x_754.x_AdditionalLightsPosition[bitcast<i32>(x_755)];
    let x_761 : u32 = u_xlatu35;
    let x_764 : vec4<f32> = x_754.x_AdditionalLightsPosition[bitcast<i32>(x_761)];
    u_xlat7 = ((-(x_743) * vec3<f32>(x_758.w, x_758.w, x_758.w)) + vec3<f32>(x_764.x, x_764.y, x_764.z));
    let x_768 : vec3<f32> = u_xlat7;
    let x_769 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_768, x_769);
    let x_771 : f32 = u_xlat36;
    u_xlat36 = max(x_771, 6.10351562e-05f);
    let x_775 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_775);
    let x_777 : f32 = u_xlat37;
    let x_779 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_777, x_777, x_777) * x_779);
    let x_781 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_781);
    let x_783 : f32 = u_xlat36;
    let x_784 : u32 = u_xlatu35;
    let x_787 : f32 = x_754.x_AdditionalLightsAttenuation[bitcast<i32>(x_784)].x;
    u_xlat36 = (x_783 * x_787);
    let x_789 : f32 = u_xlat36;
    let x_791 : f32 = u_xlat36;
    u_xlat36 = ((-(x_789) * x_791) + 1.0f);
    let x_794 : f32 = u_xlat36;
    u_xlat36 = max(x_794, 0.0f);
    let x_796 : f32 = u_xlat36;
    let x_797 : f32 = u_xlat36;
    u_xlat36 = (x_796 * x_797);
    let x_799 : f32 = u_xlat36;
    let x_800 : f32 = u_xlat37;
    u_xlat36 = (x_799 * x_800);
    let x_802 : u32 = u_xlatu35;
    let x_805 : vec4<f32> = x_754.x_AdditionalLightsSpotDir[bitcast<i32>(x_802)];
    let x_807 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_805.x, x_805.y, x_805.z), x_807);
    let x_809 : f32 = u_xlat37;
    let x_810 : u32 = u_xlatu35;
    let x_813 : f32 = x_754.x_AdditionalLightsAttenuation[bitcast<i32>(x_810)].z;
    let x_815 : u32 = u_xlatu35;
    let x_818 : f32 = x_754.x_AdditionalLightsAttenuation[bitcast<i32>(x_815)].w;
    u_xlat37 = ((x_809 * x_813) + x_818);
    let x_820 : f32 = u_xlat37;
    u_xlat37 = clamp(x_820, 0.0f, 1.0f);
    let x_822 : f32 = u_xlat37;
    let x_823 : f32 = u_xlat37;
    u_xlat37 = (x_822 * x_823);
    let x_825 : f32 = u_xlat36;
    let x_826 : f32 = u_xlat37;
    u_xlat36 = (x_825 * x_826);
    let x_829 : u32 = u_xlatu35;
    u_xlatu37 = (x_829 >> 5u);
    let x_832 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_832) & 31i)));
    let x_838 : i32 = u_xlati27;
    let x_840 : u32 = u_xlatu37;
    let x_843 : f32 = x_512.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_840)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_838) & bitcast<u32>(x_843)));
    let x_847 : i32 = u_xlati37;
    if ((x_847 != 0i)) {
      let x_857 : u32 = u_xlatu35;
      let x_860 : f32 = x_856.x_AdditionalLightsLightTypes[bitcast<i32>(x_857)].el;
      u_xlati37 = i32(x_860);
      let x_862 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_862 != 0i));
      let x_866 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_866) << bitcast<u32>(2i));
      let x_869 : i32 = u_xlati27;
      if ((x_869 != 0i)) {
        let x_874 : vec3<f32> = vs_TEXCOORD1;
        let x_876 : i32 = u_xlati38;
        let x_879 : i32 = u_xlati38;
        let x_883 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[((x_876 + 1i) / 4i)][((x_879 + 1i) % 4i)];
        let x_885 : vec3<f32> = (vec3<f32>(x_874.y, x_874.y, x_874.y) * vec3<f32>(x_883.x, x_883.y, x_883.w));
        let x_886 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
        let x_888 : i32 = u_xlati38;
        let x_890 : i32 = u_xlati38;
        let x_893 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[(x_888 / 4i)][(x_890 % 4i)];
        let x_895 : vec3<f32> = vs_TEXCOORD1;
        let x_898 : vec4<f32> = u_xlat8;
        let x_900 : vec3<f32> = ((vec3<f32>(x_893.x, x_893.y, x_893.w) * vec3<f32>(x_895.x, x_895.x, x_895.x)) + vec3<f32>(x_898.x, x_898.y, x_898.z));
        let x_901 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
        let x_903 : i32 = u_xlati38;
        let x_906 : i32 = u_xlati38;
        let x_910 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[((x_903 + 2i) / 4i)][((x_906 + 2i) % 4i)];
        let x_912 : vec3<f32> = vs_TEXCOORD1;
        let x_915 : vec4<f32> = u_xlat8;
        let x_917 : vec3<f32> = ((vec3<f32>(x_910.x, x_910.y, x_910.w) * vec3<f32>(x_912.z, x_912.z, x_912.z)) + vec3<f32>(x_915.x, x_915.y, x_915.z));
        let x_918 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
        let x_920 : vec4<f32> = u_xlat8;
        let x_922 : i32 = u_xlati38;
        let x_925 : i32 = u_xlati38;
        let x_929 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[((x_922 + 3i) / 4i)][((x_925 + 3i) % 4i)];
        let x_931 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) + vec3<f32>(x_929.x, x_929.y, x_929.w));
        let x_932 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
        let x_934 : vec4<f32> = u_xlat8;
        let x_936 : vec4<f32> = u_xlat8;
        let x_938 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) / vec2<f32>(x_936.z, x_936.z));
        let x_939 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
        let x_941 : vec4<f32> = u_xlat8;
        let x_944 : vec2<f32> = ((vec2<f32>(x_941.x, x_941.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_945 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
        let x_947 : vec4<f32> = u_xlat8;
        let x_951 : vec2<f32> = clamp(vec2<f32>(x_947.x, x_947.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_954 : u32 = u_xlatu35;
        let x_957 : vec4<f32> = x_856.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_954)];
        let x_959 : vec4<f32> = u_xlat8;
        let x_962 : u32 = u_xlatu35;
        let x_965 : vec4<f32> = x_856.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_962)];
        let x_967 : vec2<f32> = ((vec2<f32>(x_957.x, x_957.y) * vec2<f32>(x_959.x, x_959.y)) + vec2<f32>(x_965.z, x_965.w));
        let x_968 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
      } else {
        let x_972 : i32 = u_xlati37;
        u_xlatb37 = (x_972 == 1i);
        let x_974 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_974);
        let x_976 : i32 = u_xlati37;
        if ((x_976 != 0i)) {
          let x_982 : vec3<f32> = vs_TEXCOORD1;
          let x_984 : i32 = u_xlati38;
          let x_987 : i32 = u_xlati38;
          let x_991 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[((x_984 + 1i) / 4i)][((x_987 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_982.y, x_982.y) * vec2<f32>(x_991.x, x_991.y));
          let x_994 : i32 = u_xlati38;
          let x_996 : i32 = u_xlati38;
          let x_999 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[(x_994 / 4i)][(x_996 % 4i)];
          let x_1001 : vec3<f32> = vs_TEXCOORD1;
          let x_1004 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_999.x, x_999.y) * vec2<f32>(x_1001.x, x_1001.x)) + x_1004);
          let x_1006 : i32 = u_xlati38;
          let x_1009 : i32 = u_xlati38;
          let x_1013 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[((x_1006 + 2i) / 4i)][((x_1009 + 2i) % 4i)];
          let x_1015 : vec3<f32> = vs_TEXCOORD1;
          let x_1018 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(x_1015.z, x_1015.z)) + x_1018);
          let x_1020 : vec2<f32> = u_xlat30;
          let x_1021 : i32 = u_xlati38;
          let x_1024 : i32 = u_xlati38;
          let x_1028 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[((x_1021 + 3i) / 4i)][((x_1024 + 3i) % 4i)];
          u_xlat30 = (x_1020 + vec2<f32>(x_1028.x, x_1028.y));
          let x_1031 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1031 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1034 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1034);
          let x_1036 : u32 = u_xlatu35;
          let x_1039 : vec4<f32> = x_856.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1036)];
          let x_1041 : vec2<f32> = u_xlat30;
          let x_1043 : u32 = u_xlatu35;
          let x_1046 : vec4<f32> = x_856.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1043)];
          let x_1048 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.y) * x_1041) + vec2<f32>(x_1046.z, x_1046.w));
          let x_1049 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
        } else {
          let x_1053 : vec3<f32> = vs_TEXCOORD1;
          let x_1055 : i32 = u_xlati38;
          let x_1058 : i32 = u_xlati38;
          let x_1062 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[((x_1055 + 1i) / 4i)][((x_1058 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1053.y, x_1053.y, x_1053.y, x_1053.y) * x_1062);
          let x_1064 : i32 = u_xlati38;
          let x_1066 : i32 = u_xlati38;
          let x_1069 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[(x_1064 / 4i)][(x_1066 % 4i)];
          let x_1070 : vec3<f32> = vs_TEXCOORD1;
          let x_1073 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1069 * vec4<f32>(x_1070.x, x_1070.x, x_1070.x, x_1070.x)) + x_1073);
          let x_1075 : i32 = u_xlati38;
          let x_1078 : i32 = u_xlati38;
          let x_1082 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[((x_1075 + 2i) / 4i)][((x_1078 + 2i) % 4i)];
          let x_1083 : vec3<f32> = vs_TEXCOORD1;
          let x_1086 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1082 * vec4<f32>(x_1083.z, x_1083.z, x_1083.z, x_1083.z)) + x_1086);
          let x_1088 : vec4<f32> = u_xlat9;
          let x_1089 : i32 = u_xlati38;
          let x_1092 : i32 = u_xlati38;
          let x_1096 : vec4<f32> = x_856.x_AdditionalLightsWorldToLights[((x_1089 + 3i) / 4i)][((x_1092 + 3i) % 4i)];
          u_xlat9 = (x_1088 + x_1096);
          let x_1098 : vec4<f32> = u_xlat9;
          let x_1100 : vec4<f32> = u_xlat9;
          let x_1102 : vec3<f32> = (vec3<f32>(x_1098.x, x_1098.y, x_1098.z) / vec3<f32>(x_1100.w, x_1100.w, x_1100.w));
          let x_1103 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
          let x_1105 : vec4<f32> = u_xlat9;
          let x_1107 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
          let x_1110 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_1110);
          let x_1112 : f32 = u_xlat37;
          let x_1114 : vec4<f32> = u_xlat9;
          let x_1116 : vec3<f32> = (vec3<f32>(x_1112, x_1112, x_1112) * vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
          let x_1117 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
          let x_1119 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_1119.x, x_1119.y, x_1119.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1124 : f32 = u_xlat37;
          u_xlat37 = max(x_1124, 0.000001f);
          let x_1127 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1127);
          let x_1130 : f32 = u_xlat37;
          let x_1132 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1130, x_1130, x_1130) * vec3<f32>(x_1132.z, x_1132.x, x_1132.y));
          let x_1136 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1136);
          let x_1140 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1140, 0.0f, 1.0f);
          let x_1144 : vec3<f32> = u_xlat10;
          let x_1147 : vec4<bool> = (vec4<f32>(x_1144.y, x_1144.z, x_1144.y, x_1144.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1147.x, x_1147.y);
          let x_1151 : bool = u_xlatb27.x;
          if (x_1151) {
            let x_1156 : f32 = u_xlat10.x;
            x_1152 = x_1156;
          } else {
            let x_1159 : f32 = u_xlat10.x;
            x_1152 = -(x_1159);
          }
          let x_1161 : f32 = x_1152;
          u_xlat27.x = x_1161;
          let x_1164 : bool = u_xlatb27.y;
          if (x_1164) {
            let x_1169 : f32 = u_xlat10.x;
            x_1165 = x_1169;
          } else {
            let x_1172 : f32 = u_xlat10.x;
            x_1165 = -(x_1172);
          }
          let x_1174 : f32 = x_1165;
          u_xlat27.y = x_1174;
          let x_1176 : vec4<f32> = u_xlat9;
          let x_1178 : f32 = u_xlat37;
          let x_1181 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(x_1178, x_1178)) + x_1181);
          let x_1183 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1183 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1186 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1186, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1190 : u32 = u_xlatu35;
          let x_1193 : vec4<f32> = x_856.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1190)];
          let x_1195 : vec2<f32> = u_xlat27;
          let x_1197 : u32 = u_xlatu35;
          let x_1200 : vec4<f32> = x_856.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1197)];
          let x_1202 : vec2<f32> = ((vec2<f32>(x_1193.x, x_1193.y) * x_1195) + vec2<f32>(x_1200.z, x_1200.w));
          let x_1203 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1202.x, x_1202.y, x_1203.z, x_1203.w);
        }
      }
      let x_1210 : vec4<f32> = u_xlat8;
      let x_1213 : f32 = x_28.x_GlobalMipBias.x;
      let x_1214 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1210.x, x_1210.y), x_1213);
      u_xlat8 = x_1214;
      let x_1216 : bool = u_xlatb5.y;
      if (x_1216) {
        let x_1221 : f32 = u_xlat8.w;
        x_1217 = x_1221;
      } else {
        let x_1224 : f32 = u_xlat8.x;
        x_1217 = x_1224;
      }
      let x_1225 : f32 = x_1217;
      u_xlat37 = x_1225;
      let x_1227 : bool = u_xlatb5.x;
      if (x_1227) {
        let x_1231 : vec4<f32> = u_xlat8;
        x_1228 = vec3<f32>(x_1231.x, x_1231.y, x_1231.z);
      } else {
        let x_1234 : f32 = u_xlat37;
        x_1228 = vec3<f32>(x_1234, x_1234, x_1234);
      }
      let x_1236 : vec3<f32> = x_1228;
      let x_1237 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1243 : vec4<f32> = u_xlat8;
    let x_1245 : u32 = u_xlatu35;
    let x_1248 : vec4<f32> = x_754.x_AdditionalLightsColor[bitcast<i32>(x_1245)];
    let x_1250 : vec3<f32> = (vec3<f32>(x_1243.x, x_1243.y, x_1243.z) * vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
    let x_1251 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
    let x_1253 : f32 = u_xlat36;
    let x_1255 : vec4<f32> = u_xlat8;
    let x_1257 : vec3<f32> = (vec3<f32>(x_1253, x_1253, x_1253) * vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
    let x_1258 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
    let x_1260 : vec3<f32> = u_xlat2;
    let x_1261 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1260, x_1261);
    let x_1263 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1263, 0.0f, 1.0f);
    let x_1265 : f32 = u_xlat35;
    let x_1267 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1265, x_1265, x_1265) * vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
    let x_1270 : vec4<f32> = u_xlat1;
    let x_1272 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1270.y, x_1270.z, x_1270.w) * x_1272);
    let x_1274 : vec3<f32> = u_xlat7;
    let x_1275 : vec4<f32> = u_xlat0;
    let x_1278 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1274 * vec3<f32>(x_1275.x, x_1275.x, x_1275.x)) + x_1278);

    continuing {
      let x_1280 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1280 + bitcast<u32>(1i));
    }
  }
  let x_1282 : vec4<f32> = u_xlat4;
  let x_1284 : vec4<f32> = u_xlat1;
  let x_1287 : vec4<f32> = u_xlat3;
  let x_1289 : vec3<f32> = ((vec3<f32>(x_1282.x, x_1282.y, x_1282.z) * vec3<f32>(x_1284.y, x_1284.z, x_1284.w)) + vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
  let x_1290 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
  let x_1292 : vec3<f32> = u_xlat6;
  let x_1293 : vec4<f32> = u_xlat1;
  let x_1295 : vec3<f32> = (x_1292 + vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
  let x_1296 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
  let x_1298 : f32 = u_xlat11;
  let x_1299 : f32 = u_xlat11;
  u_xlat11 = (x_1298 * -(x_1299));
  let x_1302 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1302);
  let x_1304 : vec4<f32> = u_xlat1;
  let x_1307 : vec4<f32> = x_28.unity_FogColor;
  let x_1310 : vec3<f32> = (vec3<f32>(x_1304.x, x_1304.y, x_1304.z) + -(vec3<f32>(x_1307.x, x_1307.y, x_1307.z)));
  let x_1311 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
  let x_1315 : f32 = u_xlat11;
  let x_1317 : vec4<f32> = u_xlat1;
  let x_1321 : vec4<f32> = x_28.unity_FogColor;
  let x_1323 : vec3<f32> = ((vec3<f32>(x_1315, x_1315, x_1315) * vec3<f32>(x_1317.x, x_1317.y, x_1317.z)) + vec3<f32>(x_1321.x, x_1321.y, x_1321.z));
  let x_1324 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1324.w);
  let x_1327 : f32 = x_42.x_Surface;
  u_xlatb11 = (x_1327 == 1.0f);
  let x_1329 : bool = u_xlatb11;
  let x_1330 : bool = u_xlatb22;
  u_xlatb11 = (x_1329 | x_1330);
  let x_1332 : bool = u_xlatb11;
  if (x_1332) {
    let x_1337 : f32 = u_xlat0.x;
    x_1333 = x_1337;
  } else {
    x_1333 = 1.0f;
  }
  let x_1339 : f32 = x_1333;
  SV_Target0.w = x_1339;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

