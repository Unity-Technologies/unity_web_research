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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_292 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_1658 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1816 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat20 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat58 : f32;
  var u_xlat59 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat60 : f32;
  var u_xlatb23 : bool;
  var u_xlat5 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb42 : bool;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat63 : f32;
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
  var u_xlat24 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb61 : bool;
  var x_1592 : f32;
  var u_xlat62 : f32;
  var u_xlatu5 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu25 : u32;
  var u_xlati44 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati25 : i32;
  var u_xlat44 : f32;
  var u_xlat64 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_2033 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat20;
  let x_83 : vec3<f32> = u_xlat20;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat20;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat20 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_107;
  let x_110 : bool = u_xlatb1;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat20;
    x_111 = x_114;
  } else {
    let x_116 : vec3<f32> = u_xlat2;
    x_111 = x_116;
  }
  let x_117 : vec3<f32> = x_111;
  u_xlat1 = x_117;
  let x_120 : vec3<f32> = vs_TEXCOORD2;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  u_xlat58 = dot(x_120, x_121);
  let x_123 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_123);
  let x_125 : f32 = u_xlat58;
  let x_127 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_125, x_125, x_125) * x_127);
  let x_129 : vec3<f32> = u_xlat1;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat58 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat58;
  u_xlat58 = max(x_132, 1.17549435e-37f);
  let x_135 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_135);
  let x_139 : f32 = vs_TEXCOORD1.y;
  let x_141 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat59 = (x_139 * x_141);
  let x_144 : f32 = x_44.unity_MatrixV[0i].z;
  let x_146 : f32 = vs_TEXCOORD1.x;
  let x_148 : f32 = u_xlat59;
  u_xlat59 = ((x_144 * x_146) + x_148);
  let x_151 : f32 = x_44.unity_MatrixV[2i].z;
  let x_153 : f32 = vs_TEXCOORD1.z;
  let x_155 : f32 = u_xlat59;
  u_xlat59 = ((x_151 * x_153) + x_155);
  let x_157 : f32 = u_xlat59;
  let x_160 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat59 = (x_157 + x_160);
  let x_162 : f32 = u_xlat59;
  let x_166 : f32 = x_44.x_ProjectionParams.y;
  u_xlat59 = (-(x_162) + -(x_166));
  let x_169 : f32 = u_xlat59;
  u_xlat59 = max(x_169, 0.0f);
  let x_171 : f32 = u_xlat59;
  let x_174 : f32 = x_44.unity_FogParams.x;
  u_xlat59 = (x_171 * x_174);
  let x_183 : vec2<f32> = vs_TEXCOORD7;
  let x_185 : f32 = x_44.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_183, x_185);
  u_xlat3 = x_186;
  let x_192 : vec2<f32> = vs_TEXCOORD7;
  let x_194 : f32 = x_44.x_GlobalMipBias.x;
  let x_195 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_192, x_194);
  u_xlat4 = vec3<f32>(x_195.x, x_195.y, x_195.z);
  let x_197 : vec4<f32> = u_xlat3;
  let x_201 : vec3<f32> = (vec3<f32>(x_197.x, x_197.y, x_197.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_204 : vec3<f32> = u_xlat2;
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_204, vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_210 : f32 = u_xlat3.x;
  u_xlat3.x = (x_210 + 0.5f);
  let x_214 : vec4<f32> = u_xlat3;
  let x_216 : vec3<f32> = u_xlat4;
  let x_217 : vec3<f32> = (vec3<f32>(x_214.x, x_214.x, x_214.x) * x_216);
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_222 : f32 = u_xlat3.w;
  u_xlat60 = max(x_222, 0.0001f);
  let x_225 : vec4<f32> = u_xlat3;
  let x_227 : f32 = u_xlat60;
  let x_229 : vec3<f32> = (vec3<f32>(x_225.x, x_225.y, x_225.z) / vec3<f32>(x_227, x_227, x_227));
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_234 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_235 : vec2<f32> = vec2<f32>(x_234.x, x_234.y);
  let x_239 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_235.x, x_235.y));
  let x_240 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_239.x, x_239.y, x_240.z);
  let x_242 : vec3<f32> = u_xlat4;
  let x_244 : vec4<f32> = hlslcc_FragCoord;
  let x_246 : vec2<f32> = (vec2<f32>(x_242.x, x_242.y) * vec2<f32>(x_244.x, x_244.y));
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_246.x, x_246.y, x_247.z);
  let x_250 : f32 = u_xlat4.y;
  let x_253 : f32 = x_44.x_ScaleBiasRt.x;
  let x_256 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_250 * x_253) + x_256);
  let x_258 : f32 = u_xlat60;
  u_xlat4.z = (-(x_258) + 1.0f);
  let x_267 : vec3<f32> = u_xlat4;
  let x_270 : f32 = x_44.x_GlobalMipBias.x;
  let x_271 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_267.x, x_267.z), x_270);
  u_xlat60 = x_271.x;
  let x_273 : f32 = u_xlat60;
  u_xlat4.x = (x_273 + -1.0f);
  let x_279 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_281 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_279 * x_281) + 1.0f);
  let x_285 : f32 = u_xlat60;
  u_xlat60 = min(x_285, 1.0f);
  let x_294 : f32 = x_292.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_294);
  let x_296 : bool = u_xlatb23;
  if (x_296) {
    let x_300 : f32 = x_292.x_MainLightShadowParams.y;
    u_xlatb23 = (x_300 == 1.0f);
    let x_302 : bool = u_xlatb23;
    if (x_302) {
      let x_307 : vec4<f32> = vs_TEXCOORD6;
      let x_310 : vec4<f32> = x_292.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_307.x, x_307.y, x_307.x, x_307.y) + x_310);
      let x_313 : vec4<f32> = u_xlat5;
      let x_314 : vec2<f32> = vec2<f32>(x_313.x, x_313.y);
      let x_316 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_314.x, x_314.y, x_316);
      let x_329 : vec3<f32> = txVec0;
      let x_331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_329.xy, x_329.z);
      u_xlat6.x = x_331;
      let x_334 : vec4<f32> = u_xlat5;
      let x_335 : vec2<f32> = vec2<f32>(x_334.z, x_334.w);
      let x_337 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_335.x, x_335.y, x_337);
      let x_344 : vec3<f32> = txVec1;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_344.xy, x_344.z);
      u_xlat6.y = x_346;
      let x_348 : vec4<f32> = vs_TEXCOORD6;
      let x_351 : vec4<f32> = x_292.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_348.x, x_348.y, x_348.x, x_348.y) + x_351);
      let x_354 : vec4<f32> = u_xlat5;
      let x_355 : vec2<f32> = vec2<f32>(x_354.x, x_354.y);
      let x_357 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_355.x, x_355.y, x_357);
      let x_364 : vec3<f32> = txVec2;
      let x_366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_364.xy, x_364.z);
      u_xlat6.z = x_366;
      let x_369 : vec4<f32> = u_xlat5;
      let x_370 : vec2<f32> = vec2<f32>(x_369.z, x_369.w);
      let x_372 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec3;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_379.xy, x_379.z);
      u_xlat6.w = x_381;
      let x_384 : vec4<f32> = u_xlat6;
      u_xlat23.x = dot(x_384, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_392 : f32 = x_292.x_MainLightShadowParams.y;
      u_xlatb42 = (x_392 == 2.0f);
      let x_395 : bool = u_xlatb42;
      if (x_395) {
        let x_400 : vec4<f32> = vs_TEXCOORD6;
        let x_403 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        u_xlat42 = ((vec2<f32>(x_400.x, x_400.y) * vec2<f32>(x_403.z, x_403.w)) + vec2<f32>(0.5f, 0.5f));
        let x_408 : vec2<f32> = u_xlat42;
        u_xlat42 = floor(x_408);
        let x_410 : vec4<f32> = vs_TEXCOORD6;
        let x_413 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_416 : vec2<f32> = u_xlat42;
        let x_418 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_413.z, x_413.w)) + -(x_416));
        let x_419 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
        let x_421 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_421.x, x_421.x, x_421.y, x_421.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_426 : vec4<f32> = u_xlat6;
        let x_428 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_426.x, x_426.x, x_426.z, x_426.z) * vec4<f32>(x_428.x, x_428.x, x_428.z, x_428.z));
        let x_432 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_432.y, x_432.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_437 : vec4<f32> = u_xlat7;
        let x_440 : vec4<f32> = u_xlat5;
        let x_443 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_440.x, x_440.y)));
        let x_444 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_443.x, x_444.y, x_443.y, x_444.w);
        let x_446 : vec4<f32> = u_xlat5;
        let x_449 : vec2<f32> = (-(vec2<f32>(x_446.x, x_446.y)) + vec2<f32>(1.0f, 1.0f));
        let x_450 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
        let x_453 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_453.x, x_453.y), vec2<f32>(0.0f, 0.0f));
        let x_457 : vec2<f32> = u_xlat45;
        let x_459 : vec2<f32> = u_xlat45;
        let x_461 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_457) * x_459) + vec2<f32>(x_461.x, x_461.y));
        let x_464 : vec4<f32> = u_xlat5;
        let x_466 : vec2<f32> = max(vec2<f32>(x_464.x, x_464.y), vec2<f32>(0.0f, 0.0f));
        let x_467 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
        let x_469 : vec4<f32> = u_xlat5;
        let x_472 : vec4<f32> = u_xlat5;
        let x_475 : vec4<f32> = u_xlat6;
        let x_477 : vec2<f32> = ((-(vec2<f32>(x_469.x, x_469.y)) * vec2<f32>(x_472.x, x_472.y)) + vec2<f32>(x_475.y, x_475.w));
        let x_478 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
        let x_480 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_480 + vec2<f32>(1.0f, 1.0f));
        let x_482 : vec4<f32> = u_xlat5;
        let x_484 : vec2<f32> = (vec2<f32>(x_482.x, x_482.y) + vec2<f32>(1.0f, 1.0f));
        let x_485 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_488 : vec4<f32> = u_xlat6;
        let x_492 : vec2<f32> = (vec2<f32>(x_488.x, x_488.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_493 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_496 : vec4<f32> = u_xlat7;
        let x_498 : vec2<f32> = (vec2<f32>(x_496.x, x_496.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_499 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_498.x, x_498.y, x_499.z, x_499.w);
        let x_501 : vec2<f32> = u_xlat45;
        let x_502 : vec2<f32> = (x_501 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_503 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
        let x_506 : vec4<f32> = u_xlat5;
        let x_508 : vec2<f32> = (vec2<f32>(x_506.x, x_506.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_509 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
        let x_511 : vec4<f32> = u_xlat6;
        let x_513 : vec2<f32> = (vec2<f32>(x_511.y, x_511.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_514 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
        let x_517 : f32 = u_xlat7.x;
        u_xlat8.z = x_517;
        let x_520 : f32 = u_xlat5.x;
        u_xlat8.w = x_520;
        let x_523 : f32 = u_xlat10.x;
        u_xlat9.z = x_523;
        let x_526 : f32 = u_xlat43.x;
        u_xlat9.w = x_526;
        let x_528 : vec4<f32> = u_xlat8;
        let x_530 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_528.z, x_528.w, x_528.x, x_528.z) + vec4<f32>(x_530.z, x_530.w, x_530.x, x_530.z));
        let x_534 : f32 = u_xlat8.y;
        u_xlat7.z = x_534;
        let x_537 : f32 = u_xlat5.y;
        u_xlat7.w = x_537;
        let x_540 : f32 = u_xlat9.y;
        u_xlat10.z = x_540;
        let x_543 : f32 = u_xlat43.y;
        u_xlat10.w = x_543;
        let x_545 : vec4<f32> = u_xlat7;
        let x_547 : vec4<f32> = u_xlat10;
        let x_549 : vec3<f32> = (vec3<f32>(x_545.z, x_545.y, x_545.w) + vec3<f32>(x_547.z, x_547.y, x_547.w));
        let x_550 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
        let x_552 : vec4<f32> = u_xlat9;
        let x_554 : vec4<f32> = u_xlat6;
        let x_556 : vec3<f32> = (vec3<f32>(x_552.x, x_552.z, x_552.w) / vec3<f32>(x_554.z, x_554.w, x_554.y));
        let x_557 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
        let x_559 : vec4<f32> = u_xlat7;
        let x_564 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_565 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat10;
        let x_569 : vec4<f32> = u_xlat5;
        let x_571 : vec3<f32> = (vec3<f32>(x_567.z, x_567.y, x_567.w) / vec3<f32>(x_569.x, x_569.y, x_569.z));
        let x_572 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
        let x_574 : vec4<f32> = u_xlat8;
        let x_576 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_577 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat7;
        let x_582 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_584 : vec3<f32> = (vec3<f32>(x_579.y, x_579.x, x_579.z) * vec3<f32>(x_582.x, x_582.x, x_582.x));
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat8;
        let x_590 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_592 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) * vec3<f32>(x_590.y, x_590.y, x_590.y));
        let x_593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
        let x_596 : f32 = u_xlat8.x;
        u_xlat7.w = x_596;
        let x_598 : vec2<f32> = u_xlat42;
        let x_601 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_604 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_598.x, x_598.y, x_598.x, x_598.y) * vec4<f32>(x_601.x, x_601.y, x_601.x, x_601.y)) + vec4<f32>(x_604.y, x_604.w, x_604.x, x_604.w));
        let x_607 : vec2<f32> = u_xlat42;
        let x_609 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_612 : vec4<f32> = u_xlat7;
        let x_614 : vec2<f32> = ((x_607 * vec2<f32>(x_609.x, x_609.y)) + vec2<f32>(x_612.z, x_612.w));
        let x_615 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_618 : f32 = u_xlat7.y;
        u_xlat8.w = x_618;
        let x_620 : vec4<f32> = u_xlat8;
        let x_621 : vec2<f32> = vec2<f32>(x_620.y, x_620.z);
        let x_622 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_622.x, x_621.x, x_622.z, x_621.y);
        let x_625 : vec2<f32> = u_xlat42;
        let x_628 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_631 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y) * vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y)) + vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.y));
        let x_634 : vec2<f32> = u_xlat42;
        let x_637 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_640 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) * vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y)) + vec4<f32>(x_640.w, x_640.y, x_640.w, x_640.z));
        let x_643 : vec2<f32> = u_xlat42;
        let x_646 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_649 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y) * vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y)) + vec4<f32>(x_649.x, x_649.w, x_649.z, x_649.w));
        let x_653 : vec4<f32> = u_xlat5;
        let x_655 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_653.x, x_653.x, x_653.x, x_653.y) * vec4<f32>(x_655.z, x_655.w, x_655.y, x_655.z));
        let x_659 : vec4<f32> = u_xlat5;
        let x_661 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_659.y, x_659.y, x_659.z, x_659.z) * x_661);
        let x_664 : f32 = u_xlat5.z;
        let x_666 : f32 = u_xlat6.y;
        u_xlat42.x = (x_664 * x_666);
        let x_670 : vec4<f32> = u_xlat9;
        let x_671 : vec2<f32> = vec2<f32>(x_670.x, x_670.y);
        let x_673 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_671.x, x_671.y, x_673);
        let x_681 : vec3<f32> = txVec4;
        let x_683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_681.xy, x_681.z);
        u_xlat61 = x_683;
        let x_685 : vec4<f32> = u_xlat9;
        let x_686 : vec2<f32> = vec2<f32>(x_685.z, x_685.w);
        let x_688 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_686.x, x_686.y, x_688);
        let x_695 : vec3<f32> = txVec5;
        let x_697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_695.xy, x_695.z);
        u_xlat5.x = x_697;
        let x_700 : f32 = u_xlat5.x;
        let x_702 : f32 = u_xlat12.y;
        u_xlat5.x = (x_700 * x_702);
        let x_706 : f32 = u_xlat12.x;
        let x_707 : f32 = u_xlat61;
        let x_710 : f32 = u_xlat5.x;
        u_xlat61 = ((x_706 * x_707) + x_710);
        let x_713 : vec4<f32> = u_xlat10;
        let x_714 : vec2<f32> = vec2<f32>(x_713.x, x_713.y);
        let x_716 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_714.x, x_714.y, x_716);
        let x_723 : vec3<f32> = txVec6;
        let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_723.xy, x_723.z);
        u_xlat5.x = x_725;
        let x_728 : f32 = u_xlat12.z;
        let x_730 : f32 = u_xlat5.x;
        let x_732 : f32 = u_xlat61;
        u_xlat61 = ((x_728 * x_730) + x_732);
        let x_735 : vec4<f32> = u_xlat8;
        let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
        let x_738 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec7;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_745.xy, x_745.z);
        u_xlat5.x = x_747;
        let x_750 : f32 = u_xlat12.w;
        let x_752 : f32 = u_xlat5.x;
        let x_754 : f32 = u_xlat61;
        u_xlat61 = ((x_750 * x_752) + x_754);
        let x_757 : vec4<f32> = u_xlat11;
        let x_758 : vec2<f32> = vec2<f32>(x_757.x, x_757.y);
        let x_760 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_758.x, x_758.y, x_760);
        let x_767 : vec3<f32> = txVec8;
        let x_769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_767.xy, x_767.z);
        u_xlat5.x = x_769;
        let x_772 : f32 = u_xlat13.x;
        let x_774 : f32 = u_xlat5.x;
        let x_776 : f32 = u_xlat61;
        u_xlat61 = ((x_772 * x_774) + x_776);
        let x_779 : vec4<f32> = u_xlat11;
        let x_780 : vec2<f32> = vec2<f32>(x_779.z, x_779.w);
        let x_782 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_780.x, x_780.y, x_782);
        let x_789 : vec3<f32> = txVec9;
        let x_791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_789.xy, x_789.z);
        u_xlat5.x = x_791;
        let x_794 : f32 = u_xlat13.y;
        let x_796 : f32 = u_xlat5.x;
        let x_798 : f32 = u_xlat61;
        u_xlat61 = ((x_794 * x_796) + x_798);
        let x_801 : vec4<f32> = u_xlat8;
        let x_802 : vec2<f32> = vec2<f32>(x_801.z, x_801.w);
        let x_804 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_802.x, x_802.y, x_804);
        let x_811 : vec3<f32> = txVec10;
        let x_813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_811.xy, x_811.z);
        u_xlat5.x = x_813;
        let x_816 : f32 = u_xlat13.z;
        let x_818 : f32 = u_xlat5.x;
        let x_820 : f32 = u_xlat61;
        u_xlat61 = ((x_816 * x_818) + x_820);
        let x_823 : vec4<f32> = u_xlat7;
        let x_824 : vec2<f32> = vec2<f32>(x_823.x, x_823.y);
        let x_826 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_824.x, x_824.y, x_826);
        let x_833 : vec3<f32> = txVec11;
        let x_835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_833.xy, x_833.z);
        u_xlat5.x = x_835;
        let x_838 : f32 = u_xlat13.w;
        let x_840 : f32 = u_xlat5.x;
        let x_842 : f32 = u_xlat61;
        u_xlat61 = ((x_838 * x_840) + x_842);
        let x_845 : vec4<f32> = u_xlat7;
        let x_846 : vec2<f32> = vec2<f32>(x_845.z, x_845.w);
        let x_848 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_855 : vec3<f32> = txVec12;
        let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_855.xy, x_855.z);
        u_xlat5.x = x_857;
        let x_860 : f32 = u_xlat42.x;
        let x_862 : f32 = u_xlat5.x;
        let x_864 : f32 = u_xlat61;
        u_xlat23.x = ((x_860 * x_862) + x_864);
      } else {
        let x_868 : vec4<f32> = vs_TEXCOORD6;
        let x_871 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        u_xlat42 = ((vec2<f32>(x_868.x, x_868.y) * vec2<f32>(x_871.z, x_871.w)) + vec2<f32>(0.5f, 0.5f));
        let x_875 : vec2<f32> = u_xlat42;
        u_xlat42 = floor(x_875);
        let x_877 : vec4<f32> = vs_TEXCOORD6;
        let x_880 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_883 : vec2<f32> = u_xlat42;
        let x_885 : vec2<f32> = ((vec2<f32>(x_877.x, x_877.y) * vec2<f32>(x_880.z, x_880.w)) + -(x_883));
        let x_886 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
        let x_888 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_888.x, x_888.x, x_888.y, x_888.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_891 : vec4<f32> = u_xlat6;
        let x_893 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_891.x, x_891.x, x_891.z, x_891.z) * vec4<f32>(x_893.x, x_893.x, x_893.z, x_893.z));
        let x_896 : vec4<f32> = u_xlat7;
        let x_900 : vec2<f32> = (vec2<f32>(x_896.y, x_896.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_901 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_901.x, x_900.x, x_901.z, x_900.y);
        let x_903 : vec4<f32> = u_xlat7;
        let x_906 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_903.x, x_903.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_906.x, x_906.y)));
        let x_910 : vec4<f32> = u_xlat5;
        let x_913 : vec2<f32> = (-(vec2<f32>(x_910.x, x_910.y)) + vec2<f32>(1.0f, 1.0f));
        let x_914 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_913.x, x_914.y, x_913.y, x_914.w);
        let x_916 : vec4<f32> = u_xlat5;
        let x_918 : vec2<f32> = min(vec2<f32>(x_916.x, x_916.y), vec2<f32>(0.0f, 0.0f));
        let x_919 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
        let x_921 : vec4<f32> = u_xlat7;
        let x_924 : vec4<f32> = u_xlat7;
        let x_927 : vec4<f32> = u_xlat6;
        let x_929 : vec2<f32> = ((-(vec2<f32>(x_921.x, x_921.y)) * vec2<f32>(x_924.x, x_924.y)) + vec2<f32>(x_927.x, x_927.z));
        let x_930 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_929.x, x_930.y, x_929.y, x_930.w);
        let x_932 : vec4<f32> = u_xlat5;
        let x_934 : vec2<f32> = max(vec2<f32>(x_932.x, x_932.y), vec2<f32>(0.0f, 0.0f));
        let x_935 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_935.w);
        let x_937 : vec4<f32> = u_xlat7;
        let x_940 : vec4<f32> = u_xlat7;
        let x_943 : vec4<f32> = u_xlat6;
        let x_945 : vec2<f32> = ((-(vec2<f32>(x_937.x, x_937.y)) * vec2<f32>(x_940.x, x_940.y)) + vec2<f32>(x_943.y, x_943.w));
        let x_946 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_946.x, x_945.x, x_946.z, x_945.y);
        let x_948 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_948 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_952 : f32 = u_xlat6.y;
        u_xlat7.z = (x_952 * 0.081632003f);
        let x_956 : vec2<f32> = u_xlat43;
        let x_959 : vec2<f32> = (vec2<f32>(x_956.y, x_956.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_960 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_962.x, x_962.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_966 : f32 = u_xlat6.w;
        u_xlat9.z = (x_966 * 0.081632003f);
        let x_970 : f32 = u_xlat9.y;
        u_xlat7.x = x_970;
        let x_972 : vec4<f32> = u_xlat5;
        let x_979 : vec2<f32> = ((vec2<f32>(x_972.x, x_972.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_980 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_980.x, x_979.x, x_980.z, x_979.y);
        let x_982 : vec4<f32> = u_xlat5;
        let x_986 : vec2<f32> = ((vec2<f32>(x_982.x, x_982.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_987 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_986.x, x_987.y, x_986.y, x_987.w);
        let x_990 : f32 = u_xlat43.x;
        u_xlat6.y = x_990;
        let x_993 : f32 = u_xlat8.y;
        u_xlat6.w = x_993;
        let x_995 : vec4<f32> = u_xlat6;
        let x_996 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_995 + x_996);
        let x_998 : vec4<f32> = u_xlat5;
        let x_1001 : vec2<f32> = ((vec2<f32>(x_998.y, x_998.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1002 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1002.x, x_1001.x, x_1002.z, x_1001.y);
        let x_1004 : vec4<f32> = u_xlat5;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1004.y, x_1004.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1007.x, x_1008.y, x_1007.y, x_1008.w);
        let x_1011 : f32 = u_xlat43.y;
        u_xlat8.y = x_1011;
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1014 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1013 + x_1014);
        let x_1016 : vec4<f32> = u_xlat6;
        let x_1017 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1016 / x_1017);
        let x_1019 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1019 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1025 : vec4<f32> = u_xlat8;
        let x_1026 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1025 / x_1026);
        let x_1028 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1028 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1030 : vec4<f32> = u_xlat6;
        let x_1033 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1030.w, x_1030.x, x_1030.y, x_1030.z) * vec4<f32>(x_1033.x, x_1033.x, x_1033.x, x_1033.x));
        let x_1036 : vec4<f32> = u_xlat8;
        let x_1039 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1036.x, x_1036.w, x_1036.y, x_1036.z) * vec4<f32>(x_1039.y, x_1039.y, x_1039.y, x_1039.y));
        let x_1042 : vec4<f32> = u_xlat6;
        let x_1043 : vec3<f32> = vec3<f32>(x_1042.y, x_1042.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1043.x, x_1044.y, x_1043.y, x_1043.z);
        let x_1047 : f32 = u_xlat8.x;
        u_xlat9.y = x_1047;
        let x_1049 : vec2<f32> = u_xlat42;
        let x_1052 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1055 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1049.x, x_1049.y, x_1049.x, x_1049.y) * vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y)) + vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1055.y));
        let x_1058 : vec2<f32> = u_xlat42;
        let x_1060 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat9;
        let x_1065 : vec2<f32> = ((x_1058 * vec2<f32>(x_1060.x, x_1060.y)) + vec2<f32>(x_1063.w, x_1063.y));
        let x_1066 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1069 : f32 = u_xlat9.y;
        u_xlat6.y = x_1069;
        let x_1072 : f32 = u_xlat8.z;
        u_xlat9.y = x_1072;
        let x_1074 : vec2<f32> = u_xlat42;
        let x_1077 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y) * vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y)) + vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1080.y));
        let x_1084 : vec2<f32> = u_xlat42;
        let x_1086 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1084 * vec2<f32>(x_1086.x, x_1086.y)) + vec2<f32>(x_1089.w, x_1089.y));
        let x_1093 : f32 = u_xlat9.y;
        u_xlat6.z = x_1093;
        let x_1095 : vec2<f32> = u_xlat42;
        let x_1098 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1101 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1095.x, x_1095.y, x_1095.x, x_1095.y) * vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y)) + vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.z));
        let x_1105 : f32 = u_xlat8.w;
        u_xlat9.y = x_1105;
        let x_1108 : vec2<f32> = u_xlat42;
        let x_1111 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y) * vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y)) + vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1114.y));
        let x_1118 : vec2<f32> = u_xlat42;
        let x_1120 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat9;
        let x_1125 : vec2<f32> = ((x_1118 * vec2<f32>(x_1120.x, x_1120.y)) + vec2<f32>(x_1123.w, x_1123.y));
        let x_1126 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1125.x, x_1125.y, x_1126.z);
        let x_1129 : f32 = u_xlat9.y;
        u_xlat6.w = x_1129;
        let x_1132 : vec2<f32> = u_xlat42;
        let x_1134 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1137 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1132 * vec2<f32>(x_1134.x, x_1134.y)) + vec2<f32>(x_1137.x, x_1137.w));
        let x_1140 : vec4<f32> = u_xlat9;
        let x_1141 : vec3<f32> = vec3<f32>(x_1140.x, x_1140.z, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1141.z);
        let x_1144 : vec2<f32> = u_xlat42;
        let x_1147 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y) * vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y)) + vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1150.y));
        let x_1154 : vec2<f32> = u_xlat42;
        let x_1156 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1154 * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1159.w, x_1159.y));
        let x_1163 : f32 = u_xlat6.x;
        u_xlat8.x = x_1163;
        let x_1165 : vec2<f32> = u_xlat42;
        let x_1167 : vec4<f32> = x_292.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat42 = ((x_1165 * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.x, x_1170.y));
        let x_1174 : vec4<f32> = u_xlat5;
        let x_1176 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1174.x, x_1174.x, x_1174.x, x_1174.x) * x_1176);
        let x_1179 : vec4<f32> = u_xlat5;
        let x_1181 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1179.y, x_1179.y, x_1179.y, x_1179.y) * x_1181);
        let x_1184 : vec4<f32> = u_xlat5;
        let x_1186 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1184.z, x_1184.z, x_1184.z, x_1184.z) * x_1186);
        let x_1188 : vec4<f32> = u_xlat5;
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1188.w, x_1188.w, x_1188.w, x_1188.w) * x_1190);
        let x_1193 : vec4<f32> = u_xlat10;
        let x_1194 : vec2<f32> = vec2<f32>(x_1193.x, x_1193.y);
        let x_1196 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1194.x, x_1194.y, x_1196);
        let x_1203 : vec3<f32> = txVec13;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1203.xy, x_1203.z);
        u_xlat6.x = x_1205;
        let x_1208 : vec4<f32> = u_xlat10;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.z, x_1208.w);
        let x_1211 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1219 : vec3<f32> = txVec14;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1219.xy, x_1219.z);
        u_xlat63 = x_1221;
        let x_1222 : f32 = u_xlat63;
        let x_1224 : f32 = u_xlat16.y;
        u_xlat63 = (x_1222 * x_1224);
        let x_1227 : f32 = u_xlat16.x;
        let x_1229 : f32 = u_xlat6.x;
        let x_1231 : f32 = u_xlat63;
        u_xlat6.x = ((x_1227 * x_1229) + x_1231);
        let x_1235 : vec4<f32> = u_xlat11;
        let x_1236 : vec2<f32> = vec2<f32>(x_1235.x, x_1235.y);
        let x_1238 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1236.x, x_1236.y, x_1238);
        let x_1245 : vec3<f32> = txVec15;
        let x_1247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1245.xy, x_1245.z);
        u_xlat63 = x_1247;
        let x_1249 : f32 = u_xlat16.z;
        let x_1250 : f32 = u_xlat63;
        let x_1253 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1249 * x_1250) + x_1253);
        let x_1257 : vec4<f32> = u_xlat13;
        let x_1258 : vec2<f32> = vec2<f32>(x_1257.x, x_1257.y);
        let x_1260 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1258.x, x_1258.y, x_1260);
        let x_1267 : vec3<f32> = txVec16;
        let x_1269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1267.xy, x_1267.z);
        u_xlat63 = x_1269;
        let x_1271 : f32 = u_xlat16.w;
        let x_1272 : f32 = u_xlat63;
        let x_1275 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1271 * x_1272) + x_1275);
        let x_1279 : vec4<f32> = u_xlat12;
        let x_1280 : vec2<f32> = vec2<f32>(x_1279.x, x_1279.y);
        let x_1282 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1280.x, x_1280.y, x_1282);
        let x_1289 : vec3<f32> = txVec17;
        let x_1291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1289.xy, x_1289.z);
        u_xlat63 = x_1291;
        let x_1293 : f32 = u_xlat17.x;
        let x_1294 : f32 = u_xlat63;
        let x_1297 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1293 * x_1294) + x_1297);
        let x_1301 : vec4<f32> = u_xlat12;
        let x_1302 : vec2<f32> = vec2<f32>(x_1301.z, x_1301.w);
        let x_1304 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec18;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1311.xy, x_1311.z);
        u_xlat63 = x_1313;
        let x_1315 : f32 = u_xlat17.y;
        let x_1316 : f32 = u_xlat63;
        let x_1319 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1315 * x_1316) + x_1319);
        let x_1323 : vec2<f32> = u_xlat49;
        let x_1325 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1323.x, x_1323.y, x_1325);
        let x_1332 : vec3<f32> = txVec19;
        let x_1334 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1332.xy, x_1332.z);
        u_xlat63 = x_1334;
        let x_1336 : f32 = u_xlat17.z;
        let x_1337 : f32 = u_xlat63;
        let x_1340 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1336 * x_1337) + x_1340);
        let x_1344 : vec4<f32> = u_xlat13;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.z, x_1344.w);
        let x_1347 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec20;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1354.xy, x_1354.z);
        u_xlat63 = x_1356;
        let x_1358 : f32 = u_xlat17.w;
        let x_1359 : f32 = u_xlat63;
        let x_1362 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1358 * x_1359) + x_1362);
        let x_1366 : vec4<f32> = u_xlat14;
        let x_1367 : vec2<f32> = vec2<f32>(x_1366.x, x_1366.y);
        let x_1369 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1367.x, x_1367.y, x_1369);
        let x_1376 : vec3<f32> = txVec21;
        let x_1378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1376.xy, x_1376.z);
        u_xlat63 = x_1378;
        let x_1380 : f32 = u_xlat18.x;
        let x_1381 : f32 = u_xlat63;
        let x_1384 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1380 * x_1381) + x_1384);
        let x_1388 : vec4<f32> = u_xlat14;
        let x_1389 : vec2<f32> = vec2<f32>(x_1388.z, x_1388.w);
        let x_1391 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1389.x, x_1389.y, x_1391);
        let x_1398 : vec3<f32> = txVec22;
        let x_1400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1398.xy, x_1398.z);
        u_xlat63 = x_1400;
        let x_1402 : f32 = u_xlat18.y;
        let x_1403 : f32 = u_xlat63;
        let x_1406 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1402 * x_1403) + x_1406);
        let x_1410 : vec3<f32> = u_xlat25;
        let x_1411 : vec2<f32> = vec2<f32>(x_1410.x, x_1410.y);
        let x_1413 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1420 : vec3<f32> = txVec23;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1420.xy, x_1420.z);
        u_xlat25.x = x_1422;
        let x_1425 : f32 = u_xlat18.z;
        let x_1427 : f32 = u_xlat25.x;
        let x_1430 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1425 * x_1427) + x_1430);
        let x_1434 : vec2<f32> = u_xlat15;
        let x_1436 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec24;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1443.xy, x_1443.z);
        u_xlat25.x = x_1445;
        let x_1448 : f32 = u_xlat18.w;
        let x_1450 : f32 = u_xlat25.x;
        let x_1453 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1448 * x_1450) + x_1453);
        let x_1457 : vec4<f32> = u_xlat9;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec25;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1467.xy, x_1467.z);
        u_xlat25.x = x_1469;
        let x_1472 : f32 = u_xlat5.x;
        let x_1474 : f32 = u_xlat25.x;
        let x_1477 : f32 = u_xlat6.x;
        u_xlat5.x = ((x_1472 * x_1474) + x_1477);
        let x_1481 : vec4<f32> = u_xlat9;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.z, x_1481.w);
        let x_1484 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec26;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1491.xy, x_1491.z);
        u_xlat6.x = x_1493;
        let x_1496 : f32 = u_xlat5.y;
        let x_1498 : f32 = u_xlat6.x;
        let x_1501 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1496 * x_1498) + x_1501);
        let x_1505 : vec2<f32> = u_xlat46;
        let x_1507 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1515 : vec3<f32> = txVec27;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1515.xy, x_1515.z);
        u_xlat24.x = x_1517;
        let x_1520 : f32 = u_xlat5.z;
        let x_1522 : f32 = u_xlat24.x;
        let x_1525 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1520 * x_1522) + x_1525);
        let x_1529 : vec2<f32> = u_xlat42;
        let x_1531 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec28;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1538.xy, x_1538.z);
        u_xlat42.x = x_1540;
        let x_1543 : f32 = u_xlat5.w;
        let x_1545 : f32 = u_xlat42.x;
        let x_1548 : f32 = u_xlat5.x;
        u_xlat23.x = ((x_1543 * x_1545) + x_1548);
      }
    }
  } else {
    let x_1553 : vec4<f32> = vs_TEXCOORD6;
    let x_1554 : vec2<f32> = vec2<f32>(x_1553.x, x_1553.y);
    let x_1556 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
    let x_1563 : vec3<f32> = txVec29;
    let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1563.xy, x_1563.z);
    u_xlat23.x = x_1565;
  }
  let x_1568 : f32 = x_292.x_MainLightShadowParams.x;
  u_xlat42.x = (-(x_1568) + 1.0f);
  let x_1573 : f32 = u_xlat23.x;
  let x_1575 : f32 = x_292.x_MainLightShadowParams.x;
  let x_1578 : f32 = u_xlat42.x;
  u_xlat23.x = ((x_1573 * x_1575) + x_1578);
  let x_1582 : f32 = vs_TEXCOORD6.z;
  u_xlatb42 = (0.0f >= x_1582);
  let x_1586 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (x_1586 >= 1.0f);
  let x_1588 : bool = u_xlatb61;
  let x_1589 : bool = u_xlatb42;
  u_xlatb42 = (x_1588 | x_1589);
  let x_1591 : bool = u_xlatb42;
  if (x_1591) {
    x_1592 = 1.0f;
  } else {
    let x_1597 : f32 = u_xlat23.x;
    x_1592 = x_1597;
  }
  let x_1598 : f32 = x_1592;
  u_xlat23.x = x_1598;
  let x_1600 : vec3<f32> = vs_TEXCOORD1;
  let x_1602 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1604 : vec3<f32> = (x_1600 + -(x_1602));
  let x_1605 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1604.x, x_1604.y, x_1604.z, x_1605.w);
  let x_1607 : vec4<f32> = u_xlat5;
  let x_1609 : vec4<f32> = u_xlat5;
  u_xlat42.x = dot(vec3<f32>(x_1607.x, x_1607.y, x_1607.z), vec3<f32>(x_1609.x, x_1609.y, x_1609.z));
  let x_1614 : f32 = u_xlat42.x;
  let x_1616 : f32 = x_292.x_MainLightShadowParams.z;
  let x_1619 : f32 = x_292.x_MainLightShadowParams.w;
  u_xlat42.x = ((x_1614 * x_1616) + x_1619);
  let x_1623 : f32 = u_xlat42.x;
  u_xlat42.x = clamp(x_1623, 0.0f, 1.0f);
  let x_1627 : f32 = u_xlat23.x;
  u_xlat61 = (-(x_1627) + 1.0f);
  let x_1631 : f32 = u_xlat42.x;
  let x_1632 : f32 = u_xlat61;
  let x_1635 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1631 * x_1632) + x_1635);
  let x_1638 : vec3<f32> = u_xlat4;
  let x_1641 : vec4<f32> = x_44.x_MainLightColor;
  let x_1643 : vec3<f32> = (vec3<f32>(x_1638.x, x_1638.x, x_1638.x) * vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
  let x_1644 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);
  let x_1646 : f32 = u_xlat60;
  let x_1648 : vec4<f32> = u_xlat3;
  let x_1650 : vec3<f32> = (vec3<f32>(x_1646, x_1646, x_1646) * vec3<f32>(x_1648.x, x_1648.y, x_1648.z));
  let x_1651 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1651.w);
  let x_1654 : f32 = u_xlat23.x;
  let x_1661 : f32 = x_1658.unity_LightData.z;
  u_xlat60 = (x_1654 * x_1661);
  let x_1663 : f32 = u_xlat60;
  let x_1665 : vec4<f32> = u_xlat5;
  u_xlat23 = (vec3<f32>(x_1663, x_1663, x_1663) * vec3<f32>(x_1665.x, x_1665.y, x_1665.z));
  let x_1668 : vec3<f32> = u_xlat2;
  let x_1670 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat60 = dot(x_1668, vec3<f32>(x_1670.x, x_1670.y, x_1670.z));
  let x_1673 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1673, 0.0f, 1.0f);
  let x_1675 : f32 = u_xlat60;
  let x_1677 : vec3<f32> = u_xlat23;
  let x_1678 : vec3<f32> = (vec3<f32>(x_1675, x_1675, x_1675) * x_1677);
  let x_1679 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
  let x_1682 : f32 = u_xlat0.x;
  u_xlat60 = ((x_1682 * 10.0f) + 1.0f);
  let x_1686 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1686);
  let x_1688 : vec3<f32> = u_xlat1;
  let x_1689 : f32 = u_xlat58;
  let x_1693 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1695 : vec3<f32> = ((x_1688 * vec3<f32>(x_1689, x_1689, x_1689)) + vec3<f32>(x_1693.x, x_1693.y, x_1693.z));
  let x_1696 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
  let x_1699 : vec4<f32> = u_xlat6;
  let x_1701 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(vec3<f32>(x_1699.x, x_1699.y, x_1699.z), vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
  let x_1704 : f32 = u_xlat62;
  u_xlat62 = max(x_1704, 1.17549435e-37f);
  let x_1706 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_1706);
  let x_1708 : f32 = u_xlat62;
  let x_1710 : vec4<f32> = u_xlat6;
  let x_1712 : vec3<f32> = (vec3<f32>(x_1708, x_1708, x_1708) * vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
  let x_1713 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
  let x_1715 : vec3<f32> = u_xlat2;
  let x_1716 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(x_1715, vec3<f32>(x_1716.x, x_1716.y, x_1716.z));
  let x_1719 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1719, 0.0f, 1.0f);
  let x_1721 : f32 = u_xlat62;
  u_xlat62 = log2(x_1721);
  let x_1723 : f32 = u_xlat60;
  let x_1724 : f32 = u_xlat62;
  u_xlat62 = (x_1723 * x_1724);
  let x_1726 : f32 = u_xlat62;
  u_xlat62 = exp2(x_1726);
  let x_1728 : f32 = u_xlat62;
  let x_1731 : vec4<f32> = x_56.x_SpecColor;
  let x_1733 : vec3<f32> = (vec3<f32>(x_1728, x_1728, x_1728) * vec3<f32>(x_1731.x, x_1731.y, x_1731.z));
  let x_1734 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);
  let x_1736 : vec3<f32> = u_xlat23;
  let x_1737 : vec4<f32> = u_xlat6;
  u_xlat23 = (x_1736 * vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
  let x_1740 : vec4<f32> = u_xlat5;
  let x_1742 : vec4<f32> = u_xlat0;
  let x_1745 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_1740.x, x_1740.y, x_1740.z) * vec3<f32>(x_1742.y, x_1742.z, x_1742.w)) + x_1745);
  let x_1748 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1750 : f32 = x_1658.unity_LightData.y;
  u_xlat5.x = min(x_1748, x_1750);
  let x_1756 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1756));
  u_xlat24.x = 0.0f;
  u_xlat24.y = 0.0f;
  u_xlat24.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1768 : u32 = u_xlatu_loop_1;
    let x_1769 : u32 = u_xlatu5;
    if ((x_1768 < x_1769)) {
    } else {
      break;
    }
    let x_1772 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_1772 >> 2u);
    let x_1776 : u32 = u_xlatu_loop_1;
    u_xlati44 = bitcast<i32>((x_1776 & 3u));
    let x_1779 : u32 = u_xlatu25;
    let x_1782 : vec4<f32> = x_1658.unity_LightIndices[bitcast<i32>(x_1779)];
    let x_1792 : i32 = u_xlati44;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1797 : vec4<u32> = indexable[x_1792];
    u_xlat25.x = dot(x_1782, bitcast<vec4<f32>>(x_1797));
    let x_1803 : f32 = u_xlat25.x;
    u_xlati25 = i32(x_1803);
    let x_1805 : vec3<f32> = vs_TEXCOORD1;
    let x_1817 : i32 = u_xlati25;
    let x_1819 : vec4<f32> = x_1816.x_AdditionalLightsPosition[x_1817];
    let x_1822 : i32 = u_xlati25;
    let x_1824 : vec4<f32> = x_1816.x_AdditionalLightsPosition[x_1822];
    let x_1826 : vec3<f32> = ((-(x_1805) * vec3<f32>(x_1819.w, x_1819.w, x_1819.w)) + vec3<f32>(x_1824.x, x_1824.y, x_1824.z));
    let x_1827 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
    let x_1830 : vec4<f32> = u_xlat7;
    let x_1832 : vec4<f32> = u_xlat7;
    u_xlat44 = dot(vec3<f32>(x_1830.x, x_1830.y, x_1830.z), vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
    let x_1835 : f32 = u_xlat44;
    u_xlat44 = max(x_1835, 6.10351562e-05f);
    let x_1838 : f32 = u_xlat44;
    u_xlat63 = inverseSqrt(x_1838);
    let x_1840 : f32 = u_xlat63;
    let x_1842 : vec4<f32> = u_xlat7;
    let x_1844 : vec3<f32> = (vec3<f32>(x_1840, x_1840, x_1840) * vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
    let x_1845 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1844.x, x_1844.y, x_1844.z, x_1845.w);
    let x_1847 : f32 = u_xlat44;
    u_xlat63 = (1.0f / x_1847);
    let x_1849 : f32 = u_xlat44;
    let x_1850 : i32 = u_xlati25;
    let x_1852 : f32 = x_1816.x_AdditionalLightsAttenuation[x_1850].x;
    u_xlat44 = (x_1849 * x_1852);
    let x_1854 : f32 = u_xlat44;
    let x_1856 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1854) * x_1856) + 1.0f);
    let x_1859 : f32 = u_xlat44;
    u_xlat44 = max(x_1859, 0.0f);
    let x_1861 : f32 = u_xlat44;
    let x_1862 : f32 = u_xlat44;
    u_xlat44 = (x_1861 * x_1862);
    let x_1864 : f32 = u_xlat44;
    let x_1865 : f32 = u_xlat63;
    u_xlat44 = (x_1864 * x_1865);
    let x_1867 : i32 = u_xlati25;
    let x_1869 : vec4<f32> = x_1816.x_AdditionalLightsSpotDir[x_1867];
    let x_1871 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_1869.x, x_1869.y, x_1869.z), vec3<f32>(x_1871.x, x_1871.y, x_1871.z));
    let x_1874 : f32 = u_xlat63;
    let x_1875 : i32 = u_xlati25;
    let x_1877 : f32 = x_1816.x_AdditionalLightsAttenuation[x_1875].z;
    let x_1879 : i32 = u_xlati25;
    let x_1881 : f32 = x_1816.x_AdditionalLightsAttenuation[x_1879].w;
    u_xlat63 = ((x_1874 * x_1877) + x_1881);
    let x_1883 : f32 = u_xlat63;
    u_xlat63 = clamp(x_1883, 0.0f, 1.0f);
    let x_1885 : f32 = u_xlat63;
    let x_1886 : f32 = u_xlat63;
    u_xlat63 = (x_1885 * x_1886);
    let x_1888 : f32 = u_xlat63;
    let x_1889 : f32 = u_xlat44;
    u_xlat44 = (x_1888 * x_1889);
    let x_1891 : vec3<f32> = u_xlat4;
    let x_1893 : i32 = u_xlati25;
    let x_1895 : vec4<f32> = x_1816.x_AdditionalLightsColor[x_1893];
    let x_1897 : vec3<f32> = (vec3<f32>(x_1891.x, x_1891.x, x_1891.x) * vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
    let x_1898 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1897.x, x_1897.y, x_1897.z, x_1898.w);
    let x_1900 : f32 = u_xlat44;
    let x_1902 : vec4<f32> = u_xlat8;
    u_xlat25 = (vec3<f32>(x_1900, x_1900, x_1900) * vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
    let x_1906 : vec3<f32> = u_xlat2;
    let x_1907 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(x_1906, vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
    let x_1910 : f32 = u_xlat64;
    u_xlat64 = clamp(x_1910, 0.0f, 1.0f);
    let x_1912 : vec3<f32> = u_xlat25;
    let x_1913 : f32 = u_xlat64;
    let x_1915 : vec3<f32> = (x_1912 * vec3<f32>(x_1913, x_1913, x_1913));
    let x_1916 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
    let x_1918 : vec3<f32> = u_xlat1;
    let x_1919 : f32 = u_xlat58;
    let x_1922 : vec4<f32> = u_xlat7;
    let x_1924 : vec3<f32> = ((x_1918 * vec3<f32>(x_1919, x_1919, x_1919)) + vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
    let x_1925 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
    let x_1927 : vec4<f32> = u_xlat7;
    let x_1929 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(vec3<f32>(x_1927.x, x_1927.y, x_1927.z), vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
    let x_1932 : f32 = u_xlat64;
    u_xlat64 = max(x_1932, 1.17549435e-37f);
    let x_1934 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_1934);
    let x_1936 : f32 = u_xlat64;
    let x_1938 : vec4<f32> = u_xlat7;
    let x_1940 : vec3<f32> = (vec3<f32>(x_1936, x_1936, x_1936) * vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
    let x_1941 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1940.x, x_1940.y, x_1940.z, x_1941.w);
    let x_1943 : vec3<f32> = u_xlat2;
    let x_1944 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(x_1943, vec3<f32>(x_1944.x, x_1944.y, x_1944.z));
    let x_1949 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_1949, 0.0f, 1.0f);
    let x_1953 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_1953);
    let x_1956 : f32 = u_xlat60;
    let x_1958 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1956 * x_1958);
    let x_1962 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_1962);
    let x_1965 : vec4<f32> = u_xlat7;
    let x_1968 : vec4<f32> = x_56.x_SpecColor;
    let x_1970 : vec3<f32> = (vec3<f32>(x_1965.x, x_1965.x, x_1965.x) * vec3<f32>(x_1968.x, x_1968.y, x_1968.z));
    let x_1971 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
    let x_1973 : vec3<f32> = u_xlat25;
    let x_1974 : vec4<f32> = u_xlat7;
    u_xlat25 = (x_1973 * vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
    let x_1977 : vec4<f32> = u_xlat8;
    let x_1979 : vec4<f32> = u_xlat0;
    let x_1982 : vec3<f32> = u_xlat25;
    u_xlat25 = ((vec3<f32>(x_1977.x, x_1977.y, x_1977.z) * vec3<f32>(x_1979.y, x_1979.z, x_1979.w)) + x_1982);
    let x_1984 : vec3<f32> = u_xlat24;
    let x_1985 : vec3<f32> = u_xlat25;
    u_xlat24 = (x_1984 + x_1985);

    continuing {
      let x_1987 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1987 + bitcast<u32>(1i));
    }
  }
  let x_1990 : vec4<f32> = u_xlat3;
  let x_1992 : vec4<f32> = u_xlat0;
  let x_1995 : vec3<f32> = u_xlat23;
  u_xlat19 = ((vec3<f32>(x_1990.x, x_1990.y, x_1990.z) * vec3<f32>(x_1992.y, x_1992.z, x_1992.w)) + x_1995);
  let x_1997 : vec3<f32> = u_xlat24;
  let x_1998 : vec3<f32> = u_xlat19;
  u_xlat19 = (x_1997 + x_1998);
  let x_2000 : f32 = u_xlat59;
  let x_2001 : f32 = u_xlat59;
  u_xlat1.x = (x_2000 * -(x_2001));
  let x_2006 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2006);
  let x_2009 : vec3<f32> = u_xlat19;
  let x_2012 : vec4<f32> = x_44.unity_FogColor;
  u_xlat19 = (x_2009 + -(vec3<f32>(x_2012.x, x_2012.y, x_2012.z)));
  let x_2018 : vec3<f32> = u_xlat1;
  let x_2020 : vec3<f32> = u_xlat19;
  let x_2023 : vec4<f32> = x_44.unity_FogColor;
  let x_2025 : vec3<f32> = ((vec3<f32>(x_2018.x, x_2018.x, x_2018.x) * x_2020) + vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
  let x_2026 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2030 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2030 == 1.0f);
  let x_2032 : bool = u_xlatb19;
  if (x_2032) {
    let x_2037 : f32 = u_xlat0.x;
    x_2033 = x_2037;
  } else {
    x_2033 = 1.0f;
  }
  let x_2039 : f32 = x_2033;
  SV_Target0.w = x_2039;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

