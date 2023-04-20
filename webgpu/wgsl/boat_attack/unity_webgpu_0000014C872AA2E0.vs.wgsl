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

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(64) */
  x_ShadowBias : vec4<f32>,
  /* @offset(80) */
  x_LightPosition : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_71 : VGlobals;

var<private> u_xlat9 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP2 : vec3<f32>;

var<private> vs_INTERP0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec3<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec3<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_66 : vec4<f32> = u_xlat0;
  let x_74 : vec3<f32> = x_71.x_LightPosition;
  u_xlat1 = (-(vec3<f32>(x_66.x, x_66.y, x_66.z)) + x_74);
  let x_78 : vec3<f32> = u_xlat1;
  let x_79 : vec3<f32> = u_xlat1;
  u_xlat9 = dot(x_78, x_79);
  let x_81 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_81);
  let x_83 : f32 = u_xlat9;
  let x_85 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_83, x_83, x_83) * x_85);
  let x_88 : vec3<f32> = u_xlat1;
  let x_90 : vec4<f32> = x_71.x_ShadowBias;
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat2 = ((x_88 * vec3<f32>(x_90.x, x_90.x, x_90.x)) + vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_97 : vec4<f32> = u_xlat0;
  vs_INTERP1 = vec3<f32>(x_97.x, x_97.y, x_97.z);
  let x_100 : vec3<f32> = in_NORMAL0;
  let x_102 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_100, vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_107 : vec3<f32> = in_NORMAL0;
  let x_109 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_107, vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_114 : vec3<f32> = in_NORMAL0;
  let x_116 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_114, vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_120 : vec4<f32> = u_xlat0;
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_120.x, x_120.y, x_120.z), vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_125 : f32 = u_xlat9;
  u_xlat9 = max(x_125, 1.17549435e-38f);
  let x_128 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_128);
  let x_130 : f32 = u_xlat9;
  let x_132 : vec4<f32> = u_xlat0;
  let x_134 : vec3<f32> = (vec3<f32>(x_130, x_130, x_130) * vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_137 : vec3<f32> = u_xlat1;
  let x_138 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(x_137, vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : f32 = u_xlat9;
  u_xlat9 = clamp(x_141, 0.0f, 1.0f);
  let x_145 : f32 = u_xlat9;
  u_xlat9 = (-(x_145) + 1.0f);
  let x_148 : f32 = u_xlat9;
  let x_151 : f32 = x_71.x_ShadowBias.y;
  u_xlat9 = (x_148 * x_151);
  let x_153 : vec4<f32> = u_xlat0;
  let x_155 : f32 = u_xlat9;
  let x_158 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155, x_155, x_155)) + x_158);
  let x_161 : vec4<f32> = u_xlat0;
  vs_INTERP2 = vec3<f32>(x_161.x, x_161.y, x_161.z);
  let x_163 : vec3<f32> = u_xlat1;
  let x_166 : vec4<f32> = x_71.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_163.y, x_163.y, x_163.y, x_163.y) * x_166);
  let x_169 : vec4<f32> = x_71.unity_MatrixVP[0i];
  let x_170 : vec3<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_169 * vec4<f32>(x_170.x, x_170.x, x_170.x, x_170.x)) + x_173);
  let x_176 : vec4<f32> = x_71.unity_MatrixVP[2i];
  let x_177 : vec3<f32> = u_xlat1;
  let x_180 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_176 * vec4<f32>(x_177.z, x_177.z, x_177.z, x_177.z)) + x_180);
  let x_182 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = x_71.unity_MatrixVP[3i];
  u_xlat0 = (x_182 + x_184);
  let x_191 : f32 = u_xlat0.z;
  gl_Position.z = min(x_191, 1.0f);
  let x_195 : vec4<f32> = u_xlat0;
  let x_196 : vec3<f32> = vec3<f32>(x_195.x, x_195.y, x_195.w);
  let x_199 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_196.x, x_196.y, x_199.z, x_196.z);
  let x_204 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP0 = x_204;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_INTERP0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_INTERP0);
}


