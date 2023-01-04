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
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(6) var<uniform> x_33 : VGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  let x_39 : vec4<f32> = x_33.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_25.y, x_25.y, x_25.y, x_25.y) * x_39);
  let x_43 : vec4<f32> = x_33.unity_ObjectToWorld[0i];
  let x_44 : vec4<f32> = u_xlat0;
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_43 * vec4<f32>(x_44.x, x_44.x, x_44.x, x_44.x)) + x_47);
  let x_51 : vec4<f32> = x_33.unity_ObjectToWorld[2i];
  let x_52 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_51 * vec4<f32>(x_52.z, x_52.z, x_52.z, x_52.z)) + x_55);
  let x_57 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_33.unity_ObjectToWorld[3i];
  u_xlat1 = (x_57 + x_60);
  let x_63 : vec4<f32> = x_33.unity_ObjectToWorld[3i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((vec3<f32>(x_63.x, x_63.y, x_63.z) * vec3<f32>(x_65.w, x_65.w, x_65.w)) + vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = x_33.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_74.y, x_74.y, x_74.y, x_74.y) * x_78);
  let x_81 : vec4<f32> = x_33.unity_MatrixVP[0i];
  let x_82 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_81 * vec4<f32>(x_82.x, x_82.x, x_82.x, x_82.x)) + x_85);
  let x_88 : vec4<f32> = x_33.unity_MatrixVP[2i];
  let x_89 : vec4<f32> = u_xlat1;
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_88 * vec4<f32>(x_89.z, x_89.z, x_89.z, x_89.z)) + x_92);
  let x_100 : vec4<f32> = x_33.unity_MatrixVP[3i];
  let x_101 : vec4<f32> = u_xlat1;
  let x_104 : vec4<f32> = u_xlat2;
  gl_Position = ((x_100 * vec4<f32>(x_101.w, x_101.w, x_101.w, x_101.w)) + x_104);
  let x_108 : vec3<f32> = in_NORMAL0;
  let x_111 : vec4<f32> = x_33.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_108, vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_117 : vec3<f32> = in_NORMAL0;
  let x_119 : vec4<f32> = x_33.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_117, vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_123 : vec3<f32> = in_NORMAL0;
  let x_125 : vec4<f32> = x_33.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_123, vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_131 : vec4<f32> = u_xlat1;
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_131.x, x_131.y, x_131.z), vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_136);
  let x_138 : f32 = u_xlat15;
  let x_140 : vec4<f32> = u_xlat1;
  let x_142 : vec3<f32> = (vec3<f32>(x_138, x_138, x_138) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_147 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = vec3<f32>(x_147.x, x_147.y, x_147.z);
  let x_150 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_150.x, x_150.y, x_150.z);
  let x_152 : vec4<f32> = u_xlat0;
  let x_156 : vec4<f32> = x_33.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_152.x, x_152.x, x_152.x, x_152.x)) + x_156);
  let x_159 : vec4<f32> = u_xlat0;
  let x_163 : vec4<f32> = x_33.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_159.y, x_159.y, x_159.y, x_159.y)) + x_163);
  let x_165 : vec4<f32> = u_xlat0;
  let x_169 : vec4<f32> = x_33.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_165.z, x_165.z, x_165.z, x_165.z)) + x_169);
  let x_172 : vec4<f32> = u_xlat1;
  let x_174 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_172.y, x_172.y, x_172.y, x_172.y) * x_174);
  let x_176 : vec4<f32> = u_xlat3;
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_176 * x_177);
  let x_179 : vec4<f32> = u_xlat2;
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_179 * x_180) + x_182);
  let x_184 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat1;
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_184 * vec4<f32>(x_185.x, x_185.x, x_185.x, x_185.x)) + x_188);
  let x_190 : vec4<f32> = u_xlat0;
  let x_191 : vec4<f32> = u_xlat1;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_190 * vec4<f32>(x_191.z, x_191.z, x_191.z, x_191.z)) + x_194);
  let x_196 : vec4<f32> = u_xlat0;
  let x_197 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_196 * x_197) + x_199);
  let x_201 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_201, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_205);
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec4<f32> = x_33.unity_4LightAtten0;
  u_xlat0 = ((x_207 * x_209) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_214);
  let x_216 : vec4<f32> = u_xlat2;
  let x_217 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_216 * x_217);
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_219, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_223 : vec4<f32> = u_xlat0;
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_223 * x_224);
  let x_226 : vec4<f32> = u_xlat0;
  let x_230 : vec4<f32> = x_33.unity_LightColor[1i];
  let x_232 : vec3<f32> = (vec3<f32>(x_226.y, x_226.y, x_226.y) * vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_236 : vec4<f32> = x_33.unity_LightColor[0i];
  let x_238 : vec4<f32> = u_xlat0;
  let x_241 : vec4<f32> = u_xlat2;
  let x_243 : vec3<f32> = ((vec3<f32>(x_236.x, x_236.y, x_236.z) * vec3<f32>(x_238.x, x_238.x, x_238.x)) + vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : vec4<f32> = x_33.unity_LightColor[2i];
  let x_249 : vec4<f32> = u_xlat0;
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.z, x_249.z, x_249.z)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : vec4<f32> = x_33.unity_LightColor[3i];
  let x_260 : vec4<f32> = u_xlat0;
  let x_263 : vec4<f32> = u_xlat0;
  let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.w, x_260.w, x_260.w)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_269 : f32 = u_xlat1.y;
  let x_271 : f32 = u_xlat1.y;
  u_xlat15 = (x_269 * x_271);
  let x_274 : f32 = u_xlat1.x;
  let x_276 : f32 = u_xlat1.x;
  let x_278 : f32 = u_xlat15;
  u_xlat15 = ((x_274 * x_276) + -(x_278));
  let x_281 : vec4<f32> = u_xlat1;
  let x_283 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_281.y, x_281.z, x_281.z, x_281.x) * vec4<f32>(x_283.x, x_283.y, x_283.z, x_283.z));
  let x_288 : vec4<f32> = x_33.unity_SHBr;
  let x_289 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_288, x_289);
  let x_294 : vec4<f32> = x_33.unity_SHBg;
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_294, x_295);
  let x_300 : vec4<f32> = x_33.unity_SHBb;
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_300, x_301);
  let x_306 : vec4<f32> = x_33.unity_SHC;
  let x_308 : f32 = u_xlat15;
  let x_311 : vec4<f32> = u_xlat2;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308, x_308, x_308)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_317 : vec4<f32> = u_xlat0;
  let x_319 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = (vec3<f32>(x_317.x, x_317.y, x_317.z) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  vs_TEXCOORD4 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  vs_TEXCOORD2_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2);
}

