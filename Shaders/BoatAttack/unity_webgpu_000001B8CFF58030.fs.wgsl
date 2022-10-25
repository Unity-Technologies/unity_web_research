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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_331 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1715 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1954 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb21 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec3<f32>;
  var x_103 : f32;
  var x_117 : f32;
  var x_129 : f32;
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
  let x_76 : vec3<f32> = vs_TEXCOORD7;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_82 : vec3<f32> = (-(x_76) + x_81);
  let x_83 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat41 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat41;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : bool = u_xlatb21;
  if (x_102) {
    let x_107 : f32 = u_xlat2.x;
    x_103 = x_107;
  } else {
    let x_113 : f32 = x_44.unity_MatrixV[0i].z;
    x_103 = x_113;
  }
  let x_114 : f32 = x_103;
  u_xlat3.x = x_114;
  let x_116 : bool = u_xlatb21;
  if (x_116) {
    let x_122 : f32 = u_xlat2.y;
    x_117 = x_122;
  } else {
    let x_125 : f32 = x_44.unity_MatrixV[1i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.y = x_126;
  let x_128 : bool = u_xlatb21;
  if (x_128) {
    let x_133 : f32 = u_xlat2.z;
    x_129 = x_133;
  } else {
    let x_137 : f32 = x_44.unity_MatrixV[2i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.z = x_138;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  let x_143 : vec3<f32> = vs_TEXCOORD3;
  u_xlat21.x = dot(x_142, x_143);
  let x_147 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_147);
  let x_150 : vec3<f32> = u_xlat21;
  let x_152 : vec3<f32> = vs_TEXCOORD3;
  u_xlat21 = (vec3<f32>(x_150.x, x_150.x, x_150.x) * x_152);
  let x_159 : vec4<f32> = vs_TEXCOORD0;
  let x_162 : f32 = x_44.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_159.z, x_159.w), x_162);
  u_xlat2 = x_163;
  let x_169 : vec4<f32> = vs_TEXCOORD0;
  let x_172 : f32 = x_44.x_GlobalMipBias.x;
  let x_173 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_169.z, x_169.w), x_172);
  u_xlat4 = vec3<f32>(x_173.x, x_173.y, x_173.z);
  let x_175 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec3<f32> = u_xlat21;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_182, vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_188 : f32 = u_xlat2.x;
  u_xlat2.x = (x_188 + 0.5f);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec3<f32> = u_xlat4;
  let x_195 : vec3<f32> = (vec3<f32>(x_192.x, x_192.x, x_192.x) * x_194);
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_200 : f32 = u_xlat2.w;
  u_xlat62 = max(x_200, 0.0001f);
  let x_203 : vec4<f32> = u_xlat2;
  let x_205 : f32 = u_xlat62;
  let x_207 : vec3<f32> = (vec3<f32>(x_203.x, x_203.y, x_203.z) / vec3<f32>(x_205, x_205, x_205));
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_213 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_214 : vec2<f32> = vec2<f32>(x_213.x, x_213.y);
  let x_218 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_214.x, x_214.y));
  let x_219 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_218.x, x_218.y, x_219.z);
  let x_221 : vec3<f32> = u_xlat4;
  let x_223 : vec4<f32> = hlslcc_FragCoord;
  let x_225 : vec2<f32> = (vec2<f32>(x_221.x, x_221.y) * vec2<f32>(x_223.x, x_223.y));
  let x_226 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_225.x, x_225.y, x_226.z);
  let x_229 : f32 = u_xlat4.y;
  let x_232 : f32 = x_44.x_ScaleBiasRt.x;
  let x_235 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat62 = ((x_229 * x_232) + x_235);
  let x_237 : f32 = u_xlat62;
  u_xlat4.z = (-(x_237) + 1.0f);
  let x_241 : f32 = u_xlat1;
  u_xlat62 = ((-(x_241) * 0.959999979f) + 0.959999979f);
  let x_247 : f32 = u_xlat62;
  u_xlat63 = (-(x_247) + 1.0f);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : f32 = u_xlat62;
  u_xlat5 = (vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253, x_253, x_253));
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : f32 = u_xlat1;
  let x_265 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = ((vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.x, x_265.y, x_265.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_274 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_274) + 1.0f);
  let x_277 : f32 = u_xlat1;
  let x_278 : f32 = u_xlat1;
  u_xlat62 = (x_277 * x_278);
  let x_280 : f32 = u_xlat62;
  u_xlat62 = max(x_280, 0.0078125f);
  let x_284 : f32 = u_xlat62;
  let x_285 : f32 = u_xlat62;
  u_xlat24 = (x_284 * x_285);
  let x_289 : f32 = u_xlat0.w;
  let x_290 : f32 = u_xlat63;
  u_xlat60 = (x_289 + x_290);
  let x_292 : f32 = u_xlat60;
  u_xlat60 = clamp(x_292, 0.0f, 1.0f);
  let x_294 : f32 = u_xlat62;
  u_xlat63 = ((x_294 * 4.0f) + 2.0f);
  let x_304 : vec3<f32> = u_xlat4;
  let x_307 : f32 = x_44.x_GlobalMipBias.x;
  let x_308 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_304.x, x_304.z), x_307);
  u_xlat4.x = x_308.x;
  let x_313 : f32 = u_xlat4.x;
  u_xlat44 = (x_313 + -1.0f);
  let x_318 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_319 : f32 = u_xlat44;
  u_xlat44 = ((x_318 * x_319) + 1.0f);
  let x_323 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_323, 1.0f);
  let x_333 : f32 = x_331.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_333);
  let x_335 : bool = u_xlatb64;
  if (x_335) {
    let x_339 : f32 = x_331.x_MainLightShadowParams.y;
    u_xlatb64 = (x_339 == 1.0f);
    let x_341 : bool = u_xlatb64;
    if (x_341) {
      let x_346 : vec4<f32> = vs_TEXCOORD8;
      let x_349 : vec4<f32> = x_331.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_346.x, x_346.y, x_346.x, x_346.y) + x_349);
      let x_352 : vec4<f32> = u_xlat6;
      let x_353 : vec2<f32> = vec2<f32>(x_352.x, x_352.y);
      let x_355 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_353.x, x_353.y, x_355);
      let x_368 : vec3<f32> = txVec0;
      let x_370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_368.xy, x_368.z);
      u_xlat7.x = x_370;
      let x_373 : vec4<f32> = u_xlat6;
      let x_374 : vec2<f32> = vec2<f32>(x_373.z, x_373.w);
      let x_376 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_374.x, x_374.y, x_376);
      let x_383 : vec3<f32> = txVec1;
      let x_385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_383.xy, x_383.z);
      u_xlat7.y = x_385;
      let x_387 : vec4<f32> = vs_TEXCOORD8;
      let x_390 : vec4<f32> = x_331.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_387.x, x_387.y, x_387.x, x_387.y) + x_390);
      let x_393 : vec4<f32> = u_xlat6;
      let x_394 : vec2<f32> = vec2<f32>(x_393.x, x_393.y);
      let x_396 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_394.x, x_394.y, x_396);
      let x_403 : vec3<f32> = txVec2;
      let x_405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_403.xy, x_403.z);
      u_xlat7.z = x_405;
      let x_408 : vec4<f32> = u_xlat6;
      let x_409 : vec2<f32> = vec2<f32>(x_408.z, x_408.w);
      let x_411 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_409.x, x_409.y, x_411);
      let x_418 : vec3<f32> = txVec3;
      let x_420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_418.xy, x_418.z);
      u_xlat7.w = x_420;
      let x_423 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_423, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_430 : f32 = x_331.x_MainLightShadowParams.y;
      u_xlatb65 = (x_430 == 2.0f);
      let x_432 : bool = u_xlatb65;
      if (x_432) {
        let x_435 : vec4<f32> = vs_TEXCOORD8;
        let x_438 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_442 : vec2<f32> = ((vec2<f32>(x_435.x, x_435.y) * vec2<f32>(x_438.z, x_438.w)) + vec2<f32>(0.5f, 0.5f));
        let x_443 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
        let x_445 : vec4<f32> = u_xlat6;
        let x_447 : vec2<f32> = floor(vec2<f32>(x_445.x, x_445.y));
        let x_448 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
        let x_452 : vec4<f32> = vs_TEXCOORD8;
        let x_455 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_458 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_452.x, x_452.y) * vec2<f32>(x_455.z, x_455.w)) + -(vec2<f32>(x_458.x, x_458.y)));
        let x_462 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_462.x, x_462.x, x_462.y, x_462.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_467 : vec4<f32> = u_xlat7;
        let x_469 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_467.x, x_467.x, x_467.z, x_467.z) * vec4<f32>(x_469.x, x_469.x, x_469.z, x_469.z));
        let x_472 : vec4<f32> = u_xlat8;
        let x_476 : vec2<f32> = (vec2<f32>(x_472.y, x_472.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_477 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_476.x, x_477.y, x_476.y, x_477.w);
        let x_479 : vec4<f32> = u_xlat8;
        let x_482 : vec2<f32> = u_xlat46;
        let x_484 : vec2<f32> = ((vec2<f32>(x_479.x, x_479.z) * vec2<f32>(0.5f, 0.5f)) + -(x_482));
        let x_485 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_488 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_488) + vec2<f32>(1.0f, 1.0f));
        let x_492 : vec2<f32> = u_xlat46;
        let x_494 : vec2<f32> = min(x_492, vec2<f32>(0.0f, 0.0f));
        let x_495 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
        let x_497 : vec4<f32> = u_xlat9;
        let x_500 : vec4<f32> = u_xlat9;
        let x_503 : vec2<f32> = u_xlat48;
        let x_504 : vec2<f32> = ((-(vec2<f32>(x_497.x, x_497.y)) * vec2<f32>(x_500.x, x_500.y)) + x_503);
        let x_505 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
        let x_507 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_507, vec2<f32>(0.0f, 0.0f));
        let x_509 : vec2<f32> = u_xlat46;
        let x_511 : vec2<f32> = u_xlat46;
        let x_513 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_509) * x_511) + vec2<f32>(x_513.y, x_513.w));
        let x_516 : vec4<f32> = u_xlat9;
        let x_518 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) + vec2<f32>(1.0f, 1.0f));
        let x_519 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_521 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_521 + vec2<f32>(1.0f, 1.0f));
        let x_524 : vec4<f32> = u_xlat8;
        let x_528 : vec2<f32> = (vec2<f32>(x_524.x, x_524.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_529 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_531 : vec2<f32> = u_xlat48;
        let x_532 : vec2<f32> = (x_531 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_533 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
        let x_535 : vec4<f32> = u_xlat9;
        let x_537 : vec2<f32> = (vec2<f32>(x_535.x, x_535.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_538 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
        let x_541 : vec2<f32> = u_xlat46;
        let x_542 : vec2<f32> = (x_541 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_543 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
        let x_545 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_545.y, x_545.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_549 : f32 = u_xlat9.x;
        u_xlat10.z = x_549;
        let x_552 : f32 = u_xlat46.x;
        u_xlat10.w = x_552;
        let x_555 : f32 = u_xlat11.x;
        u_xlat8.z = x_555;
        let x_558 : f32 = u_xlat7.x;
        u_xlat8.w = x_558;
        let x_561 : vec4<f32> = u_xlat8;
        let x_563 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_561.z, x_561.w, x_561.x, x_561.z) + vec4<f32>(x_563.z, x_563.w, x_563.x, x_563.z));
        let x_567 : f32 = u_xlat10.y;
        u_xlat9.z = x_567;
        let x_570 : f32 = u_xlat46.y;
        u_xlat9.w = x_570;
        let x_573 : f32 = u_xlat8.y;
        u_xlat11.z = x_573;
        let x_576 : f32 = u_xlat7.z;
        u_xlat11.w = x_576;
        let x_578 : vec4<f32> = u_xlat9;
        let x_580 : vec4<f32> = u_xlat11;
        let x_582 : vec3<f32> = (vec3<f32>(x_578.z, x_578.y, x_578.w) + vec3<f32>(x_580.z, x_580.y, x_580.w));
        let x_583 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
        let x_585 : vec4<f32> = u_xlat8;
        let x_587 : vec4<f32> = u_xlat12;
        let x_589 : vec3<f32> = (vec3<f32>(x_585.x, x_585.z, x_585.w) / vec3<f32>(x_587.z, x_587.w, x_587.y));
        let x_590 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
        let x_592 : vec4<f32> = u_xlat8;
        let x_597 : vec3<f32> = (vec3<f32>(x_592.x, x_592.y, x_592.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_598 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat11;
        let x_602 : vec4<f32> = u_xlat7;
        let x_604 : vec3<f32> = (vec3<f32>(x_600.z, x_600.y, x_600.w) / vec3<f32>(x_602.x, x_602.y, x_602.z));
        let x_605 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
        let x_607 : vec4<f32> = u_xlat9;
        let x_609 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_610 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat8;
        let x_615 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_617 : vec3<f32> = (vec3<f32>(x_612.y, x_612.x, x_612.z) * vec3<f32>(x_615.x, x_615.x, x_615.x));
        let x_618 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
        let x_620 : vec4<f32> = u_xlat9;
        let x_623 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_625 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_623.y, x_623.y, x_623.y));
        let x_626 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_629 : f32 = u_xlat9.x;
        u_xlat8.w = x_629;
        let x_631 : vec4<f32> = u_xlat6;
        let x_634 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_637 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y) * vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y)) + vec4<f32>(x_637.y, x_637.w, x_637.x, x_637.w));
        let x_640 : vec4<f32> = u_xlat6;
        let x_643 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_646 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_640.x, x_640.y) * vec2<f32>(x_643.x, x_643.y)) + vec2<f32>(x_646.z, x_646.w));
        let x_650 : f32 = u_xlat8.y;
        u_xlat9.w = x_650;
        let x_652 : vec4<f32> = u_xlat9;
        let x_653 : vec2<f32> = vec2<f32>(x_652.y, x_652.z);
        let x_654 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_653.x, x_654.z, x_653.y);
        let x_656 : vec4<f32> = u_xlat6;
        let x_659 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_662 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_656.x, x_656.y, x_656.x, x_656.y) * vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y)) + vec4<f32>(x_662.x, x_662.y, x_662.z, x_662.y));
        let x_665 : vec4<f32> = u_xlat6;
        let x_668 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_671 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_665.x, x_665.y, x_665.x, x_665.y) * vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y)) + vec4<f32>(x_671.w, x_671.y, x_671.w, x_671.z));
        let x_674 : vec4<f32> = u_xlat6;
        let x_677 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_680 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_674.x, x_674.y, x_674.x, x_674.y) * vec4<f32>(x_677.x, x_677.y, x_677.x, x_677.y)) + vec4<f32>(x_680.x, x_680.w, x_680.z, x_680.w));
        let x_684 : vec4<f32> = u_xlat7;
        let x_686 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_684.x, x_684.x, x_684.x, x_684.y) * vec4<f32>(x_686.z, x_686.w, x_686.y, x_686.z));
        let x_690 : vec4<f32> = u_xlat7;
        let x_692 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_690.y, x_690.y, x_690.z, x_690.z) * x_692);
        let x_696 : f32 = u_xlat7.z;
        let x_698 : f32 = u_xlat12.y;
        u_xlat65 = (x_696 * x_698);
        let x_701 : vec4<f32> = u_xlat10;
        let x_702 : vec2<f32> = vec2<f32>(x_701.x, x_701.y);
        let x_704 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_702.x, x_702.y, x_704);
        let x_711 : vec3<f32> = txVec4;
        let x_713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_711.xy, x_711.z);
        u_xlat6.x = x_713;
        let x_716 : vec4<f32> = u_xlat10;
        let x_717 : vec2<f32> = vec2<f32>(x_716.z, x_716.w);
        let x_719 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_717.x, x_717.y, x_719);
        let x_727 : vec3<f32> = txVec5;
        let x_729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_727.xy, x_727.z);
        u_xlat26 = x_729;
        let x_730 : f32 = u_xlat26;
        let x_732 : f32 = u_xlat13.y;
        u_xlat26 = (x_730 * x_732);
        let x_735 : f32 = u_xlat13.x;
        let x_737 : f32 = u_xlat6.x;
        let x_739 : f32 = u_xlat26;
        u_xlat6.x = ((x_735 * x_737) + x_739);
        let x_743 : vec2<f32> = u_xlat46;
        let x_745 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_743.x, x_743.y, x_745);
        let x_752 : vec3<f32> = txVec6;
        let x_754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_752.xy, x_752.z);
        u_xlat26 = x_754;
        let x_756 : f32 = u_xlat13.z;
        let x_757 : f32 = u_xlat26;
        let x_760 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_756 * x_757) + x_760);
        let x_764 : vec4<f32> = u_xlat9;
        let x_765 : vec2<f32> = vec2<f32>(x_764.x, x_764.y);
        let x_767 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_765.x, x_765.y, x_767);
        let x_774 : vec3<f32> = txVec7;
        let x_776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_774.xy, x_774.z);
        u_xlat26 = x_776;
        let x_778 : f32 = u_xlat13.w;
        let x_779 : f32 = u_xlat26;
        let x_782 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_778 * x_779) + x_782);
        let x_786 : vec4<f32> = u_xlat11;
        let x_787 : vec2<f32> = vec2<f32>(x_786.x, x_786.y);
        let x_789 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_787.x, x_787.y, x_789);
        let x_796 : vec3<f32> = txVec8;
        let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_796.xy, x_796.z);
        u_xlat26 = x_798;
        let x_800 : f32 = u_xlat14.x;
        let x_801 : f32 = u_xlat26;
        let x_804 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_800 * x_801) + x_804);
        let x_808 : vec4<f32> = u_xlat11;
        let x_809 : vec2<f32> = vec2<f32>(x_808.z, x_808.w);
        let x_811 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_809.x, x_809.y, x_811);
        let x_818 : vec3<f32> = txVec9;
        let x_820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_818.xy, x_818.z);
        u_xlat26 = x_820;
        let x_822 : f32 = u_xlat14.y;
        let x_823 : f32 = u_xlat26;
        let x_826 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_822 * x_823) + x_826);
        let x_830 : vec4<f32> = u_xlat9;
        let x_831 : vec2<f32> = vec2<f32>(x_830.z, x_830.w);
        let x_833 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_831.x, x_831.y, x_833);
        let x_840 : vec3<f32> = txVec10;
        let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_840.xy, x_840.z);
        u_xlat26 = x_842;
        let x_844 : f32 = u_xlat14.z;
        let x_845 : f32 = u_xlat26;
        let x_848 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_844 * x_845) + x_848);
        let x_852 : vec4<f32> = u_xlat8;
        let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
        let x_855 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_862 : vec3<f32> = txVec11;
        let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_862.xy, x_862.z);
        u_xlat26 = x_864;
        let x_866 : f32 = u_xlat14.w;
        let x_867 : f32 = u_xlat26;
        let x_870 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_866 * x_867) + x_870);
        let x_874 : vec4<f32> = u_xlat8;
        let x_875 : vec2<f32> = vec2<f32>(x_874.z, x_874.w);
        let x_877 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_875.x, x_875.y, x_877);
        let x_884 : vec3<f32> = txVec12;
        let x_886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_884.xy, x_884.z);
        u_xlat26 = x_886;
        let x_887 : f32 = u_xlat65;
        let x_888 : f32 = u_xlat26;
        let x_891 : f32 = u_xlat6.x;
        u_xlat64 = ((x_887 * x_888) + x_891);
      } else {
        let x_894 : vec4<f32> = vs_TEXCOORD8;
        let x_897 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_900 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.z, x_897.w)) + vec2<f32>(0.5f, 0.5f));
        let x_901 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat6;
        let x_905 : vec2<f32> = floor(vec2<f32>(x_903.x, x_903.y));
        let x_906 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_908 : vec4<f32> = vs_TEXCOORD8;
        let x_911 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_914 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(x_911.z, x_911.w)) + -(vec2<f32>(x_914.x, x_914.y)));
        let x_918 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_918.x, x_918.x, x_918.y, x_918.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_921 : vec4<f32> = u_xlat7;
        let x_923 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_921.x, x_921.x, x_921.z, x_921.z) * vec4<f32>(x_923.x, x_923.x, x_923.z, x_923.z));
        let x_926 : vec4<f32> = u_xlat8;
        let x_930 : vec2<f32> = (vec2<f32>(x_926.y, x_926.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_931.x, x_930.x, x_931.z, x_930.y);
        let x_933 : vec4<f32> = u_xlat8;
        let x_936 : vec2<f32> = u_xlat46;
        let x_938 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.z) * vec2<f32>(0.5f, 0.5f)) + -(x_936));
        let x_939 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_938.x, x_939.y, x_938.y, x_939.w);
        let x_941 : vec2<f32> = u_xlat46;
        let x_943 : vec2<f32> = (-(x_941) + vec2<f32>(1.0f, 1.0f));
        let x_944 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_946, vec2<f32>(0.0f, 0.0f));
        let x_948 : vec2<f32> = u_xlat48;
        let x_950 : vec2<f32> = u_xlat48;
        let x_952 : vec4<f32> = u_xlat8;
        let x_954 : vec2<f32> = ((-(x_948) * x_950) + vec2<f32>(x_952.x, x_952.y));
        let x_955 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_957, vec2<f32>(0.0f, 0.0f));
        let x_960 : vec2<f32> = u_xlat48;
        let x_962 : vec2<f32> = u_xlat48;
        let x_964 : vec4<f32> = u_xlat7;
        let x_966 : vec2<f32> = ((-(x_960) * x_962) + vec2<f32>(x_964.y, x_964.w));
        let x_967 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_966.x, x_967.y, x_966.y);
        let x_969 : vec4<f32> = u_xlat8;
        let x_972 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) + vec2<f32>(2.0f, 2.0f));
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_975 : vec3<f32> = u_xlat27;
        let x_977 : vec2<f32> = (vec2<f32>(x_975.x, x_975.z) + vec2<f32>(2.0f, 2.0f));
        let x_978 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_978.x, x_977.x, x_978.z, x_977.y);
        let x_981 : f32 = u_xlat7.y;
        u_xlat10.z = (x_981 * 0.081632003f);
        let x_985 : vec4<f32> = u_xlat7;
        let x_988 : vec3<f32> = (vec3<f32>(x_985.z, x_985.x, x_985.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_989 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat8;
        let x_994 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_995 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_998 : f32 = u_xlat11.y;
        u_xlat10.x = x_998;
        let x_1000 : vec2<f32> = u_xlat46;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1008 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1010 : vec2<f32> = u_xlat46;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1010.x, x_1010.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1015 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1014.x, x_1015.y, x_1014.y, x_1015.w);
        let x_1018 : f32 = u_xlat7.x;
        u_xlat8.y = x_1018;
        let x_1021 : f32 = u_xlat9.y;
        u_xlat8.w = x_1021;
        let x_1023 : vec4<f32> = u_xlat8;
        let x_1024 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1023 + x_1024);
        let x_1026 : vec2<f32> = u_xlat46;
        let x_1029 : vec2<f32> = ((vec2<f32>(x_1026.y, x_1026.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1030 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1030.x, x_1029.x, x_1030.z, x_1029.y);
        let x_1032 : vec2<f32> = u_xlat46;
        let x_1035 : vec2<f32> = ((vec2<f32>(x_1032.y, x_1032.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1036 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1035.x, x_1036.y, x_1035.y, x_1036.w);
        let x_1039 : f32 = u_xlat7.y;
        u_xlat9.y = x_1039;
        let x_1041 : vec4<f32> = u_xlat9;
        let x_1042 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1041 + x_1042);
        let x_1044 : vec4<f32> = u_xlat8;
        let x_1045 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1044 / x_1045);
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1047 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1053 : vec4<f32> = u_xlat9;
        let x_1054 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1053 / x_1054);
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1056 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1058 : vec4<f32> = u_xlat8;
        let x_1061 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1058.w, x_1058.x, x_1058.y, x_1058.z) * vec4<f32>(x_1061.x, x_1061.x, x_1061.x, x_1061.x));
        let x_1064 : vec4<f32> = u_xlat9;
        let x_1067 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1064.x, x_1064.w, x_1064.y, x_1064.z) * vec4<f32>(x_1067.y, x_1067.y, x_1067.y, x_1067.y));
        let x_1070 : vec4<f32> = u_xlat8;
        let x_1071 : vec3<f32> = vec3<f32>(x_1070.y, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1071.z);
        let x_1075 : f32 = u_xlat9.x;
        u_xlat11.y = x_1075;
        let x_1077 : vec4<f32> = u_xlat6;
        let x_1080 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) * vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y)) + vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1083.y));
        let x_1086 : vec4<f32> = u_xlat6;
        let x_1089 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1089.x, x_1089.y)) + vec2<f32>(x_1092.w, x_1092.y));
        let x_1096 : f32 = u_xlat11.y;
        u_xlat8.y = x_1096;
        let x_1099 : f32 = u_xlat9.z;
        u_xlat11.y = x_1099;
        let x_1101 : vec4<f32> = u_xlat6;
        let x_1104 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1107 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y) * vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y)) + vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1107.y));
        let x_1110 : vec4<f32> = u_xlat6;
        let x_1113 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat11;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.w, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1122 : f32 = u_xlat11.y;
        u_xlat8.z = x_1122;
        let x_1125 : vec4<f32> = u_xlat6;
        let x_1128 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.z));
        let x_1135 : f32 = u_xlat9.w;
        u_xlat11.y = x_1135;
        let x_1138 : vec4<f32> = u_xlat6;
        let x_1141 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1144.y));
        let x_1148 : vec4<f32> = u_xlat6;
        let x_1151 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat11;
        let x_1156 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.w, x_1154.y));
        let x_1157 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1156.x, x_1156.y, x_1157.z);
        let x_1160 : f32 = u_xlat11.y;
        u_xlat8.w = x_1160;
        let x_1163 : vec4<f32> = u_xlat6;
        let x_1166 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1163.x, x_1163.y) * vec2<f32>(x_1166.x, x_1166.y)) + vec2<f32>(x_1169.x, x_1169.w));
        let x_1172 : vec4<f32> = u_xlat11;
        let x_1173 : vec3<f32> = vec3<f32>(x_1172.x, x_1172.z, x_1172.w);
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1173.x, x_1174.y, x_1173.y, x_1173.z);
        let x_1176 : vec4<f32> = u_xlat6;
        let x_1179 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1176.x, x_1176.y, x_1176.x, x_1176.y) * vec4<f32>(x_1179.x, x_1179.y, x_1179.x, x_1179.y)) + vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1182.y));
        let x_1186 : vec4<f32> = u_xlat6;
        let x_1189 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1186.x, x_1186.y) * vec2<f32>(x_1189.x, x_1189.y)) + vec2<f32>(x_1192.w, x_1192.y));
        let x_1196 : f32 = u_xlat8.x;
        u_xlat9.x = x_1196;
        let x_1198 : vec4<f32> = u_xlat6;
        let x_1201 : vec4<f32> = x_331.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1206 : vec2<f32> = ((vec2<f32>(x_1198.x, x_1198.y) * vec2<f32>(x_1201.x, x_1201.y)) + vec2<f32>(x_1204.x, x_1204.y));
        let x_1207 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1210 : vec4<f32> = u_xlat7;
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1210.x, x_1210.x, x_1210.x, x_1210.x) * x_1212);
        let x_1215 : vec4<f32> = u_xlat7;
        let x_1217 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1215.y, x_1215.y, x_1215.y, x_1215.y) * x_1217);
        let x_1220 : vec4<f32> = u_xlat7;
        let x_1222 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1220.z, x_1220.z, x_1220.z, x_1220.z) * x_1222);
        let x_1224 : vec4<f32> = u_xlat7;
        let x_1226 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1224.w, x_1224.w, x_1224.w, x_1224.w) * x_1226);
        let x_1229 : vec4<f32> = u_xlat12;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.x, x_1229.y);
        let x_1232 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec13;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1239.xy, x_1239.z);
        u_xlat65 = x_1241;
        let x_1243 : vec4<f32> = u_xlat12;
        let x_1244 : vec2<f32> = vec2<f32>(x_1243.z, x_1243.w);
        let x_1246 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1244.x, x_1244.y, x_1246);
        let x_1253 : vec3<f32> = txVec14;
        let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1253.xy, x_1253.z);
        u_xlat8.x = x_1255;
        let x_1258 : f32 = u_xlat8.x;
        let x_1260 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1258 * x_1260);
        let x_1264 : f32 = u_xlat17.x;
        let x_1265 : f32 = u_xlat65;
        let x_1268 : f32 = u_xlat8.x;
        u_xlat65 = ((x_1264 * x_1265) + x_1268);
        let x_1271 : vec2<f32> = u_xlat46;
        let x_1273 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1271.x, x_1271.y, x_1273);
        let x_1280 : vec3<f32> = txVec15;
        let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1280.xy, x_1280.z);
        u_xlat46.x = x_1282;
        let x_1285 : f32 = u_xlat17.z;
        let x_1287 : f32 = u_xlat46.x;
        let x_1289 : f32 = u_xlat65;
        u_xlat65 = ((x_1285 * x_1287) + x_1289);
        let x_1292 : vec4<f32> = u_xlat15;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.x, x_1292.y);
        let x_1295 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec16;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1302.xy, x_1302.z);
        u_xlat46.x = x_1304;
        let x_1307 : f32 = u_xlat17.w;
        let x_1309 : f32 = u_xlat46.x;
        let x_1311 : f32 = u_xlat65;
        u_xlat65 = ((x_1307 * x_1309) + x_1311);
        let x_1314 : vec4<f32> = u_xlat13;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.x, x_1314.y);
        let x_1317 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec17;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1324.xy, x_1324.z);
        u_xlat46.x = x_1326;
        let x_1329 : f32 = u_xlat18.x;
        let x_1331 : f32 = u_xlat46.x;
        let x_1333 : f32 = u_xlat65;
        u_xlat65 = ((x_1329 * x_1331) + x_1333);
        let x_1336 : vec4<f32> = u_xlat13;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.z, x_1336.w);
        let x_1339 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec18;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1346.xy, x_1346.z);
        u_xlat46.x = x_1348;
        let x_1351 : f32 = u_xlat18.y;
        let x_1353 : f32 = u_xlat46.x;
        let x_1355 : f32 = u_xlat65;
        u_xlat65 = ((x_1351 * x_1353) + x_1355);
        let x_1358 : vec4<f32> = u_xlat14;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.x, x_1358.y);
        let x_1361 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec19;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1368.xy, x_1368.z);
        u_xlat46.x = x_1370;
        let x_1373 : f32 = u_xlat18.z;
        let x_1375 : f32 = u_xlat46.x;
        let x_1377 : f32 = u_xlat65;
        u_xlat65 = ((x_1373 * x_1375) + x_1377);
        let x_1380 : vec4<f32> = u_xlat15;
        let x_1381 : vec2<f32> = vec2<f32>(x_1380.z, x_1380.w);
        let x_1383 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
        let x_1390 : vec3<f32> = txVec20;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1390.xy, x_1390.z);
        u_xlat46.x = x_1392;
        let x_1395 : f32 = u_xlat18.w;
        let x_1397 : f32 = u_xlat46.x;
        let x_1399 : f32 = u_xlat65;
        u_xlat65 = ((x_1395 * x_1397) + x_1399);
        let x_1402 : vec4<f32> = u_xlat16;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.x, x_1402.y);
        let x_1405 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec21;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1412.xy, x_1412.z);
        u_xlat46.x = x_1414;
        let x_1417 : f32 = u_xlat19.x;
        let x_1419 : f32 = u_xlat46.x;
        let x_1421 : f32 = u_xlat65;
        u_xlat65 = ((x_1417 * x_1419) + x_1421);
        let x_1424 : vec4<f32> = u_xlat16;
        let x_1425 : vec2<f32> = vec2<f32>(x_1424.z, x_1424.w);
        let x_1427 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec22;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1434.xy, x_1434.z);
        u_xlat46.x = x_1436;
        let x_1439 : f32 = u_xlat19.y;
        let x_1441 : f32 = u_xlat46.x;
        let x_1443 : f32 = u_xlat65;
        u_xlat65 = ((x_1439 * x_1441) + x_1443);
        let x_1446 : vec3<f32> = u_xlat28;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec23;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1456.xy, x_1456.z);
        u_xlat46.x = x_1458;
        let x_1461 : f32 = u_xlat19.z;
        let x_1463 : f32 = u_xlat46.x;
        let x_1465 : f32 = u_xlat65;
        u_xlat65 = ((x_1461 * x_1463) + x_1465);
        let x_1468 : vec2<f32> = u_xlat54;
        let x_1470 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec24;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1477.xy, x_1477.z);
        u_xlat46.x = x_1479;
        let x_1482 : f32 = u_xlat19.w;
        let x_1484 : f32 = u_xlat46.x;
        let x_1486 : f32 = u_xlat65;
        u_xlat65 = ((x_1482 * x_1484) + x_1486);
        let x_1489 : vec4<f32> = u_xlat11;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec25;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1499.xy, x_1499.z);
        u_xlat46.x = x_1501;
        let x_1504 : f32 = u_xlat7.x;
        let x_1506 : f32 = u_xlat46.x;
        let x_1508 : f32 = u_xlat65;
        u_xlat65 = ((x_1504 * x_1506) + x_1508);
        let x_1511 : vec4<f32> = u_xlat11;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.z, x_1511.w);
        let x_1514 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec26;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1521.xy, x_1521.z);
        u_xlat46.x = x_1523;
        let x_1526 : f32 = u_xlat7.y;
        let x_1528 : f32 = u_xlat46.x;
        let x_1530 : f32 = u_xlat65;
        u_xlat65 = ((x_1526 * x_1528) + x_1530);
        let x_1533 : vec2<f32> = u_xlat49;
        let x_1535 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec27;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1542.xy, x_1542.z);
        u_xlat46.x = x_1544;
        let x_1547 : f32 = u_xlat7.z;
        let x_1549 : f32 = u_xlat46.x;
        let x_1551 : f32 = u_xlat65;
        u_xlat65 = ((x_1547 * x_1549) + x_1551);
        let x_1554 : vec4<f32> = u_xlat6;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.x, x_1554.y);
        let x_1557 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec28;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1564.xy, x_1564.z);
        u_xlat6.x = x_1566;
        let x_1569 : f32 = u_xlat7.w;
        let x_1571 : f32 = u_xlat6.x;
        let x_1573 : f32 = u_xlat65;
        u_xlat64 = ((x_1569 * x_1571) + x_1573);
      }
    }
  } else {
    let x_1577 : vec4<f32> = vs_TEXCOORD8;
    let x_1578 : vec2<f32> = vec2<f32>(x_1577.x, x_1577.y);
    let x_1580 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1578.x, x_1578.y, x_1580);
    let x_1587 : vec3<f32> = txVec29;
    let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1587.xy, x_1587.z);
    u_xlat64 = x_1589;
  }
  let x_1591 : f32 = x_331.x_MainLightShadowParams.x;
  u_xlat65 = (-(x_1591) + 1.0f);
  let x_1594 : f32 = u_xlat64;
  let x_1596 : f32 = x_331.x_MainLightShadowParams.x;
  let x_1598 : f32 = u_xlat65;
  u_xlat64 = ((x_1594 * x_1596) + x_1598);
  let x_1601 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (0.0f >= x_1601);
  let x_1605 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_1605 >= 1.0f);
  let x_1607 : bool = u_xlatb65;
  let x_1608 : bool = u_xlatb6;
  u_xlatb65 = (x_1607 | x_1608);
  let x_1610 : bool = u_xlatb65;
  let x_1611 : f32 = u_xlat64;
  u_xlat64 = select(x_1611, 1.0f, x_1610);
  let x_1613 : vec3<f32> = vs_TEXCOORD7;
  let x_1615 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1617 : vec3<f32> = (x_1613 + -(x_1615));
  let x_1618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
  let x_1620 : vec4<f32> = u_xlat6;
  let x_1622 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_1620.x, x_1620.y, x_1620.z), vec3<f32>(x_1622.x, x_1622.y, x_1622.z));
  let x_1625 : f32 = u_xlat65;
  let x_1627 : f32 = x_331.x_MainLightShadowParams.z;
  let x_1630 : f32 = x_331.x_MainLightShadowParams.w;
  u_xlat65 = ((x_1625 * x_1627) + x_1630);
  let x_1632 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1632, 0.0f, 1.0f);
  let x_1634 : f32 = u_xlat64;
  u_xlat6.x = (-(x_1634) + 1.0f);
  let x_1638 : f32 = u_xlat65;
  let x_1640 : f32 = u_xlat6.x;
  let x_1642 : f32 = u_xlat64;
  u_xlat64 = ((x_1638 * x_1640) + x_1642);
  let x_1644 : f32 = u_xlat44;
  let x_1648 : vec4<f32> = x_44.x_MainLightColor;
  let x_1650 : vec3<f32> = (vec3<f32>(x_1644, x_1644, x_1644) * vec3<f32>(x_1648.x, x_1648.y, x_1648.z));
  let x_1651 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1651.w);
  let x_1653 : vec3<f32> = u_xlat3;
  let x_1655 : vec3<f32> = u_xlat21;
  u_xlat65 = dot(-(x_1653), x_1655);
  let x_1657 : f32 = u_xlat65;
  let x_1658 : f32 = u_xlat65;
  u_xlat65 = (x_1657 + x_1658);
  let x_1660 : vec3<f32> = u_xlat21;
  let x_1661 : f32 = u_xlat65;
  let x_1665 : vec3<f32> = u_xlat3;
  let x_1667 : vec3<f32> = ((x_1660 * -(vec3<f32>(x_1661, x_1661, x_1661))) + -(x_1665));
  let x_1668 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1667.x, x_1667.y, x_1667.z, x_1668.w);
  let x_1670 : vec3<f32> = u_xlat21;
  let x_1671 : vec3<f32> = u_xlat3;
  u_xlat65 = dot(x_1670, x_1671);
  let x_1673 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1673, 0.0f, 1.0f);
  let x_1675 : f32 = u_xlat65;
  u_xlat65 = (-(x_1675) + 1.0f);
  let x_1678 : f32 = u_xlat65;
  let x_1679 : f32 = u_xlat65;
  u_xlat65 = (x_1678 * x_1679);
  let x_1681 : f32 = u_xlat65;
  let x_1682 : f32 = u_xlat65;
  u_xlat65 = (x_1681 * x_1682);
  let x_1685 : f32 = u_xlat1;
  u_xlat66 = ((-(x_1685) * 0.699999988f) + 1.700000048f);
  let x_1691 : f32 = u_xlat1;
  let x_1692 : f32 = u_xlat66;
  u_xlat1 = (x_1691 * x_1692);
  let x_1694 : f32 = u_xlat1;
  u_xlat1 = (x_1694 * 6.0f);
  let x_1705 : vec4<f32> = u_xlat7;
  let x_1707 : f32 = u_xlat1;
  let x_1708 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1705.x, x_1705.y, x_1705.z), x_1707);
  u_xlat7 = x_1708;
  let x_1710 : f32 = u_xlat7.w;
  u_xlat1 = (x_1710 + -1.0f);
  let x_1717 : f32 = x_1715.unity_SpecCube0_HDR.w;
  let x_1718 : f32 = u_xlat1;
  u_xlat1 = ((x_1717 * x_1718) + 1.0f);
  let x_1721 : f32 = u_xlat1;
  u_xlat1 = max(x_1721, 0.0f);
  let x_1723 : f32 = u_xlat1;
  u_xlat1 = log2(x_1723);
  let x_1725 : f32 = u_xlat1;
  let x_1727 : f32 = x_1715.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1725 * x_1727);
  let x_1729 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1729);
  let x_1731 : f32 = u_xlat1;
  let x_1733 : f32 = x_1715.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1731 * x_1733);
  let x_1735 : vec4<f32> = u_xlat7;
  let x_1737 : f32 = u_xlat1;
  let x_1739 : vec3<f32> = (vec3<f32>(x_1735.x, x_1735.y, x_1735.z) * vec3<f32>(x_1737, x_1737, x_1737));
  let x_1740 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
  let x_1742 : f32 = u_xlat62;
  let x_1744 : f32 = u_xlat62;
  let x_1748 : vec2<f32> = ((vec2<f32>(x_1742, x_1742) * vec2<f32>(x_1744, x_1744)) + vec2<f32>(-1.0f, 1.0f));
  let x_1749 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1748.x, x_1748.y, x_1749.z, x_1749.w);
  let x_1752 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1752);
  let x_1754 : vec4<f32> = u_xlat0;
  let x_1757 : f32 = u_xlat60;
  u_xlat28 = (-(vec3<f32>(x_1754.x, x_1754.y, x_1754.z)) + vec3<f32>(x_1757, x_1757, x_1757));
  let x_1760 : f32 = u_xlat65;
  let x_1762 : vec3<f32> = u_xlat28;
  let x_1764 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1760, x_1760, x_1760) * x_1762) + vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
  let x_1767 : f32 = u_xlat1;
  let x_1769 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1767, x_1767, x_1767) * x_1769);
  let x_1771 : vec4<f32> = u_xlat7;
  let x_1773 : vec3<f32> = u_xlat28;
  let x_1774 : vec3<f32> = (vec3<f32>(x_1771.x, x_1771.y, x_1771.z) * x_1773);
  let x_1775 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1775.w);
  let x_1777 : vec4<f32> = u_xlat2;
  let x_1779 : vec3<f32> = u_xlat5;
  let x_1781 : vec4<f32> = u_xlat7;
  let x_1783 : vec3<f32> = ((vec3<f32>(x_1777.x, x_1777.y, x_1777.z) * x_1779) + vec3<f32>(x_1781.x, x_1781.y, x_1781.z));
  let x_1784 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
  let x_1786 : f32 = u_xlat64;
  let x_1789 : f32 = x_1715.unity_LightData.z;
  u_xlat60 = (x_1786 * x_1789);
  let x_1791 : vec3<f32> = u_xlat21;
  let x_1793 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_1791, vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
  let x_1796 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1796, 0.0f, 1.0f);
  let x_1798 : f32 = u_xlat60;
  let x_1799 : f32 = u_xlat1;
  u_xlat60 = (x_1798 * x_1799);
  let x_1801 : f32 = u_xlat60;
  let x_1803 : vec4<f32> = u_xlat6;
  let x_1805 : vec3<f32> = (vec3<f32>(x_1801, x_1801, x_1801) * vec3<f32>(x_1803.x, x_1803.y, x_1803.z));
  let x_1806 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
  let x_1808 : vec3<f32> = u_xlat3;
  let x_1810 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1812 : vec3<f32> = (x_1808 + vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
  let x_1813 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
  let x_1815 : vec4<f32> = u_xlat7;
  let x_1817 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1815.x, x_1815.y, x_1815.z), vec3<f32>(x_1817.x, x_1817.y, x_1817.z));
  let x_1820 : f32 = u_xlat60;
  u_xlat60 = max(x_1820, 1.17549435e-37f);
  let x_1823 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1823);
  let x_1825 : f32 = u_xlat60;
  let x_1827 : vec4<f32> = u_xlat7;
  let x_1829 : vec3<f32> = (vec3<f32>(x_1825, x_1825, x_1825) * vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
  let x_1830 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
  let x_1832 : vec3<f32> = u_xlat21;
  let x_1833 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1832, vec3<f32>(x_1833.x, x_1833.y, x_1833.z));
  let x_1836 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1836, 0.0f, 1.0f);
  let x_1839 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1841 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1839.x, x_1839.y, x_1839.z), vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
  let x_1844 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1844, 0.0f, 1.0f);
  let x_1846 : f32 = u_xlat60;
  let x_1847 : f32 = u_xlat60;
  u_xlat60 = (x_1846 * x_1847);
  let x_1849 : f32 = u_xlat60;
  let x_1851 : f32 = u_xlat8.x;
  u_xlat60 = ((x_1849 * x_1851) + 1.000010014f);
  let x_1855 : f32 = u_xlat1;
  let x_1856 : f32 = u_xlat1;
  u_xlat1 = (x_1855 * x_1856);
  let x_1858 : f32 = u_xlat60;
  let x_1859 : f32 = u_xlat60;
  u_xlat60 = (x_1858 * x_1859);
  let x_1861 : f32 = u_xlat1;
  u_xlat1 = max(x_1861, 0.100000001f);
  let x_1864 : f32 = u_xlat60;
  let x_1865 : f32 = u_xlat1;
  u_xlat60 = (x_1864 * x_1865);
  let x_1867 : f32 = u_xlat63;
  let x_1868 : f32 = u_xlat60;
  u_xlat60 = (x_1867 * x_1868);
  let x_1870 : f32 = u_xlat24;
  let x_1871 : f32 = u_xlat60;
  u_xlat60 = (x_1870 / x_1871);
  let x_1873 : vec4<f32> = u_xlat0;
  let x_1875 : f32 = u_xlat60;
  let x_1878 : vec3<f32> = u_xlat5;
  let x_1879 : vec3<f32> = ((vec3<f32>(x_1873.x, x_1873.y, x_1873.z) * vec3<f32>(x_1875, x_1875, x_1875)) + x_1878);
  let x_1880 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);
  let x_1882 : vec4<f32> = u_xlat6;
  let x_1884 : vec4<f32> = u_xlat7;
  let x_1886 : vec3<f32> = (vec3<f32>(x_1882.x, x_1882.y, x_1882.z) * vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
  let x_1890 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1892 : f32 = x_1715.unity_LightData.y;
  u_xlat60 = min(x_1890, x_1892);
  let x_1896 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_1896));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1908 : u32 = u_xlatu_loop_1;
    let x_1909 : u32 = u_xlatu60;
    if ((x_1908 < x_1909)) {
    } else {
      break;
    }
    let x_1912 : u32 = u_xlatu_loop_1;
    u_xlatu62 = (x_1912 >> 2u);
    let x_1916 : u32 = u_xlatu_loop_1;
    u_xlati64 = bitcast<i32>((x_1916 & 3u));
    let x_1919 : u32 = u_xlatu62;
    let x_1922 : vec4<f32> = x_1715.unity_LightIndices[bitcast<i32>(x_1919)];
    let x_1932 : i32 = u_xlati64;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1937 : vec4<u32> = indexable[x_1932];
    u_xlat62 = dot(x_1922, bitcast<vec4<f32>>(x_1937));
    let x_1941 : f32 = u_xlat62;
    u_xlati62 = i32(x_1941);
    let x_1943 : vec3<f32> = vs_TEXCOORD7;
    let x_1955 : i32 = u_xlati62;
    let x_1957 : vec4<f32> = x_1954.x_AdditionalLightsPosition[x_1955];
    let x_1960 : i32 = u_xlati62;
    let x_1962 : vec4<f32> = x_1954.x_AdditionalLightsPosition[x_1960];
    u_xlat28 = ((-(x_1943) * vec3<f32>(x_1957.w, x_1957.w, x_1957.w)) + vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
    let x_1965 : vec3<f32> = u_xlat28;
    let x_1966 : vec3<f32> = u_xlat28;
    u_xlat64 = dot(x_1965, x_1966);
    let x_1968 : f32 = u_xlat64;
    u_xlat64 = max(x_1968, 6.10351562e-05f);
    let x_1971 : f32 = u_xlat64;
    u_xlat65 = inverseSqrt(x_1971);
    let x_1973 : f32 = u_xlat65;
    let x_1975 : vec3<f32> = u_xlat28;
    let x_1976 : vec3<f32> = (vec3<f32>(x_1973, x_1973, x_1973) * x_1975);
    let x_1977 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1976.x, x_1976.y, x_1976.z, x_1977.w);
    let x_1979 : f32 = u_xlat64;
    u_xlat66 = (1.0f / x_1979);
    let x_1981 : f32 = u_xlat64;
    let x_1982 : i32 = u_xlati62;
    let x_1984 : f32 = x_1954.x_AdditionalLightsAttenuation[x_1982].x;
    u_xlat64 = (x_1981 * x_1984);
    let x_1986 : f32 = u_xlat64;
    let x_1988 : f32 = u_xlat64;
    u_xlat64 = ((-(x_1986) * x_1988) + 1.0f);
    let x_1991 : f32 = u_xlat64;
    u_xlat64 = max(x_1991, 0.0f);
    let x_1993 : f32 = u_xlat64;
    let x_1994 : f32 = u_xlat64;
    u_xlat64 = (x_1993 * x_1994);
    let x_1996 : f32 = u_xlat64;
    let x_1997 : f32 = u_xlat66;
    u_xlat64 = (x_1996 * x_1997);
    let x_1999 : i32 = u_xlati62;
    let x_2001 : vec4<f32> = x_1954.x_AdditionalLightsSpotDir[x_1999];
    let x_2003 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2001.x, x_2001.y, x_2001.z), vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
    let x_2006 : f32 = u_xlat66;
    let x_2007 : i32 = u_xlati62;
    let x_2009 : f32 = x_1954.x_AdditionalLightsAttenuation[x_2007].z;
    let x_2011 : i32 = u_xlati62;
    let x_2013 : f32 = x_1954.x_AdditionalLightsAttenuation[x_2011].w;
    u_xlat66 = ((x_2006 * x_2009) + x_2013);
    let x_2015 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2015, 0.0f, 1.0f);
    let x_2017 : f32 = u_xlat66;
    let x_2018 : f32 = u_xlat66;
    u_xlat66 = (x_2017 * x_2018);
    let x_2020 : f32 = u_xlat64;
    let x_2021 : f32 = u_xlat66;
    u_xlat64 = (x_2020 * x_2021);
    let x_2023 : f32 = u_xlat44;
    let x_2025 : i32 = u_xlati62;
    let x_2027 : vec4<f32> = x_1954.x_AdditionalLightsColor[x_2025];
    let x_2029 : vec3<f32> = (vec3<f32>(x_2023, x_2023, x_2023) * vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
    let x_2030 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
    let x_2032 : vec3<f32> = u_xlat21;
    let x_2033 : vec4<f32> = u_xlat9;
    u_xlat62 = dot(x_2032, vec3<f32>(x_2033.x, x_2033.y, x_2033.z));
    let x_2036 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2036, 0.0f, 1.0f);
    let x_2038 : f32 = u_xlat62;
    let x_2039 : f32 = u_xlat64;
    u_xlat62 = (x_2038 * x_2039);
    let x_2041 : f32 = u_xlat62;
    let x_2043 : vec4<f32> = u_xlat10;
    let x_2045 : vec3<f32> = (vec3<f32>(x_2041, x_2041, x_2041) * vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
    let x_2046 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
    let x_2048 : vec3<f32> = u_xlat28;
    let x_2049 : f32 = u_xlat65;
    let x_2052 : vec3<f32> = u_xlat3;
    u_xlat28 = ((x_2048 * vec3<f32>(x_2049, x_2049, x_2049)) + x_2052);
    let x_2054 : vec3<f32> = u_xlat28;
    let x_2055 : vec3<f32> = u_xlat28;
    u_xlat62 = dot(x_2054, x_2055);
    let x_2057 : f32 = u_xlat62;
    u_xlat62 = max(x_2057, 1.17549435e-37f);
    let x_2059 : f32 = u_xlat62;
    u_xlat62 = inverseSqrt(x_2059);
    let x_2061 : f32 = u_xlat62;
    let x_2063 : vec3<f32> = u_xlat28;
    u_xlat28 = (vec3<f32>(x_2061, x_2061, x_2061) * x_2063);
    let x_2065 : vec3<f32> = u_xlat21;
    let x_2066 : vec3<f32> = u_xlat28;
    u_xlat62 = dot(x_2065, x_2066);
    let x_2068 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2068, 0.0f, 1.0f);
    let x_2070 : vec4<f32> = u_xlat9;
    let x_2072 : vec3<f32> = u_xlat28;
    u_xlat64 = dot(vec3<f32>(x_2070.x, x_2070.y, x_2070.z), x_2072);
    let x_2074 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2074, 0.0f, 1.0f);
    let x_2076 : f32 = u_xlat62;
    let x_2077 : f32 = u_xlat62;
    u_xlat62 = (x_2076 * x_2077);
    let x_2079 : f32 = u_xlat62;
    let x_2081 : f32 = u_xlat8.x;
    u_xlat62 = ((x_2079 * x_2081) + 1.000010014f);
    let x_2084 : f32 = u_xlat64;
    let x_2085 : f32 = u_xlat64;
    u_xlat64 = (x_2084 * x_2085);
    let x_2087 : f32 = u_xlat62;
    let x_2088 : f32 = u_xlat62;
    u_xlat62 = (x_2087 * x_2088);
    let x_2090 : f32 = u_xlat64;
    u_xlat64 = max(x_2090, 0.100000001f);
    let x_2092 : f32 = u_xlat62;
    let x_2093 : f32 = u_xlat64;
    u_xlat62 = (x_2092 * x_2093);
    let x_2095 : f32 = u_xlat63;
    let x_2096 : f32 = u_xlat62;
    u_xlat62 = (x_2095 * x_2096);
    let x_2098 : f32 = u_xlat24;
    let x_2099 : f32 = u_xlat62;
    u_xlat62 = (x_2098 / x_2099);
    let x_2101 : vec4<f32> = u_xlat0;
    let x_2103 : f32 = u_xlat62;
    let x_2106 : vec3<f32> = u_xlat5;
    u_xlat28 = ((vec3<f32>(x_2101.x, x_2101.y, x_2101.z) * vec3<f32>(x_2103, x_2103, x_2103)) + x_2106);
    let x_2108 : vec3<f32> = u_xlat28;
    let x_2109 : vec4<f32> = u_xlat10;
    let x_2112 : vec4<f32> = u_xlat7;
    let x_2114 : vec3<f32> = ((x_2108 * vec3<f32>(x_2109.x, x_2109.y, x_2109.z)) + vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
    let x_2115 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);

    continuing {
      let x_2117 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2117 + bitcast<u32>(1i));
    }
  }
  let x_2119 : vec4<f32> = u_xlat2;
  let x_2121 : vec3<f32> = u_xlat4;
  let x_2124 : vec4<f32> = u_xlat6;
  let x_2126 : vec3<f32> = ((vec3<f32>(x_2119.x, x_2119.y, x_2119.z) * vec3<f32>(x_2121.x, x_2121.x, x_2121.x)) + vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
  let x_2127 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2126.x, x_2126.y, x_2126.z, x_2127.w);
  let x_2131 : vec4<f32> = u_xlat7;
  let x_2133 : vec4<f32> = u_xlat0;
  let x_2135 : vec3<f32> = (vec3<f32>(x_2131.x, x_2131.y, x_2131.z) + vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
  let x_2136 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
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

