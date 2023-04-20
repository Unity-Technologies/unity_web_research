diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_4,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_208 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb66 : bool;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1535 : UnityPerDraw;

var<private> u_xlatu22 : u32;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1652 : AdditionalLights;

var<private> u_xlat69 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

var<private> u_xlatb71 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlatb70 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb68 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1793 : f32;
  var x_1803 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3147 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat22 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat66;
  let x_90 : f32 = u_xlat44;
  u_xlat44 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat44;
  u_xlat44 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat22;
  let x_97 : f32 = u_xlat44;
  u_xlat22 = (x_96 / x_97);
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb44;
  if (x_109) {
    let x_113 : f32 = u_xlat22;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat22 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat22;
  u_xlatb22 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb22;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat22 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat22;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_154 : vec2<f32> = vs_TEXCOORD7;
  let x_156 : f32 = x_27.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_154, x_156);
  u_xlat3 = x_157;
  let x_163 : vec2<f32> = vs_TEXCOORD7;
  let x_165 : f32 = x_27.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_163, x_165);
  let x_167 : vec3<f32> = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat3;
  let x_174 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec3<f32> = u_xlat2;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat22 = dot(x_177, vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : f32 = u_xlat22;
  u_xlat22 = (x_181 + 0.5f);
  let x_183 : f32 = u_xlat22;
  let x_185 : vec4<f32> = u_xlat4;
  let x_187 : vec3<f32> = (vec3<f32>(x_183, x_183, x_183) * vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : f32 = u_xlat3.w;
  u_xlat22 = max(x_191, 0.00009999999747378752f);
  let x_193 : vec4<f32> = u_xlat3;
  let x_195 : f32 = u_xlat22;
  let x_197 : vec3<f32> = (vec3<f32>(x_193.x, x_193.y, x_193.z) / vec3<f32>(x_195, x_195, x_195));
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_212 : f32 = x_208.x_MainLightShadowParams.y;
  u_xlatb22 = (0.0f < x_212);
  let x_214 : bool = u_xlatb22;
  if (x_214) {
    let x_218 : f32 = x_208.x_MainLightShadowParams.y;
    u_xlatb22 = (x_218 == 1.0f);
    let x_220 : bool = u_xlatb22;
    if (x_220) {
      let x_225 : vec4<f32> = vs_TEXCOORD6;
      let x_229 : vec4<f32> = x_208.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_225.x, x_225.y, x_225.x, x_225.y) + x_229);
      let x_233 : vec4<f32> = u_xlat4;
      let x_234 : vec2<f32> = vec2<f32>(x_233.x, x_233.y);
      let x_238 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_234.x, x_234.y, x_238);
      let x_251 : vec3<f32> = txVec0;
      let x_253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_251.xy, x_251.z);
      u_xlat5.x = x_253;
      let x_256 : vec4<f32> = u_xlat4;
      let x_257 : vec2<f32> = vec2<f32>(x_256.z, x_256.w);
      let x_259 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_257.x, x_257.y, x_259);
      let x_266 : vec3<f32> = txVec1;
      let x_268 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_266.xy, x_266.z);
      u_xlat5.y = x_268;
      let x_270 : vec4<f32> = vs_TEXCOORD6;
      let x_274 : vec4<f32> = x_208.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_270.x, x_270.y, x_270.x, x_270.y) + x_274);
      let x_277 : vec4<f32> = u_xlat4;
      let x_278 : vec2<f32> = vec2<f32>(x_277.x, x_277.y);
      let x_280 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_278.x, x_278.y, x_280);
      let x_287 : vec3<f32> = txVec2;
      let x_289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_287.xy, x_287.z);
      u_xlat5.z = x_289;
      let x_292 : vec4<f32> = u_xlat4;
      let x_293 : vec2<f32> = vec2<f32>(x_292.z, x_292.w);
      let x_295 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_293.x, x_293.y, x_295);
      let x_302 : vec3<f32> = txVec3;
      let x_304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_302.xy, x_302.z);
      u_xlat5.w = x_304;
      let x_306 : vec4<f32> = u_xlat5;
      u_xlat22 = dot(x_306, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_313 : f32 = x_208.x_MainLightShadowParams.y;
      u_xlatb66 = (x_313 == 2.0f);
      let x_316 : bool = u_xlatb66;
      if (x_316) {
        let x_319 : vec4<f32> = vs_TEXCOORD6;
        let x_323 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_327 : vec2<f32> = ((vec2<f32>(x_319.x, x_319.y) * vec2<f32>(x_323.z, x_323.w)) + vec2<f32>(0.5f, 0.5f));
        let x_328 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_328.z, x_328.w);
        let x_330 : vec4<f32> = u_xlat4;
        let x_332 : vec2<f32> = floor(vec2<f32>(x_330.x, x_330.y));
        let x_333 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_332.x, x_332.y, x_333.z, x_333.w);
        let x_337 : vec4<f32> = vs_TEXCOORD6;
        let x_340 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_343 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_337.x, x_337.y) * vec2<f32>(x_340.z, x_340.w)) + -(vec2<f32>(x_343.x, x_343.y)));
        let x_347 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_347.x, x_347.x, x_347.y, x_347.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_352 : vec4<f32> = u_xlat5;
        let x_354 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_352.x, x_352.x, x_352.z, x_352.z) * vec4<f32>(x_354.x, x_354.x, x_354.z, x_354.z));
        let x_357 : vec4<f32> = u_xlat6;
        let x_361 : vec2<f32> = (vec2<f32>(x_357.y, x_357.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_362 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_361.x, x_362.y, x_361.y, x_362.w);
        let x_364 : vec4<f32> = u_xlat6;
        let x_367 : vec2<f32> = u_xlat48;
        let x_369 : vec2<f32> = ((vec2<f32>(x_364.x, x_364.z) * vec2<f32>(0.5f, 0.5f)) + -(x_367));
        let x_370 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
        let x_373 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_373) + vec2<f32>(1.0f, 1.0f));
        let x_378 : vec2<f32> = u_xlat48;
        let x_380 : vec2<f32> = min(x_378, vec2<f32>(0.0f, 0.0f));
        let x_381 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
        let x_383 : vec4<f32> = u_xlat7;
        let x_386 : vec4<f32> = u_xlat7;
        let x_389 : vec2<f32> = u_xlat50;
        let x_390 : vec2<f32> = ((-(vec2<f32>(x_383.x, x_383.y)) * vec2<f32>(x_386.x, x_386.y)) + x_389);
        let x_391 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
        let x_393 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_393, vec2<f32>(0.0f, 0.0f));
        let x_395 : vec2<f32> = u_xlat48;
        let x_397 : vec2<f32> = u_xlat48;
        let x_399 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_395) * x_397) + vec2<f32>(x_399.y, x_399.w));
        let x_402 : vec4<f32> = u_xlat7;
        let x_404 : vec2<f32> = (vec2<f32>(x_402.x, x_402.y) + vec2<f32>(1.0f, 1.0f));
        let x_405 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
        let x_407 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_407 + vec2<f32>(1.0f, 1.0f));
        let x_410 : vec4<f32> = u_xlat6;
        let x_414 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_415 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
        let x_417 : vec2<f32> = u_xlat50;
        let x_418 : vec2<f32> = (x_417 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_419 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
        let x_421 : vec4<f32> = u_xlat7;
        let x_423 : vec2<f32> = (vec2<f32>(x_421.x, x_421.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_424 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
        let x_427 : vec2<f32> = u_xlat48;
        let x_428 : vec2<f32> = (x_427 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_429 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
        let x_431 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_431.y, x_431.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_435 : f32 = u_xlat7.x;
        u_xlat8.z = x_435;
        let x_438 : f32 = u_xlat48.x;
        u_xlat8.w = x_438;
        let x_441 : f32 = u_xlat9.x;
        u_xlat6.z = x_441;
        let x_444 : f32 = u_xlat5.x;
        u_xlat6.w = x_444;
        let x_447 : vec4<f32> = u_xlat6;
        let x_449 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_447.z, x_447.w, x_447.x, x_447.z) + vec4<f32>(x_449.z, x_449.w, x_449.x, x_449.z));
        let x_453 : f32 = u_xlat8.y;
        u_xlat7.z = x_453;
        let x_456 : f32 = u_xlat48.y;
        u_xlat7.w = x_456;
        let x_459 : f32 = u_xlat6.y;
        u_xlat9.z = x_459;
        let x_462 : f32 = u_xlat5.z;
        u_xlat9.w = x_462;
        let x_464 : vec4<f32> = u_xlat7;
        let x_466 : vec4<f32> = u_xlat9;
        let x_468 : vec3<f32> = (vec3<f32>(x_464.z, x_464.y, x_464.w) + vec3<f32>(x_466.z, x_466.y, x_466.w));
        let x_469 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
        let x_471 : vec4<f32> = u_xlat6;
        let x_473 : vec4<f32> = u_xlat10;
        let x_475 : vec3<f32> = (vec3<f32>(x_471.x, x_471.z, x_471.w) / vec3<f32>(x_473.z, x_473.w, x_473.y));
        let x_476 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
        let x_478 : vec4<f32> = u_xlat6;
        let x_483 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_484 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
        let x_486 : vec4<f32> = u_xlat9;
        let x_488 : vec4<f32> = u_xlat5;
        let x_490 : vec3<f32> = (vec3<f32>(x_486.z, x_486.y, x_486.w) / vec3<f32>(x_488.x, x_488.y, x_488.z));
        let x_491 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat7;
        let x_495 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_496 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
        let x_498 : vec4<f32> = u_xlat6;
        let x_501 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_503 : vec3<f32> = (vec3<f32>(x_498.y, x_498.x, x_498.z) * vec3<f32>(x_501.x, x_501.x, x_501.x));
        let x_504 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
        let x_506 : vec4<f32> = u_xlat7;
        let x_509 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_511 : vec3<f32> = (vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_509.y, x_509.y, x_509.y));
        let x_512 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
        let x_515 : f32 = u_xlat7.x;
        u_xlat6.w = x_515;
        let x_517 : vec4<f32> = u_xlat4;
        let x_520 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_523 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y) * vec4<f32>(x_520.x, x_520.y, x_520.x, x_520.y)) + vec4<f32>(x_523.y, x_523.w, x_523.x, x_523.w));
        let x_526 : vec4<f32> = u_xlat4;
        let x_529 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_529.x, x_529.y)) + vec2<f32>(x_532.z, x_532.w));
        let x_536 : f32 = u_xlat6.y;
        u_xlat7.w = x_536;
        let x_538 : vec4<f32> = u_xlat7;
        let x_539 : vec2<f32> = vec2<f32>(x_538.y, x_538.z);
        let x_540 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_540.x, x_539.x, x_540.z, x_539.y);
        let x_542 : vec4<f32> = u_xlat4;
        let x_545 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_548 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_542.x, x_542.y, x_542.x, x_542.y) * vec4<f32>(x_545.x, x_545.y, x_545.x, x_545.y)) + vec4<f32>(x_548.x, x_548.y, x_548.z, x_548.y));
        let x_551 : vec4<f32> = u_xlat4;
        let x_554 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_557 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_551.x, x_551.y, x_551.x, x_551.y) * vec4<f32>(x_554.x, x_554.y, x_554.x, x_554.y)) + vec4<f32>(x_557.w, x_557.y, x_557.w, x_557.z));
        let x_560 : vec4<f32> = u_xlat4;
        let x_563 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_566 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_560.x, x_560.y, x_560.x, x_560.y) * vec4<f32>(x_563.x, x_563.y, x_563.x, x_563.y)) + vec4<f32>(x_566.x, x_566.w, x_566.z, x_566.w));
        let x_570 : vec4<f32> = u_xlat5;
        let x_572 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_570.x, x_570.x, x_570.x, x_570.y) * vec4<f32>(x_572.z, x_572.w, x_572.y, x_572.z));
        let x_576 : vec4<f32> = u_xlat5;
        let x_578 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_576.y, x_576.y, x_576.z, x_576.z) * x_578);
        let x_581 : f32 = u_xlat5.z;
        let x_583 : f32 = u_xlat10.y;
        u_xlat66 = (x_581 * x_583);
        let x_586 : vec4<f32> = u_xlat8;
        let x_587 : vec2<f32> = vec2<f32>(x_586.x, x_586.y);
        let x_589 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_587.x, x_587.y, x_589);
        let x_596 : vec3<f32> = txVec4;
        let x_598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_596.xy, x_596.z);
        u_xlat1.x = x_598;
        let x_601 : vec4<f32> = u_xlat8;
        let x_602 : vec2<f32> = vec2<f32>(x_601.z, x_601.w);
        let x_604 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_602.x, x_602.y, x_604);
        let x_612 : vec3<f32> = txVec5;
        let x_614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_612.xy, x_612.z);
        u_xlat68 = x_614;
        let x_615 : f32 = u_xlat68;
        let x_617 : f32 = u_xlat11.y;
        u_xlat68 = (x_615 * x_617);
        let x_620 : f32 = u_xlat11.x;
        let x_622 : f32 = u_xlat1.x;
        let x_624 : f32 = u_xlat68;
        u_xlat1.x = ((x_620 * x_622) + x_624);
        let x_628 : vec2<f32> = u_xlat48;
        let x_630 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_628.x, x_628.y, x_630);
        let x_637 : vec3<f32> = txVec6;
        let x_639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_637.xy, x_637.z);
        u_xlat68 = x_639;
        let x_641 : f32 = u_xlat11.z;
        let x_642 : f32 = u_xlat68;
        let x_645 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_641 * x_642) + x_645);
        let x_649 : vec4<f32> = u_xlat7;
        let x_650 : vec2<f32> = vec2<f32>(x_649.x, x_649.y);
        let x_652 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_650.x, x_650.y, x_652);
        let x_659 : vec3<f32> = txVec7;
        let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_659.xy, x_659.z);
        u_xlat68 = x_661;
        let x_663 : f32 = u_xlat11.w;
        let x_664 : f32 = u_xlat68;
        let x_667 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_663 * x_664) + x_667);
        let x_671 : vec4<f32> = u_xlat9;
        let x_672 : vec2<f32> = vec2<f32>(x_671.x, x_671.y);
        let x_674 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_672.x, x_672.y, x_674);
        let x_681 : vec3<f32> = txVec8;
        let x_683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_681.xy, x_681.z);
        u_xlat68 = x_683;
        let x_685 : f32 = u_xlat12.x;
        let x_686 : f32 = u_xlat68;
        let x_689 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_685 * x_686) + x_689);
        let x_693 : vec4<f32> = u_xlat9;
        let x_694 : vec2<f32> = vec2<f32>(x_693.z, x_693.w);
        let x_696 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_694.x, x_694.y, x_696);
        let x_703 : vec3<f32> = txVec9;
        let x_705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_703.xy, x_703.z);
        u_xlat68 = x_705;
        let x_707 : f32 = u_xlat12.y;
        let x_708 : f32 = u_xlat68;
        let x_711 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_707 * x_708) + x_711);
        let x_715 : vec4<f32> = u_xlat7;
        let x_716 : vec2<f32> = vec2<f32>(x_715.z, x_715.w);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec10;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat68 = x_727;
        let x_729 : f32 = u_xlat12.z;
        let x_730 : f32 = u_xlat68;
        let x_733 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_729 * x_730) + x_733);
        let x_737 : vec4<f32> = u_xlat6;
        let x_738 : vec2<f32> = vec2<f32>(x_737.x, x_737.y);
        let x_740 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_738.x, x_738.y, x_740);
        let x_747 : vec3<f32> = txVec11;
        let x_749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_747.xy, x_747.z);
        u_xlat68 = x_749;
        let x_751 : f32 = u_xlat12.w;
        let x_752 : f32 = u_xlat68;
        let x_755 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_751 * x_752) + x_755);
        let x_759 : vec4<f32> = u_xlat6;
        let x_760 : vec2<f32> = vec2<f32>(x_759.z, x_759.w);
        let x_762 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_760.x, x_760.y, x_762);
        let x_769 : vec3<f32> = txVec12;
        let x_771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_769.xy, x_769.z);
        u_xlat68 = x_771;
        let x_772 : f32 = u_xlat66;
        let x_773 : f32 = u_xlat68;
        let x_776 : f32 = u_xlat1.x;
        u_xlat22 = ((x_772 * x_773) + x_776);
      } else {
        let x_779 : vec4<f32> = vs_TEXCOORD6;
        let x_782 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_785 : vec2<f32> = ((vec2<f32>(x_779.x, x_779.y) * vec2<f32>(x_782.z, x_782.w)) + vec2<f32>(0.5f, 0.5f));
        let x_786 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_785.x, x_785.y, x_786.z, x_786.w);
        let x_788 : vec4<f32> = u_xlat4;
        let x_790 : vec2<f32> = floor(vec2<f32>(x_788.x, x_788.y));
        let x_791 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
        let x_793 : vec4<f32> = vs_TEXCOORD6;
        let x_796 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_799 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_793.x, x_793.y) * vec2<f32>(x_796.z, x_796.w)) + -(vec2<f32>(x_799.x, x_799.y)));
        let x_803 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_803.x, x_803.x, x_803.y, x_803.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_806 : vec4<f32> = u_xlat5;
        let x_808 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_806.x, x_806.x, x_806.z, x_806.z) * vec4<f32>(x_808.x, x_808.x, x_808.z, x_808.z));
        let x_811 : vec4<f32> = u_xlat6;
        let x_815 : vec2<f32> = (vec2<f32>(x_811.y, x_811.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_816 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_816.x, x_815.x, x_816.z, x_815.y);
        let x_818 : vec4<f32> = u_xlat6;
        let x_821 : vec2<f32> = u_xlat48;
        let x_823 : vec2<f32> = ((vec2<f32>(x_818.x, x_818.z) * vec2<f32>(0.5f, 0.5f)) + -(x_821));
        let x_824 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_823.x, x_824.y, x_823.y, x_824.w);
        let x_826 : vec2<f32> = u_xlat48;
        let x_828 : vec2<f32> = (-(x_826) + vec2<f32>(1.0f, 1.0f));
        let x_829 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_828.x, x_828.y, x_829.z, x_829.w);
        let x_831 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_831, vec2<f32>(0.0f, 0.0f));
        let x_833 : vec2<f32> = u_xlat50;
        let x_835 : vec2<f32> = u_xlat50;
        let x_837 : vec4<f32> = u_xlat6;
        let x_839 : vec2<f32> = ((-(x_833) * x_835) + vec2<f32>(x_837.x, x_837.y));
        let x_840 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
        let x_842 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_842, vec2<f32>(0.0f, 0.0f));
        let x_845 : vec2<f32> = u_xlat50;
        let x_847 : vec2<f32> = u_xlat50;
        let x_849 : vec4<f32> = u_xlat5;
        let x_851 : vec2<f32> = ((-(x_845) * x_847) + vec2<f32>(x_849.y, x_849.w));
        let x_852 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_851.x, x_852.y, x_851.y);
        let x_854 : vec4<f32> = u_xlat6;
        let x_857 : vec2<f32> = (vec2<f32>(x_854.x, x_854.y) + vec2<f32>(2.0f, 2.0f));
        let x_858 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
        let x_860 : vec3<f32> = u_xlat27;
        let x_862 : vec2<f32> = (vec2<f32>(x_860.x, x_860.z) + vec2<f32>(2.0f, 2.0f));
        let x_863 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_863.x, x_862.x, x_863.z, x_862.y);
        let x_866 : f32 = u_xlat5.y;
        u_xlat8.z = (x_866 * 0.08163200318813323975f);
        let x_870 : vec4<f32> = u_xlat5;
        let x_873 : vec3<f32> = (vec3<f32>(x_870.z, x_870.x, x_870.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_874 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
        let x_876 : vec4<f32> = u_xlat6;
        let x_879 : vec2<f32> = (vec2<f32>(x_876.x, x_876.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_880 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
        let x_883 : f32 = u_xlat9.y;
        u_xlat8.x = x_883;
        let x_885 : vec2<f32> = u_xlat48;
        let x_892 : vec2<f32> = ((vec2<f32>(x_885.x, x_885.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_893 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_893.x, x_892.x, x_893.z, x_892.y);
        let x_895 : vec2<f32> = u_xlat48;
        let x_899 : vec2<f32> = ((vec2<f32>(x_895.x, x_895.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_900 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_899.x, x_900.y, x_899.y, x_900.w);
        let x_903 : f32 = u_xlat5.x;
        u_xlat6.y = x_903;
        let x_906 : f32 = u_xlat7.y;
        u_xlat6.w = x_906;
        let x_908 : vec4<f32> = u_xlat6;
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_908 + x_909);
        let x_911 : vec2<f32> = u_xlat48;
        let x_914 : vec2<f32> = ((vec2<f32>(x_911.y, x_911.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_915 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_915.x, x_914.x, x_915.z, x_914.y);
        let x_917 : vec2<f32> = u_xlat48;
        let x_920 : vec2<f32> = ((vec2<f32>(x_917.y, x_917.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_920.x, x_921.y, x_920.y, x_921.w);
        let x_924 : f32 = u_xlat5.y;
        u_xlat7.y = x_924;
        let x_926 : vec4<f32> = u_xlat7;
        let x_927 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_926 + x_927);
        let x_929 : vec4<f32> = u_xlat6;
        let x_930 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_929 / x_930);
        let x_932 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_932 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_938 : vec4<f32> = u_xlat7;
        let x_939 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_938 / x_939);
        let x_941 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_941 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_943 : vec4<f32> = u_xlat6;
        let x_946 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_943.w, x_943.x, x_943.y, x_943.z) * vec4<f32>(x_946.x, x_946.x, x_946.x, x_946.x));
        let x_949 : vec4<f32> = u_xlat7;
        let x_952 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_949.x, x_949.w, x_949.y, x_949.z) * vec4<f32>(x_952.y, x_952.y, x_952.y, x_952.y));
        let x_955 : vec4<f32> = u_xlat6;
        let x_956 : vec3<f32> = vec3<f32>(x_955.y, x_955.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_956.x, x_957.y, x_956.y, x_956.z);
        let x_960 : f32 = u_xlat7.x;
        u_xlat9.y = x_960;
        let x_962 : vec4<f32> = u_xlat4;
        let x_965 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_962.x, x_962.y, x_962.x, x_962.y) * vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.y)) + vec4<f32>(x_968.x, x_968.y, x_968.z, x_968.y));
        let x_971 : vec4<f32> = u_xlat4;
        let x_974 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_977 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_971.x, x_971.y) * vec2<f32>(x_974.x, x_974.y)) + vec2<f32>(x_977.w, x_977.y));
        let x_981 : f32 = u_xlat9.y;
        u_xlat6.y = x_981;
        let x_984 : f32 = u_xlat7.z;
        u_xlat9.y = x_984;
        let x_986 : vec4<f32> = u_xlat4;
        let x_989 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_992 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_986.x, x_986.y, x_986.x, x_986.y) * vec4<f32>(x_989.x, x_989.y, x_989.x, x_989.y)) + vec4<f32>(x_992.x, x_992.y, x_992.z, x_992.y));
        let x_995 : vec4<f32> = u_xlat4;
        let x_998 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1001 : vec4<f32> = u_xlat9;
        let x_1003 : vec2<f32> = ((vec2<f32>(x_995.x, x_995.y) * vec2<f32>(x_998.x, x_998.y)) + vec2<f32>(x_1001.w, x_1001.y));
        let x_1004 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1003.x, x_1003.y, x_1004.z, x_1004.w);
        let x_1007 : f32 = u_xlat9.y;
        u_xlat6.z = x_1007;
        let x_1010 : vec4<f32> = u_xlat4;
        let x_1013 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1016 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1010.x, x_1010.y, x_1010.x, x_1010.y) * vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y)) + vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.z));
        let x_1020 : f32 = u_xlat7.w;
        u_xlat9.y = x_1020;
        let x_1023 : vec4<f32> = u_xlat4;
        let x_1026 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1029 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y) * vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y)) + vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1029.y));
        let x_1033 : vec4<f32> = u_xlat4;
        let x_1036 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1039 : vec4<f32> = u_xlat9;
        u_xlat28 = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1036.x, x_1036.y)) + vec2<f32>(x_1039.w, x_1039.y));
        let x_1043 : f32 = u_xlat9.y;
        u_xlat6.w = x_1043;
        let x_1046 : vec4<f32> = u_xlat4;
        let x_1049 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1052 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1049.x, x_1049.y)) + vec2<f32>(x_1052.x, x_1052.w));
        let x_1055 : vec4<f32> = u_xlat9;
        let x_1056 : vec3<f32> = vec3<f32>(x_1055.x, x_1055.z, x_1055.w);
        let x_1057 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1056.x, x_1057.y, x_1056.y, x_1056.z);
        let x_1059 : vec4<f32> = u_xlat4;
        let x_1062 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y) * vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y)) + vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1065.y));
        let x_1069 : vec4<f32> = u_xlat4;
        let x_1072 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1075 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1069.x, x_1069.y) * vec2<f32>(x_1072.x, x_1072.y)) + vec2<f32>(x_1075.w, x_1075.y));
        let x_1079 : f32 = u_xlat6.x;
        u_xlat7.x = x_1079;
        let x_1081 : vec4<f32> = u_xlat4;
        let x_1084 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1084.x, x_1084.y)) + vec2<f32>(x_1087.x, x_1087.y));
        let x_1090 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1093 : vec4<f32> = u_xlat5;
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1093.x, x_1093.x, x_1093.x, x_1093.x) * x_1095);
        let x_1098 : vec4<f32> = u_xlat5;
        let x_1100 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1098.y, x_1098.y, x_1098.y, x_1098.y) * x_1100);
        let x_1103 : vec4<f32> = u_xlat5;
        let x_1105 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1103.z, x_1103.z, x_1103.z, x_1103.z) * x_1105);
        let x_1107 : vec4<f32> = u_xlat5;
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1107.w, x_1107.w, x_1107.w, x_1107.w) * x_1109);
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1113 : vec2<f32> = vec2<f32>(x_1112.x, x_1112.y);
        let x_1115 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1113.x, x_1113.y, x_1115);
        let x_1122 : vec3<f32> = txVec13;
        let x_1124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1122.xy, x_1122.z);
        u_xlat66 = x_1124;
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1127 : vec2<f32> = vec2<f32>(x_1126.z, x_1126.w);
        let x_1129 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1136 : vec3<f32> = txVec14;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1136.xy, x_1136.z);
        u_xlat1.x = x_1138;
        let x_1141 : f32 = u_xlat1.x;
        let x_1143 : f32 = u_xlat15.y;
        u_xlat1.x = (x_1141 * x_1143);
        let x_1147 : f32 = u_xlat15.x;
        let x_1148 : f32 = u_xlat66;
        let x_1151 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1147 * x_1148) + x_1151);
        let x_1154 : vec2<f32> = u_xlat48;
        let x_1156 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec15;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1163.xy, x_1163.z);
        u_xlat1.x = x_1165;
        let x_1168 : f32 = u_xlat15.z;
        let x_1170 : f32 = u_xlat1.x;
        let x_1172 : f32 = u_xlat66;
        u_xlat66 = ((x_1168 * x_1170) + x_1172);
        let x_1175 : vec4<f32> = u_xlat13;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.x, x_1175.y);
        let x_1178 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec16;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1185.xy, x_1185.z);
        u_xlat1.x = x_1187;
        let x_1190 : f32 = u_xlat15.w;
        let x_1192 : f32 = u_xlat1.x;
        let x_1194 : f32 = u_xlat66;
        u_xlat66 = ((x_1190 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat11;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec17;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1207.xy, x_1207.z);
        u_xlat1.x = x_1209;
        let x_1212 : f32 = u_xlat16.x;
        let x_1214 : f32 = u_xlat1.x;
        let x_1216 : f32 = u_xlat66;
        u_xlat66 = ((x_1212 * x_1214) + x_1216);
        let x_1219 : vec4<f32> = u_xlat11;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec18;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1229.xy, x_1229.z);
        u_xlat1.x = x_1231;
        let x_1234 : f32 = u_xlat16.y;
        let x_1236 : f32 = u_xlat1.x;
        let x_1238 : f32 = u_xlat66;
        u_xlat66 = ((x_1234 * x_1236) + x_1238);
        let x_1241 : vec4<f32> = u_xlat12;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.x, x_1241.y);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec19;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat1.x = x_1253;
        let x_1256 : f32 = u_xlat16.z;
        let x_1258 : f32 = u_xlat1.x;
        let x_1260 : f32 = u_xlat66;
        u_xlat66 = ((x_1256 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat13;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.z, x_1263.w);
        let x_1266 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec20;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat1.x = x_1275;
        let x_1278 : f32 = u_xlat16.w;
        let x_1280 : f32 = u_xlat1.x;
        let x_1282 : f32 = u_xlat66;
        u_xlat66 = ((x_1278 * x_1280) + x_1282);
        let x_1285 : vec4<f32> = u_xlat14;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.x, x_1285.y);
        let x_1288 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec21;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat1.x = x_1297;
        let x_1300 : f32 = u_xlat17.x;
        let x_1302 : f32 = u_xlat1.x;
        let x_1304 : f32 = u_xlat66;
        u_xlat66 = ((x_1300 * x_1302) + x_1304);
        let x_1307 : vec4<f32> = u_xlat14;
        let x_1308 : vec2<f32> = vec2<f32>(x_1307.z, x_1307.w);
        let x_1310 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec22;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1317.xy, x_1317.z);
        u_xlat1.x = x_1319;
        let x_1322 : f32 = u_xlat17.y;
        let x_1324 : f32 = u_xlat1.x;
        let x_1326 : f32 = u_xlat66;
        u_xlat66 = ((x_1322 * x_1324) + x_1326);
        let x_1329 : vec2<f32> = u_xlat28;
        let x_1331 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec23;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1338.xy, x_1338.z);
        u_xlat1.x = x_1340;
        let x_1343 : f32 = u_xlat17.z;
        let x_1345 : f32 = u_xlat1.x;
        let x_1347 : f32 = u_xlat66;
        u_xlat66 = ((x_1343 * x_1345) + x_1347);
        let x_1350 : vec2<f32> = u_xlat56;
        let x_1352 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec24;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat1.x = x_1361;
        let x_1364 : f32 = u_xlat17.w;
        let x_1366 : f32 = u_xlat1.x;
        let x_1368 : f32 = u_xlat66;
        u_xlat66 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec4<f32> = u_xlat9;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.x, x_1371.y);
        let x_1374 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec25;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat1.x = x_1383;
        let x_1386 : f32 = u_xlat5.x;
        let x_1388 : f32 = u_xlat1.x;
        let x_1390 : f32 = u_xlat66;
        u_xlat66 = ((x_1386 * x_1388) + x_1390);
        let x_1393 : vec4<f32> = u_xlat9;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.z, x_1393.w);
        let x_1396 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec26;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1403.xy, x_1403.z);
        u_xlat1.x = x_1405;
        let x_1408 : f32 = u_xlat5.y;
        let x_1410 : f32 = u_xlat1.x;
        let x_1412 : f32 = u_xlat66;
        u_xlat66 = ((x_1408 * x_1410) + x_1412);
        let x_1415 : vec2<f32> = u_xlat51;
        let x_1417 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec27;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat1.x = x_1426;
        let x_1429 : f32 = u_xlat5.z;
        let x_1431 : f32 = u_xlat1.x;
        let x_1433 : f32 = u_xlat66;
        u_xlat66 = ((x_1429 * x_1431) + x_1433);
        let x_1436 : vec4<f32> = u_xlat4;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec28;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1446.xy, x_1446.z);
        u_xlat1.x = x_1448;
        let x_1451 : f32 = u_xlat5.w;
        let x_1453 : f32 = u_xlat1.x;
        let x_1455 : f32 = u_xlat66;
        u_xlat22 = ((x_1451 * x_1453) + x_1455);
      }
    }
  } else {
    let x_1459 : vec4<f32> = vs_TEXCOORD6;
    let x_1460 : vec2<f32> = vec2<f32>(x_1459.x, x_1459.y);
    let x_1462 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
    let x_1469 : vec3<f32> = txVec29;
    let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
    u_xlat22 = x_1471;
  }
  let x_1473 : f32 = x_208.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1473) + 1.0f);
  let x_1476 : f32 = u_xlat22;
  let x_1478 : f32 = x_208.x_MainLightShadowParams.x;
  let x_1480 : f32 = u_xlat66;
  u_xlat22 = ((x_1476 * x_1478) + x_1480);
  let x_1483 : f32 = vs_TEXCOORD6.z;
  u_xlatb66 = (0.0f >= x_1483);
  let x_1487 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_1487 >= 1.0f);
  let x_1489 : bool = u_xlatb66;
  let x_1490 : bool = u_xlatb1;
  u_xlatb66 = (x_1489 | x_1490);
  let x_1492 : bool = u_xlatb66;
  let x_1493 : f32 = u_xlat22;
  u_xlat22 = select(x_1493, 1.0f, x_1492);
  let x_1496 : vec3<f32> = vs_TEXCOORD1;
  let x_1500 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1502 : vec3<f32> = (x_1496 + -(x_1500));
  let x_1503 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
  let x_1505 : vec4<f32> = u_xlat4;
  let x_1507 : vec4<f32> = u_xlat4;
  u_xlat66 = dot(vec3<f32>(x_1505.x, x_1505.y, x_1505.z), vec3<f32>(x_1507.x, x_1507.y, x_1507.z));
  let x_1510 : f32 = u_xlat66;
  let x_1512 : f32 = x_208.x_MainLightShadowParams.z;
  let x_1515 : f32 = x_208.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1510 * x_1512) + x_1515);
  let x_1519 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1519, 0.0f, 1.0f);
  let x_1522 : f32 = u_xlat22;
  u_xlat68 = (-(x_1522) + 1.0f);
  let x_1526 : f32 = u_xlat1.x;
  let x_1527 : f32 = u_xlat68;
  let x_1529 : f32 = u_xlat22;
  u_xlat22 = ((x_1526 * x_1527) + x_1529);
  let x_1531 : f32 = u_xlat22;
  let x_1537 : f32 = x_1535.unity_LightData.z;
  u_xlat22 = (x_1531 * x_1537);
  let x_1539 : f32 = u_xlat22;
  let x_1543 : vec4<f32> = x_27.x_MainLightColor;
  let x_1545 : vec3<f32> = (vec3<f32>(x_1539, x_1539, x_1539) * vec3<f32>(x_1543.x, x_1543.y, x_1543.z));
  let x_1546 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1546.w);
  let x_1548 : vec3<f32> = u_xlat2;
  let x_1551 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat22 = dot(x_1548, vec3<f32>(x_1551.x, x_1551.y, x_1551.z));
  let x_1554 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1554, 0.0f, 1.0f);
  let x_1556 : f32 = u_xlat22;
  let x_1558 : vec4<f32> = u_xlat4;
  let x_1560 : vec3<f32> = (vec3<f32>(x_1556, x_1556, x_1556) * vec3<f32>(x_1558.x, x_1558.y, x_1558.z));
  let x_1561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1560.x, x_1560.y, x_1560.z, x_1561.w);
  let x_1563 : vec4<f32> = u_xlat1;
  let x_1565 : vec4<f32> = u_xlat4;
  let x_1567 : vec3<f32> = (vec3<f32>(x_1563.y, x_1563.z, x_1563.w) * vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
  let x_1568 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1568.w);
  let x_1570 : vec4<f32> = u_xlat0;
  let x_1572 : vec4<f32> = u_xlat4;
  let x_1574 : vec3<f32> = (vec3<f32>(x_1570.x, x_1570.x, x_1570.x) * vec3<f32>(x_1572.x, x_1572.y, x_1572.z));
  let x_1575 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1575.w);
  let x_1578 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1580 : f32 = x_1535.unity_LightData.y;
  u_xlat22 = min(x_1578, x_1580);
  let x_1584 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_1584));
  let x_1587 : f32 = u_xlat66;
  let x_1590 : f32 = x_208.x_AdditionalShadowFadeParams.x;
  let x_1593 : f32 = x_208.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1587 * x_1590) + x_1593);
  let x_1595 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1595, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1607 : u32 = u_xlatu_loop_1;
    let x_1608 : u32 = u_xlatu22;
    if ((x_1607 < x_1608)) {
    } else {
      break;
    }
    let x_1611 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1611 >> 2u);
    let x_1615 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1615 & 3u));
    let x_1618 : u32 = u_xlatu68;
    let x_1621 : vec4<f32> = x_1535.unity_LightIndices[bitcast<i32>(x_1618)];
    let x_1631 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1636 : vec4<u32> = indexable[x_1631];
    u_xlat68 = dot(x_1621, bitcast<vec4<f32>>(x_1636));
    let x_1640 : f32 = u_xlat68;
    u_xlati68 = i32(x_1640);
    let x_1642 : vec3<f32> = vs_TEXCOORD1;
    let x_1653 : i32 = u_xlati68;
    let x_1655 : vec4<f32> = x_1652.x_AdditionalLightsPosition[x_1653];
    let x_1658 : i32 = u_xlati68;
    let x_1660 : vec4<f32> = x_1652.x_AdditionalLightsPosition[x_1658];
    let x_1662 : vec3<f32> = ((-(x_1642) * vec3<f32>(x_1655.w, x_1655.w, x_1655.w)) + vec3<f32>(x_1660.x, x_1660.y, x_1660.z));
    let x_1663 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1662.x, x_1662.y, x_1662.z, x_1663.w);
    let x_1666 : vec4<f32> = u_xlat6;
    let x_1668 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1666.x, x_1666.y, x_1666.z), vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
    let x_1671 : f32 = u_xlat69;
    u_xlat69 = max(x_1671, 0.00006103515625f);
    let x_1675 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1675);
    let x_1677 : f32 = u_xlat70;
    let x_1679 : vec4<f32> = u_xlat6;
    let x_1681 : vec3<f32> = (vec3<f32>(x_1677, x_1677, x_1677) * vec3<f32>(x_1679.x, x_1679.y, x_1679.z));
    let x_1682 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1682.w);
    let x_1684 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1684);
    let x_1686 : f32 = u_xlat69;
    let x_1687 : i32 = u_xlati68;
    let x_1689 : f32 = x_1652.x_AdditionalLightsAttenuation[x_1687].x;
    u_xlat69 = (x_1686 * x_1689);
    let x_1691 : f32 = u_xlat69;
    let x_1693 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1691) * x_1693) + 1.0f);
    let x_1696 : f32 = u_xlat69;
    u_xlat69 = max(x_1696, 0.0f);
    let x_1698 : f32 = u_xlat69;
    let x_1699 : f32 = u_xlat69;
    u_xlat69 = (x_1698 * x_1699);
    let x_1701 : f32 = u_xlat69;
    let x_1702 : f32 = u_xlat70;
    u_xlat69 = (x_1701 * x_1702);
    let x_1704 : i32 = u_xlati68;
    let x_1706 : vec4<f32> = x_1652.x_AdditionalLightsSpotDir[x_1704];
    let x_1708 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1706.x, x_1706.y, x_1706.z), vec3<f32>(x_1708.x, x_1708.y, x_1708.z));
    let x_1711 : f32 = u_xlat70;
    let x_1712 : i32 = u_xlati68;
    let x_1714 : f32 = x_1652.x_AdditionalLightsAttenuation[x_1712].z;
    let x_1716 : i32 = u_xlati68;
    let x_1718 : f32 = x_1652.x_AdditionalLightsAttenuation[x_1716].w;
    u_xlat70 = ((x_1711 * x_1714) + x_1718);
    let x_1720 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1720, 0.0f, 1.0f);
    let x_1722 : f32 = u_xlat70;
    let x_1723 : f32 = u_xlat70;
    u_xlat70 = (x_1722 * x_1723);
    let x_1725 : f32 = u_xlat69;
    let x_1726 : f32 = u_xlat70;
    u_xlat69 = (x_1725 * x_1726);
    let x_1730 : i32 = u_xlati68;
    let x_1732 : f32 = x_208.x_AdditionalShadowParams[x_1730].w;
    u_xlati70 = i32(x_1732);
    let x_1735 : i32 = u_xlati70;
    u_xlatb71 = (x_1735 >= 0i);
    let x_1737 : bool = u_xlatb71;
    if (x_1737) {
      let x_1741 : i32 = u_xlati68;
      let x_1743 : f32 = x_208.x_AdditionalShadowParams[x_1741].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1743, x_1743, x_1743, x_1743))));
      let x_1748 : bool = u_xlatb71;
      if (x_1748) {
        let x_1753 : vec4<f32> = u_xlat6;
        let x_1756 : vec4<f32> = u_xlat6;
        let x_1759 : vec4<bool> = (abs(vec4<f32>(x_1753.z, x_1753.z, x_1753.y, x_1753.z)) >= abs(vec4<f32>(x_1756.x, x_1756.y, x_1756.x, x_1756.x)));
        let x_1761 : vec3<bool> = vec3<bool>(x_1759.x, x_1759.y, x_1759.z);
        let x_1762 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1761.x, x_1761.y, x_1761.z, x_1762.w);
        let x_1765 : bool = u_xlatb7.y;
        let x_1767 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1765 & x_1767);
        let x_1769 : vec4<f32> = u_xlat6;
        let x_1772 : vec4<bool> = (-(vec4<f32>(x_1769.z, x_1769.y, x_1769.z, x_1769.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1773 : vec3<bool> = vec3<bool>(x_1772.x, x_1772.y, x_1772.w);
        let x_1774 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1773.x, x_1773.y, x_1774.z, x_1773.z);
        let x_1777 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1777);
        let x_1783 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1783);
        let x_1789 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1789);
        let x_1792 : bool = u_xlatb7.z;
        if (x_1792) {
          let x_1797 : f32 = u_xlat7.y;
          x_1793 = x_1797;
        } else {
          let x_1799 : f32 = u_xlat72;
          x_1793 = x_1799;
        }
        let x_1800 : f32 = x_1793;
        u_xlat72 = x_1800;
        let x_1802 : bool = u_xlatb71;
        if (x_1802) {
          let x_1807 : f32 = u_xlat7.x;
          x_1803 = x_1807;
        } else {
          let x_1809 : f32 = u_xlat72;
          x_1803 = x_1809;
        }
        let x_1810 : f32 = x_1803;
        u_xlat71 = x_1810;
        let x_1811 : i32 = u_xlati68;
        let x_1813 : f32 = x_208.x_AdditionalShadowParams[x_1811].w;
        u_xlat72 = trunc(x_1813);
        let x_1815 : f32 = u_xlat71;
        let x_1816 : f32 = u_xlat72;
        u_xlat71 = (x_1815 + x_1816);
        let x_1818 : f32 = u_xlat71;
        u_xlati70 = i32(x_1818);
      }
      let x_1820 : i32 = u_xlati70;
      u_xlati70 = (x_1820 << bitcast<u32>(2i));
      let x_1822 : vec3<f32> = vs_TEXCOORD1;
      let x_1825 : i32 = u_xlati70;
      let x_1828 : i32 = u_xlati70;
      let x_1832 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_1825 + 1i) / 4i)][((x_1828 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1822.y, x_1822.y, x_1822.y, x_1822.y) * x_1832);
      let x_1834 : i32 = u_xlati70;
      let x_1836 : i32 = u_xlati70;
      let x_1839 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[(x_1834 / 4i)][(x_1836 % 4i)];
      let x_1840 : vec3<f32> = vs_TEXCOORD1;
      let x_1843 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1839 * vec4<f32>(x_1840.x, x_1840.x, x_1840.x, x_1840.x)) + x_1843);
      let x_1845 : i32 = u_xlati70;
      let x_1848 : i32 = u_xlati70;
      let x_1852 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_1845 + 2i) / 4i)][((x_1848 + 2i) % 4i)];
      let x_1853 : vec3<f32> = vs_TEXCOORD1;
      let x_1856 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1852 * vec4<f32>(x_1853.z, x_1853.z, x_1853.z, x_1853.z)) + x_1856);
      let x_1858 : vec4<f32> = u_xlat7;
      let x_1859 : i32 = u_xlati70;
      let x_1862 : i32 = u_xlati70;
      let x_1866 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_1859 + 3i) / 4i)][((x_1862 + 3i) % 4i)];
      u_xlat7 = (x_1858 + x_1866);
      let x_1868 : vec4<f32> = u_xlat7;
      let x_1870 : vec4<f32> = u_xlat7;
      let x_1872 : vec3<f32> = (vec3<f32>(x_1868.x, x_1868.y, x_1868.z) / vec3<f32>(x_1870.w, x_1870.w, x_1870.w));
      let x_1873 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
      let x_1876 : i32 = u_xlati68;
      let x_1878 : f32 = x_208.x_AdditionalShadowParams[x_1876].y;
      u_xlatb70 = (0.0f < x_1878);
      let x_1880 : bool = u_xlatb70;
      if (x_1880) {
        let x_1883 : i32 = u_xlati68;
        let x_1885 : f32 = x_208.x_AdditionalShadowParams[x_1883].y;
        u_xlatb70 = (1.0f == x_1885);
        let x_1887 : bool = u_xlatb70;
        if (x_1887) {
          let x_1890 : vec4<f32> = u_xlat7;
          let x_1894 : vec4<f32> = x_208.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_1890.x, x_1890.y, x_1890.x, x_1890.y) + x_1894);
          let x_1897 : vec4<f32> = u_xlat8;
          let x_1898 : vec2<f32> = vec2<f32>(x_1897.x, x_1897.y);
          let x_1900 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_1898.x, x_1898.y, x_1900);
          let x_1908 : vec3<f32> = txVec30;
          let x_1910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1908.xy, x_1908.z);
          u_xlat9.x = x_1910;
          let x_1913 : vec4<f32> = u_xlat8;
          let x_1914 : vec2<f32> = vec2<f32>(x_1913.z, x_1913.w);
          let x_1916 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_1914.x, x_1914.y, x_1916);
          let x_1923 : vec3<f32> = txVec31;
          let x_1925 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1923.xy, x_1923.z);
          u_xlat9.y = x_1925;
          let x_1927 : vec4<f32> = u_xlat7;
          let x_1931 : vec4<f32> = x_208.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_1927.x, x_1927.y, x_1927.x, x_1927.y) + x_1931);
          let x_1934 : vec4<f32> = u_xlat8;
          let x_1935 : vec2<f32> = vec2<f32>(x_1934.x, x_1934.y);
          let x_1937 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_1935.x, x_1935.y, x_1937);
          let x_1944 : vec3<f32> = txVec32;
          let x_1946 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1944.xy, x_1944.z);
          u_xlat9.z = x_1946;
          let x_1949 : vec4<f32> = u_xlat8;
          let x_1950 : vec2<f32> = vec2<f32>(x_1949.z, x_1949.w);
          let x_1952 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_1950.x, x_1950.y, x_1952);
          let x_1959 : vec3<f32> = txVec33;
          let x_1961 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1959.xy, x_1959.z);
          u_xlat9.w = x_1961;
          let x_1963 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_1963, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_1966 : i32 = u_xlati68;
          let x_1968 : f32 = x_208.x_AdditionalShadowParams[x_1966].y;
          u_xlatb71 = (2.0f == x_1968);
          let x_1970 : bool = u_xlatb71;
          if (x_1970) {
            let x_1973 : vec4<f32> = u_xlat7;
            let x_1977 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_1980 : vec2<f32> = ((vec2<f32>(x_1973.x, x_1973.y) * vec2<f32>(x_1977.z, x_1977.w)) + vec2<f32>(0.5f, 0.5f));
            let x_1981 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_1980.x, x_1980.y, x_1981.z, x_1981.w);
            let x_1983 : vec4<f32> = u_xlat8;
            let x_1985 : vec2<f32> = floor(vec2<f32>(x_1983.x, x_1983.y));
            let x_1986 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_1985.x, x_1985.y, x_1986.z, x_1986.w);
            let x_1989 : vec4<f32> = u_xlat7;
            let x_1992 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_1995 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_1989.x, x_1989.y) * vec2<f32>(x_1992.z, x_1992.w)) + -(vec2<f32>(x_1995.x, x_1995.y)));
            let x_1999 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_1999.x, x_1999.x, x_1999.y, x_1999.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2002 : vec4<f32> = u_xlat9;
            let x_2004 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2002.x, x_2002.x, x_2002.z, x_2002.z) * vec4<f32>(x_2004.x, x_2004.x, x_2004.z, x_2004.z));
            let x_2007 : vec4<f32> = u_xlat10;
            let x_2009 : vec2<f32> = (vec2<f32>(x_2007.y, x_2007.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2010 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2009.x, x_2010.y, x_2009.y, x_2010.w);
            let x_2012 : vec4<f32> = u_xlat10;
            let x_2015 : vec2<f32> = u_xlat52;
            let x_2017 : vec2<f32> = ((vec2<f32>(x_2012.x, x_2012.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2015));
            let x_2018 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2017.x, x_2017.y, x_2018.z, x_2018.w);
            let x_2021 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2021) + vec2<f32>(1.0f, 1.0f));
            let x_2024 : vec2<f32> = u_xlat52;
            let x_2025 : vec2<f32> = min(x_2024, vec2<f32>(0.0f, 0.0f));
            let x_2026 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2025.x, x_2025.y, x_2026.z, x_2026.w);
            let x_2028 : vec4<f32> = u_xlat11;
            let x_2031 : vec4<f32> = u_xlat11;
            let x_2034 : vec2<f32> = u_xlat54;
            let x_2035 : vec2<f32> = ((-(vec2<f32>(x_2028.x, x_2028.y)) * vec2<f32>(x_2031.x, x_2031.y)) + x_2034);
            let x_2036 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2035.x, x_2035.y, x_2036.z, x_2036.w);
            let x_2038 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2038, vec2<f32>(0.0f, 0.0f));
            let x_2040 : vec2<f32> = u_xlat52;
            let x_2042 : vec2<f32> = u_xlat52;
            let x_2044 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2040) * x_2042) + vec2<f32>(x_2044.y, x_2044.w));
            let x_2047 : vec4<f32> = u_xlat11;
            let x_2049 : vec2<f32> = (vec2<f32>(x_2047.x, x_2047.y) + vec2<f32>(1.0f, 1.0f));
            let x_2050 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2049.x, x_2049.y, x_2050.z, x_2050.w);
            let x_2052 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2052 + vec2<f32>(1.0f, 1.0f));
            let x_2054 : vec4<f32> = u_xlat10;
            let x_2056 : vec2<f32> = (vec2<f32>(x_2054.x, x_2054.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2057 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2056.x, x_2056.y, x_2057.z, x_2057.w);
            let x_2059 : vec2<f32> = u_xlat54;
            let x_2060 : vec2<f32> = (x_2059 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2061 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2060.x, x_2060.y, x_2061.z, x_2061.w);
            let x_2063 : vec4<f32> = u_xlat11;
            let x_2065 : vec2<f32> = (vec2<f32>(x_2063.x, x_2063.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2066 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2065.x, x_2065.y, x_2066.z, x_2066.w);
            let x_2068 : vec2<f32> = u_xlat52;
            let x_2069 : vec2<f32> = (x_2068 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2070 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2069.x, x_2069.y, x_2070.z, x_2070.w);
            let x_2072 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2072.y, x_2072.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2076 : f32 = u_xlat11.x;
            u_xlat12.z = x_2076;
            let x_2079 : f32 = u_xlat52.x;
            u_xlat12.w = x_2079;
            let x_2082 : f32 = u_xlat13.x;
            u_xlat10.z = x_2082;
            let x_2085 : f32 = u_xlat9.x;
            u_xlat10.w = x_2085;
            let x_2087 : vec4<f32> = u_xlat10;
            let x_2089 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2087.z, x_2087.w, x_2087.x, x_2087.z) + vec4<f32>(x_2089.z, x_2089.w, x_2089.x, x_2089.z));
            let x_2093 : f32 = u_xlat12.y;
            u_xlat11.z = x_2093;
            let x_2096 : f32 = u_xlat52.y;
            u_xlat11.w = x_2096;
            let x_2099 : f32 = u_xlat10.y;
            u_xlat13.z = x_2099;
            let x_2102 : f32 = u_xlat9.z;
            u_xlat13.w = x_2102;
            let x_2104 : vec4<f32> = u_xlat11;
            let x_2106 : vec4<f32> = u_xlat13;
            let x_2108 : vec3<f32> = (vec3<f32>(x_2104.z, x_2104.y, x_2104.w) + vec3<f32>(x_2106.z, x_2106.y, x_2106.w));
            let x_2109 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2108.x, x_2108.y, x_2108.z, x_2109.w);
            let x_2111 : vec4<f32> = u_xlat10;
            let x_2113 : vec4<f32> = u_xlat14;
            let x_2115 : vec3<f32> = (vec3<f32>(x_2111.x, x_2111.z, x_2111.w) / vec3<f32>(x_2113.z, x_2113.w, x_2113.y));
            let x_2116 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2115.x, x_2115.y, x_2115.z, x_2116.w);
            let x_2118 : vec4<f32> = u_xlat10;
            let x_2120 : vec3<f32> = (vec3<f32>(x_2118.x, x_2118.y, x_2118.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2121 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
            let x_2123 : vec4<f32> = u_xlat13;
            let x_2125 : vec4<f32> = u_xlat9;
            let x_2127 : vec3<f32> = (vec3<f32>(x_2123.z, x_2123.y, x_2123.w) / vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
            let x_2128 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2127.x, x_2127.y, x_2127.z, x_2128.w);
            let x_2130 : vec4<f32> = u_xlat11;
            let x_2132 : vec3<f32> = (vec3<f32>(x_2130.x, x_2130.y, x_2130.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2133 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
            let x_2135 : vec4<f32> = u_xlat10;
            let x_2138 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2140 : vec3<f32> = (vec3<f32>(x_2135.y, x_2135.x, x_2135.z) * vec3<f32>(x_2138.x, x_2138.x, x_2138.x));
            let x_2141 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2140.x, x_2140.y, x_2140.z, x_2141.w);
            let x_2143 : vec4<f32> = u_xlat11;
            let x_2146 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2148 : vec3<f32> = (vec3<f32>(x_2143.x, x_2143.y, x_2143.z) * vec3<f32>(x_2146.y, x_2146.y, x_2146.y));
            let x_2149 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2148.x, x_2148.y, x_2148.z, x_2149.w);
            let x_2152 : f32 = u_xlat11.x;
            u_xlat10.w = x_2152;
            let x_2154 : vec4<f32> = u_xlat8;
            let x_2157 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2160 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2154.x, x_2154.y, x_2154.x, x_2154.y) * vec4<f32>(x_2157.x, x_2157.y, x_2157.x, x_2157.y)) + vec4<f32>(x_2160.y, x_2160.w, x_2160.x, x_2160.w));
            let x_2163 : vec4<f32> = u_xlat8;
            let x_2166 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2169 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2163.x, x_2163.y) * vec2<f32>(x_2166.x, x_2166.y)) + vec2<f32>(x_2169.z, x_2169.w));
            let x_2173 : f32 = u_xlat10.y;
            u_xlat11.w = x_2173;
            let x_2175 : vec4<f32> = u_xlat11;
            let x_2176 : vec2<f32> = vec2<f32>(x_2175.y, x_2175.z);
            let x_2177 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2177.x, x_2176.x, x_2177.z, x_2176.y);
            let x_2179 : vec4<f32> = u_xlat8;
            let x_2182 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2185 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2179.x, x_2179.y, x_2179.x, x_2179.y) * vec4<f32>(x_2182.x, x_2182.y, x_2182.x, x_2182.y)) + vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2185.y));
            let x_2188 : vec4<f32> = u_xlat8;
            let x_2191 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2194 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2188.x, x_2188.y, x_2188.x, x_2188.y) * vec4<f32>(x_2191.x, x_2191.y, x_2191.x, x_2191.y)) + vec4<f32>(x_2194.w, x_2194.y, x_2194.w, x_2194.z));
            let x_2197 : vec4<f32> = u_xlat8;
            let x_2200 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2203 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2197.x, x_2197.y, x_2197.x, x_2197.y) * vec4<f32>(x_2200.x, x_2200.y, x_2200.x, x_2200.y)) + vec4<f32>(x_2203.x, x_2203.w, x_2203.z, x_2203.w));
            let x_2206 : vec4<f32> = u_xlat9;
            let x_2208 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2206.x, x_2206.x, x_2206.x, x_2206.y) * vec4<f32>(x_2208.z, x_2208.w, x_2208.y, x_2208.z));
            let x_2211 : vec4<f32> = u_xlat9;
            let x_2213 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2211.y, x_2211.y, x_2211.z, x_2211.z) * x_2213);
            let x_2216 : f32 = u_xlat9.z;
            let x_2218 : f32 = u_xlat14.y;
            u_xlat71 = (x_2216 * x_2218);
            let x_2221 : vec4<f32> = u_xlat12;
            let x_2222 : vec2<f32> = vec2<f32>(x_2221.x, x_2221.y);
            let x_2224 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2222.x, x_2222.y, x_2224);
            let x_2231 : vec3<f32> = txVec34;
            let x_2233 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2231.xy, x_2231.z);
            u_xlat72 = x_2233;
            let x_2235 : vec4<f32> = u_xlat12;
            let x_2236 : vec2<f32> = vec2<f32>(x_2235.z, x_2235.w);
            let x_2238 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2236.x, x_2236.y, x_2238);
            let x_2246 : vec3<f32> = txVec35;
            let x_2248 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2246.xy, x_2246.z);
            u_xlat73 = x_2248;
            let x_2249 : f32 = u_xlat73;
            let x_2251 : f32 = u_xlat15.y;
            u_xlat73 = (x_2249 * x_2251);
            let x_2254 : f32 = u_xlat15.x;
            let x_2255 : f32 = u_xlat72;
            let x_2257 : f32 = u_xlat73;
            u_xlat72 = ((x_2254 * x_2255) + x_2257);
            let x_2260 : vec2<f32> = u_xlat52;
            let x_2262 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2260.x, x_2260.y, x_2262);
            let x_2269 : vec3<f32> = txVec36;
            let x_2271 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2269.xy, x_2269.z);
            u_xlat73 = x_2271;
            let x_2273 : f32 = u_xlat15.z;
            let x_2274 : f32 = u_xlat73;
            let x_2276 : f32 = u_xlat72;
            u_xlat72 = ((x_2273 * x_2274) + x_2276);
            let x_2279 : vec4<f32> = u_xlat11;
            let x_2280 : vec2<f32> = vec2<f32>(x_2279.x, x_2279.y);
            let x_2282 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2280.x, x_2280.y, x_2282);
            let x_2289 : vec3<f32> = txVec37;
            let x_2291 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2289.xy, x_2289.z);
            u_xlat73 = x_2291;
            let x_2293 : f32 = u_xlat15.w;
            let x_2294 : f32 = u_xlat73;
            let x_2296 : f32 = u_xlat72;
            u_xlat72 = ((x_2293 * x_2294) + x_2296);
            let x_2299 : vec4<f32> = u_xlat13;
            let x_2300 : vec2<f32> = vec2<f32>(x_2299.x, x_2299.y);
            let x_2302 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2300.x, x_2300.y, x_2302);
            let x_2309 : vec3<f32> = txVec38;
            let x_2311 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2309.xy, x_2309.z);
            u_xlat73 = x_2311;
            let x_2313 : f32 = u_xlat16.x;
            let x_2314 : f32 = u_xlat73;
            let x_2316 : f32 = u_xlat72;
            u_xlat72 = ((x_2313 * x_2314) + x_2316);
            let x_2319 : vec4<f32> = u_xlat13;
            let x_2320 : vec2<f32> = vec2<f32>(x_2319.z, x_2319.w);
            let x_2322 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2320.x, x_2320.y, x_2322);
            let x_2329 : vec3<f32> = txVec39;
            let x_2331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2329.xy, x_2329.z);
            u_xlat73 = x_2331;
            let x_2333 : f32 = u_xlat16.y;
            let x_2334 : f32 = u_xlat73;
            let x_2336 : f32 = u_xlat72;
            u_xlat72 = ((x_2333 * x_2334) + x_2336);
            let x_2339 : vec4<f32> = u_xlat11;
            let x_2340 : vec2<f32> = vec2<f32>(x_2339.z, x_2339.w);
            let x_2342 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2340.x, x_2340.y, x_2342);
            let x_2349 : vec3<f32> = txVec40;
            let x_2351 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2349.xy, x_2349.z);
            u_xlat73 = x_2351;
            let x_2353 : f32 = u_xlat16.z;
            let x_2354 : f32 = u_xlat73;
            let x_2356 : f32 = u_xlat72;
            u_xlat72 = ((x_2353 * x_2354) + x_2356);
            let x_2359 : vec4<f32> = u_xlat10;
            let x_2360 : vec2<f32> = vec2<f32>(x_2359.x, x_2359.y);
            let x_2362 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2360.x, x_2360.y, x_2362);
            let x_2369 : vec3<f32> = txVec41;
            let x_2371 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2369.xy, x_2369.z);
            u_xlat73 = x_2371;
            let x_2373 : f32 = u_xlat16.w;
            let x_2374 : f32 = u_xlat73;
            let x_2376 : f32 = u_xlat72;
            u_xlat72 = ((x_2373 * x_2374) + x_2376);
            let x_2379 : vec4<f32> = u_xlat10;
            let x_2380 : vec2<f32> = vec2<f32>(x_2379.z, x_2379.w);
            let x_2382 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2380.x, x_2380.y, x_2382);
            let x_2389 : vec3<f32> = txVec42;
            let x_2391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2389.xy, x_2389.z);
            u_xlat73 = x_2391;
            let x_2392 : f32 = u_xlat71;
            let x_2393 : f32 = u_xlat73;
            let x_2395 : f32 = u_xlat72;
            u_xlat70 = ((x_2392 * x_2393) + x_2395);
          } else {
            let x_2398 : vec4<f32> = u_xlat7;
            let x_2401 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2404 : vec2<f32> = ((vec2<f32>(x_2398.x, x_2398.y) * vec2<f32>(x_2401.z, x_2401.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2405 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2404.x, x_2404.y, x_2405.z, x_2405.w);
            let x_2407 : vec4<f32> = u_xlat8;
            let x_2409 : vec2<f32> = floor(vec2<f32>(x_2407.x, x_2407.y));
            let x_2410 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2409.x, x_2409.y, x_2410.z, x_2410.w);
            let x_2412 : vec4<f32> = u_xlat7;
            let x_2415 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2418 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2412.x, x_2412.y) * vec2<f32>(x_2415.z, x_2415.w)) + -(vec2<f32>(x_2418.x, x_2418.y)));
            let x_2422 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2422.x, x_2422.x, x_2422.y, x_2422.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2425 : vec4<f32> = u_xlat9;
            let x_2427 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2425.x, x_2425.x, x_2425.z, x_2425.z) * vec4<f32>(x_2427.x, x_2427.x, x_2427.z, x_2427.z));
            let x_2430 : vec4<f32> = u_xlat10;
            let x_2432 : vec2<f32> = (vec2<f32>(x_2430.y, x_2430.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2433 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2433.x, x_2432.x, x_2433.z, x_2432.y);
            let x_2435 : vec4<f32> = u_xlat10;
            let x_2438 : vec2<f32> = u_xlat52;
            let x_2440 : vec2<f32> = ((vec2<f32>(x_2435.x, x_2435.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2438));
            let x_2441 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2440.x, x_2441.y, x_2440.y, x_2441.w);
            let x_2443 : vec2<f32> = u_xlat52;
            let x_2445 : vec2<f32> = (-(x_2443) + vec2<f32>(1.0f, 1.0f));
            let x_2446 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2448 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2448, vec2<f32>(0.0f, 0.0f));
            let x_2450 : vec2<f32> = u_xlat54;
            let x_2452 : vec2<f32> = u_xlat54;
            let x_2454 : vec4<f32> = u_xlat10;
            let x_2456 : vec2<f32> = ((-(x_2450) * x_2452) + vec2<f32>(x_2454.x, x_2454.y));
            let x_2457 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2456.x, x_2456.y, x_2457.z, x_2457.w);
            let x_2459 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2459, vec2<f32>(0.0f, 0.0f));
            let x_2462 : vec2<f32> = u_xlat54;
            let x_2464 : vec2<f32> = u_xlat54;
            let x_2466 : vec4<f32> = u_xlat9;
            let x_2468 : vec2<f32> = ((-(x_2462) * x_2464) + vec2<f32>(x_2466.y, x_2466.w));
            let x_2469 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2468.x, x_2469.y, x_2468.y);
            let x_2471 : vec4<f32> = u_xlat10;
            let x_2473 : vec2<f32> = (vec2<f32>(x_2471.x, x_2471.y) + vec2<f32>(2.0f, 2.0f));
            let x_2474 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2473.x, x_2473.y, x_2474.z, x_2474.w);
            let x_2476 : vec3<f32> = u_xlat31;
            let x_2478 : vec2<f32> = (vec2<f32>(x_2476.x, x_2476.z) + vec2<f32>(2.0f, 2.0f));
            let x_2479 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2479.x, x_2478.x, x_2479.z, x_2478.y);
            let x_2482 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2482 * 0.08163200318813323975f);
            let x_2485 : vec4<f32> = u_xlat9;
            let x_2487 : vec3<f32> = (vec3<f32>(x_2485.z, x_2485.x, x_2485.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2488 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2487.x, x_2487.y, x_2487.z, x_2488.w);
            let x_2490 : vec4<f32> = u_xlat10;
            let x_2492 : vec2<f32> = (vec2<f32>(x_2490.x, x_2490.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2493 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2492.x, x_2492.y, x_2493.z, x_2493.w);
            let x_2496 : f32 = u_xlat13.y;
            u_xlat12.x = x_2496;
            let x_2498 : vec2<f32> = u_xlat52;
            let x_2501 : vec2<f32> = ((vec2<f32>(x_2498.x, x_2498.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2502 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2502.x, x_2501.x, x_2502.z, x_2501.y);
            let x_2504 : vec2<f32> = u_xlat52;
            let x_2507 : vec2<f32> = ((vec2<f32>(x_2504.x, x_2504.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2508 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2507.x, x_2508.y, x_2507.y, x_2508.w);
            let x_2511 : f32 = u_xlat9.x;
            u_xlat10.y = x_2511;
            let x_2514 : f32 = u_xlat11.y;
            u_xlat10.w = x_2514;
            let x_2516 : vec4<f32> = u_xlat10;
            let x_2517 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2516 + x_2517);
            let x_2519 : vec2<f32> = u_xlat52;
            let x_2522 : vec2<f32> = ((vec2<f32>(x_2519.y, x_2519.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2523 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2523.x, x_2522.x, x_2523.z, x_2522.y);
            let x_2525 : vec2<f32> = u_xlat52;
            let x_2528 : vec2<f32> = ((vec2<f32>(x_2525.y, x_2525.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2529 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2528.x, x_2529.y, x_2528.y, x_2529.w);
            let x_2532 : f32 = u_xlat9.y;
            u_xlat11.y = x_2532;
            let x_2534 : vec4<f32> = u_xlat11;
            let x_2535 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2534 + x_2535);
            let x_2537 : vec4<f32> = u_xlat10;
            let x_2538 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2537 / x_2538);
            let x_2540 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2540 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2542 : vec4<f32> = u_xlat11;
            let x_2543 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2542 / x_2543);
            let x_2545 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2545 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2547 : vec4<f32> = u_xlat10;
            let x_2550 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2547.w, x_2547.x, x_2547.y, x_2547.z) * vec4<f32>(x_2550.x, x_2550.x, x_2550.x, x_2550.x));
            let x_2553 : vec4<f32> = u_xlat11;
            let x_2556 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2553.x, x_2553.w, x_2553.y, x_2553.z) * vec4<f32>(x_2556.y, x_2556.y, x_2556.y, x_2556.y));
            let x_2559 : vec4<f32> = u_xlat10;
            let x_2560 : vec3<f32> = vec3<f32>(x_2559.y, x_2559.z, x_2559.w);
            let x_2561 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2560.x, x_2561.y, x_2560.y, x_2560.z);
            let x_2564 : f32 = u_xlat11.x;
            u_xlat13.y = x_2564;
            let x_2566 : vec4<f32> = u_xlat8;
            let x_2569 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2572 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.y) * vec4<f32>(x_2569.x, x_2569.y, x_2569.x, x_2569.y)) + vec4<f32>(x_2572.x, x_2572.y, x_2572.z, x_2572.y));
            let x_2575 : vec4<f32> = u_xlat8;
            let x_2578 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2581 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2575.x, x_2575.y) * vec2<f32>(x_2578.x, x_2578.y)) + vec2<f32>(x_2581.w, x_2581.y));
            let x_2585 : f32 = u_xlat13.y;
            u_xlat10.y = x_2585;
            let x_2588 : f32 = u_xlat11.z;
            u_xlat13.y = x_2588;
            let x_2590 : vec4<f32> = u_xlat8;
            let x_2593 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2596 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2590.x, x_2590.y, x_2590.x, x_2590.y) * vec4<f32>(x_2593.x, x_2593.y, x_2593.x, x_2593.y)) + vec4<f32>(x_2596.x, x_2596.y, x_2596.z, x_2596.y));
            let x_2599 : vec4<f32> = u_xlat8;
            let x_2602 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2605 : vec4<f32> = u_xlat13;
            let x_2607 : vec2<f32> = ((vec2<f32>(x_2599.x, x_2599.y) * vec2<f32>(x_2602.x, x_2602.y)) + vec2<f32>(x_2605.w, x_2605.y));
            let x_2608 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2607.x, x_2607.y, x_2608.z, x_2608.w);
            let x_2611 : f32 = u_xlat13.y;
            u_xlat10.z = x_2611;
            let x_2613 : vec4<f32> = u_xlat8;
            let x_2616 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2619 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2613.x, x_2613.y, x_2613.x, x_2613.y) * vec4<f32>(x_2616.x, x_2616.y, x_2616.x, x_2616.y)) + vec4<f32>(x_2619.x, x_2619.y, x_2619.x, x_2619.z));
            let x_2623 : f32 = u_xlat11.w;
            u_xlat13.y = x_2623;
            let x_2626 : vec4<f32> = u_xlat8;
            let x_2629 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2632 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2626.x, x_2626.y, x_2626.x, x_2626.y) * vec4<f32>(x_2629.x, x_2629.y, x_2629.x, x_2629.y)) + vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2632.y));
            let x_2636 : vec4<f32> = u_xlat8;
            let x_2639 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2642 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2636.x, x_2636.y) * vec2<f32>(x_2639.x, x_2639.y)) + vec2<f32>(x_2642.w, x_2642.y));
            let x_2646 : f32 = u_xlat13.y;
            u_xlat10.w = x_2646;
            let x_2649 : vec4<f32> = u_xlat8;
            let x_2652 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2655 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2649.x, x_2649.y) * vec2<f32>(x_2652.x, x_2652.y)) + vec2<f32>(x_2655.x, x_2655.w));
            let x_2658 : vec4<f32> = u_xlat13;
            let x_2659 : vec3<f32> = vec3<f32>(x_2658.x, x_2658.z, x_2658.w);
            let x_2660 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2659.x, x_2660.y, x_2659.y, x_2659.z);
            let x_2662 : vec4<f32> = u_xlat8;
            let x_2665 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2668 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2662.x, x_2662.y, x_2662.x, x_2662.y) * vec4<f32>(x_2665.x, x_2665.y, x_2665.x, x_2665.y)) + vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2668.y));
            let x_2672 : vec4<f32> = u_xlat8;
            let x_2675 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2678 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2672.x, x_2672.y) * vec2<f32>(x_2675.x, x_2675.y)) + vec2<f32>(x_2678.w, x_2678.y));
            let x_2682 : f32 = u_xlat10.x;
            u_xlat11.x = x_2682;
            let x_2684 : vec4<f32> = u_xlat8;
            let x_2687 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2690 : vec4<f32> = u_xlat11;
            let x_2692 : vec2<f32> = ((vec2<f32>(x_2684.x, x_2684.y) * vec2<f32>(x_2687.x, x_2687.y)) + vec2<f32>(x_2690.x, x_2690.y));
            let x_2693 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2692.x, x_2692.y, x_2693.z, x_2693.w);
            let x_2696 : vec4<f32> = u_xlat9;
            let x_2698 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2696.x, x_2696.x, x_2696.x, x_2696.x) * x_2698);
            let x_2701 : vec4<f32> = u_xlat9;
            let x_2703 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2701.y, x_2701.y, x_2701.y, x_2701.y) * x_2703);
            let x_2706 : vec4<f32> = u_xlat9;
            let x_2708 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2706.z, x_2706.z, x_2706.z, x_2706.z) * x_2708);
            let x_2710 : vec4<f32> = u_xlat9;
            let x_2712 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2710.w, x_2710.w, x_2710.w, x_2710.w) * x_2712);
            let x_2715 : vec4<f32> = u_xlat14;
            let x_2716 : vec2<f32> = vec2<f32>(x_2715.x, x_2715.y);
            let x_2718 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2716.x, x_2716.y, x_2718);
            let x_2725 : vec3<f32> = txVec43;
            let x_2727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2725.xy, x_2725.z);
            u_xlat71 = x_2727;
            let x_2729 : vec4<f32> = u_xlat14;
            let x_2730 : vec2<f32> = vec2<f32>(x_2729.z, x_2729.w);
            let x_2732 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2730.x, x_2730.y, x_2732);
            let x_2739 : vec3<f32> = txVec44;
            let x_2741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2739.xy, x_2739.z);
            u_xlat72 = x_2741;
            let x_2742 : f32 = u_xlat72;
            let x_2744 : f32 = u_xlat19.y;
            u_xlat72 = (x_2742 * x_2744);
            let x_2747 : f32 = u_xlat19.x;
            let x_2748 : f32 = u_xlat71;
            let x_2750 : f32 = u_xlat72;
            u_xlat71 = ((x_2747 * x_2748) + x_2750);
            let x_2753 : vec2<f32> = u_xlat52;
            let x_2755 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2753.x, x_2753.y, x_2755);
            let x_2762 : vec3<f32> = txVec45;
            let x_2764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2762.xy, x_2762.z);
            u_xlat72 = x_2764;
            let x_2766 : f32 = u_xlat19.z;
            let x_2767 : f32 = u_xlat72;
            let x_2769 : f32 = u_xlat71;
            u_xlat71 = ((x_2766 * x_2767) + x_2769);
            let x_2772 : vec4<f32> = u_xlat17;
            let x_2773 : vec2<f32> = vec2<f32>(x_2772.x, x_2772.y);
            let x_2775 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
            let x_2782 : vec3<f32> = txVec46;
            let x_2784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
            u_xlat72 = x_2784;
            let x_2786 : f32 = u_xlat19.w;
            let x_2787 : f32 = u_xlat72;
            let x_2789 : f32 = u_xlat71;
            u_xlat71 = ((x_2786 * x_2787) + x_2789);
            let x_2792 : vec4<f32> = u_xlat15;
            let x_2793 : vec2<f32> = vec2<f32>(x_2792.x, x_2792.y);
            let x_2795 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2793.x, x_2793.y, x_2795);
            let x_2802 : vec3<f32> = txVec47;
            let x_2804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2802.xy, x_2802.z);
            u_xlat72 = x_2804;
            let x_2806 : f32 = u_xlat20.x;
            let x_2807 : f32 = u_xlat72;
            let x_2809 : f32 = u_xlat71;
            u_xlat71 = ((x_2806 * x_2807) + x_2809);
            let x_2812 : vec4<f32> = u_xlat15;
            let x_2813 : vec2<f32> = vec2<f32>(x_2812.z, x_2812.w);
            let x_2815 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2813.x, x_2813.y, x_2815);
            let x_2822 : vec3<f32> = txVec48;
            let x_2824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2822.xy, x_2822.z);
            u_xlat72 = x_2824;
            let x_2826 : f32 = u_xlat20.y;
            let x_2827 : f32 = u_xlat72;
            let x_2829 : f32 = u_xlat71;
            u_xlat71 = ((x_2826 * x_2827) + x_2829);
            let x_2832 : vec4<f32> = u_xlat16;
            let x_2833 : vec2<f32> = vec2<f32>(x_2832.x, x_2832.y);
            let x_2835 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2833.x, x_2833.y, x_2835);
            let x_2842 : vec3<f32> = txVec49;
            let x_2844 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2842.xy, x_2842.z);
            u_xlat72 = x_2844;
            let x_2846 : f32 = u_xlat20.z;
            let x_2847 : f32 = u_xlat72;
            let x_2849 : f32 = u_xlat71;
            u_xlat71 = ((x_2846 * x_2847) + x_2849);
            let x_2852 : vec4<f32> = u_xlat17;
            let x_2853 : vec2<f32> = vec2<f32>(x_2852.z, x_2852.w);
            let x_2855 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2853.x, x_2853.y, x_2855);
            let x_2862 : vec3<f32> = txVec50;
            let x_2864 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2862.xy, x_2862.z);
            u_xlat72 = x_2864;
            let x_2866 : f32 = u_xlat20.w;
            let x_2867 : f32 = u_xlat72;
            let x_2869 : f32 = u_xlat71;
            u_xlat71 = ((x_2866 * x_2867) + x_2869);
            let x_2872 : vec4<f32> = u_xlat18;
            let x_2873 : vec2<f32> = vec2<f32>(x_2872.x, x_2872.y);
            let x_2875 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
            let x_2882 : vec3<f32> = txVec51;
            let x_2884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
            u_xlat72 = x_2884;
            let x_2886 : f32 = u_xlat21.x;
            let x_2887 : f32 = u_xlat72;
            let x_2889 : f32 = u_xlat71;
            u_xlat71 = ((x_2886 * x_2887) + x_2889);
            let x_2892 : vec4<f32> = u_xlat18;
            let x_2893 : vec2<f32> = vec2<f32>(x_2892.z, x_2892.w);
            let x_2895 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_2893.x, x_2893.y, x_2895);
            let x_2902 : vec3<f32> = txVec52;
            let x_2904 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2902.xy, x_2902.z);
            u_xlat72 = x_2904;
            let x_2906 : f32 = u_xlat21.y;
            let x_2907 : f32 = u_xlat72;
            let x_2909 : f32 = u_xlat71;
            u_xlat71 = ((x_2906 * x_2907) + x_2909);
            let x_2912 : vec2<f32> = u_xlat32;
            let x_2914 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_2912.x, x_2912.y, x_2914);
            let x_2921 : vec3<f32> = txVec53;
            let x_2923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2921.xy, x_2921.z);
            u_xlat72 = x_2923;
            let x_2925 : f32 = u_xlat21.z;
            let x_2926 : f32 = u_xlat72;
            let x_2928 : f32 = u_xlat71;
            u_xlat71 = ((x_2925 * x_2926) + x_2928);
            let x_2931 : vec2<f32> = u_xlat60;
            let x_2933 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_2931.x, x_2931.y, x_2933);
            let x_2940 : vec3<f32> = txVec54;
            let x_2942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2940.xy, x_2940.z);
            u_xlat72 = x_2942;
            let x_2944 : f32 = u_xlat21.w;
            let x_2945 : f32 = u_xlat72;
            let x_2947 : f32 = u_xlat71;
            u_xlat71 = ((x_2944 * x_2945) + x_2947);
            let x_2950 : vec4<f32> = u_xlat13;
            let x_2951 : vec2<f32> = vec2<f32>(x_2950.x, x_2950.y);
            let x_2953 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
            let x_2960 : vec3<f32> = txVec55;
            let x_2962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
            u_xlat72 = x_2962;
            let x_2964 : f32 = u_xlat9.x;
            let x_2965 : f32 = u_xlat72;
            let x_2967 : f32 = u_xlat71;
            u_xlat71 = ((x_2964 * x_2965) + x_2967);
            let x_2970 : vec4<f32> = u_xlat13;
            let x_2971 : vec2<f32> = vec2<f32>(x_2970.z, x_2970.w);
            let x_2973 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_2971.x, x_2971.y, x_2973);
            let x_2980 : vec3<f32> = txVec56;
            let x_2982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2980.xy, x_2980.z);
            u_xlat72 = x_2982;
            let x_2984 : f32 = u_xlat9.y;
            let x_2985 : f32 = u_xlat72;
            let x_2987 : f32 = u_xlat71;
            u_xlat71 = ((x_2984 * x_2985) + x_2987);
            let x_2990 : vec2<f32> = u_xlat55;
            let x_2992 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_2990.x, x_2990.y, x_2992);
            let x_2999 : vec3<f32> = txVec57;
            let x_3001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2999.xy, x_2999.z);
            u_xlat72 = x_3001;
            let x_3003 : f32 = u_xlat9.z;
            let x_3004 : f32 = u_xlat72;
            let x_3006 : f32 = u_xlat71;
            u_xlat71 = ((x_3003 * x_3004) + x_3006);
            let x_3009 : vec4<f32> = u_xlat8;
            let x_3010 : vec2<f32> = vec2<f32>(x_3009.x, x_3009.y);
            let x_3012 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3010.x, x_3010.y, x_3012);
            let x_3019 : vec3<f32> = txVec58;
            let x_3021 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3019.xy, x_3019.z);
            u_xlat72 = x_3021;
            let x_3023 : f32 = u_xlat9.w;
            let x_3024 : f32 = u_xlat72;
            let x_3026 : f32 = u_xlat71;
            u_xlat70 = ((x_3023 * x_3024) + x_3026);
          }
        }
      } else {
        let x_3030 : vec4<f32> = u_xlat7;
        let x_3031 : vec2<f32> = vec2<f32>(x_3030.x, x_3030.y);
        let x_3033 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3031.x, x_3031.y, x_3033);
        let x_3040 : vec3<f32> = txVec59;
        let x_3042 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3040.xy, x_3040.z);
        u_xlat70 = x_3042;
      }
      let x_3043 : i32 = u_xlati68;
      let x_3045 : f32 = x_208.x_AdditionalShadowParams[x_3043].x;
      u_xlat71 = (1.0f + -(x_3045));
      let x_3048 : f32 = u_xlat70;
      let x_3049 : i32 = u_xlati68;
      let x_3051 : f32 = x_208.x_AdditionalShadowParams[x_3049].x;
      let x_3053 : f32 = u_xlat71;
      u_xlat70 = ((x_3048 * x_3051) + x_3053);
      let x_3056 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3056);
      let x_3060 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3060 >= 1.0f);
      let x_3062 : bool = u_xlatb71;
      let x_3063 : bool = u_xlatb72;
      u_xlatb71 = (x_3062 | x_3063);
      let x_3065 : bool = u_xlatb71;
      let x_3066 : f32 = u_xlat70;
      u_xlat70 = select(x_3066, 1.0f, x_3065);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3069 : f32 = u_xlat70;
    u_xlat71 = (-(x_3069) + 1.0f);
    let x_3072 : f32 = u_xlat66;
    let x_3073 : f32 = u_xlat71;
    let x_3075 : f32 = u_xlat70;
    u_xlat70 = ((x_3072 * x_3073) + x_3075);
    let x_3077 : f32 = u_xlat69;
    let x_3078 : f32 = u_xlat70;
    u_xlat69 = (x_3077 * x_3078);
    let x_3080 : f32 = u_xlat69;
    let x_3082 : i32 = u_xlati68;
    let x_3084 : vec4<f32> = x_1652.x_AdditionalLightsColor[x_3082];
    let x_3086 : vec3<f32> = (vec3<f32>(x_3080, x_3080, x_3080) * vec3<f32>(x_3084.x, x_3084.y, x_3084.z));
    let x_3087 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3086.x, x_3086.y, x_3086.z, x_3087.w);
    let x_3089 : vec3<f32> = u_xlat2;
    let x_3090 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(x_3089, vec3<f32>(x_3090.x, x_3090.y, x_3090.z));
    let x_3093 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3093, 0.0f, 1.0f);
    let x_3095 : f32 = u_xlat68;
    let x_3097 : vec4<f32> = u_xlat7;
    let x_3099 : vec3<f32> = (vec3<f32>(x_3095, x_3095, x_3095) * vec3<f32>(x_3097.x, x_3097.y, x_3097.z));
    let x_3100 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3099.x, x_3099.y, x_3099.z, x_3100.w);
    let x_3102 : vec4<f32> = u_xlat1;
    let x_3104 : vec4<f32> = u_xlat6;
    let x_3106 : vec3<f32> = (vec3<f32>(x_3102.y, x_3102.z, x_3102.w) * vec3<f32>(x_3104.x, x_3104.y, x_3104.z));
    let x_3107 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3106.x, x_3106.y, x_3106.z, x_3107.w);
    let x_3109 : vec4<f32> = u_xlat6;
    let x_3111 : vec4<f32> = u_xlat0;
    let x_3114 : vec4<f32> = u_xlat5;
    let x_3116 : vec3<f32> = ((vec3<f32>(x_3109.x, x_3109.y, x_3109.z) * vec3<f32>(x_3111.x, x_3111.x, x_3111.x)) + vec3<f32>(x_3114.x, x_3114.y, x_3114.z));
    let x_3117 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3116.x, x_3116.y, x_3116.z, x_3117.w);

    continuing {
      let x_3119 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3119 + bitcast<u32>(1i));
    }
  }
  let x_3121 : vec4<f32> = u_xlat3;
  let x_3123 : vec4<f32> = u_xlat1;
  let x_3126 : vec4<f32> = u_xlat4;
  let x_3128 : vec3<f32> = ((vec3<f32>(x_3121.x, x_3121.y, x_3121.z) * vec3<f32>(x_3123.y, x_3123.z, x_3123.w)) + vec3<f32>(x_3126.x, x_3126.y, x_3126.z));
  let x_3129 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3128.x, x_3128.y, x_3128.z, x_3129.w);
  let x_3133 : vec4<f32> = u_xlat5;
  let x_3135 : vec4<f32> = u_xlat1;
  let x_3137 : vec3<f32> = (vec3<f32>(x_3133.x, x_3133.y, x_3133.z) + vec3<f32>(x_3135.x, x_3135.y, x_3135.z));
  let x_3138 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3137.x, x_3137.y, x_3137.z, x_3138.w);
  let x_3141 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3141 == 1.0f);
  let x_3143 : bool = u_xlatb22;
  let x_3144 : bool = u_xlatb44;
  u_xlatb22 = (x_3143 | x_3144);
  let x_3146 : bool = u_xlatb22;
  if (x_3146) {
    let x_3151 : f32 = u_xlat0.x;
    x_3147 = x_3151;
  } else {
    x_3147 = 1.0f;
  }
  let x_3153 : f32 = x_3147;
  SV_Target0.w = x_3153;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


