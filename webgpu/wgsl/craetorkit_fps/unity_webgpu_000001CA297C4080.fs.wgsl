struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_CameraMotionVectorsTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_CameraMotionVectorsTexture : sampler;

@group(0) @binding(1) var x_History : texture_2d<f32>;

@group(0) @binding(4) var sampler_History : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat13 : vec2<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  u_xlat0.z = 0.0f;
  let x_23 : vec4<f32> = x_17.x_MainTex_TexelSize;
  let x_25 : vec3<f32> = -(vec3<f32>(x_23.x, x_23.y, x_23.y));
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_25.x, x_25.y, x_26.z, x_25.z);
  let x_28 : vec4<f32> = u_xlat0;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (x_28 + vec4<f32>(x_32.x, x_32.y, x_32.x, x_32.y));
  let x_46 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_46.x, x_46.y), 0.0f);
  u_xlat1 = x_48;
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_52.z, x_52.w), 0.0f);
  u_xlat0 = x_54;
  let x_56 : vec4<f32> = u_xlat0;
  let x_57 : vec4<f32> = u_xlat1;
  u_xlat2 = min(x_56, x_57);
  let x_59 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = u_xlat1;
  u_xlat0 = max(x_59, x_60);
  let x_63 : vec4<f32> = x_17.x_MainTex_TexelSize;
  let x_69 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_63.x, x_63.y, x_63.x, x_63.y) * vec4<f32>(1.0f, -1.0f, -1.0f, 1.0f)) + vec4<f32>(x_69.x, x_69.y, x_69.x, x_69.y));
  let x_76 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_76.x, x_76.y), 0.0f);
  u_xlat3 = x_78;
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_82.z, x_82.w), 0.0f);
  u_xlat1 = x_84;
  let x_85 : vec4<f32> = u_xlat2;
  let x_86 : vec4<f32> = u_xlat3;
  u_xlat2 = min(x_85, x_86);
  let x_88 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = u_xlat3;
  u_xlat0 = max(x_88, x_89);
  let x_94 : f32 = x_17.x_MainTex_TexelSize.x;
  u_xlat3.x = -(x_94);
  u_xlat3.y = 0.0f;
  u_xlat13.y = 0.0f;
  let x_102 : vec4<f32> = u_xlat3;
  let x_104 : vec2<f32> = vs_TEXCOORD0;
  let x_105 : vec2<f32> = (vec2<f32>(x_102.x, x_102.y) + x_104);
  let x_106 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_105.x, x_105.y, x_106.z, x_106.w);
  let x_112 : vec4<f32> = u_xlat3;
  let x_114 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_112.x, x_112.y), 0.0f);
  u_xlat4 = x_114;
  let x_115 : vec4<f32> = u_xlat2;
  let x_116 : vec4<f32> = u_xlat4;
  u_xlat2 = min(x_115, x_116);
  let x_118 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = u_xlat4;
  u_xlat0 = max(x_118, x_119);
  let x_122 : f32 = x_17.x_MainTex_TexelSize.x;
  u_xlat13.x = x_122;
  let x_124 : vec2<f32> = u_xlat13;
  let x_125 : vec2<f32> = vs_TEXCOORD0;
  let x_126 : vec2<f32> = (x_124 + x_125);
  let x_127 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_126.x, x_126.y, x_127.z, x_127.w);
  let x_132 : vec4<f32> = u_xlat3;
  let x_134 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_132.x, x_132.y), 0.0f);
  u_xlat3 = x_134;
  let x_135 : vec4<f32> = u_xlat2;
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat2 = min(x_135, x_136);
  let x_138 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = u_xlat3;
  u_xlat0 = max(x_138, x_139);
  let x_141 : vec4<f32> = u_xlat1;
  let x_142 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_141, x_142);
  let x_144 : vec4<f32> = u_xlat1;
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat1 = min(x_144, x_145);
  u_xlat2.x = 0.0f;
  let x_149 : f32 = x_17.x_MainTex_TexelSize.y;
  u_xlat2.y = x_149;
  let x_151 : vec4<f32> = u_xlat2;
  let x_153 : vec2<f32> = vs_TEXCOORD0;
  let x_154 : vec2<f32> = (vec2<f32>(x_151.x, x_151.y) + x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_155.z, x_155.w);
  let x_160 : vec4<f32> = u_xlat2;
  let x_162 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_160.x, x_160.y), 0.0f);
  u_xlat2 = x_162;
  let x_163 : vec4<f32> = u_xlat1;
  let x_164 : vec4<f32> = u_xlat2;
  u_xlat1 = min(x_163, x_164);
  let x_166 : vec4<f32> = u_xlat0;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat0 = max(x_166, x_167);
  let x_169 : vec2<f32> = vs_TEXCOORD0;
  let x_171 : vec4<f32> = x_17.x_MainTex_TexelSize;
  let x_173 : vec2<f32> = (x_169 + vec2<f32>(x_171.x, x_171.y));
  let x_174 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_173.x, x_173.y, x_174.z, x_174.w);
  let x_179 : vec4<f32> = u_xlat2;
  let x_181 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_179.x, x_179.y), 0.0f);
  u_xlat2 = x_181;
  let x_182 : vec4<f32> = u_xlat1;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat1 = min(x_182, x_183);
  let x_185 : vec4<f32> = u_xlat0;
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat0 = max(x_185, x_186);
  let x_192 : vec2<f32> = vs_TEXCOORD1;
  let x_193 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_192, 0.0f);
  u_xlat2 = x_193;
  let x_194 : vec4<f32> = u_xlat1;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat1 = min(x_194, x_195);
  let x_202 : vec2<f32> = vs_TEXCOORD1;
  let x_203 : vec4<f32> = textureSampleLevel(x_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture, x_202, 0.0f);
  let x_204 : vec2<f32> = vec2<f32>(x_203.x, x_203.y);
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_204.x, x_204.y, x_205.z, x_205.w);
  let x_207 : vec4<f32> = u_xlat3;
  let x_210 : vec2<f32> = vs_TEXCOORD0;
  u_xlat13 = (-(vec2<f32>(x_207.x, x_207.y)) + x_210);
  let x_212 : vec4<f32> = u_xlat3;
  let x_214 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_212.x, x_212.y), vec2<f32>(x_214.x, x_214.y));
  let x_219 : f32 = u_xlat3.x;
  u_xlat3.x = sqrt(x_219);
  let x_223 : f32 = x_17.x_MainTex_TexelSize.z;
  let x_228 : f32 = u_xlat3.x;
  u_xlat3.x = ((-(x_223) * 0.002f) + x_228);
  let x_236 : vec2<f32> = u_xlat13;
  let x_237 : vec4<f32> = textureSampleLevel(x_History, sampler_History, x_236, 0.0f);
  u_xlat4 = x_237;
  let x_238 : vec4<f32> = u_xlat1;
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat1 = max(x_238, x_239);
  let x_241 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = u_xlat2;
  u_xlat0 = max(x_241, x_242);
  let x_244 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = u_xlat1;
  u_xlat0 = min(x_244, x_245);
  let x_248 : f32 = x_17.x_MainTex_TexelSize.z;
  u_xlat1.x = (x_248 * 0.0015f);
  let x_253 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_253);
  let x_257 : f32 = u_xlat1.x;
  let x_259 : f32 = u_xlat3.x;
  u_xlat1.x = (x_257 * x_259);
  let x_263 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_263, 0.0f, 1.0f);
  let x_268 : f32 = u_xlat1.x;
  u_xlat6 = ((x_268 * -2.0f) + 3.0f);
  let x_274 : f32 = u_xlat1.x;
  let x_276 : f32 = u_xlat1.x;
  u_xlat1.x = (x_274 * x_276);
  let x_280 : f32 = u_xlat1.x;
  let x_281 : f32 = u_xlat6;
  u_xlat1.x = (x_280 * x_281);
  let x_285 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_285, 1.0f);
  let x_289 : f32 = u_xlat1.x;
  u_xlat2.w = (x_289 * 0.850000024f);
  let x_294 : vec4<f32> = u_xlat0;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_294 + -(x_295));
  let x_299 : f32 = u_xlat0.w;
  u_xlat0.x = ((x_299 * -25.0f) + 0.949999988f);
  let x_306 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_306, 0.699999988f);
  let x_311 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_311, 0.949999988f);
  let x_316 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = u_xlat1;
  let x_320 : vec4<f32> = u_xlat2;
  SV_Target0 = ((vec4<f32>(x_316.x, x_316.x, x_316.x, x_316.x) * x_318) + x_320);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

