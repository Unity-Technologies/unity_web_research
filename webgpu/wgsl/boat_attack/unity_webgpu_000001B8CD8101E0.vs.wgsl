struct VGlobals {
  x_Time : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_TreeInstanceScale : vec4<f32>,
  x_SquashPlaneNormal : vec4<f32>,
  x_SquashAmount : f32,
  @size(12)
  padding : u32,
  x_Wind : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_13 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat8 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : f32;
  var u_xlat12 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat0.x = dot(vec3<f32>(x_20.x, x_20.y, x_20.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_30 : f32 = u_xlat0.x;
  let x_35 : f32 = in_COLOR0.x;
  u_xlat0.y = (x_30 + x_35);
  let x_41 : f32 = u_xlat0.y;
  let x_43 : f32 = in_COLOR0.y;
  u_xlat8 = (x_41 + x_43);
  let x_47 : vec4<f32> = in_POSITION0;
  let x_50 : vec4<f32> = x_13.x_TreeInstanceScale;
  let x_52 : vec3<f32> = (vec3<f32>(x_47.x, x_47.y, x_47.z) * vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat1;
  let x_57 : f32 = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_55.x, x_55.y, x_55.z), vec3<f32>(x_57, x_57, x_57));
  let x_61 : vec4<f32> = u_xlat0;
  let x_65 : vec4<f32> = x_13.x_Time;
  u_xlat0 = (vec4<f32>(x_61.x, x_61.x, x_61.y, x_61.y) + vec4<f32>(x_65.y, x_65.y, x_65.y, x_65.y));
  let x_68 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_68 * vec4<f32>(1.975000024f, 0.792999983f, 0.375f, 0.193000004f));
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_75);
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_77 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_84);
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_86 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_92 : vec4<f32> = u_xlat0;
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat2 = (abs(x_92) * abs(x_94));
  let x_97 : vec4<f32> = u_xlat0;
  u_xlat0 = ((-(abs(x_97)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_104 : vec4<f32> = u_xlat0;
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_104 * x_105);
  let x_108 : vec4<f32> = u_xlat0;
  let x_110 : vec4<f32> = u_xlat0;
  let x_112 : vec2<f32> = (vec2<f32>(x_108.y, x_108.w) + vec2<f32>(x_110.x, x_110.z));
  let x_113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
  let x_115 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = x_13.x_Wind;
  let x_121 : vec3<f32> = (vec3<f32>(x_115.y, x_115.y, x_115.y) * vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = in_TEXCOORD1;
  let x_129 : vec3<f32> = (vec3<f32>(x_124.x, x_124.y, x_124.z) * vec3<f32>(x_127.y, x_127.y, x_127.y));
  let x_130 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_135 : f32 = u_xlat0.y;
  let x_137 : f32 = in_TEXCOORD1.y;
  u_xlat3.y = (x_135 * x_137);
  let x_142 : f32 = in_COLOR0.y;
  u_xlat4 = (x_142 * 0.100000001f);
  let x_145 : f32 = u_xlat4;
  let x_149 : vec3<f32> = in_NORMAL0;
  let x_151 : vec2<f32> = (vec2<f32>(x_145, x_145) * vec2<f32>(x_149.x, x_149.z));
  let x_152 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_151.x, x_152.y, x_151.y);
  u_xlat0.z = 0.300000012f;
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = u_xlat3;
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.z, x_157.x) * x_159) + vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_166 : vec4<f32> = u_xlat0;
  let x_169 : vec4<f32> = x_13.x_Wind;
  let x_172 : vec4<f32> = u_xlat1;
  let x_174 : vec3<f32> = ((vec3<f32>(x_166.x, x_166.y, x_166.z) * vec3<f32>(x_169.w, x_169.w, x_169.w)) + vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec4<f32> = in_TEXCOORD1;
  let x_180 : vec4<f32> = x_13.x_Wind;
  let x_183 : vec4<f32> = u_xlat0;
  let x_185 : vec3<f32> = ((vec3<f32>(x_177.x, x_177.x, x_177.x) * vec3<f32>(x_180.x, x_180.y, x_180.z)) + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_191 : vec4<f32> = x_13.x_SquashPlaneNormal;
  let x_193 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_196 : f32 = u_xlat12;
  let x_200 : f32 = x_13.x_SquashPlaneNormal.w;
  u_xlat12 = (x_196 + x_200);
  let x_202 : f32 = u_xlat12;
  let x_206 : vec4<f32> = x_13.x_SquashPlaneNormal;
  let x_209 : vec4<f32> = u_xlat0;
  let x_211 : vec3<f32> = ((-(vec3<f32>(x_202, x_202, x_202)) * vec3<f32>(x_206.x, x_206.y, x_206.z)) + vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : vec4<f32> = u_xlat0;
  let x_216 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) + -(vec3<f32>(x_216.x, x_216.y, x_216.z)));
  let x_220 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_224 : f32 = x_13.x_SquashAmount;
  let x_226 : vec4<f32> = u_xlat0;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = ((vec3<f32>(x_224, x_224, x_224) * vec3<f32>(x_226.x, x_226.y, x_226.z)) + vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat0;
  let x_237 : vec4<f32> = x_13.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_234.y, x_234.y, x_234.y, x_234.y) * x_237);
  let x_240 : vec4<f32> = x_13.unity_ObjectToWorld[0i];
  let x_241 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_240 * vec4<f32>(x_241.x, x_241.x, x_241.x, x_241.x)) + x_244);
  let x_248 : vec4<f32> = x_13.unity_ObjectToWorld[2i];
  let x_249 : vec4<f32> = u_xlat0;
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_248 * vec4<f32>(x_249.z, x_249.z, x_249.z, x_249.z)) + x_252);
  let x_254 : vec4<f32> = u_xlat0;
  let x_256 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat0 = (x_254 + x_256);
  let x_258 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = x_13.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_258.y, x_258.y, x_258.y, x_258.y) * x_261);
  let x_264 : vec4<f32> = x_13.unity_MatrixVP[0i];
  let x_265 : vec4<f32> = u_xlat0;
  let x_268 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_264 * vec4<f32>(x_265.x, x_265.x, x_265.x, x_265.x)) + x_268);
  let x_271 : vec4<f32> = x_13.unity_MatrixVP[2i];
  let x_272 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_271 * vec4<f32>(x_272.z, x_272.z, x_272.z, x_272.z)) + x_275);
  let x_279 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = x_279;
  let x_284 : vec4<f32> = u_xlat1;
  let x_286 : vec4<f32> = x_13.unity_MatrixVP[3i];
  gl_Position = (x_284 + x_286);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(3) in_COLOR0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD1_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_COLOR0 = in_COLOR0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position);
}

