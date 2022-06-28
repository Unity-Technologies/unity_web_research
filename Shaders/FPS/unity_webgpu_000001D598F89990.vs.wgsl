struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(9) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_50);
  let x_53 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_54 : vec4<f32> = u_xlat1;
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_53 * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + x_57);
  let x_60 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_61 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_67 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_67 * vec4<f32>(x_68.w, x_68.w, x_68.w, x_68.w)) + x_71);
  let x_79 : vec4<f32> = u_xlat1;
  gl_Position = x_79;
  let x_83 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_84 : vec4<f32> = in_POSITION0;
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat2 = ((x_83 * vec4<f32>(x_84.w, x_84.w, x_84.w, x_84.w)) + x_87);
  let x_93 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_95 : vec4<f32> = in_POSITION0;
  let x_98 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_93.x, x_93.y, x_93.z) * vec3<f32>(x_95.w, x_95.w, x_95.w)) + vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_102 : vec4<f32> = u_xlat2;
  let x_106 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_108 : vec2<f32> = (vec2<f32>(x_102.y, x_102.y) * vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_112 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_114 : vec4<f32> = u_xlat2;
  let x_117 : vec4<f32> = u_xlat0;
  let x_119 : vec2<f32> = ((vec2<f32>(x_112.x, x_112.y) * vec2<f32>(x_114.x, x_114.x)) + vec2<f32>(x_117.x, x_117.y));
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_123 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_125 : vec4<f32> = u_xlat2;
  let x_128 : vec4<f32> = u_xlat0;
  let x_130 : vec2<f32> = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_125.z, x_125.z)) + vec2<f32>(x_128.x, x_128.y));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_131.z, x_131.w);
  let x_136 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_138 : vec4<f32> = u_xlat2;
  let x_141 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = ((vec2<f32>(x_136.x, x_136.y) * vec2<f32>(x_138.w, x_138.w)) + vec2<f32>(x_141.x, x_141.y));
  let x_147 : vec4<f32> = in_TEXCOORD0;
  let x_151 : vec4<f32> = x_17.x_MainTex_ST;
  let x_155 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_147.x, x_147.y) * vec2<f32>(x_151.x, x_151.y)) + vec2<f32>(x_155.z, x_155.w));
  let x_160 : vec3<f32> = in_NORMAL0;
  let x_162 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_160, vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_168 : vec3<f32> = in_NORMAL0;
  let x_170 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_168, vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_174 : vec3<f32> = in_NORMAL0;
  let x_176 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_174, vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_182 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_187);
  let x_190 : f32 = u_xlat9;
  let x_192 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = (vec3<f32>(x_190, x_190, x_190) * vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_197 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_197;
  let x_199 : f32 = u_xlat1.y;
  let x_202 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_199 * x_202);
  let x_206 : f32 = u_xlat0.x;
  u_xlat0.w = (x_206 * 0.5f);
  let x_211 : vec4<f32> = u_xlat1;
  let x_214 : vec2<f32> = (vec2<f32>(x_211.x, x_211.w) * vec2<f32>(0.5f, 0.5f));
  let x_215 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_214.x, x_215.y, x_214.y, x_215.w);
  let x_218 : vec4<f32> = u_xlat1;
  let x_219 : vec2<f32> = vec2<f32>(x_218.z, x_218.w);
  let x_220 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_220.x, x_220.y, x_219.x, x_219.y);
  let x_222 : vec4<f32> = u_xlat0;
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : vec2<f32> = (vec2<f32>(x_222.z, x_222.z) + vec2<f32>(x_224.x, x_224.w));
  let x_227 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_226.x, x_226.y, x_227.z, x_227.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD2, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD4);
}

