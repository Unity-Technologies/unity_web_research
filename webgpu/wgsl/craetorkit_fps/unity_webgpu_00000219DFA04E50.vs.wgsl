struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD7 : f32;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
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
  let x_87 : f32 = u_xlat1.z;
  vs_TEXCOORD7 = x_87;
  let x_89 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_90 : vec4<f32> = in_POSITION0;
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat1 = ((x_89 * vec4<f32>(x_90.w, x_90.w, x_90.w, x_90.w)) + x_93);
  let x_99 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_101 : vec4<f32> = in_POSITION0;
  let x_104 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_99.x, x_99.y, x_99.z) * vec3<f32>(x_101.w, x_101.w, x_101.w)) + vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_108 : vec4<f32> = u_xlat1;
  let x_112 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_114 : vec2<f32> = (vec2<f32>(x_108.y, x_108.y) * vec2<f32>(x_112.x, x_112.y));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_115.w);
  let x_118 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_120 : vec4<f32> = u_xlat1;
  let x_123 : vec4<f32> = u_xlat0;
  let x_125 : vec2<f32> = ((vec2<f32>(x_118.x, x_118.y) * vec2<f32>(x_120.x, x_120.x)) + vec2<f32>(x_123.x, x_123.y));
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_125.x, x_125.y, x_126.z, x_126.w);
  let x_129 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_131 : vec4<f32> = u_xlat1;
  let x_134 : vec4<f32> = u_xlat0;
  let x_136 : vec2<f32> = ((vec2<f32>(x_129.x, x_129.y) * vec2<f32>(x_131.z, x_131.z)) + vec2<f32>(x_134.x, x_134.y));
  let x_137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_136.x, x_136.y, x_137.z, x_137.w);
  let x_142 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_144 : vec4<f32> = u_xlat1;
  let x_147 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec2<f32>(x_142.x, x_142.y) * vec2<f32>(x_144.w, x_144.w)) + vec2<f32>(x_147.x, x_147.y));
  let x_153 : vec4<f32> = in_TEXCOORD0;
  let x_157 : vec4<f32> = x_17.x_MainTex_ST;
  let x_161 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_153.x, x_153.y) * vec2<f32>(x_157.x, x_157.y)) + vec2<f32>(x_161.z, x_161.w));
  let x_166 : vec3<f32> = in_NORMAL0;
  let x_168 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_166, vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_172 : vec3<f32> = in_NORMAL0;
  let x_174 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_172, vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_178 : vec3<f32> = in_NORMAL0;
  let x_180 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_178, vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_186 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_186.x, x_186.y, x_186.z), vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_191);
  let x_193 : f32 = u_xlat9;
  let x_195 : vec4<f32> = u_xlat0;
  let x_197 : vec3<f32> = (vec3<f32>(x_193, x_193, x_193) * vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_201 : vec4<f32> = in_TANGENT0;
  let x_204 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_206 : vec3<f32> = (vec3<f32>(x_201.y, x_201.y, x_201.y) * vec3<f32>(x_204.y, x_204.z, x_204.x));
  let x_207 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_210 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_212 : vec4<f32> = in_TANGENT0;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_210.y, x_210.z, x_210.x) * vec3<f32>(x_212.x, x_212.x, x_212.x)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_221 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_223 : vec4<f32> = in_TANGENT0;
  let x_226 : vec4<f32> = u_xlat1;
  let x_228 : vec3<f32> = ((vec3<f32>(x_221.y, x_221.z, x_221.x) * vec3<f32>(x_223.z, x_223.z, x_223.z)) + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_236);
  let x_238 : f32 = u_xlat9;
  let x_240 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = (vec3<f32>(x_238, x_238, x_238) * vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat0;
  let x_247 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat0;
  let x_254 : vec4<f32> = u_xlat1;
  let x_257 : vec4<f32> = u_xlat2;
  let x_260 : vec3<f32> = ((vec3<f32>(x_252.z, x_252.x, x_252.y) * vec3<f32>(x_254.y, x_254.z, x_254.x)) + -(vec3<f32>(x_257.x, x_257.y, x_257.z)));
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_266 : f32 = in_TANGENT0.w;
  let x_269 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat9 = (x_266 * x_269);
  let x_271 : f32 = u_xlat9;
  let x_273 : vec4<f32> = u_xlat2;
  let x_275 : vec3<f32> = (vec3<f32>(x_271, x_271, x_271) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_280 : f32 = u_xlat2.x;
  vs_TEXCOORD1.y = x_280;
  let x_283 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_283;
  let x_286 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_286;
  let x_290 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_290;
  let x_294 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_294;
  let x_297 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_297;
  let x_300 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_300;
  let x_303 : f32 = u_xlat2.y;
  vs_TEXCOORD2.y = x_303;
  let x_306 : f32 = u_xlat2.z;
  vs_TEXCOORD3.y = x_306;
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD7_1 : f32,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD7, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

