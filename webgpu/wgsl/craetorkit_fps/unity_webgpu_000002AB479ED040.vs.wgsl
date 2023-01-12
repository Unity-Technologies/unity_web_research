type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_30 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_31 : vec4<f32> = in_POSITION0;
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_30 * vec4<f32>(x_31.x, x_31.x, x_31.x, x_31.x)) + x_34);
  let x_38 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_39 : vec4<f32> = in_POSITION0;
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z)) + x_42);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_45 + x_48);
  let x_52 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.w, x_54.w, x_54.w)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_89 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_90 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = u_xlat2;
  gl_Position = ((x_89 * vec4<f32>(x_90.w, x_90.w, x_90.w, x_90.w)) + x_93);
  let x_99 : vec3<f32> = in_NORMAL0;
  let x_102 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_99, vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_108 : vec3<f32> = in_NORMAL0;
  let x_110 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_108, vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_114 : vec3<f32> = in_NORMAL0;
  let x_116 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_114, vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_122 : vec4<f32> = u_xlat1;
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_122.x, x_122.y, x_122.z), vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_127 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_127);
  let x_129 : f32 = u_xlat15;
  let x_131 : vec4<f32> = u_xlat1;
  let x_133 : vec3<f32> = (vec3<f32>(x_129, x_129, x_129) * vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_138 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = vec3<f32>(x_138.x, x_138.y, x_138.z);
  let x_141 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_141.x, x_141.y, x_141.z);
  let x_145 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_145;
  let x_151 : vec2<f32> = in_TEXCOORD0;
  let x_154 : vec4<f32> = x_20.x_MainTex_ST;
  let x_158 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_151 * vec2<f32>(x_154.x, x_154.y)) + vec2<f32>(x_158.z, x_158.w));
  let x_161 : vec4<f32> = u_xlat0;
  let x_165 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_161.x, x_161.x, x_161.x, x_161.x)) + x_165);
  let x_168 : vec4<f32> = u_xlat0;
  let x_172 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_168.y, x_168.y, x_168.y, x_168.y)) + x_172);
  let x_174 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_174.z, x_174.z, x_174.z, x_174.z)) + x_178);
  let x_181 : vec4<f32> = u_xlat1;
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_181.y, x_181.y, x_181.y, x_181.y) * x_183);
  let x_185 : vec4<f32> = u_xlat3;
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_185 * x_186);
  let x_188 : vec4<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_188 * x_189) + x_191);
  let x_193 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat1;
  let x_197 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_193 * vec4<f32>(x_194.x, x_194.x, x_194.x, x_194.x)) + x_197);
  let x_199 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat1;
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_199 * vec4<f32>(x_200.z, x_200.z, x_200.z, x_200.z)) + x_203);
  let x_205 : vec4<f32> = u_xlat0;
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_205 * x_206) + x_208);
  let x_210 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_210, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_214 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_214);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_216 * x_218) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_223);
  let x_225 : vec4<f32> = u_xlat2;
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_225 * x_226);
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_228, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_232 : vec4<f32> = u_xlat0;
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_232 * x_233);
  let x_235 : vec4<f32> = u_xlat0;
  let x_239 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_241 : vec3<f32> = (vec3<f32>(x_235.y, x_235.y, x_235.y) * vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_247 : vec4<f32> = u_xlat0;
  let x_250 : vec4<f32> = u_xlat2;
  let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.x, x_247.x, x_247.x)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_256 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_258 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = u_xlat2;
  let x_263 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.z, x_258.z, x_258.z)) + vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_269 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = u_xlat0;
  let x_274 : vec3<f32> = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269.w, x_269.w, x_269.w)) + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : f32 = u_xlat1.y;
  let x_280 : f32 = u_xlat1.y;
  u_xlat15 = (x_278 * x_280);
  let x_283 : f32 = u_xlat1.x;
  let x_285 : f32 = u_xlat1.x;
  let x_287 : f32 = u_xlat15;
  u_xlat15 = ((x_283 * x_285) + -(x_287));
  let x_290 : vec4<f32> = u_xlat1;
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_290.y, x_290.z, x_290.z, x_290.x) * vec4<f32>(x_292.x, x_292.y, x_292.z, x_292.z));
  let x_297 : vec4<f32> = x_20.unity_SHBr;
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_297, x_298);
  let x_303 : vec4<f32> = x_20.unity_SHBg;
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_303, x_304);
  let x_309 : vec4<f32> = x_20.unity_SHBb;
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_309, x_310);
  let x_315 : vec4<f32> = x_20.unity_SHC;
  let x_317 : f32 = u_xlat15;
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317, x_317, x_317)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_326 : vec4<f32> = u_xlat0;
  let x_328 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_326.x, x_326.y, x_326.z) + vec3<f32>(x_328.x, x_328.y, x_328.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3);
}

