diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_25A083BC_TexelSize : vec4<f32>,
  /* @offset(16) */
  Texture2D_6EEDD32E_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_E9EC22CC_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Hue : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(1) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

var<private> u_xlatb3 : bool;

var<private> u_xlat3 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat8 : f32;

@group(1) @binding(1) var<uniform> x_153 : UnityPerMaterial;

var<private> u_xlatb12 : bool;

var<private> u_xlatb8 : bool;

var<private> u_xlatb4 : bool;

var<private> SV_TARGET0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_172 : f32;
  var x_184 : f32;
  var x_244 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  u_xlat0.z = -1.0f;
  u_xlat0.w = 0.6666666865348815918f;
  u_xlat1.z = 1.0f;
  u_xlat1.w = -1.0f;
  let x_36 : vec4<f32> = vs_INTERP0;
  let x_46 : f32 = x_40.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(Texture2D_25A083BC, samplerTexture2D_25A083BC, vec2<f32>(x_36.x, x_36.y), x_46);
  u_xlat2 = x_47;
  let x_53 : f32 = u_xlat2.y;
  let x_55 : f32 = u_xlat2.z;
  u_xlatb3 = (x_53 >= x_55);
  let x_58 : bool = u_xlatb3;
  u_xlat3 = select(0.0f, 1.0f, x_58);
  let x_61 : vec4<f32> = u_xlat2;
  let x_62 : vec2<f32> = vec2<f32>(x_61.z, x_61.y);
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_62.x, x_62.y, x_63.z, x_63.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat2;
  let x_70 : vec2<f32> = (-(vec2<f32>(x_65.x, x_65.y)) + vec2<f32>(x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_71.z, x_71.w);
  let x_73 : f32 = u_xlat3;
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_73, x_73, x_73, x_73) * vec4<f32>(x_75.x, x_75.y, x_75.w, x_75.z)) + vec4<f32>(x_78.x, x_78.y, x_78.w, x_78.z));
  let x_82 : f32 = u_xlat0.w;
  u_xlat1.z = x_82;
  let x_86 : f32 = u_xlat2.x;
  let x_88 : f32 = u_xlat0.x;
  u_xlatb6 = (x_86 >= x_88);
  let x_91 : bool = u_xlatb6;
  u_xlat6 = select(0.0f, 1.0f, x_91);
  let x_94 : f32 = u_xlat2.x;
  u_xlat0.w = x_94;
  let x_97 : vec4<f32> = u_xlat0;
  let x_98 : vec3<f32> = vec3<f32>(x_97.w, x_97.y, x_97.x);
  let x_99 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_98.x, x_98.y, x_99.z, x_98.z);
  let x_101 : vec4<f32> = u_xlat0;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_101) + x_103);
  let x_105 : f32 = u_xlat6;
  let x_107 : vec4<f32> = u_xlat1;
  let x_109 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_105, x_105, x_105, x_105) * x_107) + x_109);
  let x_112 : f32 = u_xlat0.y;
  let x_115 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_112) + x_115);
  let x_121 : f32 = u_xlat0.y;
  let x_123 : f32 = u_xlat0.w;
  u_xlat4.x = min(x_121, x_123);
  let x_127 : f32 = u_xlat4.x;
  let x_130 : f32 = u_xlat0.x;
  u_xlat4.x = (-(x_127) + x_130);
  let x_135 : f32 = u_xlat4.x;
  u_xlat12 = ((x_135 * 6.0f) + 0.00000000010000000134f);
  let x_141 : f32 = u_xlat1.x;
  let x_142 : f32 = u_xlat12;
  u_xlat12 = (x_141 / x_142);
  let x_145 : f32 = u_xlat12;
  let x_147 : f32 = u_xlat0.z;
  u_xlat8 = (x_145 + x_147);
  let x_150 : f32 = u_xlat2.w;
  let x_156 : f32 = x_153.x_Hue;
  let x_158 : f32 = u_xlat8;
  u_xlat8 = ((x_150 * x_156) + abs(x_158));
  let x_162 : f32 = u_xlat8;
  u_xlatb12 = (1.0f < x_162);
  let x_164 : f32 = u_xlat8;
  let x_167 : vec2<f32> = (vec2<f32>(x_164, x_164) + vec2<f32>(1.0f, -1.0f));
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
  let x_170 : bool = u_xlatb12;
  if (x_170) {
    let x_176 : f32 = u_xlat1.y;
    x_172 = x_176;
  } else {
    let x_178 : f32 = u_xlat8;
    x_172 = x_178;
  }
  let x_179 : f32 = x_172;
  u_xlat12 = x_179;
  let x_181 : f32 = u_xlat8;
  u_xlatb8 = (x_181 < 0.0f);
  let x_183 : bool = u_xlatb8;
  if (x_183) {
    let x_188 : f32 = u_xlat1.x;
    x_184 = x_188;
  } else {
    let x_190 : f32 = u_xlat12;
    x_184 = x_190;
  }
  let x_191 : f32 = x_184;
  u_xlat8 = x_191;
  let x_192 : f32 = u_xlat8;
  let x_196 : vec3<f32> = (vec3<f32>(x_192, x_192, x_192) + vec3<f32>(1.0f, 0.6666666865348815918f, 0.3333333432674407959f));
  let x_197 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : vec4<f32> = u_xlat1;
  let x_201 : vec3<f32> = fract(vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_204 : vec4<f32> = u_xlat1;
  let x_210 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = (abs(vec3<f32>(x_213.x, x_213.y, x_213.z)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat1;
  let x_224 : vec3<f32> = clamp(vec3<f32>(x_220.x, x_220.y, x_220.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec4<f32> = u_xlat1;
  let x_229 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : f32 = u_xlat0.x;
  u_xlat8 = (x_233 + 0.00000000010000000134f);
  let x_236 : f32 = u_xlat4.x;
  let x_237 : f32 = u_xlat8;
  u_xlat12 = (x_236 / x_237);
  let x_241 : f32 = u_xlat4.x;
  u_xlatb4 = (x_241 == 0.0f);
  let x_243 : bool = u_xlatb4;
  if (x_243) {
    let x_248 : f32 = u_xlat0.x;
    x_244 = x_248;
  } else {
    let x_250 : f32 = u_xlat8;
    x_244 = x_250;
  }
  let x_251 : f32 = x_244;
  u_xlat0.x = x_251;
  let x_253 : f32 = u_xlat12;
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat4 = ((vec3<f32>(x_253, x_253, x_253) * vec3<f32>(x_255.x, x_255.y, x_255.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_262 : vec3<f32> = u_xlat4;
  let x_263 : vec4<f32> = u_xlat0;
  let x_265 : vec3<f32> = (x_262 * vec3<f32>(x_263.x, x_263.x, x_263.x));
  let x_266 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec4<f32> = SV_TARGET0;
  let x_272 : vec3<f32> = clamp(vec3<f32>(x_268.x, x_268.y, x_268.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_273 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  SV_TARGET0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}


