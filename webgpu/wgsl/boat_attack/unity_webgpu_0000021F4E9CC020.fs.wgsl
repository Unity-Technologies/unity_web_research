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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(1) @binding(4) var<uniform> x_208 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_1518 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1623 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_60 : f32;
  var u_xlat18 : f32;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_110 : f32;
  var u_xlatb18 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb54 : bool;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat56 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat57 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb56 : bool;
  var u_xlatu54 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu56 : u32;
  var u_xlati57 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati56 : i32;
  var u_xlat58 : f32;
  var x_1790 : f32;
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
  u_xlat18 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat54;
  let x_90 : f32 = u_xlat36;
  u_xlat36 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat36;
  u_xlat36 = max(x_93, 0.0001f);
  let x_96 : f32 = u_xlat18;
  let x_97 : f32 = u_xlat36;
  u_xlat18 = (x_96 / x_97);
  let x_99 : f32 = u_xlat18;
  u_xlat18 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat18;
  u_xlat18 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb36;
  if (x_109) {
    let x_113 : f32 = u_xlat18;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat18 = (x_120 + -0.0001f);
  let x_124 : f32 = u_xlat18;
  u_xlatb18 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb18;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat18;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_151 : f32 = vs_TEXCOORD1.y;
  let x_155 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat18 = (x_151 * x_155);
  let x_158 : f32 = x_28.unity_MatrixV[0i].z;
  let x_160 : f32 = vs_TEXCOORD1.x;
  let x_162 : f32 = u_xlat18;
  u_xlat18 = ((x_158 * x_160) + x_162);
  let x_166 : f32 = x_28.unity_MatrixV[2i].z;
  let x_168 : f32 = vs_TEXCOORD1.z;
  let x_170 : f32 = u_xlat18;
  u_xlat18 = ((x_166 * x_168) + x_170);
  let x_172 : f32 = u_xlat18;
  let x_175 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat18 = (x_172 + x_175);
  let x_177 : f32 = u_xlat18;
  let x_181 : f32 = x_28.x_ProjectionParams.y;
  u_xlat18 = (-(x_177) + -(x_181));
  let x_184 : f32 = u_xlat18;
  u_xlat18 = max(x_184, 0.0f);
  let x_186 : f32 = u_xlat18;
  let x_189 : f32 = x_28.unity_FogParams.x;
  u_xlat18 = (x_186 * x_189);
  let x_198 : vec2<f32> = vs_TEXCOORD7;
  let x_200 : f32 = x_28.x_GlobalMipBias.x;
  let x_201 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_198, x_200);
  u_xlat3 = vec3<f32>(x_201.x, x_201.y, x_201.z);
  let x_211 : f32 = x_208.x_MainLightShadowParams.y;
  u_xlatb54 = (0.0f < x_211);
  let x_213 : bool = u_xlatb54;
  if (x_213) {
    let x_217 : f32 = x_208.x_MainLightShadowParams.y;
    u_xlatb54 = (x_217 == 1.0f);
    let x_219 : bool = u_xlatb54;
    if (x_219) {
      let x_225 : vec4<f32> = vs_TEXCOORD6;
      let x_228 : vec4<f32> = x_208.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_225.x, x_225.y, x_225.x, x_225.y) + x_228);
      let x_231 : vec4<f32> = u_xlat4;
      let x_232 : vec2<f32> = vec2<f32>(x_231.x, x_231.y);
      let x_234 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_232.x, x_232.y, x_234);
      let x_247 : vec3<f32> = txVec0;
      let x_249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_247.xy, x_247.z);
      u_xlat5.x = x_249;
      let x_252 : vec4<f32> = u_xlat4;
      let x_253 : vec2<f32> = vec2<f32>(x_252.z, x_252.w);
      let x_255 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_253.x, x_253.y, x_255);
      let x_262 : vec3<f32> = txVec1;
      let x_264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_262.xy, x_262.z);
      u_xlat5.y = x_264;
      let x_266 : vec4<f32> = vs_TEXCOORD6;
      let x_269 : vec4<f32> = x_208.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_266.x, x_266.y, x_266.x, x_266.y) + x_269);
      let x_272 : vec4<f32> = u_xlat4;
      let x_273 : vec2<f32> = vec2<f32>(x_272.x, x_272.y);
      let x_275 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_273.x, x_273.y, x_275);
      let x_282 : vec3<f32> = txVec2;
      let x_284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_282.xy, x_282.z);
      u_xlat5.z = x_284;
      let x_287 : vec4<f32> = u_xlat4;
      let x_288 : vec2<f32> = vec2<f32>(x_287.z, x_287.w);
      let x_290 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_288.x, x_288.y, x_290);
      let x_297 : vec3<f32> = txVec3;
      let x_299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_297.xy, x_297.z);
      u_xlat5.w = x_299;
      let x_301 : vec4<f32> = u_xlat5;
      u_xlat54 = dot(x_301, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_308 : f32 = x_208.x_MainLightShadowParams.y;
      u_xlatb1 = (x_308 == 2.0f);
      let x_311 : bool = u_xlatb1;
      if (x_311) {
        let x_314 : vec4<f32> = vs_TEXCOORD6;
        let x_317 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_321 : vec2<f32> = ((vec2<f32>(x_314.x, x_314.y) * vec2<f32>(x_317.z, x_317.w)) + vec2<f32>(0.5f, 0.5f));
        let x_322 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_321.x, x_321.y, x_322.z, x_322.w);
        let x_324 : vec4<f32> = u_xlat4;
        let x_326 : vec2<f32> = floor(vec2<f32>(x_324.x, x_324.y));
        let x_327 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_326.x, x_326.y, x_327.z, x_327.w);
        let x_331 : vec4<f32> = vs_TEXCOORD6;
        let x_334 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_337 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_331.x, x_331.y) * vec2<f32>(x_334.z, x_334.w)) + -(vec2<f32>(x_337.x, x_337.y)));
        let x_341 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_341.x, x_341.x, x_341.y, x_341.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_346 : vec4<f32> = u_xlat5;
        let x_348 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_346.x, x_346.x, x_346.z, x_346.z) * vec4<f32>(x_348.x, x_348.x, x_348.z, x_348.z));
        let x_351 : vec4<f32> = u_xlat6;
        let x_355 : vec2<f32> = (vec2<f32>(x_351.y, x_351.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_356 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_355.x, x_356.y, x_355.y, x_356.w);
        let x_358 : vec4<f32> = u_xlat6;
        let x_361 : vec2<f32> = u_xlat40;
        let x_363 : vec2<f32> = ((vec2<f32>(x_358.x, x_358.z) * vec2<f32>(0.5f, 0.5f)) + -(x_361));
        let x_364 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_363.x, x_363.y, x_364.z, x_364.w);
        let x_367 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_367) + vec2<f32>(1.0f, 1.0f));
        let x_372 : vec2<f32> = u_xlat40;
        let x_374 : vec2<f32> = min(x_372, vec2<f32>(0.0f, 0.0f));
        let x_375 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
        let x_377 : vec4<f32> = u_xlat7;
        let x_380 : vec4<f32> = u_xlat7;
        let x_383 : vec2<f32> = u_xlat42;
        let x_384 : vec2<f32> = ((-(vec2<f32>(x_377.x, x_377.y)) * vec2<f32>(x_380.x, x_380.y)) + x_383);
        let x_385 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_384.x, x_384.y, x_385.z, x_385.w);
        let x_387 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_387, vec2<f32>(0.0f, 0.0f));
        let x_389 : vec2<f32> = u_xlat40;
        let x_391 : vec2<f32> = u_xlat40;
        let x_393 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_389) * x_391) + vec2<f32>(x_393.y, x_393.w));
        let x_396 : vec4<f32> = u_xlat7;
        let x_398 : vec2<f32> = (vec2<f32>(x_396.x, x_396.y) + vec2<f32>(1.0f, 1.0f));
        let x_399 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
        let x_401 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_401 + vec2<f32>(1.0f, 1.0f));
        let x_404 : vec4<f32> = u_xlat6;
        let x_408 : vec2<f32> = (vec2<f32>(x_404.x, x_404.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_409 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_409.w);
        let x_411 : vec2<f32> = u_xlat42;
        let x_412 : vec2<f32> = (x_411 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_413 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
        let x_415 : vec4<f32> = u_xlat7;
        let x_417 : vec2<f32> = (vec2<f32>(x_415.x, x_415.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_418 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
        let x_421 : vec2<f32> = u_xlat40;
        let x_422 : vec2<f32> = (x_421 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_423 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
        let x_425 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_425.y, x_425.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_429 : f32 = u_xlat7.x;
        u_xlat8.z = x_429;
        let x_432 : f32 = u_xlat40.x;
        u_xlat8.w = x_432;
        let x_435 : f32 = u_xlat9.x;
        u_xlat6.z = x_435;
        let x_438 : f32 = u_xlat5.x;
        u_xlat6.w = x_438;
        let x_441 : vec4<f32> = u_xlat6;
        let x_443 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_441.z, x_441.w, x_441.x, x_441.z) + vec4<f32>(x_443.z, x_443.w, x_443.x, x_443.z));
        let x_447 : f32 = u_xlat8.y;
        u_xlat7.z = x_447;
        let x_450 : f32 = u_xlat40.y;
        u_xlat7.w = x_450;
        let x_453 : f32 = u_xlat6.y;
        u_xlat9.z = x_453;
        let x_456 : f32 = u_xlat5.z;
        u_xlat9.w = x_456;
        let x_458 : vec4<f32> = u_xlat7;
        let x_460 : vec4<f32> = u_xlat9;
        let x_462 : vec3<f32> = (vec3<f32>(x_458.z, x_458.y, x_458.w) + vec3<f32>(x_460.z, x_460.y, x_460.w));
        let x_463 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
        let x_465 : vec4<f32> = u_xlat6;
        let x_467 : vec4<f32> = u_xlat10;
        let x_469 : vec3<f32> = (vec3<f32>(x_465.x, x_465.z, x_465.w) / vec3<f32>(x_467.z, x_467.w, x_467.y));
        let x_470 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
        let x_472 : vec4<f32> = u_xlat6;
        let x_478 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_479 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
        let x_481 : vec4<f32> = u_xlat9;
        let x_483 : vec4<f32> = u_xlat5;
        let x_485 : vec3<f32> = (vec3<f32>(x_481.z, x_481.y, x_481.w) / vec3<f32>(x_483.x, x_483.y, x_483.z));
        let x_486 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
        let x_488 : vec4<f32> = u_xlat7;
        let x_490 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_491 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat6;
        let x_496 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_498 : vec3<f32> = (vec3<f32>(x_493.y, x_493.x, x_493.z) * vec3<f32>(x_496.x, x_496.x, x_496.x));
        let x_499 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
        let x_501 : vec4<f32> = u_xlat7;
        let x_504 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_506 : vec3<f32> = (vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(x_504.y, x_504.y, x_504.y));
        let x_507 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
        let x_510 : f32 = u_xlat7.x;
        u_xlat6.w = x_510;
        let x_512 : vec4<f32> = u_xlat4;
        let x_515 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_518 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_512.x, x_512.y, x_512.x, x_512.y) * vec4<f32>(x_515.x, x_515.y, x_515.x, x_515.y)) + vec4<f32>(x_518.y, x_518.w, x_518.x, x_518.w));
        let x_521 : vec4<f32> = u_xlat4;
        let x_524 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_527 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_521.x, x_521.y) * vec2<f32>(x_524.x, x_524.y)) + vec2<f32>(x_527.z, x_527.w));
        let x_531 : f32 = u_xlat6.y;
        u_xlat7.w = x_531;
        let x_533 : vec4<f32> = u_xlat7;
        let x_534 : vec2<f32> = vec2<f32>(x_533.y, x_533.z);
        let x_535 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_535.x, x_534.x, x_535.z, x_534.y);
        let x_537 : vec4<f32> = u_xlat4;
        let x_540 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_543 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_537.x, x_537.y, x_537.x, x_537.y) * vec4<f32>(x_540.x, x_540.y, x_540.x, x_540.y)) + vec4<f32>(x_543.x, x_543.y, x_543.z, x_543.y));
        let x_546 : vec4<f32> = u_xlat4;
        let x_549 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_552 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_546.x, x_546.y, x_546.x, x_546.y) * vec4<f32>(x_549.x, x_549.y, x_549.x, x_549.y)) + vec4<f32>(x_552.w, x_552.y, x_552.w, x_552.z));
        let x_555 : vec4<f32> = u_xlat4;
        let x_558 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_561 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_555.x, x_555.y, x_555.x, x_555.y) * vec4<f32>(x_558.x, x_558.y, x_558.x, x_558.y)) + vec4<f32>(x_561.x, x_561.w, x_561.z, x_561.w));
        let x_565 : vec4<f32> = u_xlat5;
        let x_567 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_565.x, x_565.x, x_565.x, x_565.y) * vec4<f32>(x_567.z, x_567.w, x_567.y, x_567.z));
        let x_571 : vec4<f32> = u_xlat5;
        let x_573 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_571.y, x_571.y, x_571.z, x_571.z) * x_573);
        let x_576 : f32 = u_xlat5.z;
        let x_578 : f32 = u_xlat10.y;
        u_xlat1.x = (x_576 * x_578);
        let x_582 : vec4<f32> = u_xlat8;
        let x_583 : vec2<f32> = vec2<f32>(x_582.x, x_582.y);
        let x_585 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_583.x, x_583.y, x_585);
        let x_593 : vec3<f32> = txVec4;
        let x_595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_593.xy, x_593.z);
        u_xlat56 = x_595;
        let x_597 : vec4<f32> = u_xlat8;
        let x_598 : vec2<f32> = vec2<f32>(x_597.z, x_597.w);
        let x_600 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_598.x, x_598.y, x_600);
        let x_608 : vec3<f32> = txVec5;
        let x_610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_608.xy, x_608.z);
        u_xlat57 = x_610;
        let x_611 : f32 = u_xlat57;
        let x_613 : f32 = u_xlat11.y;
        u_xlat57 = (x_611 * x_613);
        let x_616 : f32 = u_xlat11.x;
        let x_617 : f32 = u_xlat56;
        let x_619 : f32 = u_xlat57;
        u_xlat56 = ((x_616 * x_617) + x_619);
        let x_622 : vec2<f32> = u_xlat40;
        let x_624 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_622.x, x_622.y, x_624);
        let x_631 : vec3<f32> = txVec6;
        let x_633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_631.xy, x_631.z);
        u_xlat57 = x_633;
        let x_635 : f32 = u_xlat11.z;
        let x_636 : f32 = u_xlat57;
        let x_638 : f32 = u_xlat56;
        u_xlat56 = ((x_635 * x_636) + x_638);
        let x_641 : vec4<f32> = u_xlat7;
        let x_642 : vec2<f32> = vec2<f32>(x_641.x, x_641.y);
        let x_644 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_642.x, x_642.y, x_644);
        let x_651 : vec3<f32> = txVec7;
        let x_653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_651.xy, x_651.z);
        u_xlat57 = x_653;
        let x_655 : f32 = u_xlat11.w;
        let x_656 : f32 = u_xlat57;
        let x_658 : f32 = u_xlat56;
        u_xlat56 = ((x_655 * x_656) + x_658);
        let x_661 : vec4<f32> = u_xlat9;
        let x_662 : vec2<f32> = vec2<f32>(x_661.x, x_661.y);
        let x_664 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_662.x, x_662.y, x_664);
        let x_671 : vec3<f32> = txVec8;
        let x_673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_671.xy, x_671.z);
        u_xlat57 = x_673;
        let x_675 : f32 = u_xlat12.x;
        let x_676 : f32 = u_xlat57;
        let x_678 : f32 = u_xlat56;
        u_xlat56 = ((x_675 * x_676) + x_678);
        let x_681 : vec4<f32> = u_xlat9;
        let x_682 : vec2<f32> = vec2<f32>(x_681.z, x_681.w);
        let x_684 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_682.x, x_682.y, x_684);
        let x_691 : vec3<f32> = txVec9;
        let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_691.xy, x_691.z);
        u_xlat57 = x_693;
        let x_695 : f32 = u_xlat12.y;
        let x_696 : f32 = u_xlat57;
        let x_698 : f32 = u_xlat56;
        u_xlat56 = ((x_695 * x_696) + x_698);
        let x_701 : vec4<f32> = u_xlat7;
        let x_702 : vec2<f32> = vec2<f32>(x_701.z, x_701.w);
        let x_704 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_702.x, x_702.y, x_704);
        let x_711 : vec3<f32> = txVec10;
        let x_713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_711.xy, x_711.z);
        u_xlat57 = x_713;
        let x_715 : f32 = u_xlat12.z;
        let x_716 : f32 = u_xlat57;
        let x_718 : f32 = u_xlat56;
        u_xlat56 = ((x_715 * x_716) + x_718);
        let x_721 : vec4<f32> = u_xlat6;
        let x_722 : vec2<f32> = vec2<f32>(x_721.x, x_721.y);
        let x_724 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_722.x, x_722.y, x_724);
        let x_731 : vec3<f32> = txVec11;
        let x_733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_731.xy, x_731.z);
        u_xlat57 = x_733;
        let x_735 : f32 = u_xlat12.w;
        let x_736 : f32 = u_xlat57;
        let x_738 : f32 = u_xlat56;
        u_xlat56 = ((x_735 * x_736) + x_738);
        let x_741 : vec4<f32> = u_xlat6;
        let x_742 : vec2<f32> = vec2<f32>(x_741.z, x_741.w);
        let x_744 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_742.x, x_742.y, x_744);
        let x_751 : vec3<f32> = txVec12;
        let x_753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_751.xy, x_751.z);
        u_xlat57 = x_753;
        let x_755 : f32 = u_xlat1.x;
        let x_756 : f32 = u_xlat57;
        let x_758 : f32 = u_xlat56;
        u_xlat54 = ((x_755 * x_756) + x_758);
      } else {
        let x_761 : vec4<f32> = vs_TEXCOORD6;
        let x_764 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_767 : vec2<f32> = ((vec2<f32>(x_761.x, x_761.y) * vec2<f32>(x_764.z, x_764.w)) + vec2<f32>(0.5f, 0.5f));
        let x_768 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_768.w);
        let x_770 : vec4<f32> = u_xlat4;
        let x_772 : vec2<f32> = floor(vec2<f32>(x_770.x, x_770.y));
        let x_773 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_772.x, x_772.y, x_773.z, x_773.w);
        let x_775 : vec4<f32> = vs_TEXCOORD6;
        let x_778 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_781 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_775.x, x_775.y) * vec2<f32>(x_778.z, x_778.w)) + -(vec2<f32>(x_781.x, x_781.y)));
        let x_785 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_785.x, x_785.x, x_785.y, x_785.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_788 : vec4<f32> = u_xlat5;
        let x_790 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_788.x, x_788.x, x_788.z, x_788.z) * vec4<f32>(x_790.x, x_790.x, x_790.z, x_790.z));
        let x_793 : vec4<f32> = u_xlat6;
        let x_797 : vec2<f32> = (vec2<f32>(x_793.y, x_793.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_798 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_798.x, x_797.x, x_798.z, x_797.y);
        let x_800 : vec4<f32> = u_xlat6;
        let x_803 : vec2<f32> = u_xlat40;
        let x_805 : vec2<f32> = ((vec2<f32>(x_800.x, x_800.z) * vec2<f32>(0.5f, 0.5f)) + -(x_803));
        let x_806 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_805.x, x_806.y, x_805.y, x_806.w);
        let x_808 : vec2<f32> = u_xlat40;
        let x_810 : vec2<f32> = (-(x_808) + vec2<f32>(1.0f, 1.0f));
        let x_811 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_810.x, x_810.y, x_811.z, x_811.w);
        let x_813 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_813, vec2<f32>(0.0f, 0.0f));
        let x_815 : vec2<f32> = u_xlat42;
        let x_817 : vec2<f32> = u_xlat42;
        let x_819 : vec4<f32> = u_xlat6;
        let x_821 : vec2<f32> = ((-(x_815) * x_817) + vec2<f32>(x_819.x, x_819.y));
        let x_822 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
        let x_824 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_824, vec2<f32>(0.0f, 0.0f));
        let x_827 : vec2<f32> = u_xlat42;
        let x_829 : vec2<f32> = u_xlat42;
        let x_831 : vec4<f32> = u_xlat5;
        let x_833 : vec2<f32> = ((-(x_827) * x_829) + vec2<f32>(x_831.y, x_831.w));
        let x_834 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_833.x, x_834.y, x_833.y);
        let x_836 : vec4<f32> = u_xlat6;
        let x_839 : vec2<f32> = (vec2<f32>(x_836.x, x_836.y) + vec2<f32>(2.0f, 2.0f));
        let x_840 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
        let x_842 : vec3<f32> = u_xlat23;
        let x_844 : vec2<f32> = (vec2<f32>(x_842.x, x_842.z) + vec2<f32>(2.0f, 2.0f));
        let x_845 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_845.x, x_844.x, x_845.z, x_844.y);
        let x_848 : f32 = u_xlat5.y;
        u_xlat8.z = (x_848 * 0.081632003f);
        let x_852 : vec4<f32> = u_xlat5;
        let x_855 : vec3<f32> = (vec3<f32>(x_852.z, x_852.x, x_852.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_856 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
        let x_858 : vec4<f32> = u_xlat6;
        let x_861 : vec2<f32> = (vec2<f32>(x_858.x, x_858.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_862 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_865 : f32 = u_xlat9.y;
        u_xlat8.x = x_865;
        let x_867 : vec2<f32> = u_xlat40;
        let x_874 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_875 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_875.x, x_874.x, x_875.z, x_874.y);
        let x_877 : vec2<f32> = u_xlat40;
        let x_881 : vec2<f32> = ((vec2<f32>(x_877.x, x_877.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_882 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_881.x, x_882.y, x_881.y, x_882.w);
        let x_885 : f32 = u_xlat5.x;
        u_xlat6.y = x_885;
        let x_888 : f32 = u_xlat7.y;
        u_xlat6.w = x_888;
        let x_890 : vec4<f32> = u_xlat6;
        let x_891 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_890 + x_891);
        let x_893 : vec2<f32> = u_xlat40;
        let x_896 : vec2<f32> = ((vec2<f32>(x_893.y, x_893.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_897 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_897.x, x_896.x, x_897.z, x_896.y);
        let x_899 : vec2<f32> = u_xlat40;
        let x_902 : vec2<f32> = ((vec2<f32>(x_899.y, x_899.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_903 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_902.x, x_903.y, x_902.y, x_903.w);
        let x_906 : f32 = u_xlat5.y;
        u_xlat7.y = x_906;
        let x_908 : vec4<f32> = u_xlat7;
        let x_909 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_908 + x_909);
        let x_911 : vec4<f32> = u_xlat6;
        let x_912 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_911 / x_912);
        let x_914 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_914 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_920 : vec4<f32> = u_xlat7;
        let x_921 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_920 / x_921);
        let x_923 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_923 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_925 : vec4<f32> = u_xlat6;
        let x_928 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_925.w, x_925.x, x_925.y, x_925.z) * vec4<f32>(x_928.x, x_928.x, x_928.x, x_928.x));
        let x_931 : vec4<f32> = u_xlat7;
        let x_934 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_931.x, x_931.w, x_931.y, x_931.z) * vec4<f32>(x_934.y, x_934.y, x_934.y, x_934.y));
        let x_937 : vec4<f32> = u_xlat6;
        let x_938 : vec3<f32> = vec3<f32>(x_937.y, x_937.z, x_937.w);
        let x_939 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_938.x, x_939.y, x_938.y, x_938.z);
        let x_942 : f32 = u_xlat7.x;
        u_xlat9.y = x_942;
        let x_944 : vec4<f32> = u_xlat4;
        let x_947 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_950 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_944.x, x_944.y, x_944.x, x_944.y) * vec4<f32>(x_947.x, x_947.y, x_947.x, x_947.y)) + vec4<f32>(x_950.x, x_950.y, x_950.z, x_950.y));
        let x_953 : vec4<f32> = u_xlat4;
        let x_956 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_959 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_953.x, x_953.y) * vec2<f32>(x_956.x, x_956.y)) + vec2<f32>(x_959.w, x_959.y));
        let x_963 : f32 = u_xlat9.y;
        u_xlat6.y = x_963;
        let x_966 : f32 = u_xlat7.z;
        u_xlat9.y = x_966;
        let x_968 : vec4<f32> = u_xlat4;
        let x_971 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_974 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_968.x, x_968.y, x_968.x, x_968.y) * vec4<f32>(x_971.x, x_971.y, x_971.x, x_971.y)) + vec4<f32>(x_974.x, x_974.y, x_974.z, x_974.y));
        let x_977 : vec4<f32> = u_xlat4;
        let x_980 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_983 : vec4<f32> = u_xlat9;
        let x_985 : vec2<f32> = ((vec2<f32>(x_977.x, x_977.y) * vec2<f32>(x_980.x, x_980.y)) + vec2<f32>(x_983.w, x_983.y));
        let x_986 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_986.w);
        let x_989 : f32 = u_xlat9.y;
        u_xlat6.z = x_989;
        let x_992 : vec4<f32> = u_xlat4;
        let x_995 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_998 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y) * vec4<f32>(x_995.x, x_995.y, x_995.x, x_995.y)) + vec4<f32>(x_998.x, x_998.y, x_998.x, x_998.z));
        let x_1002 : f32 = u_xlat7.w;
        u_xlat9.y = x_1002;
        let x_1005 : vec4<f32> = u_xlat4;
        let x_1008 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1005.x, x_1005.y, x_1005.x, x_1005.y) * vec4<f32>(x_1008.x, x_1008.y, x_1008.x, x_1008.y)) + vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1011.y));
        let x_1015 : vec4<f32> = u_xlat4;
        let x_1018 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1021 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1015.x, x_1015.y) * vec2<f32>(x_1018.x, x_1018.y)) + vec2<f32>(x_1021.w, x_1021.y));
        let x_1025 : f32 = u_xlat9.y;
        u_xlat6.w = x_1025;
        let x_1028 : vec4<f32> = u_xlat4;
        let x_1031 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1034 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(x_1031.x, x_1031.y)) + vec2<f32>(x_1034.x, x_1034.w));
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1038 : vec3<f32> = vec3<f32>(x_1037.x, x_1037.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1038.x, x_1039.y, x_1038.y, x_1038.z);
        let x_1041 : vec4<f32> = u_xlat4;
        let x_1044 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y) * vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y)) + vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1047.y));
        let x_1051 : vec4<f32> = u_xlat4;
        let x_1054 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1054.x, x_1054.y)) + vec2<f32>(x_1057.w, x_1057.y));
        let x_1061 : f32 = u_xlat6.x;
        u_xlat7.x = x_1061;
        let x_1063 : vec4<f32> = u_xlat4;
        let x_1066 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat7;
        let x_1071 : vec2<f32> = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(x_1066.x, x_1066.y)) + vec2<f32>(x_1069.x, x_1069.y));
        let x_1072 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
        let x_1075 : vec4<f32> = u_xlat5;
        let x_1077 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1075.x, x_1075.x, x_1075.x, x_1075.x) * x_1077);
        let x_1080 : vec4<f32> = u_xlat5;
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1080.y, x_1080.y, x_1080.y, x_1080.y) * x_1082);
        let x_1085 : vec4<f32> = u_xlat5;
        let x_1087 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1085.z, x_1085.z, x_1085.z, x_1085.z) * x_1087);
        let x_1089 : vec4<f32> = u_xlat5;
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1089.w, x_1089.w, x_1089.w, x_1089.w) * x_1091);
        let x_1094 : vec4<f32> = u_xlat10;
        let x_1095 : vec2<f32> = vec2<f32>(x_1094.x, x_1094.y);
        let x_1097 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1095.x, x_1095.y, x_1097);
        let x_1104 : vec3<f32> = txVec13;
        let x_1106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1104.xy, x_1104.z);
        u_xlat1.x = x_1106;
        let x_1109 : vec4<f32> = u_xlat10;
        let x_1110 : vec2<f32> = vec2<f32>(x_1109.z, x_1109.w);
        let x_1112 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1119 : vec3<f32> = txVec14;
        let x_1121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1119.xy, x_1119.z);
        u_xlat56 = x_1121;
        let x_1122 : f32 = u_xlat56;
        let x_1124 : f32 = u_xlat15.y;
        u_xlat56 = (x_1122 * x_1124);
        let x_1127 : f32 = u_xlat15.x;
        let x_1129 : f32 = u_xlat1.x;
        let x_1131 : f32 = u_xlat56;
        u_xlat1.x = ((x_1127 * x_1129) + x_1131);
        let x_1135 : vec2<f32> = u_xlat40;
        let x_1137 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1144 : vec3<f32> = txVec15;
        let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1144.xy, x_1144.z);
        u_xlat56 = x_1146;
        let x_1148 : f32 = u_xlat15.z;
        let x_1149 : f32 = u_xlat56;
        let x_1152 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1148 * x_1149) + x_1152);
        let x_1156 : vec4<f32> = u_xlat13;
        let x_1157 : vec2<f32> = vec2<f32>(x_1156.x, x_1156.y);
        let x_1159 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1157.x, x_1157.y, x_1159);
        let x_1166 : vec3<f32> = txVec16;
        let x_1168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1166.xy, x_1166.z);
        u_xlat56 = x_1168;
        let x_1170 : f32 = u_xlat15.w;
        let x_1171 : f32 = u_xlat56;
        let x_1174 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1170 * x_1171) + x_1174);
        let x_1178 : vec4<f32> = u_xlat11;
        let x_1179 : vec2<f32> = vec2<f32>(x_1178.x, x_1178.y);
        let x_1181 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1179.x, x_1179.y, x_1181);
        let x_1188 : vec3<f32> = txVec17;
        let x_1190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1188.xy, x_1188.z);
        u_xlat56 = x_1190;
        let x_1192 : f32 = u_xlat16.x;
        let x_1193 : f32 = u_xlat56;
        let x_1196 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1192 * x_1193) + x_1196);
        let x_1200 : vec4<f32> = u_xlat11;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.z, x_1200.w);
        let x_1203 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1201.x, x_1201.y, x_1203);
        let x_1210 : vec3<f32> = txVec18;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1210.xy, x_1210.z);
        u_xlat56 = x_1212;
        let x_1214 : f32 = u_xlat16.y;
        let x_1215 : f32 = u_xlat56;
        let x_1218 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1214 * x_1215) + x_1218);
        let x_1222 : vec4<f32> = u_xlat12;
        let x_1223 : vec2<f32> = vec2<f32>(x_1222.x, x_1222.y);
        let x_1225 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1223.x, x_1223.y, x_1225);
        let x_1232 : vec3<f32> = txVec19;
        let x_1234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1232.xy, x_1232.z);
        u_xlat56 = x_1234;
        let x_1236 : f32 = u_xlat16.z;
        let x_1237 : f32 = u_xlat56;
        let x_1240 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1236 * x_1237) + x_1240);
        let x_1244 : vec4<f32> = u_xlat13;
        let x_1245 : vec2<f32> = vec2<f32>(x_1244.z, x_1244.w);
        let x_1247 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
        let x_1254 : vec3<f32> = txVec20;
        let x_1256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1254.xy, x_1254.z);
        u_xlat56 = x_1256;
        let x_1258 : f32 = u_xlat16.w;
        let x_1259 : f32 = u_xlat56;
        let x_1262 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1258 * x_1259) + x_1262);
        let x_1266 : vec4<f32> = u_xlat14;
        let x_1267 : vec2<f32> = vec2<f32>(x_1266.x, x_1266.y);
        let x_1269 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1267.x, x_1267.y, x_1269);
        let x_1276 : vec3<f32> = txVec21;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1276.xy, x_1276.z);
        u_xlat56 = x_1278;
        let x_1280 : f32 = u_xlat17.x;
        let x_1281 : f32 = u_xlat56;
        let x_1284 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1280 * x_1281) + x_1284);
        let x_1288 : vec4<f32> = u_xlat14;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.z, x_1288.w);
        let x_1291 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1298 : vec3<f32> = txVec22;
        let x_1300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1298.xy, x_1298.z);
        u_xlat56 = x_1300;
        let x_1302 : f32 = u_xlat17.y;
        let x_1303 : f32 = u_xlat56;
        let x_1306 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1302 * x_1303) + x_1306);
        let x_1310 : vec2<f32> = u_xlat24;
        let x_1312 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec23;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1319.xy, x_1319.z);
        u_xlat56 = x_1321;
        let x_1323 : f32 = u_xlat17.z;
        let x_1324 : f32 = u_xlat56;
        let x_1327 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1323 * x_1324) + x_1327);
        let x_1331 : vec2<f32> = u_xlat48;
        let x_1333 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec24;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1340.xy, x_1340.z);
        u_xlat56 = x_1342;
        let x_1344 : f32 = u_xlat17.w;
        let x_1345 : f32 = u_xlat56;
        let x_1348 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1344 * x_1345) + x_1348);
        let x_1352 : vec4<f32> = u_xlat9;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.x, x_1352.y);
        let x_1355 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec25;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1362.xy, x_1362.z);
        u_xlat56 = x_1364;
        let x_1366 : f32 = u_xlat5.x;
        let x_1367 : f32 = u_xlat56;
        let x_1370 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1366 * x_1367) + x_1370);
        let x_1374 : vec4<f32> = u_xlat9;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.z, x_1374.w);
        let x_1377 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec26;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1384.xy, x_1384.z);
        u_xlat56 = x_1386;
        let x_1388 : f32 = u_xlat5.y;
        let x_1389 : f32 = u_xlat56;
        let x_1392 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1388 * x_1389) + x_1392);
        let x_1396 : vec2<f32> = u_xlat43;
        let x_1398 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec27;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1405.xy, x_1405.z);
        u_xlat56 = x_1407;
        let x_1409 : f32 = u_xlat5.z;
        let x_1410 : f32 = u_xlat56;
        let x_1413 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1409 * x_1410) + x_1413);
        let x_1417 : vec4<f32> = u_xlat4;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec28;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1427.xy, x_1427.z);
        u_xlat56 = x_1429;
        let x_1431 : f32 = u_xlat5.w;
        let x_1432 : f32 = u_xlat56;
        let x_1435 : f32 = u_xlat1.x;
        u_xlat54 = ((x_1431 * x_1432) + x_1435);
      }
    }
  } else {
    let x_1439 : vec4<f32> = vs_TEXCOORD6;
    let x_1440 : vec2<f32> = vec2<f32>(x_1439.x, x_1439.y);
    let x_1442 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
    let x_1449 : vec3<f32> = txVec29;
    let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1449.xy, x_1449.z);
    u_xlat54 = x_1451;
  }
  let x_1453 : f32 = x_208.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1453) + 1.0f);
  let x_1457 : f32 = u_xlat54;
  let x_1459 : f32 = x_208.x_MainLightShadowParams.x;
  let x_1462 : f32 = u_xlat1.x;
  u_xlat54 = ((x_1457 * x_1459) + x_1462);
  let x_1465 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_1465);
  let x_1469 : f32 = vs_TEXCOORD6.z;
  u_xlatb56 = (x_1469 >= 1.0f);
  let x_1471 : bool = u_xlatb1;
  let x_1472 : bool = u_xlatb56;
  u_xlatb1 = (x_1471 | x_1472);
  let x_1474 : bool = u_xlatb1;
  let x_1475 : f32 = u_xlat54;
  u_xlat54 = select(x_1475, 1.0f, x_1474);
  let x_1477 : vec3<f32> = vs_TEXCOORD1;
  let x_1481 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1483 : vec3<f32> = (x_1477 + -(x_1481));
  let x_1484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1484.w);
  let x_1486 : vec4<f32> = u_xlat4;
  let x_1488 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_1486.x, x_1486.y, x_1486.z), vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
  let x_1493 : f32 = u_xlat1.x;
  let x_1495 : f32 = x_208.x_MainLightShadowParams.z;
  let x_1498 : f32 = x_208.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1493 * x_1495) + x_1498);
  let x_1502 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1502, 0.0f, 1.0f);
  let x_1505 : f32 = u_xlat54;
  u_xlat56 = (-(x_1505) + 1.0f);
  let x_1509 : f32 = u_xlat1.x;
  let x_1510 : f32 = u_xlat56;
  let x_1512 : f32 = u_xlat54;
  u_xlat54 = ((x_1509 * x_1510) + x_1512);
  let x_1514 : f32 = u_xlat54;
  let x_1520 : f32 = x_1518.unity_LightData.z;
  u_xlat54 = (x_1514 * x_1520);
  let x_1522 : f32 = u_xlat54;
  let x_1525 : vec4<f32> = x_28.x_MainLightColor;
  let x_1527 : vec3<f32> = (vec3<f32>(x_1522, x_1522, x_1522) * vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
  let x_1528 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
  let x_1530 : vec3<f32> = u_xlat2;
  let x_1532 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat54 = dot(x_1530, vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
  let x_1535 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1535, 0.0f, 1.0f);
  let x_1537 : f32 = u_xlat54;
  let x_1539 : vec4<f32> = u_xlat4;
  let x_1541 : vec3<f32> = (vec3<f32>(x_1537, x_1537, x_1537) * vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
  let x_1542 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
  let x_1544 : vec4<f32> = u_xlat1;
  let x_1546 : vec4<f32> = u_xlat4;
  let x_1548 : vec3<f32> = (vec3<f32>(x_1544.y, x_1544.z, x_1544.w) * vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
  let x_1549 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
  let x_1551 : vec4<f32> = u_xlat0;
  let x_1553 : vec4<f32> = u_xlat4;
  let x_1555 : vec3<f32> = (vec3<f32>(x_1551.x, x_1551.x, x_1551.x) * vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
  let x_1556 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1556.w);
  let x_1559 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1561 : f32 = x_1518.unity_LightData.y;
  u_xlat54 = min(x_1559, x_1561);
  let x_1565 : f32 = u_xlat54;
  u_xlatu54 = bitcast<u32>(i32(x_1565));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1577 : u32 = u_xlatu_loop_1;
    let x_1578 : u32 = u_xlatu54;
    if ((x_1577 < x_1578)) {
    } else {
      break;
    }
    let x_1581 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_1581 >> 2u);
    let x_1585 : u32 = u_xlatu_loop_1;
    u_xlati57 = bitcast<i32>((x_1585 & 3u));
    let x_1588 : u32 = u_xlatu56;
    let x_1591 : vec4<f32> = x_1518.unity_LightIndices[bitcast<i32>(x_1588)];
    let x_1601 : i32 = u_xlati57;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1606 : vec4<u32> = indexable[x_1601];
    u_xlat56 = dot(x_1591, bitcast<vec4<f32>>(x_1606));
    let x_1610 : f32 = u_xlat56;
    u_xlati56 = i32(x_1610);
    let x_1612 : vec3<f32> = vs_TEXCOORD1;
    let x_1624 : i32 = u_xlati56;
    let x_1626 : vec4<f32> = x_1623.x_AdditionalLightsPosition[x_1624];
    let x_1629 : i32 = u_xlati56;
    let x_1631 : vec4<f32> = x_1623.x_AdditionalLightsPosition[x_1629];
    let x_1633 : vec3<f32> = ((-(x_1612) * vec3<f32>(x_1626.w, x_1626.w, x_1626.w)) + vec3<f32>(x_1631.x, x_1631.y, x_1631.z));
    let x_1634 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1634.w);
    let x_1636 : vec4<f32> = u_xlat6;
    let x_1638 : vec4<f32> = u_xlat6;
    u_xlat57 = dot(vec3<f32>(x_1636.x, x_1636.y, x_1636.z), vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
    let x_1641 : f32 = u_xlat57;
    u_xlat57 = max(x_1641, 6.10351562e-05f);
    let x_1645 : f32 = u_xlat57;
    u_xlat58 = inverseSqrt(x_1645);
    let x_1647 : f32 = u_xlat58;
    let x_1649 : vec4<f32> = u_xlat6;
    let x_1651 : vec3<f32> = (vec3<f32>(x_1647, x_1647, x_1647) * vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
    let x_1652 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1651.x, x_1651.y, x_1651.z, x_1652.w);
    let x_1654 : f32 = u_xlat57;
    u_xlat58 = (1.0f / x_1654);
    let x_1656 : f32 = u_xlat57;
    let x_1657 : i32 = u_xlati56;
    let x_1659 : f32 = x_1623.x_AdditionalLightsAttenuation[x_1657].x;
    u_xlat57 = (x_1656 * x_1659);
    let x_1661 : f32 = u_xlat57;
    let x_1663 : f32 = u_xlat57;
    u_xlat57 = ((-(x_1661) * x_1663) + 1.0f);
    let x_1666 : f32 = u_xlat57;
    u_xlat57 = max(x_1666, 0.0f);
    let x_1668 : f32 = u_xlat57;
    let x_1669 : f32 = u_xlat57;
    u_xlat57 = (x_1668 * x_1669);
    let x_1671 : f32 = u_xlat57;
    let x_1672 : f32 = u_xlat58;
    u_xlat57 = (x_1671 * x_1672);
    let x_1674 : i32 = u_xlati56;
    let x_1676 : vec4<f32> = x_1623.x_AdditionalLightsSpotDir[x_1674];
    let x_1678 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1676.x, x_1676.y, x_1676.z), vec3<f32>(x_1678.x, x_1678.y, x_1678.z));
    let x_1681 : f32 = u_xlat58;
    let x_1682 : i32 = u_xlati56;
    let x_1684 : f32 = x_1623.x_AdditionalLightsAttenuation[x_1682].z;
    let x_1686 : i32 = u_xlati56;
    let x_1688 : f32 = x_1623.x_AdditionalLightsAttenuation[x_1686].w;
    u_xlat58 = ((x_1681 * x_1684) + x_1688);
    let x_1690 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1690, 0.0f, 1.0f);
    let x_1692 : f32 = u_xlat58;
    let x_1693 : f32 = u_xlat58;
    u_xlat58 = (x_1692 * x_1693);
    let x_1695 : f32 = u_xlat57;
    let x_1696 : f32 = u_xlat58;
    u_xlat57 = (x_1695 * x_1696);
    let x_1698 : f32 = u_xlat57;
    let x_1700 : i32 = u_xlati56;
    let x_1702 : vec4<f32> = x_1623.x_AdditionalLightsColor[x_1700];
    let x_1704 : vec3<f32> = (vec3<f32>(x_1698, x_1698, x_1698) * vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
    let x_1705 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
    let x_1707 : vec3<f32> = u_xlat2;
    let x_1708 : vec4<f32> = u_xlat6;
    u_xlat56 = dot(x_1707, vec3<f32>(x_1708.x, x_1708.y, x_1708.z));
    let x_1711 : f32 = u_xlat56;
    u_xlat56 = clamp(x_1711, 0.0f, 1.0f);
    let x_1713 : f32 = u_xlat56;
    let x_1715 : vec4<f32> = u_xlat7;
    let x_1717 : vec3<f32> = (vec3<f32>(x_1713, x_1713, x_1713) * vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
    let x_1718 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
    let x_1720 : vec4<f32> = u_xlat1;
    let x_1722 : vec4<f32> = u_xlat6;
    let x_1724 : vec3<f32> = (vec3<f32>(x_1720.y, x_1720.z, x_1720.w) * vec3<f32>(x_1722.x, x_1722.y, x_1722.z));
    let x_1725 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1724.x, x_1724.y, x_1724.z, x_1725.w);
    let x_1727 : vec4<f32> = u_xlat6;
    let x_1729 : vec4<f32> = u_xlat0;
    let x_1732 : vec4<f32> = u_xlat5;
    let x_1734 : vec3<f32> = ((vec3<f32>(x_1727.x, x_1727.y, x_1727.z) * vec3<f32>(x_1729.x, x_1729.x, x_1729.x)) + vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
    let x_1735 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);

    continuing {
      let x_1737 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1737 + bitcast<u32>(1i));
    }
  }
  let x_1739 : vec3<f32> = u_xlat3;
  let x_1740 : vec4<f32> = u_xlat1;
  let x_1743 : vec4<f32> = u_xlat4;
  let x_1745 : vec3<f32> = ((x_1739 * vec3<f32>(x_1740.y, x_1740.z, x_1740.w)) + vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
  let x_1746 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
  let x_1748 : vec4<f32> = u_xlat5;
  let x_1750 : vec4<f32> = u_xlat1;
  let x_1752 : vec3<f32> = (vec3<f32>(x_1748.x, x_1748.y, x_1748.z) + vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
  let x_1753 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
  let x_1755 : f32 = u_xlat18;
  let x_1756 : f32 = u_xlat18;
  u_xlat18 = (x_1755 * -(x_1756));
  let x_1759 : f32 = u_xlat18;
  u_xlat18 = exp2(x_1759);
  let x_1761 : vec4<f32> = u_xlat1;
  let x_1764 : vec4<f32> = x_28.unity_FogColor;
  let x_1767 : vec3<f32> = (vec3<f32>(x_1761.x, x_1761.y, x_1761.z) + -(vec3<f32>(x_1764.x, x_1764.y, x_1764.z)));
  let x_1768 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1767.x, x_1767.y, x_1767.z, x_1768.w);
  let x_1772 : f32 = u_xlat18;
  let x_1774 : vec4<f32> = u_xlat1;
  let x_1778 : vec4<f32> = x_28.unity_FogColor;
  let x_1780 : vec3<f32> = ((vec3<f32>(x_1772, x_1772, x_1772) * vec3<f32>(x_1774.x, x_1774.y, x_1774.z)) + vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
  let x_1781 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
  let x_1784 : f32 = x_42.x_Surface;
  u_xlatb18 = (x_1784 == 1.0f);
  let x_1786 : bool = u_xlatb18;
  let x_1787 : bool = u_xlatb36;
  u_xlatb18 = (x_1786 | x_1787);
  let x_1789 : bool = u_xlatb18;
  if (x_1789) {
    let x_1794 : f32 = u_xlat0.x;
    x_1790 = x_1794;
  } else {
    x_1790 = 1.0f;
  }
  let x_1796 : f32 = x_1790;
  SV_Target0.w = x_1796;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

