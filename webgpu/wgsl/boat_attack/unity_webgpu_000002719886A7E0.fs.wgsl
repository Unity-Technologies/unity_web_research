diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_47 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat9 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_138 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb4 : bool;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_190 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD5.y;
  let x_19 : f32 = vs_TEXCOORD5.y;
  u_xlat0.x = (x_17 * x_19);
  let x_25 : f32 = vs_TEXCOORD5.x;
  let x_27 : f32 = vs_TEXCOORD5.x;
  let x_30 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_25 * x_27) + -(x_30));
  let x_36 : vec4<f32> = vs_TEXCOORD5;
  let x_38 : vec4<f32> = vs_TEXCOORD5;
  u_xlat1 = (vec4<f32>(x_36.y, x_36.z, x_36.z, x_36.x) * vec4<f32>(x_38.x, x_38.y, x_38.z, x_38.z));
  let x_52 : vec4<f32> = x_47.unity_SHBr;
  let x_53 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_52, x_53);
  let x_58 : vec4<f32> = x_47.unity_SHBg;
  let x_59 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_58, x_59);
  let x_64 : vec4<f32> = x_47.unity_SHBb;
  let x_65 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_64, x_65);
  let x_70 : vec4<f32> = x_47.unity_SHC;
  let x_72 : vec3<f32> = u_xlat0;
  let x_75 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_70.x, x_70.y, x_70.z) * vec3<f32>(x_72.x, x_72.x, x_72.x)) + x_75);
  let x_77 : vec4<f32> = vs_TEXCOORD5;
  let x_78 : vec3<f32> = vec3<f32>(x_77.x, x_77.y, x_77.z);
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  u_xlat1.w = 1.0f;
  let x_86 : vec4<f32> = x_47.unity_SHAr;
  let x_87 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_86, x_87);
  let x_92 : vec4<f32> = x_47.unity_SHAg;
  let x_93 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_92, x_93);
  let x_98 : vec4<f32> = x_47.unity_SHAb;
  let x_99 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_98, x_99);
  let x_102 : vec3<f32> = u_xlat0;
  let x_103 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_102 + x_103);
  let x_105 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_105, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_113 : vec4<f32> = vs_TEXCOORD4;
  let x_114 : vec2<f32> = vec2<f32>(x_113.x, x_113.y);
  let x_116 : f32 = vs_TEXCOORD4.z;
  txVec0 = vec3<f32>(x_114.x, x_114.y, x_116);
  let x_131 : vec3<f32> = txVec0;
  let x_133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_131.xy, x_131.z);
  u_xlat9 = x_133;
  let x_142 : f32 = x_138.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_142) + 1.0f);
  let x_146 : f32 = u_xlat9;
  let x_148 : f32 = x_138.x_MainLightShadowParams.x;
  let x_151 : f32 = u_xlat1.x;
  u_xlat9 = ((x_146 * x_148) + x_151);
  let x_157 : f32 = vs_TEXCOORD4.z;
  u_xlatb1 = (0.0f >= x_157);
  let x_161 : f32 = vs_TEXCOORD4.z;
  u_xlatb4 = (x_161 >= 1.0f);
  let x_163 : bool = u_xlatb4;
  let x_164 : bool = u_xlatb1;
  u_xlatb1 = (x_163 | x_164);
  let x_166 : bool = u_xlatb1;
  let x_167 : f32 = u_xlat9;
  u_xlat9 = select(x_167, 1.0f, x_166);
  let x_170 : vec4<f32> = vs_TEXCOORD3;
  let x_172 : f32 = u_xlat9;
  let x_175 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_172, x_172, x_172)) + x_175);
  let x_187 : vec2<f32> = vs_TEXCOORD0;
  let x_193 : f32 = x_190.x_GlobalMipBias.x;
  let x_194 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_187, x_193);
  u_xlat1 = x_194;
  let x_197 : vec3<f32> = u_xlat0;
  let x_198 : vec4<f32> = u_xlat1;
  let x_200 : vec3<f32> = (x_197 * vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_204 : f32 = u_xlat1.w;
  SV_Target0.w = x_204;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD5_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


