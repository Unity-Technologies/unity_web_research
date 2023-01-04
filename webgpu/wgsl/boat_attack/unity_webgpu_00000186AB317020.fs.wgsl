struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(3) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_281 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1667 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1903 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb21 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat21 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat60 : f32;
  var u_xlat44 : f32;
  var u_xlatb64 : bool;
  var u_xlat6 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat64 : f32;
  var u_xlatb65 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat65 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat26 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec3<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
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
  var u_xlatb6 : bool;
  var u_xlat66 : f32;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu62 : u32;
  var u_xlati64 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati62 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_70 == 0.0f);
  let x_77 : vec3<f32> = vs_TEXCOORD7;
  let x_82 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_77) + x_82);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat41 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat41;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_95 : bool = u_xlatb21;
  if (x_95) {
    let x_100 : f32 = u_xlat2.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat3.x = x_107;
  let x_109 : bool = u_xlatb21;
  if (x_109) {
    let x_115 : f32 = u_xlat2.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat3.y = x_119;
  let x_121 : bool = u_xlatb21;
  if (x_121) {
    let x_126 : f32 = u_xlat2.z;
    x_122 = x_126;
  } else {
    let x_130 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_130;
  }
  let x_131 : f32 = x_122;
  u_xlat3.z = x_131;
  let x_135 : vec3<f32> = vs_TEXCOORD3;
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  u_xlat21.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat21;
  let x_145 : vec3<f32> = vs_TEXCOORD3;
  u_xlat21 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_152 : vec4<f32> = vs_TEXCOORD0;
  let x_155 : f32 = x_44.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_152.z, x_152.w), x_155);
  u_xlat2 = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_162 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_163 : vec2<f32> = vec2<f32>(x_162.x, x_162.y);
  let x_167 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_163.x, x_163.y));
  let x_168 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_167.x, x_167.y, x_168.z);
  let x_170 : vec3<f32> = u_xlat4;
  let x_172 : vec4<f32> = hlslcc_FragCoord;
  let x_174 : vec2<f32> = (vec2<f32>(x_170.x, x_170.y) * vec2<f32>(x_172.x, x_172.y));
  let x_175 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_174.x, x_174.y, x_175.z);
  let x_179 : f32 = u_xlat4.y;
  let x_182 : f32 = x_44.x_ScaleBiasRt.x;
  let x_185 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat62 = ((x_179 * x_182) + x_185);
  let x_187 : f32 = u_xlat62;
  u_xlat4.z = (-(x_187) + 1.0f);
  let x_191 : f32 = u_xlat1;
  u_xlat62 = ((-(x_191) * 0.959999979f) + 0.959999979f);
  let x_197 : f32 = u_xlat62;
  u_xlat63 = (-(x_197) + 1.0f);
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : f32 = u_xlat62;
  u_xlat5 = (vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_203, x_203, x_203));
  let x_206 : vec4<f32> = u_xlat0;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_211 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : f32 = u_xlat1;
  let x_215 : vec4<f32> = u_xlat0;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213, x_213, x_213) * vec3<f32>(x_215.x, x_215.y, x_215.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_224 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_224) + 1.0f);
  let x_227 : f32 = u_xlat1;
  let x_228 : f32 = u_xlat1;
  u_xlat62 = (x_227 * x_228);
  let x_230 : f32 = u_xlat62;
  u_xlat62 = max(x_230, 0.0078125f);
  let x_234 : f32 = u_xlat62;
  let x_235 : f32 = u_xlat62;
  u_xlat24 = (x_234 * x_235);
  let x_239 : f32 = u_xlat0.w;
  let x_240 : f32 = u_xlat63;
  u_xlat60 = (x_239 + x_240);
  let x_242 : f32 = u_xlat60;
  u_xlat60 = clamp(x_242, 0.0f, 1.0f);
  let x_244 : f32 = u_xlat62;
  u_xlat63 = ((x_244 * 4.0f) + 2.0f);
  let x_254 : vec3<f32> = u_xlat4;
  let x_257 : f32 = x_44.x_GlobalMipBias.x;
  let x_258 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_254.x, x_254.z), x_257);
  u_xlat4.x = x_258.x;
  let x_263 : f32 = u_xlat4.x;
  u_xlat44 = (x_263 + -1.0f);
  let x_268 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_269 : f32 = u_xlat44;
  u_xlat44 = ((x_268 * x_269) + 1.0f);
  let x_273 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_273, 1.0f);
  let x_283 : f32 = x_281.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_283);
  let x_285 : bool = u_xlatb64;
  if (x_285) {
    let x_289 : f32 = x_281.x_MainLightShadowParams.y;
    u_xlatb64 = (x_289 == 1.0f);
    let x_291 : bool = u_xlatb64;
    if (x_291) {
      let x_296 : vec4<f32> = vs_TEXCOORD8;
      let x_299 : vec4<f32> = x_281.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_296.x, x_296.y, x_296.x, x_296.y) + x_299);
      let x_302 : vec4<f32> = u_xlat6;
      let x_303 : vec2<f32> = vec2<f32>(x_302.x, x_302.y);
      let x_305 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_303.x, x_303.y, x_305);
      let x_318 : vec3<f32> = txVec0;
      let x_320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_318.xy, x_318.z);
      u_xlat7.x = x_320;
      let x_323 : vec4<f32> = u_xlat6;
      let x_324 : vec2<f32> = vec2<f32>(x_323.z, x_323.w);
      let x_326 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_324.x, x_324.y, x_326);
      let x_333 : vec3<f32> = txVec1;
      let x_335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_333.xy, x_333.z);
      u_xlat7.y = x_335;
      let x_337 : vec4<f32> = vs_TEXCOORD8;
      let x_340 : vec4<f32> = x_281.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_337.x, x_337.y, x_337.x, x_337.y) + x_340);
      let x_343 : vec4<f32> = u_xlat6;
      let x_344 : vec2<f32> = vec2<f32>(x_343.x, x_343.y);
      let x_346 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_344.x, x_344.y, x_346);
      let x_353 : vec3<f32> = txVec2;
      let x_355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_353.xy, x_353.z);
      u_xlat7.z = x_355;
      let x_358 : vec4<f32> = u_xlat6;
      let x_359 : vec2<f32> = vec2<f32>(x_358.z, x_358.w);
      let x_361 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_359.x, x_359.y, x_361);
      let x_368 : vec3<f32> = txVec3;
      let x_370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_368.xy, x_368.z);
      u_xlat7.w = x_370;
      let x_373 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_373, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_380 : f32 = x_281.x_MainLightShadowParams.y;
      u_xlatb65 = (x_380 == 2.0f);
      let x_382 : bool = u_xlatb65;
      if (x_382) {
        let x_385 : vec4<f32> = vs_TEXCOORD8;
        let x_388 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_393 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(x_388.z, x_388.w)) + vec2<f32>(0.5f, 0.5f));
        let x_394 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
        let x_396 : vec4<f32> = u_xlat6;
        let x_398 : vec2<f32> = floor(vec2<f32>(x_396.x, x_396.y));
        let x_399 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
        let x_403 : vec4<f32> = vs_TEXCOORD8;
        let x_406 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_409 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_403.x, x_403.y) * vec2<f32>(x_406.z, x_406.w)) + -(vec2<f32>(x_409.x, x_409.y)));
        let x_413 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_413.x, x_413.x, x_413.y, x_413.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_418 : vec4<f32> = u_xlat7;
        let x_420 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_418.x, x_418.x, x_418.z, x_418.z) * vec4<f32>(x_420.x, x_420.x, x_420.z, x_420.z));
        let x_423 : vec4<f32> = u_xlat8;
        let x_427 : vec2<f32> = (vec2<f32>(x_423.y, x_423.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_428 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_427.x, x_428.y, x_427.y, x_428.w);
        let x_430 : vec4<f32> = u_xlat8;
        let x_433 : vec2<f32> = u_xlat46;
        let x_435 : vec2<f32> = ((vec2<f32>(x_430.x, x_430.z) * vec2<f32>(0.5f, 0.5f)) + -(x_433));
        let x_436 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
        let x_439 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_439) + vec2<f32>(1.0f, 1.0f));
        let x_443 : vec2<f32> = u_xlat46;
        let x_445 : vec2<f32> = min(x_443, vec2<f32>(0.0f, 0.0f));
        let x_446 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_448 : vec4<f32> = u_xlat9;
        let x_451 : vec4<f32> = u_xlat9;
        let x_454 : vec2<f32> = u_xlat48;
        let x_455 : vec2<f32> = ((-(vec2<f32>(x_448.x, x_448.y)) * vec2<f32>(x_451.x, x_451.y)) + x_454);
        let x_456 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_458 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_458, vec2<f32>(0.0f, 0.0f));
        let x_460 : vec2<f32> = u_xlat46;
        let x_462 : vec2<f32> = u_xlat46;
        let x_464 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_460) * x_462) + vec2<f32>(x_464.y, x_464.w));
        let x_467 : vec4<f32> = u_xlat9;
        let x_469 : vec2<f32> = (vec2<f32>(x_467.x, x_467.y) + vec2<f32>(1.0f, 1.0f));
        let x_470 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_472 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_472 + vec2<f32>(1.0f, 1.0f));
        let x_475 : vec4<f32> = u_xlat8;
        let x_479 : vec2<f32> = (vec2<f32>(x_475.x, x_475.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_480 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_482 : vec2<f32> = u_xlat48;
        let x_483 : vec2<f32> = (x_482 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_484 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
        let x_486 : vec4<f32> = u_xlat9;
        let x_488 : vec2<f32> = (vec2<f32>(x_486.x, x_486.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_489 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
        let x_492 : vec2<f32> = u_xlat46;
        let x_493 : vec2<f32> = (x_492 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_494 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_496 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_496.y, x_496.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_500 : f32 = u_xlat9.x;
        u_xlat10.z = x_500;
        let x_503 : f32 = u_xlat46.x;
        u_xlat10.w = x_503;
        let x_506 : f32 = u_xlat11.x;
        u_xlat8.z = x_506;
        let x_509 : f32 = u_xlat7.x;
        u_xlat8.w = x_509;
        let x_512 : vec4<f32> = u_xlat8;
        let x_514 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_512.z, x_512.w, x_512.x, x_512.z) + vec4<f32>(x_514.z, x_514.w, x_514.x, x_514.z));
        let x_518 : f32 = u_xlat10.y;
        u_xlat9.z = x_518;
        let x_521 : f32 = u_xlat46.y;
        u_xlat9.w = x_521;
        let x_524 : f32 = u_xlat8.y;
        u_xlat11.z = x_524;
        let x_527 : f32 = u_xlat7.z;
        u_xlat11.w = x_527;
        let x_529 : vec4<f32> = u_xlat9;
        let x_531 : vec4<f32> = u_xlat11;
        let x_533 : vec3<f32> = (vec3<f32>(x_529.z, x_529.y, x_529.w) + vec3<f32>(x_531.z, x_531.y, x_531.w));
        let x_534 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
        let x_536 : vec4<f32> = u_xlat8;
        let x_538 : vec4<f32> = u_xlat12;
        let x_540 : vec3<f32> = (vec3<f32>(x_536.x, x_536.z, x_536.w) / vec3<f32>(x_538.z, x_538.w, x_538.y));
        let x_541 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
        let x_543 : vec4<f32> = u_xlat8;
        let x_549 : vec3<f32> = (vec3<f32>(x_543.x, x_543.y, x_543.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_550 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
        let x_552 : vec4<f32> = u_xlat11;
        let x_554 : vec4<f32> = u_xlat7;
        let x_556 : vec3<f32> = (vec3<f32>(x_552.z, x_552.y, x_552.w) / vec3<f32>(x_554.x, x_554.y, x_554.z));
        let x_557 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
        let x_559 : vec4<f32> = u_xlat9;
        let x_561 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_562 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat8;
        let x_567 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_569 : vec3<f32> = (vec3<f32>(x_564.y, x_564.x, x_564.z) * vec3<f32>(x_567.x, x_567.x, x_567.x));
        let x_570 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat9;
        let x_575 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_577 : vec3<f32> = (vec3<f32>(x_572.x, x_572.y, x_572.z) * vec3<f32>(x_575.y, x_575.y, x_575.y));
        let x_578 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
        let x_581 : f32 = u_xlat9.x;
        u_xlat8.w = x_581;
        let x_583 : vec4<f32> = u_xlat6;
        let x_586 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_589 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y) * vec4<f32>(x_586.x, x_586.y, x_586.x, x_586.y)) + vec4<f32>(x_589.y, x_589.w, x_589.x, x_589.w));
        let x_592 : vec4<f32> = u_xlat6;
        let x_595 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_598 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(x_595.x, x_595.y)) + vec2<f32>(x_598.z, x_598.w));
        let x_602 : f32 = u_xlat8.y;
        u_xlat9.w = x_602;
        let x_604 : vec4<f32> = u_xlat9;
        let x_605 : vec2<f32> = vec2<f32>(x_604.y, x_604.z);
        let x_606 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_606.x, x_605.x, x_606.z, x_605.y);
        let x_608 : vec4<f32> = u_xlat6;
        let x_611 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_614 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y) * vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y)) + vec4<f32>(x_614.x, x_614.y, x_614.z, x_614.y));
        let x_617 : vec4<f32> = u_xlat6;
        let x_620 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_623 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y) * vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y)) + vec4<f32>(x_623.w, x_623.y, x_623.w, x_623.z));
        let x_626 : vec4<f32> = u_xlat6;
        let x_629 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_632 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_626.x, x_626.y, x_626.x, x_626.y) * vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y)) + vec4<f32>(x_632.x, x_632.w, x_632.z, x_632.w));
        let x_636 : vec4<f32> = u_xlat7;
        let x_638 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_636.x, x_636.x, x_636.x, x_636.y) * vec4<f32>(x_638.z, x_638.w, x_638.y, x_638.z));
        let x_642 : vec4<f32> = u_xlat7;
        let x_644 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_642.y, x_642.y, x_642.z, x_642.z) * x_644);
        let x_648 : f32 = u_xlat7.z;
        let x_650 : f32 = u_xlat12.y;
        u_xlat65 = (x_648 * x_650);
        let x_653 : vec4<f32> = u_xlat10;
        let x_654 : vec2<f32> = vec2<f32>(x_653.x, x_653.y);
        let x_656 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_654.x, x_654.y, x_656);
        let x_663 : vec3<f32> = txVec4;
        let x_665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_663.xy, x_663.z);
        u_xlat6.x = x_665;
        let x_668 : vec4<f32> = u_xlat10;
        let x_669 : vec2<f32> = vec2<f32>(x_668.z, x_668.w);
        let x_671 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_669.x, x_669.y, x_671);
        let x_679 : vec3<f32> = txVec5;
        let x_681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_679.xy, x_679.z);
        u_xlat26 = x_681;
        let x_682 : f32 = u_xlat26;
        let x_684 : f32 = u_xlat13.y;
        u_xlat26 = (x_682 * x_684);
        let x_687 : f32 = u_xlat13.x;
        let x_689 : f32 = u_xlat6.x;
        let x_691 : f32 = u_xlat26;
        u_xlat6.x = ((x_687 * x_689) + x_691);
        let x_695 : vec2<f32> = u_xlat46;
        let x_697 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_695.x, x_695.y, x_697);
        let x_704 : vec3<f32> = txVec6;
        let x_706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_704.xy, x_704.z);
        u_xlat26 = x_706;
        let x_708 : f32 = u_xlat13.z;
        let x_709 : f32 = u_xlat26;
        let x_712 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_708 * x_709) + x_712);
        let x_716 : vec4<f32> = u_xlat9;
        let x_717 : vec2<f32> = vec2<f32>(x_716.x, x_716.y);
        let x_719 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_717.x, x_717.y, x_719);
        let x_726 : vec3<f32> = txVec7;
        let x_728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_726.xy, x_726.z);
        u_xlat26 = x_728;
        let x_730 : f32 = u_xlat13.w;
        let x_731 : f32 = u_xlat26;
        let x_734 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_730 * x_731) + x_734);
        let x_738 : vec4<f32> = u_xlat11;
        let x_739 : vec2<f32> = vec2<f32>(x_738.x, x_738.y);
        let x_741 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_739.x, x_739.y, x_741);
        let x_748 : vec3<f32> = txVec8;
        let x_750 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_748.xy, x_748.z);
        u_xlat26 = x_750;
        let x_752 : f32 = u_xlat14.x;
        let x_753 : f32 = u_xlat26;
        let x_756 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_752 * x_753) + x_756);
        let x_760 : vec4<f32> = u_xlat11;
        let x_761 : vec2<f32> = vec2<f32>(x_760.z, x_760.w);
        let x_763 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_761.x, x_761.y, x_763);
        let x_770 : vec3<f32> = txVec9;
        let x_772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_770.xy, x_770.z);
        u_xlat26 = x_772;
        let x_774 : f32 = u_xlat14.y;
        let x_775 : f32 = u_xlat26;
        let x_778 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_774 * x_775) + x_778);
        let x_782 : vec4<f32> = u_xlat9;
        let x_783 : vec2<f32> = vec2<f32>(x_782.z, x_782.w);
        let x_785 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_783.x, x_783.y, x_785);
        let x_792 : vec3<f32> = txVec10;
        let x_794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_792.xy, x_792.z);
        u_xlat26 = x_794;
        let x_796 : f32 = u_xlat14.z;
        let x_797 : f32 = u_xlat26;
        let x_800 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_796 * x_797) + x_800);
        let x_804 : vec4<f32> = u_xlat8;
        let x_805 : vec2<f32> = vec2<f32>(x_804.x, x_804.y);
        let x_807 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_805.x, x_805.y, x_807);
        let x_814 : vec3<f32> = txVec11;
        let x_816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_814.xy, x_814.z);
        u_xlat26 = x_816;
        let x_818 : f32 = u_xlat14.w;
        let x_819 : f32 = u_xlat26;
        let x_822 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_818 * x_819) + x_822);
        let x_826 : vec4<f32> = u_xlat8;
        let x_827 : vec2<f32> = vec2<f32>(x_826.z, x_826.w);
        let x_829 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_827.x, x_827.y, x_829);
        let x_836 : vec3<f32> = txVec12;
        let x_838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_836.xy, x_836.z);
        u_xlat26 = x_838;
        let x_839 : f32 = u_xlat65;
        let x_840 : f32 = u_xlat26;
        let x_843 : f32 = u_xlat6.x;
        u_xlat64 = ((x_839 * x_840) + x_843);
      } else {
        let x_846 : vec4<f32> = vs_TEXCOORD8;
        let x_849 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_852 : vec2<f32> = ((vec2<f32>(x_846.x, x_846.y) * vec2<f32>(x_849.z, x_849.w)) + vec2<f32>(0.5f, 0.5f));
        let x_853 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
        let x_855 : vec4<f32> = u_xlat6;
        let x_857 : vec2<f32> = floor(vec2<f32>(x_855.x, x_855.y));
        let x_858 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
        let x_860 : vec4<f32> = vs_TEXCOORD8;
        let x_863 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_866 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_860.x, x_860.y) * vec2<f32>(x_863.z, x_863.w)) + -(vec2<f32>(x_866.x, x_866.y)));
        let x_870 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_870.x, x_870.x, x_870.y, x_870.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_873 : vec4<f32> = u_xlat7;
        let x_875 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_873.x, x_873.x, x_873.z, x_873.z) * vec4<f32>(x_875.x, x_875.x, x_875.z, x_875.z));
        let x_878 : vec4<f32> = u_xlat8;
        let x_882 : vec2<f32> = (vec2<f32>(x_878.y, x_878.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_883 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_883.x, x_882.x, x_883.z, x_882.y);
        let x_885 : vec4<f32> = u_xlat8;
        let x_888 : vec2<f32> = u_xlat46;
        let x_890 : vec2<f32> = ((vec2<f32>(x_885.x, x_885.z) * vec2<f32>(0.5f, 0.5f)) + -(x_888));
        let x_891 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_890.x, x_891.y, x_890.y, x_891.w);
        let x_893 : vec2<f32> = u_xlat46;
        let x_895 : vec2<f32> = (-(x_893) + vec2<f32>(1.0f, 1.0f));
        let x_896 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_898 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_898, vec2<f32>(0.0f, 0.0f));
        let x_900 : vec2<f32> = u_xlat48;
        let x_902 : vec2<f32> = u_xlat48;
        let x_904 : vec4<f32> = u_xlat8;
        let x_906 : vec2<f32> = ((-(x_900) * x_902) + vec2<f32>(x_904.x, x_904.y));
        let x_907 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_909 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_909, vec2<f32>(0.0f, 0.0f));
        let x_912 : vec2<f32> = u_xlat48;
        let x_914 : vec2<f32> = u_xlat48;
        let x_916 : vec4<f32> = u_xlat7;
        let x_918 : vec2<f32> = ((-(x_912) * x_914) + vec2<f32>(x_916.y, x_916.w));
        let x_919 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_918.x, x_919.y, x_918.y);
        let x_921 : vec4<f32> = u_xlat8;
        let x_924 : vec2<f32> = (vec2<f32>(x_921.x, x_921.y) + vec2<f32>(2.0f, 2.0f));
        let x_925 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_924.x, x_924.y, x_925.z, x_925.w);
        let x_927 : vec3<f32> = u_xlat27;
        let x_929 : vec2<f32> = (vec2<f32>(x_927.x, x_927.z) + vec2<f32>(2.0f, 2.0f));
        let x_930 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_930.x, x_929.x, x_930.z, x_929.y);
        let x_933 : f32 = u_xlat7.y;
        u_xlat10.z = (x_933 * 0.081632003f);
        let x_937 : vec4<f32> = u_xlat7;
        let x_940 : vec3<f32> = (vec3<f32>(x_937.z, x_937.x, x_937.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_941 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
        let x_943 : vec4<f32> = u_xlat8;
        let x_946 : vec2<f32> = (vec2<f32>(x_943.x, x_943.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_947 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
        let x_950 : f32 = u_xlat11.y;
        u_xlat10.x = x_950;
        let x_952 : vec2<f32> = u_xlat46;
        let x_959 : vec2<f32> = ((vec2<f32>(x_952.x, x_952.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_960 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_960.x, x_959.x, x_960.z, x_959.y);
        let x_962 : vec2<f32> = u_xlat46;
        let x_966 : vec2<f32> = ((vec2<f32>(x_962.x, x_962.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_967 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_966.x, x_967.y, x_966.y, x_967.w);
        let x_970 : f32 = u_xlat7.x;
        u_xlat8.y = x_970;
        let x_973 : f32 = u_xlat9.y;
        u_xlat8.w = x_973;
        let x_975 : vec4<f32> = u_xlat8;
        let x_976 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_975 + x_976);
        let x_978 : vec2<f32> = u_xlat46;
        let x_981 : vec2<f32> = ((vec2<f32>(x_978.y, x_978.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_982 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_982.x, x_981.x, x_982.z, x_981.y);
        let x_984 : vec2<f32> = u_xlat46;
        let x_987 : vec2<f32> = ((vec2<f32>(x_984.y, x_984.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_988 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_987.x, x_988.y, x_987.y, x_988.w);
        let x_991 : f32 = u_xlat7.y;
        u_xlat9.y = x_991;
        let x_993 : vec4<f32> = u_xlat9;
        let x_994 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_993 + x_994);
        let x_996 : vec4<f32> = u_xlat8;
        let x_997 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_996 / x_997);
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_999 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1005 : vec4<f32> = u_xlat9;
        let x_1006 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1005 / x_1006);
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1008 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1013 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1010.w, x_1010.x, x_1010.y, x_1010.z) * vec4<f32>(x_1013.x, x_1013.x, x_1013.x, x_1013.x));
        let x_1016 : vec4<f32> = u_xlat9;
        let x_1019 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1016.x, x_1016.w, x_1016.y, x_1016.z) * vec4<f32>(x_1019.y, x_1019.y, x_1019.y, x_1019.y));
        let x_1022 : vec4<f32> = u_xlat8;
        let x_1023 : vec3<f32> = vec3<f32>(x_1022.y, x_1022.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1023.x, x_1024.y, x_1023.y, x_1023.z);
        let x_1027 : f32 = u_xlat9.x;
        u_xlat11.y = x_1027;
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1035 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y) * vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y)) + vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1035.y));
        let x_1038 : vec4<f32> = u_xlat6;
        let x_1041 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1044 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1038.x, x_1038.y) * vec2<f32>(x_1041.x, x_1041.y)) + vec2<f32>(x_1044.w, x_1044.y));
        let x_1048 : f32 = u_xlat11.y;
        u_xlat8.y = x_1048;
        let x_1051 : f32 = u_xlat9.z;
        u_xlat11.y = x_1051;
        let x_1053 : vec4<f32> = u_xlat6;
        let x_1056 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1059 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y) * vec4<f32>(x_1056.x, x_1056.y, x_1056.x, x_1056.y)) + vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1059.y));
        let x_1062 : vec4<f32> = u_xlat6;
        let x_1065 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1068 : vec4<f32> = u_xlat11;
        let x_1070 : vec2<f32> = ((vec2<f32>(x_1062.x, x_1062.y) * vec2<f32>(x_1065.x, x_1065.y)) + vec2<f32>(x_1068.w, x_1068.y));
        let x_1071 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1070.x, x_1070.y, x_1071.z, x_1071.w);
        let x_1074 : f32 = u_xlat11.y;
        u_xlat8.z = x_1074;
        let x_1077 : vec4<f32> = u_xlat6;
        let x_1080 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) * vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y)) + vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.z));
        let x_1087 : f32 = u_xlat9.w;
        u_xlat11.y = x_1087;
        let x_1090 : vec4<f32> = u_xlat6;
        let x_1093 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y) * vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y)) + vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1096.y));
        let x_1100 : vec4<f32> = u_xlat6;
        let x_1103 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1106 : vec4<f32> = u_xlat11;
        let x_1108 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1103.x, x_1103.y)) + vec2<f32>(x_1106.w, x_1106.y));
        let x_1109 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1108.x, x_1108.y, x_1109.z);
        let x_1112 : f32 = u_xlat11.y;
        u_xlat8.w = x_1112;
        let x_1115 : vec4<f32> = u_xlat6;
        let x_1118 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1115.x, x_1115.y) * vec2<f32>(x_1118.x, x_1118.y)) + vec2<f32>(x_1121.x, x_1121.w));
        let x_1124 : vec4<f32> = u_xlat11;
        let x_1125 : vec3<f32> = vec3<f32>(x_1124.x, x_1124.z, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1125.x, x_1126.y, x_1125.y, x_1125.z);
        let x_1128 : vec4<f32> = u_xlat6;
        let x_1131 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1134 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y) * vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y)) + vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1134.y));
        let x_1138 : vec4<f32> = u_xlat6;
        let x_1141 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1138.x, x_1138.y) * vec2<f32>(x_1141.x, x_1141.y)) + vec2<f32>(x_1144.w, x_1144.y));
        let x_1148 : f32 = u_xlat8.x;
        u_xlat9.x = x_1148;
        let x_1150 : vec4<f32> = u_xlat6;
        let x_1153 : vec4<f32> = x_281.x_MainLightShadowmapSize;
        let x_1156 : vec4<f32> = u_xlat9;
        let x_1158 : vec2<f32> = ((vec2<f32>(x_1150.x, x_1150.y) * vec2<f32>(x_1153.x, x_1153.y)) + vec2<f32>(x_1156.x, x_1156.y));
        let x_1159 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1162 : vec4<f32> = u_xlat7;
        let x_1164 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1162.x, x_1162.x, x_1162.x, x_1162.x) * x_1164);
        let x_1167 : vec4<f32> = u_xlat7;
        let x_1169 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1167.y, x_1167.y, x_1167.y, x_1167.y) * x_1169);
        let x_1172 : vec4<f32> = u_xlat7;
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1172.z, x_1172.z, x_1172.z, x_1172.z) * x_1174);
        let x_1176 : vec4<f32> = u_xlat7;
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1176.w, x_1176.w, x_1176.w, x_1176.w) * x_1178);
        let x_1181 : vec4<f32> = u_xlat12;
        let x_1182 : vec2<f32> = vec2<f32>(x_1181.x, x_1181.y);
        let x_1184 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1182.x, x_1182.y, x_1184);
        let x_1191 : vec3<f32> = txVec13;
        let x_1193 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1191.xy, x_1191.z);
        u_xlat65 = x_1193;
        let x_1195 : vec4<f32> = u_xlat12;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.z, x_1195.w);
        let x_1198 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec14;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1205.xy, x_1205.z);
        u_xlat8.x = x_1207;
        let x_1210 : f32 = u_xlat8.x;
        let x_1212 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1210 * x_1212);
        let x_1216 : f32 = u_xlat17.x;
        let x_1217 : f32 = u_xlat65;
        let x_1220 : f32 = u_xlat8.x;
        u_xlat65 = ((x_1216 * x_1217) + x_1220);
        let x_1223 : vec2<f32> = u_xlat46;
        let x_1225 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1223.x, x_1223.y, x_1225);
        let x_1232 : vec3<f32> = txVec15;
        let x_1234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1232.xy, x_1232.z);
        u_xlat46.x = x_1234;
        let x_1237 : f32 = u_xlat17.z;
        let x_1239 : f32 = u_xlat46.x;
        let x_1241 : f32 = u_xlat65;
        u_xlat65 = ((x_1237 * x_1239) + x_1241);
        let x_1244 : vec4<f32> = u_xlat15;
        let x_1245 : vec2<f32> = vec2<f32>(x_1244.x, x_1244.y);
        let x_1247 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
        let x_1254 : vec3<f32> = txVec16;
        let x_1256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1254.xy, x_1254.z);
        u_xlat46.x = x_1256;
        let x_1259 : f32 = u_xlat17.w;
        let x_1261 : f32 = u_xlat46.x;
        let x_1263 : f32 = u_xlat65;
        u_xlat65 = ((x_1259 * x_1261) + x_1263);
        let x_1266 : vec4<f32> = u_xlat13;
        let x_1267 : vec2<f32> = vec2<f32>(x_1266.x, x_1266.y);
        let x_1269 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1267.x, x_1267.y, x_1269);
        let x_1276 : vec3<f32> = txVec17;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1276.xy, x_1276.z);
        u_xlat46.x = x_1278;
        let x_1281 : f32 = u_xlat18.x;
        let x_1283 : f32 = u_xlat46.x;
        let x_1285 : f32 = u_xlat65;
        u_xlat65 = ((x_1281 * x_1283) + x_1285);
        let x_1288 : vec4<f32> = u_xlat13;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.z, x_1288.w);
        let x_1291 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1298 : vec3<f32> = txVec18;
        let x_1300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1298.xy, x_1298.z);
        u_xlat46.x = x_1300;
        let x_1303 : f32 = u_xlat18.y;
        let x_1305 : f32 = u_xlat46.x;
        let x_1307 : f32 = u_xlat65;
        u_xlat65 = ((x_1303 * x_1305) + x_1307);
        let x_1310 : vec4<f32> = u_xlat14;
        let x_1311 : vec2<f32> = vec2<f32>(x_1310.x, x_1310.y);
        let x_1313 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec19;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1320.xy, x_1320.z);
        u_xlat46.x = x_1322;
        let x_1325 : f32 = u_xlat18.z;
        let x_1327 : f32 = u_xlat46.x;
        let x_1329 : f32 = u_xlat65;
        u_xlat65 = ((x_1325 * x_1327) + x_1329);
        let x_1332 : vec4<f32> = u_xlat15;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.z, x_1332.w);
        let x_1335 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec20;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1342.xy, x_1342.z);
        u_xlat46.x = x_1344;
        let x_1347 : f32 = u_xlat18.w;
        let x_1349 : f32 = u_xlat46.x;
        let x_1351 : f32 = u_xlat65;
        u_xlat65 = ((x_1347 * x_1349) + x_1351);
        let x_1354 : vec4<f32> = u_xlat16;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.x, x_1354.y);
        let x_1357 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec21;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1364.xy, x_1364.z);
        u_xlat46.x = x_1366;
        let x_1369 : f32 = u_xlat19.x;
        let x_1371 : f32 = u_xlat46.x;
        let x_1373 : f32 = u_xlat65;
        u_xlat65 = ((x_1369 * x_1371) + x_1373);
        let x_1376 : vec4<f32> = u_xlat16;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.z, x_1376.w);
        let x_1379 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec22;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1386.xy, x_1386.z);
        u_xlat46.x = x_1388;
        let x_1391 : f32 = u_xlat19.y;
        let x_1393 : f32 = u_xlat46.x;
        let x_1395 : f32 = u_xlat65;
        u_xlat65 = ((x_1391 * x_1393) + x_1395);
        let x_1398 : vec3<f32> = u_xlat28;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.x, x_1398.y);
        let x_1401 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec23;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1408.xy, x_1408.z);
        u_xlat46.x = x_1410;
        let x_1413 : f32 = u_xlat19.z;
        let x_1415 : f32 = u_xlat46.x;
        let x_1417 : f32 = u_xlat65;
        u_xlat65 = ((x_1413 * x_1415) + x_1417);
        let x_1420 : vec2<f32> = u_xlat54;
        let x_1422 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec24;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1429.xy, x_1429.z);
        u_xlat46.x = x_1431;
        let x_1434 : f32 = u_xlat19.w;
        let x_1436 : f32 = u_xlat46.x;
        let x_1438 : f32 = u_xlat65;
        u_xlat65 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat11;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.x, x_1441.y);
        let x_1444 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec25;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1451.xy, x_1451.z);
        u_xlat46.x = x_1453;
        let x_1456 : f32 = u_xlat7.x;
        let x_1458 : f32 = u_xlat46.x;
        let x_1460 : f32 = u_xlat65;
        u_xlat65 = ((x_1456 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat11;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.z, x_1463.w);
        let x_1466 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec26;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1473.xy, x_1473.z);
        u_xlat46.x = x_1475;
        let x_1478 : f32 = u_xlat7.y;
        let x_1480 : f32 = u_xlat46.x;
        let x_1482 : f32 = u_xlat65;
        u_xlat65 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec2<f32> = u_xlat49;
        let x_1487 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec27;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1494.xy, x_1494.z);
        u_xlat46.x = x_1496;
        let x_1499 : f32 = u_xlat7.z;
        let x_1501 : f32 = u_xlat46.x;
        let x_1503 : f32 = u_xlat65;
        u_xlat65 = ((x_1499 * x_1501) + x_1503);
        let x_1506 : vec4<f32> = u_xlat6;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.x, x_1506.y);
        let x_1509 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec28;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1516.xy, x_1516.z);
        u_xlat6.x = x_1518;
        let x_1521 : f32 = u_xlat7.w;
        let x_1523 : f32 = u_xlat6.x;
        let x_1525 : f32 = u_xlat65;
        u_xlat64 = ((x_1521 * x_1523) + x_1525);
      }
    }
  } else {
    let x_1529 : vec4<f32> = vs_TEXCOORD8;
    let x_1530 : vec2<f32> = vec2<f32>(x_1529.x, x_1529.y);
    let x_1532 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
    let x_1539 : vec3<f32> = txVec29;
    let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1539.xy, x_1539.z);
    u_xlat64 = x_1541;
  }
  let x_1543 : f32 = x_281.x_MainLightShadowParams.x;
  u_xlat65 = (-(x_1543) + 1.0f);
  let x_1546 : f32 = u_xlat64;
  let x_1548 : f32 = x_281.x_MainLightShadowParams.x;
  let x_1550 : f32 = u_xlat65;
  u_xlat64 = ((x_1546 * x_1548) + x_1550);
  let x_1553 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (0.0f >= x_1553);
  let x_1557 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_1557 >= 1.0f);
  let x_1559 : bool = u_xlatb65;
  let x_1560 : bool = u_xlatb6;
  u_xlatb65 = (x_1559 | x_1560);
  let x_1562 : bool = u_xlatb65;
  let x_1563 : f32 = u_xlat64;
  u_xlat64 = select(x_1563, 1.0f, x_1562);
  let x_1565 : vec3<f32> = vs_TEXCOORD7;
  let x_1567 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1569 : vec3<f32> = (x_1565 + -(x_1567));
  let x_1570 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1570.w);
  let x_1572 : vec4<f32> = u_xlat6;
  let x_1574 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_1572.x, x_1572.y, x_1572.z), vec3<f32>(x_1574.x, x_1574.y, x_1574.z));
  let x_1577 : f32 = u_xlat65;
  let x_1579 : f32 = x_281.x_MainLightShadowParams.z;
  let x_1582 : f32 = x_281.x_MainLightShadowParams.w;
  u_xlat65 = ((x_1577 * x_1579) + x_1582);
  let x_1584 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1584, 0.0f, 1.0f);
  let x_1586 : f32 = u_xlat64;
  u_xlat6.x = (-(x_1586) + 1.0f);
  let x_1590 : f32 = u_xlat65;
  let x_1592 : f32 = u_xlat6.x;
  let x_1594 : f32 = u_xlat64;
  u_xlat64 = ((x_1590 * x_1592) + x_1594);
  let x_1596 : f32 = u_xlat44;
  let x_1600 : vec4<f32> = x_44.x_MainLightColor;
  let x_1602 : vec3<f32> = (vec3<f32>(x_1596, x_1596, x_1596) * vec3<f32>(x_1600.x, x_1600.y, x_1600.z));
  let x_1603 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
  let x_1605 : vec3<f32> = u_xlat3;
  let x_1607 : vec3<f32> = u_xlat21;
  u_xlat65 = dot(-(x_1605), x_1607);
  let x_1609 : f32 = u_xlat65;
  let x_1610 : f32 = u_xlat65;
  u_xlat65 = (x_1609 + x_1610);
  let x_1612 : vec3<f32> = u_xlat21;
  let x_1613 : f32 = u_xlat65;
  let x_1617 : vec3<f32> = u_xlat3;
  let x_1619 : vec3<f32> = ((x_1612 * -(vec3<f32>(x_1613, x_1613, x_1613))) + -(x_1617));
  let x_1620 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1619.x, x_1619.y, x_1619.z, x_1620.w);
  let x_1622 : vec3<f32> = u_xlat21;
  let x_1623 : vec3<f32> = u_xlat3;
  u_xlat65 = dot(x_1622, x_1623);
  let x_1625 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1625, 0.0f, 1.0f);
  let x_1627 : f32 = u_xlat65;
  u_xlat65 = (-(x_1627) + 1.0f);
  let x_1630 : f32 = u_xlat65;
  let x_1631 : f32 = u_xlat65;
  u_xlat65 = (x_1630 * x_1631);
  let x_1633 : f32 = u_xlat65;
  let x_1634 : f32 = u_xlat65;
  u_xlat65 = (x_1633 * x_1634);
  let x_1637 : f32 = u_xlat1;
  u_xlat66 = ((-(x_1637) * 0.699999988f) + 1.700000048f);
  let x_1643 : f32 = u_xlat1;
  let x_1644 : f32 = u_xlat66;
  u_xlat1 = (x_1643 * x_1644);
  let x_1646 : f32 = u_xlat1;
  u_xlat1 = (x_1646 * 6.0f);
  let x_1657 : vec4<f32> = u_xlat7;
  let x_1659 : f32 = u_xlat1;
  let x_1660 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1657.x, x_1657.y, x_1657.z), x_1659);
  u_xlat7 = x_1660;
  let x_1662 : f32 = u_xlat7.w;
  u_xlat1 = (x_1662 + -1.0f);
  let x_1669 : f32 = x_1667.unity_SpecCube0_HDR.w;
  let x_1670 : f32 = u_xlat1;
  u_xlat1 = ((x_1669 * x_1670) + 1.0f);
  let x_1673 : f32 = u_xlat1;
  u_xlat1 = max(x_1673, 0.0f);
  let x_1675 : f32 = u_xlat1;
  u_xlat1 = log2(x_1675);
  let x_1677 : f32 = u_xlat1;
  let x_1679 : f32 = x_1667.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1677 * x_1679);
  let x_1681 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1681);
  let x_1683 : f32 = u_xlat1;
  let x_1685 : f32 = x_1667.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1683 * x_1685);
  let x_1687 : vec4<f32> = u_xlat7;
  let x_1689 : f32 = u_xlat1;
  let x_1691 : vec3<f32> = (vec3<f32>(x_1687.x, x_1687.y, x_1687.z) * vec3<f32>(x_1689, x_1689, x_1689));
  let x_1692 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
  let x_1694 : f32 = u_xlat62;
  let x_1696 : f32 = u_xlat62;
  let x_1700 : vec2<f32> = ((vec2<f32>(x_1694, x_1694) * vec2<f32>(x_1696, x_1696)) + vec2<f32>(-1.0f, 1.0f));
  let x_1701 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1700.x, x_1700.y, x_1701.z, x_1701.w);
  let x_1704 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1704);
  let x_1706 : vec4<f32> = u_xlat0;
  let x_1709 : f32 = u_xlat60;
  u_xlat28 = (-(vec3<f32>(x_1706.x, x_1706.y, x_1706.z)) + vec3<f32>(x_1709, x_1709, x_1709));
  let x_1712 : f32 = u_xlat65;
  let x_1714 : vec3<f32> = u_xlat28;
  let x_1716 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1712, x_1712, x_1712) * x_1714) + vec3<f32>(x_1716.x, x_1716.y, x_1716.z));
  let x_1719 : f32 = u_xlat1;
  let x_1721 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1719, x_1719, x_1719) * x_1721);
  let x_1723 : vec4<f32> = u_xlat7;
  let x_1725 : vec3<f32> = u_xlat28;
  let x_1726 : vec3<f32> = (vec3<f32>(x_1723.x, x_1723.y, x_1723.z) * x_1725);
  let x_1727 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1726.x, x_1726.y, x_1726.z, x_1727.w);
  let x_1729 : vec3<f32> = u_xlat2;
  let x_1730 : vec3<f32> = u_xlat5;
  let x_1732 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_1729 * x_1730) + vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
  let x_1735 : f32 = u_xlat64;
  let x_1738 : f32 = x_1667.unity_LightData.z;
  u_xlat60 = (x_1735 * x_1738);
  let x_1740 : vec3<f32> = u_xlat21;
  let x_1742 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_1740, vec3<f32>(x_1742.x, x_1742.y, x_1742.z));
  let x_1745 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1745, 0.0f, 1.0f);
  let x_1747 : f32 = u_xlat60;
  let x_1748 : f32 = u_xlat1;
  u_xlat60 = (x_1747 * x_1748);
  let x_1750 : f32 = u_xlat60;
  let x_1752 : vec4<f32> = u_xlat6;
  let x_1754 : vec3<f32> = (vec3<f32>(x_1750, x_1750, x_1750) * vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
  let x_1755 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
  let x_1757 : vec3<f32> = u_xlat3;
  let x_1759 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1761 : vec3<f32> = (x_1757 + vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
  let x_1762 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1762.w);
  let x_1764 : vec4<f32> = u_xlat7;
  let x_1766 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1764.x, x_1764.y, x_1764.z), vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
  let x_1769 : f32 = u_xlat60;
  u_xlat60 = max(x_1769, 1.17549435e-37f);
  let x_1772 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1772);
  let x_1774 : f32 = u_xlat60;
  let x_1776 : vec4<f32> = u_xlat7;
  let x_1778 : vec3<f32> = (vec3<f32>(x_1774, x_1774, x_1774) * vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
  let x_1779 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
  let x_1781 : vec3<f32> = u_xlat21;
  let x_1782 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1781, vec3<f32>(x_1782.x, x_1782.y, x_1782.z));
  let x_1785 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1785, 0.0f, 1.0f);
  let x_1788 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1790 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1788.x, x_1788.y, x_1788.z), vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
  let x_1793 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1793, 0.0f, 1.0f);
  let x_1795 : f32 = u_xlat60;
  let x_1796 : f32 = u_xlat60;
  u_xlat60 = (x_1795 * x_1796);
  let x_1798 : f32 = u_xlat60;
  let x_1800 : f32 = u_xlat8.x;
  u_xlat60 = ((x_1798 * x_1800) + 1.000010014f);
  let x_1804 : f32 = u_xlat1;
  let x_1805 : f32 = u_xlat1;
  u_xlat1 = (x_1804 * x_1805);
  let x_1807 : f32 = u_xlat60;
  let x_1808 : f32 = u_xlat60;
  u_xlat60 = (x_1807 * x_1808);
  let x_1810 : f32 = u_xlat1;
  u_xlat1 = max(x_1810, 0.100000001f);
  let x_1813 : f32 = u_xlat60;
  let x_1814 : f32 = u_xlat1;
  u_xlat60 = (x_1813 * x_1814);
  let x_1816 : f32 = u_xlat63;
  let x_1817 : f32 = u_xlat60;
  u_xlat60 = (x_1816 * x_1817);
  let x_1819 : f32 = u_xlat24;
  let x_1820 : f32 = u_xlat60;
  u_xlat60 = (x_1819 / x_1820);
  let x_1822 : vec4<f32> = u_xlat0;
  let x_1824 : f32 = u_xlat60;
  let x_1827 : vec3<f32> = u_xlat5;
  let x_1828 : vec3<f32> = ((vec3<f32>(x_1822.x, x_1822.y, x_1822.z) * vec3<f32>(x_1824, x_1824, x_1824)) + x_1827);
  let x_1829 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);
  let x_1831 : vec4<f32> = u_xlat6;
  let x_1833 : vec4<f32> = u_xlat7;
  let x_1835 : vec3<f32> = (vec3<f32>(x_1831.x, x_1831.y, x_1831.z) * vec3<f32>(x_1833.x, x_1833.y, x_1833.z));
  let x_1836 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
  let x_1839 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1841 : f32 = x_1667.unity_LightData.y;
  u_xlat60 = min(x_1839, x_1841);
  let x_1845 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_1845));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1857 : u32 = u_xlatu_loop_1;
    let x_1858 : u32 = u_xlatu60;
    if ((x_1857 < x_1858)) {
    } else {
      break;
    }
    let x_1861 : u32 = u_xlatu_loop_1;
    u_xlatu62 = (x_1861 >> 2u);
    let x_1865 : u32 = u_xlatu_loop_1;
    u_xlati64 = bitcast<i32>((x_1865 & 3u));
    let x_1868 : u32 = u_xlatu62;
    let x_1871 : vec4<f32> = x_1667.unity_LightIndices[bitcast<i32>(x_1868)];
    let x_1881 : i32 = u_xlati64;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1886 : vec4<u32> = indexable[x_1881];
    u_xlat62 = dot(x_1871, bitcast<vec4<f32>>(x_1886));
    let x_1890 : f32 = u_xlat62;
    u_xlati62 = i32(x_1890);
    let x_1892 : vec3<f32> = vs_TEXCOORD7;
    let x_1904 : i32 = u_xlati62;
    let x_1906 : vec4<f32> = x_1903.x_AdditionalLightsPosition[x_1904];
    let x_1909 : i32 = u_xlati62;
    let x_1911 : vec4<f32> = x_1903.x_AdditionalLightsPosition[x_1909];
    u_xlat28 = ((-(x_1892) * vec3<f32>(x_1906.w, x_1906.w, x_1906.w)) + vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
    let x_1914 : vec3<f32> = u_xlat28;
    let x_1915 : vec3<f32> = u_xlat28;
    u_xlat64 = dot(x_1914, x_1915);
    let x_1917 : f32 = u_xlat64;
    u_xlat64 = max(x_1917, 6.10351562e-05f);
    let x_1920 : f32 = u_xlat64;
    u_xlat65 = inverseSqrt(x_1920);
    let x_1922 : f32 = u_xlat65;
    let x_1924 : vec3<f32> = u_xlat28;
    let x_1925 : vec3<f32> = (vec3<f32>(x_1922, x_1922, x_1922) * x_1924);
    let x_1926 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1926.w);
    let x_1928 : f32 = u_xlat64;
    u_xlat66 = (1.0f / x_1928);
    let x_1930 : f32 = u_xlat64;
    let x_1931 : i32 = u_xlati62;
    let x_1933 : f32 = x_1903.x_AdditionalLightsAttenuation[x_1931].x;
    u_xlat64 = (x_1930 * x_1933);
    let x_1935 : f32 = u_xlat64;
    let x_1937 : f32 = u_xlat64;
    u_xlat64 = ((-(x_1935) * x_1937) + 1.0f);
    let x_1940 : f32 = u_xlat64;
    u_xlat64 = max(x_1940, 0.0f);
    let x_1942 : f32 = u_xlat64;
    let x_1943 : f32 = u_xlat64;
    u_xlat64 = (x_1942 * x_1943);
    let x_1945 : f32 = u_xlat64;
    let x_1946 : f32 = u_xlat66;
    u_xlat64 = (x_1945 * x_1946);
    let x_1948 : i32 = u_xlati62;
    let x_1950 : vec4<f32> = x_1903.x_AdditionalLightsSpotDir[x_1948];
    let x_1952 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_1950.x, x_1950.y, x_1950.z), vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1955 : f32 = u_xlat66;
    let x_1956 : i32 = u_xlati62;
    let x_1958 : f32 = x_1903.x_AdditionalLightsAttenuation[x_1956].z;
    let x_1960 : i32 = u_xlati62;
    let x_1962 : f32 = x_1903.x_AdditionalLightsAttenuation[x_1960].w;
    u_xlat66 = ((x_1955 * x_1958) + x_1962);
    let x_1964 : f32 = u_xlat66;
    u_xlat66 = clamp(x_1964, 0.0f, 1.0f);
    let x_1966 : f32 = u_xlat66;
    let x_1967 : f32 = u_xlat66;
    u_xlat66 = (x_1966 * x_1967);
    let x_1969 : f32 = u_xlat64;
    let x_1970 : f32 = u_xlat66;
    u_xlat64 = (x_1969 * x_1970);
    let x_1972 : f32 = u_xlat44;
    let x_1974 : i32 = u_xlati62;
    let x_1976 : vec4<f32> = x_1903.x_AdditionalLightsColor[x_1974];
    let x_1978 : vec3<f32> = (vec3<f32>(x_1972, x_1972, x_1972) * vec3<f32>(x_1976.x, x_1976.y, x_1976.z));
    let x_1979 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
    let x_1981 : vec3<f32> = u_xlat21;
    let x_1982 : vec4<f32> = u_xlat9;
    u_xlat62 = dot(x_1981, vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
    let x_1985 : f32 = u_xlat62;
    u_xlat62 = clamp(x_1985, 0.0f, 1.0f);
    let x_1987 : f32 = u_xlat62;
    let x_1988 : f32 = u_xlat64;
    u_xlat62 = (x_1987 * x_1988);
    let x_1990 : f32 = u_xlat62;
    let x_1992 : vec4<f32> = u_xlat10;
    let x_1994 : vec3<f32> = (vec3<f32>(x_1990, x_1990, x_1990) * vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
    let x_1995 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
    let x_1997 : vec3<f32> = u_xlat28;
    let x_1998 : f32 = u_xlat65;
    let x_2001 : vec3<f32> = u_xlat3;
    u_xlat28 = ((x_1997 * vec3<f32>(x_1998, x_1998, x_1998)) + x_2001);
    let x_2003 : vec3<f32> = u_xlat28;
    let x_2004 : vec3<f32> = u_xlat28;
    u_xlat62 = dot(x_2003, x_2004);
    let x_2006 : f32 = u_xlat62;
    u_xlat62 = max(x_2006, 1.17549435e-37f);
    let x_2008 : f32 = u_xlat62;
    u_xlat62 = inverseSqrt(x_2008);
    let x_2010 : f32 = u_xlat62;
    let x_2012 : vec3<f32> = u_xlat28;
    u_xlat28 = (vec3<f32>(x_2010, x_2010, x_2010) * x_2012);
    let x_2014 : vec3<f32> = u_xlat21;
    let x_2015 : vec3<f32> = u_xlat28;
    u_xlat62 = dot(x_2014, x_2015);
    let x_2017 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2017, 0.0f, 1.0f);
    let x_2019 : vec4<f32> = u_xlat9;
    let x_2021 : vec3<f32> = u_xlat28;
    u_xlat64 = dot(vec3<f32>(x_2019.x, x_2019.y, x_2019.z), x_2021);
    let x_2023 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2023, 0.0f, 1.0f);
    let x_2025 : f32 = u_xlat62;
    let x_2026 : f32 = u_xlat62;
    u_xlat62 = (x_2025 * x_2026);
    let x_2028 : f32 = u_xlat62;
    let x_2030 : f32 = u_xlat8.x;
    u_xlat62 = ((x_2028 * x_2030) + 1.000010014f);
    let x_2033 : f32 = u_xlat64;
    let x_2034 : f32 = u_xlat64;
    u_xlat64 = (x_2033 * x_2034);
    let x_2036 : f32 = u_xlat62;
    let x_2037 : f32 = u_xlat62;
    u_xlat62 = (x_2036 * x_2037);
    let x_2039 : f32 = u_xlat64;
    u_xlat64 = max(x_2039, 0.100000001f);
    let x_2041 : f32 = u_xlat62;
    let x_2042 : f32 = u_xlat64;
    u_xlat62 = (x_2041 * x_2042);
    let x_2044 : f32 = u_xlat63;
    let x_2045 : f32 = u_xlat62;
    u_xlat62 = (x_2044 * x_2045);
    let x_2047 : f32 = u_xlat24;
    let x_2048 : f32 = u_xlat62;
    u_xlat62 = (x_2047 / x_2048);
    let x_2050 : vec4<f32> = u_xlat0;
    let x_2052 : f32 = u_xlat62;
    let x_2055 : vec3<f32> = u_xlat5;
    u_xlat28 = ((vec3<f32>(x_2050.x, x_2050.y, x_2050.z) * vec3<f32>(x_2052, x_2052, x_2052)) + x_2055);
    let x_2057 : vec3<f32> = u_xlat28;
    let x_2058 : vec4<f32> = u_xlat10;
    let x_2061 : vec4<f32> = u_xlat7;
    let x_2063 : vec3<f32> = ((x_2057 * vec3<f32>(x_2058.x, x_2058.y, x_2058.z)) + vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
    let x_2064 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);

    continuing {
      let x_2066 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2066 + bitcast<u32>(1i));
    }
  }
  let x_2068 : vec3<f32> = u_xlat2;
  let x_2069 : vec3<f32> = u_xlat4;
  let x_2072 : vec4<f32> = u_xlat6;
  let x_2074 : vec3<f32> = ((x_2068 * vec3<f32>(x_2069.x, x_2069.x, x_2069.x)) + vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
  let x_2075 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
  let x_2079 : vec4<f32> = u_xlat7;
  let x_2081 : vec4<f32> = u_xlat0;
  let x_2083 : vec3<f32> = (vec3<f32>(x_2079.x, x_2079.y, x_2079.z) + vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
  let x_2084 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

