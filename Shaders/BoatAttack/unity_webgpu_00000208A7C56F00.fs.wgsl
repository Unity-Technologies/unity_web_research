struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_BlitTexture_TexelSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_23 : vec2<f32> = (vec2<f32>(x_18.x, x_18.x) * vec2<f32>(8.0f, 6.0f));
  let x_24 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_23.x, x_24.y, x_23.y, x_24.w);
  u_xlat0.y = 0.0f;
  u_xlat0.w = 0.0f;
  let x_34 : vec4<f32> = u_xlat0;
  let x_38 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (-(x_34) + vec4<f32>(x_38.x, x_38.y, x_38.x, x_38.y));
  let x_41 : vec4<f32> = u_xlat0;
  let x_43 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (vec4<f32>(x_41.z, x_41.w, x_41.x, x_41.w) + vec4<f32>(x_43.x, x_43.y, x_43.x, x_43.y));
  let x_57 : vec4<f32> = u_xlat1;
  let x_63 : f32 = x_13.x_GlobalMipBias.x;
  let x_64 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_57.z, x_57.w), x_63);
  u_xlat2 = x_64;
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : f32 = x_13.x_GlobalMipBias.x;
  let x_72 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_68.x, x_68.y), x_71);
  u_xlat1 = x_72;
  let x_74 : vec4<f32> = u_xlat1;
  let x_76 : vec4<f32> = u_xlat1;
  let x_78 : vec3<f32> = (vec3<f32>(x_74.w, x_74.w, x_74.w) * vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat2;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.w, x_81.w, x_81.w) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat2;
  let x_92 : vec3<f32> = (vec3<f32>(x_88.x, x_88.y, x_88.z) * vec3<f32>(0.432432413f, 0.432432413f, 0.432432413f));
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_95 : vec4<f32> = u_xlat1;
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec3<f32> = ((vec3<f32>(x_95.x, x_95.y, x_95.z) * vec3<f32>(0.129729763f, 0.129729763f, 0.129729763f)) + vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_106 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_111 : vec2<f32> = (vec2<f32>(x_106.x, x_106.x) * vec2<f32>(4.0f, 2.0f));
  let x_112 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_111.x, x_112.y, x_111.y, x_112.w);
  u_xlat2.y = 0.0f;
  u_xlat2.w = 0.0f;
  let x_117 : vec4<f32> = u_xlat2;
  let x_119 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = (-(x_117) + vec4<f32>(x_119.x, x_119.y, x_119.x, x_119.y));
  let x_122 : vec4<f32> = u_xlat2;
  let x_124 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = (vec4<f32>(x_122.z, x_122.w, x_122.x, x_122.y) + vec4<f32>(x_124.x, x_124.y, x_124.x, x_124.y));
  let x_131 : vec4<f32> = u_xlat3;
  let x_134 : f32 = x_13.x_GlobalMipBias.x;
  let x_135 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_131.x, x_131.y), x_134);
  u_xlat4 = x_135;
  let x_139 : vec4<f32> = u_xlat3;
  let x_142 : f32 = x_13.x_GlobalMipBias.x;
  let x_143 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_139.z, x_139.w), x_142);
  u_xlat3 = x_143;
  let x_144 : vec4<f32> = u_xlat3;
  let x_146 : vec4<f32> = u_xlat3;
  let x_148 : vec3<f32> = (vec3<f32>(x_144.w, x_144.w, x_144.w) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_151 : vec4<f32> = u_xlat4;
  let x_153 : vec4<f32> = u_xlat4;
  let x_155 : vec3<f32> = (vec3<f32>(x_151.w, x_151.w, x_151.w) * vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec4<f32> = u_xlat4;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(0.972972989f, 0.972972989f, 0.972972989f)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat3;
  let x_173 : vec4<f32> = u_xlat1;
  let x_175 : vec3<f32> = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(1.556756735f, 1.556756735f, 1.556756735f)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_181 : vec2<f32> = vs_TEXCOORD0;
  let x_183 : f32 = x_13.x_GlobalMipBias.x;
  let x_184 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_181, x_183);
  u_xlat3 = x_184;
  let x_185 : vec4<f32> = u_xlat3;
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec3<f32> = (vec3<f32>(x_185.w, x_185.w, x_185.w) * vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat1;
  let x_199 : vec3<f32> = ((vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(1.81621623f, 1.81621623f, 1.81621623f)) + vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_200 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_205 : vec4<f32> = u_xlat2;
  let x_208 : f32 = x_13.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_205.x, x_205.y), x_208);
  u_xlat3 = x_209;
  let x_213 : vec4<f32> = u_xlat2;
  let x_216 : f32 = x_13.x_GlobalMipBias.x;
  let x_217 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_213.z, x_213.w), x_216);
  u_xlat2 = x_217;
  let x_218 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat2;
  let x_222 : vec3<f32> = (vec3<f32>(x_218.w, x_218.w, x_218.w) * vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec4<f32> = u_xlat3;
  let x_227 : vec4<f32> = u_xlat3;
  let x_229 : vec3<f32> = (vec3<f32>(x_225.w, x_225.w, x_225.w) * vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat3;
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec3<f32> = ((vec3<f32>(x_232.x, x_232.y, x_232.z) * vec3<f32>(1.556756735f, 1.556756735f, 1.556756735f)) + vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat2;
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(0.972972989f, 0.972972989f, 0.972972989f)) + vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_251 : vec4<f32> = u_xlat0;
  let x_254 : f32 = x_13.x_GlobalMipBias.x;
  let x_255 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_251.x, x_251.y), x_254);
  u_xlat2 = x_255;
  let x_259 : vec4<f32> = u_xlat0;
  let x_262 : f32 = x_13.x_GlobalMipBias.x;
  let x_263 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_259.z, x_259.w), x_262);
  u_xlat0 = x_263;
  let x_264 : vec4<f32> = u_xlat0;
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : vec3<f32> = (vec3<f32>(x_264.w, x_264.w, x_264.w) * vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec4<f32> = u_xlat2;
  let x_275 : vec3<f32> = (vec3<f32>(x_271.w, x_271.w, x_271.w) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat2;
  let x_281 : vec4<f32> = u_xlat1;
  let x_283 : vec3<f32> = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(0.432432413f, 0.432432413f, 0.432432413f)) + vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat0;
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec3<f32> = ((vec3<f32>(x_286.x, x_286.y, x_286.z) * vec3<f32>(0.129729763f, 0.129729763f, 0.129729763f)) + vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat0;
  let x_298 : vec3<f32> = (vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(0.125f, 0.125f, 0.125f));
  let x_299 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_303 : f32 = u_xlat0.y;
  let x_305 : f32 = u_xlat0.x;
  u_xlat15 = max(x_303, x_305);
  let x_309 : f32 = u_xlat0.z;
  u_xlat1.x = max(x_309, 0.00001f);
  let x_313 : f32 = u_xlat15;
  let x_315 : f32 = u_xlat1.x;
  u_xlat15 = max(x_313, x_315);
  let x_317 : f32 = u_xlat15;
  u_xlat15 = (x_317 * 255.0f);
  let x_320 : f32 = u_xlat15;
  u_xlat15 = ceil(x_320);
  let x_322 : f32 = u_xlat15;
  u_xlat15 = (x_322 * 0.003921569f);
  let x_327 : vec4<f32> = u_xlat0;
  let x_329 : f32 = u_xlat15;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) / vec3<f32>(x_329, x_329, x_329));
  let x_332 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : f32 = u_xlat15;
  SV_Target0.w = x_334;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

