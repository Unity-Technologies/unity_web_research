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

@group(1) @binding(1) var<uniform> x_1645 : AdditionalLights;

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
  var x_1786 : f32;
  var x_1796 : f32;
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
  var x_3133 : f32;
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
  let x_1571 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1573 : f32 = x_1535.unity_LightData.y;
  u_xlat22 = min(x_1571, x_1573);
  let x_1577 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_1577));
  let x_1580 : f32 = u_xlat66;
  let x_1583 : f32 = x_208.x_AdditionalShadowFadeParams.x;
  let x_1586 : f32 = x_208.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1580 * x_1583) + x_1586);
  let x_1588 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1588, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1600 : u32 = u_xlatu_loop_1;
    let x_1601 : u32 = u_xlatu22;
    if ((x_1600 < x_1601)) {
    } else {
      break;
    }
    let x_1604 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1604 >> 2u);
    let x_1608 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1608 & 3u));
    let x_1611 : u32 = u_xlatu68;
    let x_1614 : vec4<f32> = x_1535.unity_LightIndices[bitcast<i32>(x_1611)];
    let x_1624 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1629 : vec4<u32> = indexable[x_1624];
    u_xlat68 = dot(x_1614, bitcast<vec4<f32>>(x_1629));
    let x_1633 : f32 = u_xlat68;
    u_xlati68 = i32(x_1633);
    let x_1635 : vec3<f32> = vs_TEXCOORD1;
    let x_1646 : i32 = u_xlati68;
    let x_1648 : vec4<f32> = x_1645.x_AdditionalLightsPosition[x_1646];
    let x_1651 : i32 = u_xlati68;
    let x_1653 : vec4<f32> = x_1645.x_AdditionalLightsPosition[x_1651];
    let x_1655 : vec3<f32> = ((-(x_1635) * vec3<f32>(x_1648.w, x_1648.w, x_1648.w)) + vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
    let x_1656 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
    let x_1659 : vec4<f32> = u_xlat6;
    let x_1661 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1659.x, x_1659.y, x_1659.z), vec3<f32>(x_1661.x, x_1661.y, x_1661.z));
    let x_1664 : f32 = u_xlat69;
    u_xlat69 = max(x_1664, 0.00006103515625f);
    let x_1668 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1668);
    let x_1670 : f32 = u_xlat70;
    let x_1672 : vec4<f32> = u_xlat6;
    let x_1674 : vec3<f32> = (vec3<f32>(x_1670, x_1670, x_1670) * vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
    let x_1675 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
    let x_1677 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1677);
    let x_1679 : f32 = u_xlat69;
    let x_1680 : i32 = u_xlati68;
    let x_1682 : f32 = x_1645.x_AdditionalLightsAttenuation[x_1680].x;
    u_xlat69 = (x_1679 * x_1682);
    let x_1684 : f32 = u_xlat69;
    let x_1686 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1684) * x_1686) + 1.0f);
    let x_1689 : f32 = u_xlat69;
    u_xlat69 = max(x_1689, 0.0f);
    let x_1691 : f32 = u_xlat69;
    let x_1692 : f32 = u_xlat69;
    u_xlat69 = (x_1691 * x_1692);
    let x_1694 : f32 = u_xlat69;
    let x_1695 : f32 = u_xlat70;
    u_xlat69 = (x_1694 * x_1695);
    let x_1697 : i32 = u_xlati68;
    let x_1699 : vec4<f32> = x_1645.x_AdditionalLightsSpotDir[x_1697];
    let x_1701 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1699.x, x_1699.y, x_1699.z), vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
    let x_1704 : f32 = u_xlat70;
    let x_1705 : i32 = u_xlati68;
    let x_1707 : f32 = x_1645.x_AdditionalLightsAttenuation[x_1705].z;
    let x_1709 : i32 = u_xlati68;
    let x_1711 : f32 = x_1645.x_AdditionalLightsAttenuation[x_1709].w;
    u_xlat70 = ((x_1704 * x_1707) + x_1711);
    let x_1713 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1713, 0.0f, 1.0f);
    let x_1715 : f32 = u_xlat70;
    let x_1716 : f32 = u_xlat70;
    u_xlat70 = (x_1715 * x_1716);
    let x_1718 : f32 = u_xlat69;
    let x_1719 : f32 = u_xlat70;
    u_xlat69 = (x_1718 * x_1719);
    let x_1723 : i32 = u_xlati68;
    let x_1725 : f32 = x_208.x_AdditionalShadowParams[x_1723].w;
    u_xlati70 = i32(x_1725);
    let x_1728 : i32 = u_xlati70;
    u_xlatb71 = (x_1728 >= 0i);
    let x_1730 : bool = u_xlatb71;
    if (x_1730) {
      let x_1734 : i32 = u_xlati68;
      let x_1736 : f32 = x_208.x_AdditionalShadowParams[x_1734].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1736, x_1736, x_1736, x_1736))));
      let x_1741 : bool = u_xlatb71;
      if (x_1741) {
        let x_1746 : vec4<f32> = u_xlat6;
        let x_1749 : vec4<f32> = u_xlat6;
        let x_1752 : vec4<bool> = (abs(vec4<f32>(x_1746.z, x_1746.z, x_1746.y, x_1746.z)) >= abs(vec4<f32>(x_1749.x, x_1749.y, x_1749.x, x_1749.x)));
        let x_1754 : vec3<bool> = vec3<bool>(x_1752.x, x_1752.y, x_1752.z);
        let x_1755 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
        let x_1758 : bool = u_xlatb7.y;
        let x_1760 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1758 & x_1760);
        let x_1762 : vec4<f32> = u_xlat6;
        let x_1765 : vec4<bool> = (-(vec4<f32>(x_1762.z, x_1762.y, x_1762.z, x_1762.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1766 : vec3<bool> = vec3<bool>(x_1765.x, x_1765.y, x_1765.w);
        let x_1767 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1766.x, x_1766.y, x_1767.z, x_1766.z);
        let x_1770 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1770);
        let x_1776 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1776);
        let x_1782 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1782);
        let x_1785 : bool = u_xlatb7.z;
        if (x_1785) {
          let x_1790 : f32 = u_xlat7.y;
          x_1786 = x_1790;
        } else {
          let x_1792 : f32 = u_xlat72;
          x_1786 = x_1792;
        }
        let x_1793 : f32 = x_1786;
        u_xlat72 = x_1793;
        let x_1795 : bool = u_xlatb71;
        if (x_1795) {
          let x_1800 : f32 = u_xlat7.x;
          x_1796 = x_1800;
        } else {
          let x_1802 : f32 = u_xlat72;
          x_1796 = x_1802;
        }
        let x_1803 : f32 = x_1796;
        u_xlat71 = x_1803;
        let x_1804 : i32 = u_xlati68;
        let x_1806 : f32 = x_208.x_AdditionalShadowParams[x_1804].w;
        u_xlat72 = trunc(x_1806);
        let x_1808 : f32 = u_xlat71;
        let x_1809 : f32 = u_xlat72;
        u_xlat71 = (x_1808 + x_1809);
        let x_1811 : f32 = u_xlat71;
        u_xlati70 = i32(x_1811);
      }
      let x_1813 : i32 = u_xlati70;
      u_xlati70 = (x_1813 << bitcast<u32>(2i));
      let x_1815 : vec3<f32> = vs_TEXCOORD1;
      let x_1818 : i32 = u_xlati70;
      let x_1821 : i32 = u_xlati70;
      let x_1825 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_1818 + 1i) / 4i)][((x_1821 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1815.y, x_1815.y, x_1815.y, x_1815.y) * x_1825);
      let x_1827 : i32 = u_xlati70;
      let x_1829 : i32 = u_xlati70;
      let x_1832 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[(x_1827 / 4i)][(x_1829 % 4i)];
      let x_1833 : vec3<f32> = vs_TEXCOORD1;
      let x_1836 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1832 * vec4<f32>(x_1833.x, x_1833.x, x_1833.x, x_1833.x)) + x_1836);
      let x_1838 : i32 = u_xlati70;
      let x_1841 : i32 = u_xlati70;
      let x_1845 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_1838 + 2i) / 4i)][((x_1841 + 2i) % 4i)];
      let x_1846 : vec3<f32> = vs_TEXCOORD1;
      let x_1849 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1845 * vec4<f32>(x_1846.z, x_1846.z, x_1846.z, x_1846.z)) + x_1849);
      let x_1851 : vec4<f32> = u_xlat7;
      let x_1852 : i32 = u_xlati70;
      let x_1855 : i32 = u_xlati70;
      let x_1859 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_1852 + 3i) / 4i)][((x_1855 + 3i) % 4i)];
      u_xlat7 = (x_1851 + x_1859);
      let x_1861 : vec4<f32> = u_xlat7;
      let x_1863 : vec4<f32> = u_xlat7;
      let x_1865 : vec3<f32> = (vec3<f32>(x_1861.x, x_1861.y, x_1861.z) / vec3<f32>(x_1863.w, x_1863.w, x_1863.w));
      let x_1866 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
      let x_1869 : i32 = u_xlati68;
      let x_1871 : f32 = x_208.x_AdditionalShadowParams[x_1869].y;
      u_xlatb70 = (0.0f < x_1871);
      let x_1873 : bool = u_xlatb70;
      if (x_1873) {
        let x_1876 : i32 = u_xlati68;
        let x_1878 : f32 = x_208.x_AdditionalShadowParams[x_1876].y;
        u_xlatb70 = (1.0f == x_1878);
        let x_1880 : bool = u_xlatb70;
        if (x_1880) {
          let x_1883 : vec4<f32> = u_xlat7;
          let x_1887 : vec4<f32> = x_208.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_1883.x, x_1883.y, x_1883.x, x_1883.y) + x_1887);
          let x_1890 : vec4<f32> = u_xlat8;
          let x_1891 : vec2<f32> = vec2<f32>(x_1890.x, x_1890.y);
          let x_1893 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_1891.x, x_1891.y, x_1893);
          let x_1901 : vec3<f32> = txVec30;
          let x_1903 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1901.xy, x_1901.z);
          u_xlat9.x = x_1903;
          let x_1906 : vec4<f32> = u_xlat8;
          let x_1907 : vec2<f32> = vec2<f32>(x_1906.z, x_1906.w);
          let x_1909 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_1907.x, x_1907.y, x_1909);
          let x_1916 : vec3<f32> = txVec31;
          let x_1918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1916.xy, x_1916.z);
          u_xlat9.y = x_1918;
          let x_1920 : vec4<f32> = u_xlat7;
          let x_1924 : vec4<f32> = x_208.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_1920.x, x_1920.y, x_1920.x, x_1920.y) + x_1924);
          let x_1927 : vec4<f32> = u_xlat8;
          let x_1928 : vec2<f32> = vec2<f32>(x_1927.x, x_1927.y);
          let x_1930 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
          let x_1937 : vec3<f32> = txVec32;
          let x_1939 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1937.xy, x_1937.z);
          u_xlat9.z = x_1939;
          let x_1942 : vec4<f32> = u_xlat8;
          let x_1943 : vec2<f32> = vec2<f32>(x_1942.z, x_1942.w);
          let x_1945 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_1943.x, x_1943.y, x_1945);
          let x_1952 : vec3<f32> = txVec33;
          let x_1954 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1952.xy, x_1952.z);
          u_xlat9.w = x_1954;
          let x_1956 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_1956, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_1959 : i32 = u_xlati68;
          let x_1961 : f32 = x_208.x_AdditionalShadowParams[x_1959].y;
          u_xlatb71 = (2.0f == x_1961);
          let x_1963 : bool = u_xlatb71;
          if (x_1963) {
            let x_1966 : vec4<f32> = u_xlat7;
            let x_1970 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_1973 : vec2<f32> = ((vec2<f32>(x_1966.x, x_1966.y) * vec2<f32>(x_1970.z, x_1970.w)) + vec2<f32>(0.5f, 0.5f));
            let x_1974 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_1973.x, x_1973.y, x_1974.z, x_1974.w);
            let x_1976 : vec4<f32> = u_xlat8;
            let x_1978 : vec2<f32> = floor(vec2<f32>(x_1976.x, x_1976.y));
            let x_1979 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_1978.x, x_1978.y, x_1979.z, x_1979.w);
            let x_1982 : vec4<f32> = u_xlat7;
            let x_1985 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_1988 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_1982.x, x_1982.y) * vec2<f32>(x_1985.z, x_1985.w)) + -(vec2<f32>(x_1988.x, x_1988.y)));
            let x_1992 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_1992.x, x_1992.x, x_1992.y, x_1992.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_1995 : vec4<f32> = u_xlat9;
            let x_1997 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_1995.x, x_1995.x, x_1995.z, x_1995.z) * vec4<f32>(x_1997.x, x_1997.x, x_1997.z, x_1997.z));
            let x_2000 : vec4<f32> = u_xlat10;
            let x_2002 : vec2<f32> = (vec2<f32>(x_2000.y, x_2000.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2003 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2002.x, x_2003.y, x_2002.y, x_2003.w);
            let x_2005 : vec4<f32> = u_xlat10;
            let x_2008 : vec2<f32> = u_xlat52;
            let x_2010 : vec2<f32> = ((vec2<f32>(x_2005.x, x_2005.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2008));
            let x_2011 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2010.x, x_2010.y, x_2011.z, x_2011.w);
            let x_2014 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2014) + vec2<f32>(1.0f, 1.0f));
            let x_2017 : vec2<f32> = u_xlat52;
            let x_2018 : vec2<f32> = min(x_2017, vec2<f32>(0.0f, 0.0f));
            let x_2019 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2018.x, x_2018.y, x_2019.z, x_2019.w);
            let x_2021 : vec4<f32> = u_xlat11;
            let x_2024 : vec4<f32> = u_xlat11;
            let x_2027 : vec2<f32> = u_xlat54;
            let x_2028 : vec2<f32> = ((-(vec2<f32>(x_2021.x, x_2021.y)) * vec2<f32>(x_2024.x, x_2024.y)) + x_2027);
            let x_2029 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2028.x, x_2028.y, x_2029.z, x_2029.w);
            let x_2031 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2031, vec2<f32>(0.0f, 0.0f));
            let x_2033 : vec2<f32> = u_xlat52;
            let x_2035 : vec2<f32> = u_xlat52;
            let x_2037 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2033) * x_2035) + vec2<f32>(x_2037.y, x_2037.w));
            let x_2040 : vec4<f32> = u_xlat11;
            let x_2042 : vec2<f32> = (vec2<f32>(x_2040.x, x_2040.y) + vec2<f32>(1.0f, 1.0f));
            let x_2043 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2042.x, x_2042.y, x_2043.z, x_2043.w);
            let x_2045 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2045 + vec2<f32>(1.0f, 1.0f));
            let x_2047 : vec4<f32> = u_xlat10;
            let x_2049 : vec2<f32> = (vec2<f32>(x_2047.x, x_2047.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2050 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2049.x, x_2049.y, x_2050.z, x_2050.w);
            let x_2052 : vec2<f32> = u_xlat54;
            let x_2053 : vec2<f32> = (x_2052 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2054 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2053.x, x_2053.y, x_2054.z, x_2054.w);
            let x_2056 : vec4<f32> = u_xlat11;
            let x_2058 : vec2<f32> = (vec2<f32>(x_2056.x, x_2056.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2059 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2058.x, x_2058.y, x_2059.z, x_2059.w);
            let x_2061 : vec2<f32> = u_xlat52;
            let x_2062 : vec2<f32> = (x_2061 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2063 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2062.x, x_2062.y, x_2063.z, x_2063.w);
            let x_2065 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2065.y, x_2065.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2069 : f32 = u_xlat11.x;
            u_xlat12.z = x_2069;
            let x_2072 : f32 = u_xlat52.x;
            u_xlat12.w = x_2072;
            let x_2075 : f32 = u_xlat13.x;
            u_xlat10.z = x_2075;
            let x_2078 : f32 = u_xlat9.x;
            u_xlat10.w = x_2078;
            let x_2080 : vec4<f32> = u_xlat10;
            let x_2082 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2080.z, x_2080.w, x_2080.x, x_2080.z) + vec4<f32>(x_2082.z, x_2082.w, x_2082.x, x_2082.z));
            let x_2086 : f32 = u_xlat12.y;
            u_xlat11.z = x_2086;
            let x_2089 : f32 = u_xlat52.y;
            u_xlat11.w = x_2089;
            let x_2092 : f32 = u_xlat10.y;
            u_xlat13.z = x_2092;
            let x_2095 : f32 = u_xlat9.z;
            u_xlat13.w = x_2095;
            let x_2097 : vec4<f32> = u_xlat11;
            let x_2099 : vec4<f32> = u_xlat13;
            let x_2101 : vec3<f32> = (vec3<f32>(x_2097.z, x_2097.y, x_2097.w) + vec3<f32>(x_2099.z, x_2099.y, x_2099.w));
            let x_2102 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2101.x, x_2101.y, x_2101.z, x_2102.w);
            let x_2104 : vec4<f32> = u_xlat10;
            let x_2106 : vec4<f32> = u_xlat14;
            let x_2108 : vec3<f32> = (vec3<f32>(x_2104.x, x_2104.z, x_2104.w) / vec3<f32>(x_2106.z, x_2106.w, x_2106.y));
            let x_2109 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2108.x, x_2108.y, x_2108.z, x_2109.w);
            let x_2111 : vec4<f32> = u_xlat10;
            let x_2113 : vec3<f32> = (vec3<f32>(x_2111.x, x_2111.y, x_2111.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2114 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
            let x_2116 : vec4<f32> = u_xlat13;
            let x_2118 : vec4<f32> = u_xlat9;
            let x_2120 : vec3<f32> = (vec3<f32>(x_2116.z, x_2116.y, x_2116.w) / vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
            let x_2121 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
            let x_2123 : vec4<f32> = u_xlat11;
            let x_2125 : vec3<f32> = (vec3<f32>(x_2123.x, x_2123.y, x_2123.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2126 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
            let x_2128 : vec4<f32> = u_xlat10;
            let x_2131 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2133 : vec3<f32> = (vec3<f32>(x_2128.y, x_2128.x, x_2128.z) * vec3<f32>(x_2131.x, x_2131.x, x_2131.x));
            let x_2134 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2133.x, x_2133.y, x_2133.z, x_2134.w);
            let x_2136 : vec4<f32> = u_xlat11;
            let x_2139 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2141 : vec3<f32> = (vec3<f32>(x_2136.x, x_2136.y, x_2136.z) * vec3<f32>(x_2139.y, x_2139.y, x_2139.y));
            let x_2142 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2142.w);
            let x_2145 : f32 = u_xlat11.x;
            u_xlat10.w = x_2145;
            let x_2147 : vec4<f32> = u_xlat8;
            let x_2150 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2153 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2147.x, x_2147.y, x_2147.x, x_2147.y) * vec4<f32>(x_2150.x, x_2150.y, x_2150.x, x_2150.y)) + vec4<f32>(x_2153.y, x_2153.w, x_2153.x, x_2153.w));
            let x_2156 : vec4<f32> = u_xlat8;
            let x_2159 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2162 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2156.x, x_2156.y) * vec2<f32>(x_2159.x, x_2159.y)) + vec2<f32>(x_2162.z, x_2162.w));
            let x_2166 : f32 = u_xlat10.y;
            u_xlat11.w = x_2166;
            let x_2168 : vec4<f32> = u_xlat11;
            let x_2169 : vec2<f32> = vec2<f32>(x_2168.y, x_2168.z);
            let x_2170 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2170.x, x_2169.x, x_2170.z, x_2169.y);
            let x_2172 : vec4<f32> = u_xlat8;
            let x_2175 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2178 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2172.x, x_2172.y, x_2172.x, x_2172.y) * vec4<f32>(x_2175.x, x_2175.y, x_2175.x, x_2175.y)) + vec4<f32>(x_2178.x, x_2178.y, x_2178.z, x_2178.y));
            let x_2181 : vec4<f32> = u_xlat8;
            let x_2184 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2187 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2181.x, x_2181.y, x_2181.x, x_2181.y) * vec4<f32>(x_2184.x, x_2184.y, x_2184.x, x_2184.y)) + vec4<f32>(x_2187.w, x_2187.y, x_2187.w, x_2187.z));
            let x_2190 : vec4<f32> = u_xlat8;
            let x_2193 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2196 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2190.x, x_2190.y, x_2190.x, x_2190.y) * vec4<f32>(x_2193.x, x_2193.y, x_2193.x, x_2193.y)) + vec4<f32>(x_2196.x, x_2196.w, x_2196.z, x_2196.w));
            let x_2199 : vec4<f32> = u_xlat9;
            let x_2201 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2199.x, x_2199.x, x_2199.x, x_2199.y) * vec4<f32>(x_2201.z, x_2201.w, x_2201.y, x_2201.z));
            let x_2204 : vec4<f32> = u_xlat9;
            let x_2206 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2204.y, x_2204.y, x_2204.z, x_2204.z) * x_2206);
            let x_2209 : f32 = u_xlat9.z;
            let x_2211 : f32 = u_xlat14.y;
            u_xlat71 = (x_2209 * x_2211);
            let x_2214 : vec4<f32> = u_xlat12;
            let x_2215 : vec2<f32> = vec2<f32>(x_2214.x, x_2214.y);
            let x_2217 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2215.x, x_2215.y, x_2217);
            let x_2224 : vec3<f32> = txVec34;
            let x_2226 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2224.xy, x_2224.z);
            u_xlat72 = x_2226;
            let x_2228 : vec4<f32> = u_xlat12;
            let x_2229 : vec2<f32> = vec2<f32>(x_2228.z, x_2228.w);
            let x_2231 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2229.x, x_2229.y, x_2231);
            let x_2239 : vec3<f32> = txVec35;
            let x_2241 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2239.xy, x_2239.z);
            u_xlat73 = x_2241;
            let x_2242 : f32 = u_xlat73;
            let x_2244 : f32 = u_xlat15.y;
            u_xlat73 = (x_2242 * x_2244);
            let x_2247 : f32 = u_xlat15.x;
            let x_2248 : f32 = u_xlat72;
            let x_2250 : f32 = u_xlat73;
            u_xlat72 = ((x_2247 * x_2248) + x_2250);
            let x_2253 : vec2<f32> = u_xlat52;
            let x_2255 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2253.x, x_2253.y, x_2255);
            let x_2262 : vec3<f32> = txVec36;
            let x_2264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2262.xy, x_2262.z);
            u_xlat73 = x_2264;
            let x_2266 : f32 = u_xlat15.z;
            let x_2267 : f32 = u_xlat73;
            let x_2269 : f32 = u_xlat72;
            u_xlat72 = ((x_2266 * x_2267) + x_2269);
            let x_2272 : vec4<f32> = u_xlat11;
            let x_2273 : vec2<f32> = vec2<f32>(x_2272.x, x_2272.y);
            let x_2275 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2273.x, x_2273.y, x_2275);
            let x_2282 : vec3<f32> = txVec37;
            let x_2284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2282.xy, x_2282.z);
            u_xlat73 = x_2284;
            let x_2286 : f32 = u_xlat15.w;
            let x_2287 : f32 = u_xlat73;
            let x_2289 : f32 = u_xlat72;
            u_xlat72 = ((x_2286 * x_2287) + x_2289);
            let x_2292 : vec4<f32> = u_xlat13;
            let x_2293 : vec2<f32> = vec2<f32>(x_2292.x, x_2292.y);
            let x_2295 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2293.x, x_2293.y, x_2295);
            let x_2302 : vec3<f32> = txVec38;
            let x_2304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2302.xy, x_2302.z);
            u_xlat73 = x_2304;
            let x_2306 : f32 = u_xlat16.x;
            let x_2307 : f32 = u_xlat73;
            let x_2309 : f32 = u_xlat72;
            u_xlat72 = ((x_2306 * x_2307) + x_2309);
            let x_2312 : vec4<f32> = u_xlat13;
            let x_2313 : vec2<f32> = vec2<f32>(x_2312.z, x_2312.w);
            let x_2315 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2313.x, x_2313.y, x_2315);
            let x_2322 : vec3<f32> = txVec39;
            let x_2324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2322.xy, x_2322.z);
            u_xlat73 = x_2324;
            let x_2326 : f32 = u_xlat16.y;
            let x_2327 : f32 = u_xlat73;
            let x_2329 : f32 = u_xlat72;
            u_xlat72 = ((x_2326 * x_2327) + x_2329);
            let x_2332 : vec4<f32> = u_xlat11;
            let x_2333 : vec2<f32> = vec2<f32>(x_2332.z, x_2332.w);
            let x_2335 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2333.x, x_2333.y, x_2335);
            let x_2342 : vec3<f32> = txVec40;
            let x_2344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2342.xy, x_2342.z);
            u_xlat73 = x_2344;
            let x_2346 : f32 = u_xlat16.z;
            let x_2347 : f32 = u_xlat73;
            let x_2349 : f32 = u_xlat72;
            u_xlat72 = ((x_2346 * x_2347) + x_2349);
            let x_2352 : vec4<f32> = u_xlat10;
            let x_2353 : vec2<f32> = vec2<f32>(x_2352.x, x_2352.y);
            let x_2355 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2353.x, x_2353.y, x_2355);
            let x_2362 : vec3<f32> = txVec41;
            let x_2364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2362.xy, x_2362.z);
            u_xlat73 = x_2364;
            let x_2366 : f32 = u_xlat16.w;
            let x_2367 : f32 = u_xlat73;
            let x_2369 : f32 = u_xlat72;
            u_xlat72 = ((x_2366 * x_2367) + x_2369);
            let x_2372 : vec4<f32> = u_xlat10;
            let x_2373 : vec2<f32> = vec2<f32>(x_2372.z, x_2372.w);
            let x_2375 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2373.x, x_2373.y, x_2375);
            let x_2382 : vec3<f32> = txVec42;
            let x_2384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2382.xy, x_2382.z);
            u_xlat73 = x_2384;
            let x_2385 : f32 = u_xlat71;
            let x_2386 : f32 = u_xlat73;
            let x_2388 : f32 = u_xlat72;
            u_xlat70 = ((x_2385 * x_2386) + x_2388);
          } else {
            let x_2391 : vec4<f32> = u_xlat7;
            let x_2394 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2397 : vec2<f32> = ((vec2<f32>(x_2391.x, x_2391.y) * vec2<f32>(x_2394.z, x_2394.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2398 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2397.x, x_2397.y, x_2398.z, x_2398.w);
            let x_2400 : vec4<f32> = u_xlat8;
            let x_2402 : vec2<f32> = floor(vec2<f32>(x_2400.x, x_2400.y));
            let x_2403 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2402.x, x_2402.y, x_2403.z, x_2403.w);
            let x_2405 : vec4<f32> = u_xlat7;
            let x_2408 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2411 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2405.x, x_2405.y) * vec2<f32>(x_2408.z, x_2408.w)) + -(vec2<f32>(x_2411.x, x_2411.y)));
            let x_2415 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2415.x, x_2415.x, x_2415.y, x_2415.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2418 : vec4<f32> = u_xlat9;
            let x_2420 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2418.x, x_2418.x, x_2418.z, x_2418.z) * vec4<f32>(x_2420.x, x_2420.x, x_2420.z, x_2420.z));
            let x_2423 : vec4<f32> = u_xlat10;
            let x_2425 : vec2<f32> = (vec2<f32>(x_2423.y, x_2423.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2426 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2426.x, x_2425.x, x_2426.z, x_2425.y);
            let x_2428 : vec4<f32> = u_xlat10;
            let x_2431 : vec2<f32> = u_xlat52;
            let x_2433 : vec2<f32> = ((vec2<f32>(x_2428.x, x_2428.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2431));
            let x_2434 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2433.x, x_2434.y, x_2433.y, x_2434.w);
            let x_2436 : vec2<f32> = u_xlat52;
            let x_2438 : vec2<f32> = (-(x_2436) + vec2<f32>(1.0f, 1.0f));
            let x_2439 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2438.x, x_2438.y, x_2439.z, x_2439.w);
            let x_2441 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2441, vec2<f32>(0.0f, 0.0f));
            let x_2443 : vec2<f32> = u_xlat54;
            let x_2445 : vec2<f32> = u_xlat54;
            let x_2447 : vec4<f32> = u_xlat10;
            let x_2449 : vec2<f32> = ((-(x_2443) * x_2445) + vec2<f32>(x_2447.x, x_2447.y));
            let x_2450 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2449.x, x_2449.y, x_2450.z, x_2450.w);
            let x_2452 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2452, vec2<f32>(0.0f, 0.0f));
            let x_2455 : vec2<f32> = u_xlat54;
            let x_2457 : vec2<f32> = u_xlat54;
            let x_2459 : vec4<f32> = u_xlat9;
            let x_2461 : vec2<f32> = ((-(x_2455) * x_2457) + vec2<f32>(x_2459.y, x_2459.w));
            let x_2462 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2461.x, x_2462.y, x_2461.y);
            let x_2464 : vec4<f32> = u_xlat10;
            let x_2466 : vec2<f32> = (vec2<f32>(x_2464.x, x_2464.y) + vec2<f32>(2.0f, 2.0f));
            let x_2467 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2466.x, x_2466.y, x_2467.z, x_2467.w);
            let x_2469 : vec3<f32> = u_xlat31;
            let x_2471 : vec2<f32> = (vec2<f32>(x_2469.x, x_2469.z) + vec2<f32>(2.0f, 2.0f));
            let x_2472 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2472.x, x_2471.x, x_2472.z, x_2471.y);
            let x_2475 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2475 * 0.08163200318813323975f);
            let x_2478 : vec4<f32> = u_xlat9;
            let x_2480 : vec3<f32> = (vec3<f32>(x_2478.z, x_2478.x, x_2478.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2481 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2481.w);
            let x_2483 : vec4<f32> = u_xlat10;
            let x_2485 : vec2<f32> = (vec2<f32>(x_2483.x, x_2483.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2486 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2485.x, x_2485.y, x_2486.z, x_2486.w);
            let x_2489 : f32 = u_xlat13.y;
            u_xlat12.x = x_2489;
            let x_2491 : vec2<f32> = u_xlat52;
            let x_2494 : vec2<f32> = ((vec2<f32>(x_2491.x, x_2491.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2495 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2495.x, x_2494.x, x_2495.z, x_2494.y);
            let x_2497 : vec2<f32> = u_xlat52;
            let x_2500 : vec2<f32> = ((vec2<f32>(x_2497.x, x_2497.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2501 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2500.x, x_2501.y, x_2500.y, x_2501.w);
            let x_2504 : f32 = u_xlat9.x;
            u_xlat10.y = x_2504;
            let x_2507 : f32 = u_xlat11.y;
            u_xlat10.w = x_2507;
            let x_2509 : vec4<f32> = u_xlat10;
            let x_2510 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2509 + x_2510);
            let x_2512 : vec2<f32> = u_xlat52;
            let x_2515 : vec2<f32> = ((vec2<f32>(x_2512.y, x_2512.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2516 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2516.x, x_2515.x, x_2516.z, x_2515.y);
            let x_2518 : vec2<f32> = u_xlat52;
            let x_2521 : vec2<f32> = ((vec2<f32>(x_2518.y, x_2518.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2522 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2521.x, x_2522.y, x_2521.y, x_2522.w);
            let x_2525 : f32 = u_xlat9.y;
            u_xlat11.y = x_2525;
            let x_2527 : vec4<f32> = u_xlat11;
            let x_2528 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2527 + x_2528);
            let x_2530 : vec4<f32> = u_xlat10;
            let x_2531 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2530 / x_2531);
            let x_2533 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2533 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2535 : vec4<f32> = u_xlat11;
            let x_2536 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2535 / x_2536);
            let x_2538 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2538 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2540 : vec4<f32> = u_xlat10;
            let x_2543 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2540.w, x_2540.x, x_2540.y, x_2540.z) * vec4<f32>(x_2543.x, x_2543.x, x_2543.x, x_2543.x));
            let x_2546 : vec4<f32> = u_xlat11;
            let x_2549 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2546.x, x_2546.w, x_2546.y, x_2546.z) * vec4<f32>(x_2549.y, x_2549.y, x_2549.y, x_2549.y));
            let x_2552 : vec4<f32> = u_xlat10;
            let x_2553 : vec3<f32> = vec3<f32>(x_2552.y, x_2552.z, x_2552.w);
            let x_2554 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2553.x, x_2554.y, x_2553.y, x_2553.z);
            let x_2557 : f32 = u_xlat11.x;
            u_xlat13.y = x_2557;
            let x_2559 : vec4<f32> = u_xlat8;
            let x_2562 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2565 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2559.x, x_2559.y, x_2559.x, x_2559.y) * vec4<f32>(x_2562.x, x_2562.y, x_2562.x, x_2562.y)) + vec4<f32>(x_2565.x, x_2565.y, x_2565.z, x_2565.y));
            let x_2568 : vec4<f32> = u_xlat8;
            let x_2571 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2574 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2568.x, x_2568.y) * vec2<f32>(x_2571.x, x_2571.y)) + vec2<f32>(x_2574.w, x_2574.y));
            let x_2578 : f32 = u_xlat13.y;
            u_xlat10.y = x_2578;
            let x_2581 : f32 = u_xlat11.z;
            u_xlat13.y = x_2581;
            let x_2583 : vec4<f32> = u_xlat8;
            let x_2586 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2589 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2583.x, x_2583.y, x_2583.x, x_2583.y) * vec4<f32>(x_2586.x, x_2586.y, x_2586.x, x_2586.y)) + vec4<f32>(x_2589.x, x_2589.y, x_2589.z, x_2589.y));
            let x_2592 : vec4<f32> = u_xlat8;
            let x_2595 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2598 : vec4<f32> = u_xlat13;
            let x_2600 : vec2<f32> = ((vec2<f32>(x_2592.x, x_2592.y) * vec2<f32>(x_2595.x, x_2595.y)) + vec2<f32>(x_2598.w, x_2598.y));
            let x_2601 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
            let x_2604 : f32 = u_xlat13.y;
            u_xlat10.z = x_2604;
            let x_2606 : vec4<f32> = u_xlat8;
            let x_2609 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2612 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2606.x, x_2606.y, x_2606.x, x_2606.y) * vec4<f32>(x_2609.x, x_2609.y, x_2609.x, x_2609.y)) + vec4<f32>(x_2612.x, x_2612.y, x_2612.x, x_2612.z));
            let x_2616 : f32 = u_xlat11.w;
            u_xlat13.y = x_2616;
            let x_2619 : vec4<f32> = u_xlat8;
            let x_2622 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2625 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2619.x, x_2619.y, x_2619.x, x_2619.y) * vec4<f32>(x_2622.x, x_2622.y, x_2622.x, x_2622.y)) + vec4<f32>(x_2625.x, x_2625.y, x_2625.z, x_2625.y));
            let x_2629 : vec4<f32> = u_xlat8;
            let x_2632 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2635 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2629.x, x_2629.y) * vec2<f32>(x_2632.x, x_2632.y)) + vec2<f32>(x_2635.w, x_2635.y));
            let x_2639 : f32 = u_xlat13.y;
            u_xlat10.w = x_2639;
            let x_2642 : vec4<f32> = u_xlat8;
            let x_2645 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2648 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2642.x, x_2642.y) * vec2<f32>(x_2645.x, x_2645.y)) + vec2<f32>(x_2648.x, x_2648.w));
            let x_2651 : vec4<f32> = u_xlat13;
            let x_2652 : vec3<f32> = vec3<f32>(x_2651.x, x_2651.z, x_2651.w);
            let x_2653 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2652.x, x_2653.y, x_2652.y, x_2652.z);
            let x_2655 : vec4<f32> = u_xlat8;
            let x_2658 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2661 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2655.x, x_2655.y, x_2655.x, x_2655.y) * vec4<f32>(x_2658.x, x_2658.y, x_2658.x, x_2658.y)) + vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2661.y));
            let x_2665 : vec4<f32> = u_xlat8;
            let x_2668 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2671 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2665.x, x_2665.y) * vec2<f32>(x_2668.x, x_2668.y)) + vec2<f32>(x_2671.w, x_2671.y));
            let x_2675 : f32 = u_xlat10.x;
            u_xlat11.x = x_2675;
            let x_2677 : vec4<f32> = u_xlat8;
            let x_2680 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2683 : vec4<f32> = u_xlat11;
            let x_2685 : vec2<f32> = ((vec2<f32>(x_2677.x, x_2677.y) * vec2<f32>(x_2680.x, x_2680.y)) + vec2<f32>(x_2683.x, x_2683.y));
            let x_2686 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2685.x, x_2685.y, x_2686.z, x_2686.w);
            let x_2689 : vec4<f32> = u_xlat9;
            let x_2691 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2689.x, x_2689.x, x_2689.x, x_2689.x) * x_2691);
            let x_2694 : vec4<f32> = u_xlat9;
            let x_2696 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2694.y, x_2694.y, x_2694.y, x_2694.y) * x_2696);
            let x_2699 : vec4<f32> = u_xlat9;
            let x_2701 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2699.z, x_2699.z, x_2699.z, x_2699.z) * x_2701);
            let x_2703 : vec4<f32> = u_xlat9;
            let x_2705 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2703.w, x_2703.w, x_2703.w, x_2703.w) * x_2705);
            let x_2708 : vec4<f32> = u_xlat14;
            let x_2709 : vec2<f32> = vec2<f32>(x_2708.x, x_2708.y);
            let x_2711 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2709.x, x_2709.y, x_2711);
            let x_2718 : vec3<f32> = txVec43;
            let x_2720 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2718.xy, x_2718.z);
            u_xlat71 = x_2720;
            let x_2722 : vec4<f32> = u_xlat14;
            let x_2723 : vec2<f32> = vec2<f32>(x_2722.z, x_2722.w);
            let x_2725 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2723.x, x_2723.y, x_2725);
            let x_2732 : vec3<f32> = txVec44;
            let x_2734 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2732.xy, x_2732.z);
            u_xlat72 = x_2734;
            let x_2735 : f32 = u_xlat72;
            let x_2737 : f32 = u_xlat19.y;
            u_xlat72 = (x_2735 * x_2737);
            let x_2740 : f32 = u_xlat19.x;
            let x_2741 : f32 = u_xlat71;
            let x_2743 : f32 = u_xlat72;
            u_xlat71 = ((x_2740 * x_2741) + x_2743);
            let x_2746 : vec2<f32> = u_xlat52;
            let x_2748 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2746.x, x_2746.y, x_2748);
            let x_2755 : vec3<f32> = txVec45;
            let x_2757 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2755.xy, x_2755.z);
            u_xlat72 = x_2757;
            let x_2759 : f32 = u_xlat19.z;
            let x_2760 : f32 = u_xlat72;
            let x_2762 : f32 = u_xlat71;
            u_xlat71 = ((x_2759 * x_2760) + x_2762);
            let x_2765 : vec4<f32> = u_xlat17;
            let x_2766 : vec2<f32> = vec2<f32>(x_2765.x, x_2765.y);
            let x_2768 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2766.x, x_2766.y, x_2768);
            let x_2775 : vec3<f32> = txVec46;
            let x_2777 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2775.xy, x_2775.z);
            u_xlat72 = x_2777;
            let x_2779 : f32 = u_xlat19.w;
            let x_2780 : f32 = u_xlat72;
            let x_2782 : f32 = u_xlat71;
            u_xlat71 = ((x_2779 * x_2780) + x_2782);
            let x_2785 : vec4<f32> = u_xlat15;
            let x_2786 : vec2<f32> = vec2<f32>(x_2785.x, x_2785.y);
            let x_2788 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2786.x, x_2786.y, x_2788);
            let x_2795 : vec3<f32> = txVec47;
            let x_2797 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2795.xy, x_2795.z);
            u_xlat72 = x_2797;
            let x_2799 : f32 = u_xlat20.x;
            let x_2800 : f32 = u_xlat72;
            let x_2802 : f32 = u_xlat71;
            u_xlat71 = ((x_2799 * x_2800) + x_2802);
            let x_2805 : vec4<f32> = u_xlat15;
            let x_2806 : vec2<f32> = vec2<f32>(x_2805.z, x_2805.w);
            let x_2808 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2806.x, x_2806.y, x_2808);
            let x_2815 : vec3<f32> = txVec48;
            let x_2817 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2815.xy, x_2815.z);
            u_xlat72 = x_2817;
            let x_2819 : f32 = u_xlat20.y;
            let x_2820 : f32 = u_xlat72;
            let x_2822 : f32 = u_xlat71;
            u_xlat71 = ((x_2819 * x_2820) + x_2822);
            let x_2825 : vec4<f32> = u_xlat16;
            let x_2826 : vec2<f32> = vec2<f32>(x_2825.x, x_2825.y);
            let x_2828 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2826.x, x_2826.y, x_2828);
            let x_2835 : vec3<f32> = txVec49;
            let x_2837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2835.xy, x_2835.z);
            u_xlat72 = x_2837;
            let x_2839 : f32 = u_xlat20.z;
            let x_2840 : f32 = u_xlat72;
            let x_2842 : f32 = u_xlat71;
            u_xlat71 = ((x_2839 * x_2840) + x_2842);
            let x_2845 : vec4<f32> = u_xlat17;
            let x_2846 : vec2<f32> = vec2<f32>(x_2845.z, x_2845.w);
            let x_2848 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2846.x, x_2846.y, x_2848);
            let x_2855 : vec3<f32> = txVec50;
            let x_2857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2855.xy, x_2855.z);
            u_xlat72 = x_2857;
            let x_2859 : f32 = u_xlat20.w;
            let x_2860 : f32 = u_xlat72;
            let x_2862 : f32 = u_xlat71;
            u_xlat71 = ((x_2859 * x_2860) + x_2862);
            let x_2865 : vec4<f32> = u_xlat18;
            let x_2866 : vec2<f32> = vec2<f32>(x_2865.x, x_2865.y);
            let x_2868 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_2866.x, x_2866.y, x_2868);
            let x_2875 : vec3<f32> = txVec51;
            let x_2877 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2875.xy, x_2875.z);
            u_xlat72 = x_2877;
            let x_2879 : f32 = u_xlat21.x;
            let x_2880 : f32 = u_xlat72;
            let x_2882 : f32 = u_xlat71;
            u_xlat71 = ((x_2879 * x_2880) + x_2882);
            let x_2885 : vec4<f32> = u_xlat18;
            let x_2886 : vec2<f32> = vec2<f32>(x_2885.z, x_2885.w);
            let x_2888 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_2886.x, x_2886.y, x_2888);
            let x_2895 : vec3<f32> = txVec52;
            let x_2897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2895.xy, x_2895.z);
            u_xlat72 = x_2897;
            let x_2899 : f32 = u_xlat21.y;
            let x_2900 : f32 = u_xlat72;
            let x_2902 : f32 = u_xlat71;
            u_xlat71 = ((x_2899 * x_2900) + x_2902);
            let x_2905 : vec2<f32> = u_xlat32;
            let x_2907 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_2905.x, x_2905.y, x_2907);
            let x_2914 : vec3<f32> = txVec53;
            let x_2916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2914.xy, x_2914.z);
            u_xlat72 = x_2916;
            let x_2918 : f32 = u_xlat21.z;
            let x_2919 : f32 = u_xlat72;
            let x_2921 : f32 = u_xlat71;
            u_xlat71 = ((x_2918 * x_2919) + x_2921);
            let x_2924 : vec2<f32> = u_xlat60;
            let x_2926 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_2924.x, x_2924.y, x_2926);
            let x_2933 : vec3<f32> = txVec54;
            let x_2935 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2933.xy, x_2933.z);
            u_xlat72 = x_2935;
            let x_2937 : f32 = u_xlat21.w;
            let x_2938 : f32 = u_xlat72;
            let x_2940 : f32 = u_xlat71;
            u_xlat71 = ((x_2937 * x_2938) + x_2940);
            let x_2943 : vec4<f32> = u_xlat13;
            let x_2944 : vec2<f32> = vec2<f32>(x_2943.x, x_2943.y);
            let x_2946 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_2944.x, x_2944.y, x_2946);
            let x_2953 : vec3<f32> = txVec55;
            let x_2955 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2953.xy, x_2953.z);
            u_xlat72 = x_2955;
            let x_2957 : f32 = u_xlat9.x;
            let x_2958 : f32 = u_xlat72;
            let x_2960 : f32 = u_xlat71;
            u_xlat71 = ((x_2957 * x_2958) + x_2960);
            let x_2963 : vec4<f32> = u_xlat13;
            let x_2964 : vec2<f32> = vec2<f32>(x_2963.z, x_2963.w);
            let x_2966 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
            let x_2973 : vec3<f32> = txVec56;
            let x_2975 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2973.xy, x_2973.z);
            u_xlat72 = x_2975;
            let x_2977 : f32 = u_xlat9.y;
            let x_2978 : f32 = u_xlat72;
            let x_2980 : f32 = u_xlat71;
            u_xlat71 = ((x_2977 * x_2978) + x_2980);
            let x_2983 : vec2<f32> = u_xlat55;
            let x_2985 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_2983.x, x_2983.y, x_2985);
            let x_2992 : vec3<f32> = txVec57;
            let x_2994 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2992.xy, x_2992.z);
            u_xlat72 = x_2994;
            let x_2996 : f32 = u_xlat9.z;
            let x_2997 : f32 = u_xlat72;
            let x_2999 : f32 = u_xlat71;
            u_xlat71 = ((x_2996 * x_2997) + x_2999);
            let x_3002 : vec4<f32> = u_xlat8;
            let x_3003 : vec2<f32> = vec2<f32>(x_3002.x, x_3002.y);
            let x_3005 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
            let x_3012 : vec3<f32> = txVec58;
            let x_3014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
            u_xlat72 = x_3014;
            let x_3016 : f32 = u_xlat9.w;
            let x_3017 : f32 = u_xlat72;
            let x_3019 : f32 = u_xlat71;
            u_xlat70 = ((x_3016 * x_3017) + x_3019);
          }
        }
      } else {
        let x_3023 : vec4<f32> = u_xlat7;
        let x_3024 : vec2<f32> = vec2<f32>(x_3023.x, x_3023.y);
        let x_3026 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
        let x_3033 : vec3<f32> = txVec59;
        let x_3035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
        u_xlat70 = x_3035;
      }
      let x_3036 : i32 = u_xlati68;
      let x_3038 : f32 = x_208.x_AdditionalShadowParams[x_3036].x;
      u_xlat71 = (1.0f + -(x_3038));
      let x_3041 : f32 = u_xlat70;
      let x_3042 : i32 = u_xlati68;
      let x_3044 : f32 = x_208.x_AdditionalShadowParams[x_3042].x;
      let x_3046 : f32 = u_xlat71;
      u_xlat70 = ((x_3041 * x_3044) + x_3046);
      let x_3049 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3049);
      let x_3053 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3053 >= 1.0f);
      let x_3055 : bool = u_xlatb71;
      let x_3056 : bool = u_xlatb72;
      u_xlatb71 = (x_3055 | x_3056);
      let x_3058 : bool = u_xlatb71;
      let x_3059 : f32 = u_xlat70;
      u_xlat70 = select(x_3059, 1.0f, x_3058);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3062 : f32 = u_xlat70;
    u_xlat71 = (-(x_3062) + 1.0f);
    let x_3065 : f32 = u_xlat66;
    let x_3066 : f32 = u_xlat71;
    let x_3068 : f32 = u_xlat70;
    u_xlat70 = ((x_3065 * x_3066) + x_3068);
    let x_3070 : f32 = u_xlat69;
    let x_3071 : f32 = u_xlat70;
    u_xlat69 = (x_3070 * x_3071);
    let x_3073 : f32 = u_xlat69;
    let x_3075 : i32 = u_xlati68;
    let x_3077 : vec4<f32> = x_1645.x_AdditionalLightsColor[x_3075];
    let x_3079 : vec3<f32> = (vec3<f32>(x_3073, x_3073, x_3073) * vec3<f32>(x_3077.x, x_3077.y, x_3077.z));
    let x_3080 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3079.x, x_3079.y, x_3079.z, x_3080.w);
    let x_3082 : vec3<f32> = u_xlat2;
    let x_3083 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(x_3082, vec3<f32>(x_3083.x, x_3083.y, x_3083.z));
    let x_3086 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3086, 0.0f, 1.0f);
    let x_3088 : f32 = u_xlat68;
    let x_3090 : vec4<f32> = u_xlat7;
    let x_3092 : vec3<f32> = (vec3<f32>(x_3088, x_3088, x_3088) * vec3<f32>(x_3090.x, x_3090.y, x_3090.z));
    let x_3093 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3092.x, x_3092.y, x_3092.z, x_3093.w);
    let x_3095 : vec4<f32> = u_xlat6;
    let x_3097 : vec4<f32> = u_xlat1;
    let x_3100 : vec4<f32> = u_xlat5;
    let x_3102 : vec3<f32> = ((vec3<f32>(x_3095.x, x_3095.y, x_3095.z) * vec3<f32>(x_3097.y, x_3097.z, x_3097.w)) + vec3<f32>(x_3100.x, x_3100.y, x_3100.z));
    let x_3103 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3103.w);

    continuing {
      let x_3105 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3105 + bitcast<u32>(1i));
    }
  }
  let x_3107 : vec4<f32> = u_xlat3;
  let x_3109 : vec4<f32> = u_xlat1;
  let x_3112 : vec4<f32> = u_xlat4;
  let x_3114 : vec3<f32> = ((vec3<f32>(x_3107.x, x_3107.y, x_3107.z) * vec3<f32>(x_3109.y, x_3109.z, x_3109.w)) + vec3<f32>(x_3112.x, x_3112.y, x_3112.z));
  let x_3115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3114.x, x_3114.y, x_3114.z, x_3115.w);
  let x_3119 : vec4<f32> = u_xlat5;
  let x_3121 : vec4<f32> = u_xlat1;
  let x_3123 : vec3<f32> = (vec3<f32>(x_3119.x, x_3119.y, x_3119.z) + vec3<f32>(x_3121.x, x_3121.y, x_3121.z));
  let x_3124 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3123.x, x_3123.y, x_3123.z, x_3124.w);
  let x_3127 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3127 == 1.0f);
  let x_3129 : bool = u_xlatb22;
  let x_3130 : bool = u_xlatb44;
  u_xlatb22 = (x_3129 | x_3130);
  let x_3132 : bool = u_xlatb22;
  if (x_3132) {
    let x_3137 : f32 = u_xlat0.x;
    x_3133 = x_3137;
  } else {
    x_3133 = 1.0f;
  }
  let x_3139 : f32 = x_3133;
  SV_Target0.w = x_3139;
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


