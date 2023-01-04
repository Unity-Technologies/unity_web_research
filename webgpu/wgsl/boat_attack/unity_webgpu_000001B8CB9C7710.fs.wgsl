struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  unity_MatrixInvVP : mat4x4<f32>,
  x_ViewProjM : mat4x4<f32>,
  x_PrevViewProjM : mat4x4<f32>,
  x_Intensity : f32,
  x_Clamp : f32,
  @size(8)
  padding_1 : u32,
  x_SourceSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_PointClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat4 : f32;
  var u_xlat12 : f32;
  var u_xlatb4 : bool;
  var x_229 : vec2<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = vs_TEXCOORD0;
  let x_20 : vec2<f32> = ((vec2<f32>(x_13.x, x_13.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_21 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_20.x, x_20.y, x_21.z, x_21.w);
  let x_24 : vec4<f32> = u_xlat0;
  let x_35 : vec4<f32> = x_30.unity_MatrixInvVP[1i];
  u_xlat1 = (-(vec4<f32>(x_24.y, x_24.y, x_24.y, x_24.y)) * x_35);
  let x_39 : vec4<f32> = x_30.unity_MatrixInvVP[0i];
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_39 * vec4<f32>(x_40.x, x_40.x, x_40.x, x_40.x)) + x_43);
  let x_55 : vec4<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_30.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_55.x, x_55.y), x_61);
  u_xlat1.x = x_62.x;
  let x_68 : vec4<f32> = x_30.unity_MatrixInvVP[2i];
  let x_69 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_68 * vec4<f32>(x_69.x, x_69.x, x_69.x, x_69.x)) + x_72);
  let x_74 : vec4<f32> = u_xlat0;
  let x_77 : vec4<f32> = x_30.unity_MatrixInvVP[3i];
  u_xlat0 = (x_74 + x_77);
  let x_80 : vec4<f32> = u_xlat0;
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : vec3<f32> = (vec3<f32>(x_80.x, x_80.y, x_80.z) / vec3<f32>(x_82.w, x_82.w, x_82.w));
  let x_85 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_87 : vec4<f32> = u_xlat0;
  let x_90 : vec4<f32> = x_30.x_PrevViewProjM[1i];
  let x_92 : vec3<f32> = (vec3<f32>(x_87.y, x_87.y, x_87.y) * vec3<f32>(x_90.x, x_90.y, x_90.w));
  let x_93 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : vec4<f32> = x_30.x_PrevViewProjM[0i];
  let x_98 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = u_xlat1;
  let x_103 : vec3<f32> = ((vec3<f32>(x_96.x, x_96.y, x_96.w) * vec3<f32>(x_98.x, x_98.x, x_98.x)) + vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec4<f32> = x_30.x_PrevViewProjM[2i];
  let x_109 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.w) * vec3<f32>(x_109.z, x_109.z, x_109.z)) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_117 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = x_30.x_PrevViewProjM[3i];
  let x_122 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.z) + vec3<f32>(x_120.x, x_120.y, x_120.w));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec2<f32> = (vec2<f32>(x_125.x, x_125.y) / vec2<f32>(x_127.z, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = x_30.x_ViewProjM[1i];
  u_xlat2 = (vec3<f32>(x_134.y, x_134.y, x_134.y) * vec3<f32>(x_137.x, x_137.y, x_137.w));
  let x_141 : vec4<f32> = x_30.x_ViewProjM[0i];
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec3<f32> = u_xlat2;
  let x_147 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.w) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_148.z, x_147.z);
  let x_151 : vec4<f32> = x_30.x_ViewProjM[2i];
  let x_153 : vec4<f32> = u_xlat0;
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.w) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + vec3<f32>(x_156.x, x_156.y, x_156.w));
  let x_159 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat0;
  let x_164 : vec4<f32> = x_30.x_ViewProjM[3i];
  let x_166 : vec3<f32> = (vec3<f32>(x_161.x, x_161.y, x_161.z) + vec3<f32>(x_164.x, x_164.y, x_164.w));
  let x_167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = u_xlat0;
  let x_173 : vec2<f32> = (vec2<f32>(x_169.x, x_169.y) / vec2<f32>(x_171.z, x_171.z));
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_174.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat0;
  let x_179 : vec4<f32> = u_xlat1;
  let x_181 : vec2<f32> = (-(vec2<f32>(x_176.x, x_176.y)) + vec2<f32>(x_179.x, x_179.y));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
  let x_186 : f32 = u_xlat0.y;
  u_xlat0.z = -(x_186);
  let x_191 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = u_xlat0;
  u_xlat4 = dot(vec2<f32>(x_191.x, x_191.z), vec2<f32>(x_193.x, x_193.z));
  let x_196 : f32 = u_xlat4;
  u_xlat4 = sqrt(x_196);
  let x_200 : f32 = u_xlat4;
  u_xlat12 = (1.0f / x_200);
  let x_202 : f32 = u_xlat12;
  let x_204 : vec4<f32> = u_xlat0;
  let x_206 : vec2<f32> = (vec2<f32>(x_202, x_202) * vec2<f32>(x_204.x, x_204.z));
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_206.x, x_207.y, x_206.y, x_207.w);
  let x_209 : f32 = u_xlat4;
  let x_212 : f32 = x_30.x_Clamp;
  u_xlat12 = min(x_209, x_212);
  let x_218 : f32 = u_xlat4;
  u_xlatb4 = (0.0f < x_218);
  let x_220 : vec4<f32> = u_xlat0;
  let x_222 : f32 = u_xlat12;
  let x_224 : vec2<f32> = (vec2<f32>(x_220.x, x_220.z) * vec2<f32>(x_222, x_222));
  let x_225 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_224.x, x_225.y, x_224.y, x_225.w);
  let x_227 : bool = u_xlatb4;
  if (x_227) {
    let x_232 : vec4<f32> = u_xlat0;
    x_229 = vec2<f32>(x_232.x, x_232.z);
  } else {
    x_229 = vec2<f32>(0.0f, 0.0f);
  }
  let x_236 : vec2<f32> = x_229;
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_236.x, x_236.y, x_237.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat0;
  let x_243 : f32 = x_30.x_Intensity;
  let x_245 : vec2<f32> = (vec2<f32>(x_239.x, x_239.y) * vec2<f32>(x_243, x_243));
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_245.x, x_245.y, x_246.z, x_246.w);
  let x_249 : vec4<f32> = vs_TEXCOORD0;
  let x_253 : vec4<f32> = x_30.x_SourceSize;
  u_xlat8 = (vec2<f32>(x_249.x, x_249.y) * vec2<f32>(x_253.x, x_253.y));
  let x_256 : vec2<f32> = u_xlat8;
  u_xlat8.x = dot(x_256, vec2<f32>(0.067110561f, 0.00583715f));
  let x_263 : f32 = u_xlat8.x;
  u_xlat8.x = fract(x_263);
  let x_267 : f32 = u_xlat8.x;
  u_xlat8.x = (x_267 * 52.982917786f);
  let x_272 : f32 = u_xlat8.x;
  u_xlat8.x = fract(x_272);
  let x_276 : f32 = u_xlat8.x;
  u_xlat12 = (x_276 * 0.25f);
  let x_279 : vec2<f32> = u_xlat8;
  let x_283 : vec2<f32> = (vec2<f32>(x_279.x, x_279.x) + vec2<f32>(-0.5f, 1.0f));
  let x_284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_284.z, x_284.w);
  let x_286 : f32 = u_xlat12;
  let x_288 : vec4<f32> = u_xlat0;
  let x_291 : vec4<f32> = vs_TEXCOORD0;
  u_xlat8 = ((vec2<f32>(x_286, x_286) * vec2<f32>(x_288.x, x_288.y)) + vec2<f32>(x_291.x, x_291.y));
  let x_299 : vec2<f32> = u_xlat8;
  let x_301 : f32 = x_30.x_GlobalMipBias.x;
  let x_302 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_299, x_301);
  u_xlat2 = vec3<f32>(x_302.x, x_302.y, x_302.z);
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat3 = (-(vec4<f32>(x_305.x, x_305.x, x_305.x, x_305.x)) + vec4<f32>(0.5f, 0.5f, 1.5f, 1.5f));
  let x_313 : f32 = u_xlat1.y;
  u_xlat8.x = (x_313 * 0.25f);
  let x_316 : vec2<f32> = u_xlat8;
  let x_318 : vec4<f32> = u_xlat0;
  let x_321 : vec4<f32> = vs_TEXCOORD0;
  u_xlat8 = ((vec2<f32>(x_316.x, x_316.x) * vec2<f32>(x_318.x, x_318.y)) + vec2<f32>(x_321.x, x_321.y));
  let x_327 : vec2<f32> = u_xlat8;
  let x_329 : f32 = x_30.x_GlobalMipBias.x;
  let x_330 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_327, x_329);
  let x_331 : vec3<f32> = vec3<f32>(x_330.x, x_330.y, x_330.z);
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_334 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_337 : vec4<f32> = u_xlat3;
  let x_339 : vec4<f32> = u_xlat0;
  let x_342 : vec4<f32> = vs_TEXCOORD0;
  u_xlat0 = ((-(x_337) * vec4<f32>(x_339.x, x_339.y, x_339.x, x_339.y)) + vec4<f32>(x_342.x, x_342.y, x_342.x, x_342.y));
  let x_348 : vec4<f32> = u_xlat0;
  let x_351 : f32 = x_30.x_GlobalMipBias.x;
  let x_352 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_348.x, x_348.y), x_351);
  let x_353 : vec3<f32> = vec3<f32>(x_352.x, x_352.y, x_352.z);
  let x_354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_359 : vec4<f32> = u_xlat0;
  let x_362 : f32 = x_30.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_359.z, x_359.w), x_362);
  let x_364 : vec3<f32> = vec3<f32>(x_363.x, x_363.y, x_363.z);
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : vec3<f32> = u_xlat2;
  let x_368 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_367 + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat0;
  let x_373 : vec3<f32> = u_xlat2;
  let x_374 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) + x_373);
  let x_375 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat1;
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) + vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_386 : vec4<f32> = u_xlat0;
  let x_389 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_390 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

