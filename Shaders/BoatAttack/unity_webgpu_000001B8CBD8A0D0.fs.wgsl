struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

struct UnityPerMaterial {
  Texture2D_25A083BC_TexelSize : vec4<f32>,
  Texture2D_6EEDD32E_TexelSize : vec4<f32>,
  Texture2D_E9EC22CC_TexelSize : vec4<f32>,
  x_Hue : f32,
}

@group(0) @binding(0) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(1) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(1) @binding(1) var<uniform> x_153 : UnityPerMaterial;

var<private> SV_TARGET0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb3 : bool;
  var u_xlat3 : f32;
  var u_xlatb6 : bool;
  var u_xlat6 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat8 : f32;
  var u_xlatb12 : bool;
  var x_171 : f32;
  var u_xlatb8 : bool;
  var x_183 : f32;
  var u_xlatb4 : bool;
  var x_243 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  u_xlat0.z = -1.0f;
  u_xlat0.w = 0.666666687f;
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
  u_xlat12 = ((x_135 * 6.0f) + 1.00000001e-10f);
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
    let x_175 : f32 = u_xlat1.y;
    x_171 = x_175;
  } else {
    let x_177 : f32 = u_xlat8;
    x_171 = x_177;
  }
  let x_178 : f32 = x_171;
  u_xlat12 = x_178;
  let x_180 : f32 = u_xlat8;
  u_xlatb8 = (x_180 < 0.0f);
  let x_182 : bool = u_xlatb8;
  if (x_182) {
    let x_187 : f32 = u_xlat1.x;
    x_183 = x_187;
  } else {
    let x_189 : f32 = u_xlat12;
    x_183 = x_189;
  }
  let x_190 : f32 = x_183;
  u_xlat8 = x_190;
  let x_191 : f32 = u_xlat8;
  let x_195 : vec3<f32> = (vec3<f32>(x_191, x_191, x_191) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
  let x_196 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_198 : vec4<f32> = u_xlat1;
  let x_200 : vec3<f32> = fract(vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec4<f32> = u_xlat1;
  let x_209 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.y, x_203.z) * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat1;
  let x_216 : vec3<f32> = (abs(vec3<f32>(x_212.x, x_212.y, x_212.z)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_223 : vec3<f32> = clamp(vec3<f32>(x_219.x, x_219.y, x_219.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat1;
  let x_228 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : f32 = u_xlat0.x;
  u_xlat8 = (x_232 + 1.00000001e-10f);
  let x_235 : f32 = u_xlat4.x;
  let x_236 : f32 = u_xlat8;
  u_xlat12 = (x_235 / x_236);
  let x_240 : f32 = u_xlat4.x;
  u_xlatb4 = (x_240 == 0.0f);
  let x_242 : bool = u_xlatb4;
  if (x_242) {
    let x_247 : f32 = u_xlat0.x;
    x_243 = x_247;
  } else {
    let x_249 : f32 = u_xlat8;
    x_243 = x_249;
  }
  let x_250 : f32 = x_243;
  u_xlat0.x = x_250;
  let x_252 : f32 = u_xlat12;
  let x_254 : vec4<f32> = u_xlat1;
  u_xlat4 = ((vec3<f32>(x_252, x_252, x_252) * vec3<f32>(x_254.x, x_254.y, x_254.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_261 : vec3<f32> = u_xlat4;
  let x_262 : vec4<f32> = u_xlat0;
  let x_264 : vec3<f32> = (x_261 * vec3<f32>(x_262.x, x_262.x, x_262.x));
  let x_265 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec4<f32> = SV_TARGET0;
  let x_271 : vec3<f32> = clamp(vec3<f32>(x_267.x, x_267.y, x_267.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_272 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
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

