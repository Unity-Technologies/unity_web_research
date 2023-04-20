diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_MatrixInvV : mat4x4<f32>,
  /* @offset(192) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_13 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_13.unity_WorldToObject[1i];
  let x_23 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_25 : vec3<f32> = (vec3<f32>(x_19.x, x_19.y, x_19.z) * vec3<f32>(x_23.y, x_23.y, x_23.y));
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_25.x, x_25.y, x_25.z, x_26.w);
  let x_30 : vec4<f32> = x_13.unity_WorldToObject[0i];
  let x_33 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_36 : vec4<f32> = u_xlat0;
  let x_38 : vec3<f32> = ((vec3<f32>(x_30.x, x_30.y, x_30.z) * vec3<f32>(x_33.x, x_33.x, x_33.x)) + vec3<f32>(x_36.x, x_36.y, x_36.z));
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_38.x, x_38.y, x_38.z, x_39.w);
  let x_42 : vec4<f32> = x_13.unity_WorldToObject[2i];
  let x_45 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_48 : vec4<f32> = u_xlat0;
  let x_50 : vec3<f32> = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * vec3<f32>(x_45.z, x_45.z, x_45.z)) + vec3<f32>(x_48.x, x_48.y, x_48.z));
  let x_51 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_50.x, x_50.y, x_50.z, x_51.w);
  let x_55 : vec4<f32> = x_13.unity_WorldToObject[3i];
  let x_58 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_55.x, x_55.y, x_55.z) * vec3<f32>(x_58.w, x_58.w, x_58.w)) + vec3<f32>(x_61.x, x_61.y, x_61.z));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_66 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = in_NORMAL0;
  let x_72 : vec3<f32> = (vec3<f32>(x_66.x, x_66.y, x_66.z) * vec3<f32>(x_70.y, x_70.y, x_70.y));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_77 : vec4<f32> = x_13.unity_WorldToObject[1i];
  let x_80 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_82 : vec3<f32> = (vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(x_80.y, x_80.y, x_80.y));
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_86 : vec4<f32> = x_13.unity_WorldToObject[0i];
  let x_89 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_92 : vec4<f32> = u_xlat1;
  let x_94 : vec3<f32> = ((vec3<f32>(x_86.x, x_86.y, x_86.z) * vec3<f32>(x_89.x, x_89.x, x_89.x)) + vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = x_13.unity_WorldToObject[2i];
  let x_101 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_104 : vec4<f32> = u_xlat1;
  let x_106 : vec3<f32> = ((vec3<f32>(x_98.x, x_98.y, x_98.z) * vec3<f32>(x_101.z, x_101.z, x_101.z)) + vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : vec4<f32> = x_13.unity_WorldToObject[3i];
  let x_113 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_113.w, x_113.w, x_113.w)) + vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : vec3<f32> = in_NORMAL0;
  let x_123 : vec4<f32> = u_xlat1;
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = ((vec3<f32>(x_121.x, x_121.x, x_121.x) * vec3<f32>(x_123.x, x_123.y, x_123.z)) + vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_139 : f32 = in_TANGENT0.w;
  u_xlat6 = (-(abs(x_139)) + 1.0f);
  let x_144 : vec4<f32> = u_xlat0;
  let x_146 : f32 = u_xlat6;
  let x_150 : vec4<f32> = in_POSITION0;
  let x_152 : vec3<f32> = ((vec3<f32>(x_144.x, x_144.y, x_144.z) * vec3<f32>(x_146, x_146, x_146)) + vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_155 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_13.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_155.y, x_155.y, x_155.y, x_155.y) * x_158);
  let x_161 : vec4<f32> = x_13.unity_ObjectToWorld[0i];
  let x_162 : vec4<f32> = u_xlat0;
  let x_165 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_161 * vec4<f32>(x_162.x, x_162.x, x_162.x, x_162.x)) + x_165);
  let x_168 : vec4<f32> = x_13.unity_ObjectToWorld[2i];
  let x_169 : vec4<f32> = u_xlat0;
  let x_172 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_168 * vec4<f32>(x_169.z, x_169.z, x_169.z, x_169.z)) + x_172);
  let x_174 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat0 = (x_174 + x_176);
  let x_178 : vec4<f32> = u_xlat0;
  let x_181 : vec4<f32> = x_13.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_178.y, x_178.y, x_178.y, x_178.y) * x_181);
  let x_184 : vec4<f32> = x_13.unity_MatrixVP[0i];
  let x_185 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_184 * vec4<f32>(x_185.x, x_185.x, x_185.x, x_185.x)) + x_188);
  let x_191 : vec4<f32> = x_13.unity_MatrixVP[2i];
  let x_192 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_191 * vec4<f32>(x_192.z, x_192.z, x_192.z, x_192.z)) + x_195);
  let x_203 : vec4<f32> = x_13.unity_MatrixVP[3i];
  let x_204 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = u_xlat1;
  gl_Position = ((x_203 * vec4<f32>(x_204.w, x_204.w, x_204.w, x_204.w)) + x_207);
  let x_215 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_215.x, x_215.y);
  let x_220 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD1 = vec3<f32>(x_220.w, x_220.w, x_220.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}


