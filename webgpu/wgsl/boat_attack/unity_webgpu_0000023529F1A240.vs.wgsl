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

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
}

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_21 : UnityPerDraw;

@group(1) @binding(5) var<uniform> x_59 : VGlobals;

var<private> vs_INTERP0 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP3 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_INTERP4 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> phase0_Output0_6 : vec4<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> vs_INTERP8 : vec4<f32>;

var<private> vs_INTERP9 : vec4<f32>;

var<private> vs_INTERP5 : vec2<f32>;

var<private> vs_INTERP6 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_12.y, x_12.y, x_12.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_31 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_33 : vec3<f32> = in_POSITION0;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_31.x, x_31.y, x_31.z) * vec3<f32>(x_33.x, x_33.x, x_33.x)) + x_36);
  let x_40 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_42 : vec3<f32> = in_POSITION0;
  let x_45 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_40.x, x_40.y, x_40.z) * vec3<f32>(x_42.z, x_42.z, x_42.z)) + x_45);
  let x_47 : vec3<f32> = u_xlat0;
  let x_50 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat0 = (x_47 + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_55 : vec3<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_59.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y) * x_61);
  let x_64 : vec4<f32> = x_59.unity_MatrixVP[0i];
  let x_65 : vec3<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x)) + x_68);
  let x_71 : vec4<f32> = x_59.unity_MatrixVP[2i];
  let x_72 : vec3<f32> = u_xlat0;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_71 * vec4<f32>(x_72.z, x_72.z, x_72.z, x_72.z)) + x_75);
  let x_79 : vec3<f32> = u_xlat0;
  vs_INTERP0 = x_79;
  let x_85 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = x_59.unity_MatrixVP[3i];
  gl_Position = (x_85 + x_87);
  let x_92 : vec3<f32> = in_NORMAL0;
  let x_94 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_92, vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_100 : vec3<f32> = in_NORMAL0;
  let x_102 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_100, vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_106 : vec3<f32> = in_NORMAL0;
  let x_108 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_106, vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_113 : vec3<f32> = u_xlat0;
  let x_114 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_113, x_114);
  let x_116 : f32 = u_xlat6;
  u_xlat6 = max(x_116, 1.17549435e-37f);
  let x_119 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_119);
  let x_122 : f32 = u_xlat6;
  let x_124 : vec3<f32> = u_xlat0;
  vs_INTERP1 = (vec3<f32>(x_122, x_122, x_122) * x_124);
  let x_128 : vec4<f32> = in_TANGENT0;
  let x_131 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_128.y, x_128.y, x_128.y) * vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_135 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_137 : vec4<f32> = in_TANGENT0;
  let x_140 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_135.x, x_135.y, x_135.z) * vec3<f32>(x_137.x, x_137.x, x_137.x)) + x_140);
  let x_143 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_145 : vec4<f32> = in_TANGENT0;
  let x_148 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_145.z, x_145.z, x_145.z)) + x_148);
  let x_150 : vec3<f32> = u_xlat0;
  let x_151 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat6;
  u_xlat6 = max(x_153, 1.17549435e-37f);
  let x_155 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_155);
  let x_158 : f32 = u_xlat6;
  let x_160 : vec3<f32> = u_xlat0;
  let x_161 : vec3<f32> = (vec3<f32>(x_158, x_158, x_158) * x_160);
  let x_162 : vec4<f32> = vs_INTERP2;
  vs_INTERP2 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_167 : f32 = in_TANGENT0.w;
  vs_INTERP2.w = x_167;
  let x_172 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP3 = x_172;
  let x_175 : vec4<f32> = in_COLOR0;
  vs_INTERP4 = x_175;
  phase0_Output0_6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_INTERP7 = vec3<f32>(0.0f, 0.0f, 0.0f);
  vs_INTERP8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_INTERP9 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_188 : vec4<f32> = phase0_Output0_6;
  vs_INTERP5 = vec2<f32>(x_188.x, x_188.y);
  let x_191 : vec4<f32> = phase0_Output0_6;
  vs_INTERP6 = vec2<f32>(x_191.z, x_191.w);
  return;
}

struct main_out {
  @location(0)
  vs_INTERP0_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_INTERP1_1 : vec3<f32>,
  @location(2)
  vs_INTERP2_1 : vec4<f32>,
  @location(3)
  vs_INTERP3_1 : vec4<f32>,
  @location(4)
  vs_INTERP4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_INTERP0, gl_Position, vs_INTERP1, vs_INTERP2, vs_INTERP3, vs_INTERP4);
}

