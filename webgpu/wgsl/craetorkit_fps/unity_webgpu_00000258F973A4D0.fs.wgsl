struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_52 : PGlobals;

@group(0) @binding(3) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(7) var sampler_Vignette_Mask : sampler;

@group(0) @binding(2) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(6) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb9 : bool;
  var u_xlat9 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat4 : f32;
  var x_227 : f32;
  var u_xlat10 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_57 : f32 = x_52.x_Vignette_Mode;
  u_xlatb9 = (x_57 < 0.5f);
  let x_60 : bool = u_xlatb9;
  if (x_60) {
    let x_63 : vec2<f32> = vs_TEXCOORD0;
    let x_67 : vec2<f32> = x_52.x_Vignette_Center;
    let x_69 : vec2<f32> = (x_63 + -(x_67));
    let x_70 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
    let x_72 : vec4<f32> = u_xlat1;
    let x_78 : vec4<f32> = x_52.x_Vignette_Settings;
    let x_80 : vec2<f32> = (abs(vec2<f32>(x_72.y, x_72.x)) * vec2<f32>(x_78.x, x_78.x));
    let x_81 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_81.x, x_80.x, x_80.y, x_81.w);
    let x_86 : f32 = x_52.x_ScreenParams.x;
    let x_89 : f32 = x_52.x_ScreenParams.y;
    u_xlat9 = (x_86 / x_89);
    let x_91 : f32 = u_xlat9;
    u_xlat9 = (x_91 + -1.0f);
    let x_96 : f32 = x_52.x_Vignette_Settings.w;
    let x_97 : f32 = u_xlat9;
    u_xlat9 = ((x_96 * x_97) + 1.0f);
    let x_101 : f32 = u_xlat9;
    let x_104 : f32 = u_xlat1.z;
    u_xlat1.x = (x_101 * x_104);
    let x_107 : vec4<f32> = u_xlat1;
    let x_108 : vec2<f32> = vec2<f32>(x_107.x, x_107.y);
    let x_109 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
    let x_111 : vec4<f32> = u_xlat1;
    let x_116 : vec2<f32> = clamp(vec2<f32>(x_111.x, x_111.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_117 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_116.x, x_116.y, x_117.z, x_117.w);
    let x_119 : vec4<f32> = u_xlat1;
    let x_121 : vec2<f32> = log2(vec2<f32>(x_119.x, x_119.y));
    let x_122 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
    let x_124 : vec4<f32> = u_xlat1;
    let x_127 : vec4<f32> = x_52.x_Vignette_Settings;
    let x_129 : vec2<f32> = (vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_127.z, x_127.z));
    let x_130 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
    let x_132 : vec4<f32> = u_xlat1;
    let x_134 : vec2<f32> = exp2(vec2<f32>(x_132.x, x_132.y));
    let x_135 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_135.w);
    let x_137 : vec4<f32> = u_xlat1;
    let x_139 : vec4<f32> = u_xlat1;
    u_xlat9 = dot(vec2<f32>(x_137.x, x_137.y), vec2<f32>(x_139.x, x_139.y));
    let x_142 : f32 = u_xlat9;
    u_xlat9 = (-(x_142) + 1.0f);
    let x_145 : f32 = u_xlat9;
    u_xlat9 = max(x_145, 0.0f);
    let x_147 : f32 = u_xlat9;
    u_xlat9 = log2(x_147);
    let x_149 : f32 = u_xlat9;
    let x_151 : f32 = x_52.x_Vignette_Settings.y;
    u_xlat9 = (x_149 * x_151);
    let x_153 : f32 = u_xlat9;
    u_xlat9 = exp2(x_153);
    let x_158 : vec3<f32> = x_52.x_Vignette_Color;
    let x_161 : vec3<f32> = (-(x_158) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_162 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
    let x_164 : f32 = u_xlat9;
    let x_166 : vec4<f32> = u_xlat1;
    let x_170 : vec3<f32> = x_52.x_Vignette_Color;
    let x_171 : vec3<f32> = ((vec3<f32>(x_164, x_164, x_164) * vec3<f32>(x_166.x, x_166.y, x_166.z)) + x_170);
    let x_172 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_175 : vec4<f32> = u_xlat0;
    let x_177 : vec4<f32> = u_xlat1;
    let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.x, x_177.y, x_177.z));
    let x_180 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_183 : f32 = u_xlat1.w;
    u_xlat1.x = (x_183 + -1.0f);
    let x_186 : f32 = u_xlat9;
    let x_188 : f32 = u_xlat1.x;
    u_xlat2.w = ((x_186 * x_188) + 1.0f);
  } else {
    let x_198 : vec2<f32> = vs_TEXCOORD0;
    let x_199 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_198);
    u_xlat9 = x_199.w;
    let x_201 : f32 = u_xlat9;
    u_xlat1.x = (x_201 * 0.077399381f);
    let x_206 : f32 = u_xlat9;
    u_xlat4 = (x_206 + 0.055f);
    let x_209 : f32 = u_xlat4;
    u_xlat4 = (x_209 * 0.947867334f);
    let x_212 : f32 = u_xlat4;
    u_xlat4 = max(abs(x_212), 1.1920929e-07f);
    let x_216 : f32 = u_xlat4;
    u_xlat4 = log2(x_216);
    let x_218 : f32 = u_xlat4;
    u_xlat4 = (x_218 * 2.400000095f);
    let x_221 : f32 = u_xlat4;
    u_xlat4 = exp2(x_221);
    let x_224 : f32 = u_xlat9;
    u_xlatb9 = (0.040449999f >= x_224);
    let x_226 : bool = u_xlatb9;
    if (x_226) {
      let x_231 : f32 = u_xlat1.x;
      x_227 = x_231;
    } else {
      let x_233 : f32 = u_xlat4;
      x_227 = x_233;
    }
    let x_234 : f32 = x_227;
    u_xlat9 = x_234;
    let x_236 : vec3<f32> = x_52.x_Vignette_Color;
    let x_238 : vec3<f32> = (-(x_236) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_239 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
    let x_241 : f32 = u_xlat9;
    let x_243 : vec4<f32> = u_xlat1;
    let x_247 : vec3<f32> = x_52.x_Vignette_Color;
    let x_248 : vec3<f32> = ((vec3<f32>(x_241, x_241, x_241) * vec3<f32>(x_243.x, x_243.y, x_243.z)) + x_247);
    let x_249 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
    let x_251 : vec4<f32> = u_xlat0;
    let x_253 : vec4<f32> = u_xlat1;
    let x_256 : vec4<f32> = u_xlat0;
    let x_259 : vec3<f32> = ((vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253.x, x_253.y, x_253.z)) + -(vec3<f32>(x_256.x, x_256.y, x_256.z)));
    let x_260 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_264 : f32 = x_52.x_Vignette_Opacity;
    let x_266 : vec4<f32> = u_xlat1;
    let x_269 : vec4<f32> = u_xlat0;
    let x_271 : vec3<f32> = ((vec3<f32>(x_264, x_264, x_264) * vec3<f32>(x_266.x, x_266.y, x_266.z)) + vec3<f32>(x_269.x, x_269.y, x_269.z));
    let x_272 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
    let x_275 : f32 = u_xlat1.w;
    u_xlat0.x = (x_275 + -1.0f);
    let x_278 : f32 = u_xlat9;
    let x_280 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_278 * x_280) + 1.0f);
  }
  let x_284 : vec4<f32> = u_xlat2;
  let x_288 : f32 = x_52.x_PostExposure;
  let x_290 : f32 = x_52.x_PostExposure;
  let x_292 : f32 = x_52.x_PostExposure;
  let x_294 : f32 = x_52.x_PostExposure;
  let x_295 : vec4<f32> = vec4<f32>(x_288, x_290, x_292, x_294);
  u_xlat0 = (vec4<f32>(x_284.w, x_284.x, x_284.y, x_284.z) * vec4<f32>(x_295.x, x_295.y, x_295.z, x_295.w));
  let x_302 : vec4<f32> = u_xlat0;
  let x_309 : vec3<f32> = ((vec3<f32>(x_302.y, x_302.z, x_302.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat1;
  let x_314 : vec3<f32> = log2(vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat1;
  let x_324 : vec3<f32> = ((vec3<f32>(x_317.x, x_317.y, x_317.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat1;
  let x_331 : vec3<f32> = clamp(vec3<f32>(x_327.x, x_327.y, x_327.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat1;
  let x_338 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_340 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_338.y, x_338.y, x_338.y));
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_345 : f32 = x_52.x_Lut3D_Params.x;
  u_xlat10 = (x_345 * 0.5f);
  let x_347 : vec4<f32> = u_xlat1;
  let x_350 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_353 : f32 = u_xlat10;
  let x_355 : vec3<f32> = ((vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_350.x, x_350.x, x_350.x)) + vec3<f32>(x_353, x_353, x_353));
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_366 : vec4<f32> = u_xlat1;
  let x_368 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec3<f32> = vec3<f32>(x_368.x, x_368.y, x_368.z);
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_370.x, x_369.x, x_369.y, x_369.z);
  let x_375 : f32 = x_52.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_375);
  let x_377 : bool = u_xlatb1;
  if (x_377) {
    let x_380 : vec4<f32> = u_xlat0;
    let x_381 : vec3<f32> = vec3<f32>(x_380.y, x_380.z, x_380.w);
    let x_382 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
    let x_384 : vec4<f32> = u_xlat1;
    let x_388 : vec3<f32> = clamp(vec3<f32>(x_384.x, x_384.y, x_384.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_389 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
    let x_391 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_391.x, x_391.y, x_391.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_401 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_401.y, x_401.z, x_401.w, x_401.x);
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

