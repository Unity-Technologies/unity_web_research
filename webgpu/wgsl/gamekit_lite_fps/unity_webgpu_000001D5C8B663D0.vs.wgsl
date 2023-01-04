struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var<uniform> x_30 : VGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_NORMAL0;
  let x_19 : vec4<f32> = in_POSITION0;
  let x_21 : vec3<f32> = ((x_13 * vec3<f32>(0.01f, 0.01f, 0.01f)) + vec3<f32>(x_19.x, x_19.y, x_19.z));
  let x_22 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_21.x, x_21.y, x_21.z, x_22.w);
  let x_25 : vec4<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_30.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_25.y, x_25.y, x_25.y, x_25.y) * x_36);
  let x_39 : vec4<f32> = x_30.unity_ObjectToWorld[0i];
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_39 * vec4<f32>(x_40.x, x_40.x, x_40.x, x_40.x)) + x_43);
  let x_47 : vec4<f32> = x_30.unity_ObjectToWorld[2i];
  let x_48 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_47 * vec4<f32>(x_48.z, x_48.z, x_48.z, x_48.z)) + x_51);
  let x_53 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = x_30.unity_ObjectToWorld[3i];
  u_xlat1 = (x_53 + x_56);
  let x_59 : vec4<f32> = u_xlat1;
  let x_62 : vec4<f32> = x_30.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_62);
  let x_65 : vec4<f32> = x_30.unity_MatrixVP[0i];
  let x_66 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_65 * vec4<f32>(x_66.x, x_66.x, x_66.x, x_66.x)) + x_69);
  let x_72 : vec4<f32> = x_30.unity_MatrixVP[2i];
  let x_73 : vec4<f32> = u_xlat1;
  let x_76 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_72 * vec4<f32>(x_73.z, x_73.z, x_73.z, x_73.z)) + x_76);
  let x_85 : vec4<f32> = x_30.unity_MatrixVP[3i];
  let x_86 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = u_xlat2;
  gl_Position = ((x_85 * vec4<f32>(x_86.w, x_86.w, x_86.w, x_86.w)) + x_89);
  let x_93 : vec3<f32> = in_NORMAL0;
  let x_95 : vec4<f32> = x_30.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_93, vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_101 : vec3<f32> = in_NORMAL0;
  let x_103 : vec4<f32> = x_30.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_101, vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_107 : vec3<f32> = in_NORMAL0;
  let x_109 : vec4<f32> = x_30.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_107, vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_115.x, x_115.y, x_115.z), vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_120 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_120);
  let x_124 : f32 = u_xlat10;
  let x_126 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = (vec3<f32>(x_124, x_124, x_124) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : vec4<f32> = x_30.unity_ObjectToWorld[3i];
  let x_133 : vec4<f32> = in_POSITION0;
  let x_136 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_131.x, x_131.y, x_131.z) * vec3<f32>(x_133.w, x_133.w, x_133.w)) + vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_140 : vec4<f32> = x_30.unity_ObjectToWorld[3i];
  let x_141 : vec4<f32> = in_POSITION0;
  let x_144 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_140 * vec4<f32>(x_141.w, x_141.w, x_141.w, x_141.w)) + x_144);
  let x_147 : vec4<f32> = u_xlat0;
  let x_150 : vec4<f32> = x_30.unity_WorldToLight[1i];
  let x_152 : vec2<f32> = (vec2<f32>(x_147.y, x_147.y) * vec2<f32>(x_150.x, x_150.y));
  let x_153 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_152.x, x_152.y, x_153.z, x_153.w);
  let x_156 : vec4<f32> = x_30.unity_WorldToLight[0i];
  let x_158 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = u_xlat1;
  let x_163 : vec2<f32> = ((vec2<f32>(x_156.x, x_156.y) * vec2<f32>(x_158.x, x_158.x)) + vec2<f32>(x_161.x, x_161.y));
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_163.x, x_163.y, x_164.z, x_164.w);
  let x_167 : vec4<f32> = x_30.unity_WorldToLight[2i];
  let x_169 : vec4<f32> = u_xlat0;
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : vec2<f32> = ((vec2<f32>(x_167.x, x_167.y) * vec2<f32>(x_169.z, x_169.z)) + vec2<f32>(x_172.x, x_172.y));
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
  let x_180 : vec4<f32> = x_30.unity_WorldToLight[3i];
  let x_182 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec2<f32>(x_180.x, x_180.y) * vec2<f32>(x_182.w, x_182.w)) + vec2<f32>(x_185.x, x_185.y));
  vs_TEXCOORD3 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1);
}
