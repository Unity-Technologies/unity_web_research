diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_ShadingMode : i32,
  /* @offset(4) */
  x_ExposureCompensation : f32,
  /* @offset(16) */
  x_Color : vec4<f32>,
}

struct Props {
  /* @offset(0) */
  x_Validity : f32,
  /* @offset(4) */
  x_DilationThreshold : f32,
  /* @offset(8) */
  x_TouchupedByVolume : f32,
  /* @offset(16) */
  x_IndexInAtlas : vec4<f32>,
  /* @offset(32) */
  x_Offset : vec4<f32>,
  /* @offset(48) */
  x_RelativeSize : f32,
}

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> u_xlatb6 : bool;

var<private> u_xlatu0 : vec4<u32>;

@group(1) @binding(1) var<uniform> x_37 : Props;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var x_APVResL0_L1Rx : texture_3d<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var x_APVResL1G_L1Ry : texture_3d<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_APVResL1B_L1Rz : texture_3d<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : i32 = x_14.x_ShadingMode;
  u_xlatb0 = (x_18 >= 0i);
  let x_23 : i32 = x_14.x_ShadingMode;
  u_xlatb6 = (2i >= x_23);
  let x_25 : bool = u_xlatb6;
  let x_26 : bool = u_xlatb0;
  u_xlatb0 = (x_25 & x_26);
  let x_28 : bool = u_xlatb0;
  if (x_28) {
    let x_42 : vec4<f32> = x_37.x_IndexInAtlas;
    let x_47 : vec3<u32> = bitcast<vec3<u32>>(vec3<i32>(vec3<f32>(x_42.x, x_42.y, x_42.z)));
    let x_48 : vec4<u32> = u_xlatu0;
    u_xlatu0 = vec4<u32>(x_47.x, x_47.y, x_47.z, x_48.w);
    u_xlatu0.w = 0u;
    let x_60 : vec4<u32> = u_xlatu0;
    let x_64 : u32 = u_xlatu0.w;
    let x_66 : vec4<f32> = textureLoad(x_APVResL0_L1Rx, bitcast<vec3<i32>>(vec3<u32>(x_60.x, x_60.y, x_60.z)), bitcast<i32>(x_64));
    u_xlat1 = x_66;
    let x_69 : i32 = x_14.x_ShadingMode;
    u_xlatb2 = (x_69 != 1i);
    let x_72 : bool = u_xlatb2;
    if (x_72) {
      let x_78 : vec3<f32> = vs_TEXCOORD1;
      let x_79 : vec3<f32> = vs_TEXCOORD1;
      u_xlat2.x = dot(x_78, x_79);
      let x_84 : f32 = u_xlat2.x;
      u_xlat2.x = inverseSqrt(x_84);
      let x_87 : vec4<f32> = u_xlat2;
      let x_89 : vec3<f32> = vs_TEXCOORD1;
      let x_90 : vec3<f32> = (vec3<f32>(x_87.x, x_87.x, x_87.x) * x_89);
      let x_91 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
      let x_96 : vec4<u32> = u_xlatu0;
      let x_100 : u32 = u_xlatu0.w;
      let x_102 : vec4<f32> = textureLoad(x_APVResL1G_L1Ry, bitcast<vec3<i32>>(vec3<u32>(x_96.x, x_96.y, x_96.z)), bitcast<i32>(x_100));
      u_xlat3 = x_102;
      let x_106 : vec4<u32> = u_xlatu0;
      let x_110 : u32 = u_xlatu0.w;
      let x_112 : vec4<f32> = textureLoad(x_APVResL1B_L1Rz, bitcast<vec3<i32>>(vec3<u32>(x_106.x, x_106.y, x_106.z)), bitcast<i32>(x_110));
      u_xlat0 = x_112;
      let x_116 : f32 = u_xlat1.w;
      u_xlat4.x = x_116;
      let x_119 : f32 = u_xlat3.w;
      u_xlat4.y = x_119;
      let x_123 : f32 = u_xlat0.w;
      u_xlat4.z = x_123;
      let x_126 : vec3<f32> = u_xlat4;
      u_xlat4 = (x_126 + vec3<f32>(-0.5f, -0.5f, -0.5f));
      let x_131 : vec4<f32> = u_xlat1;
      u_xlat5 = (vec3<f32>(x_131.x, x_131.y, x_131.z) * vec3<f32>(4.0f, 4.0f, 4.0f));
      let x_136 : vec3<f32> = u_xlat4;
      let x_137 : vec3<f32> = u_xlat5;
      u_xlat4 = (x_136 * vec3<f32>(x_137.x, x_137.x, x_137.x));
      let x_140 : vec4<f32> = u_xlat3;
      let x_142 : vec3<f32> = (vec3<f32>(x_140.x, x_140.y, x_140.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
      let x_143 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
      let x_145 : vec3<f32> = u_xlat5;
      let x_147 : vec4<f32> = u_xlat3;
      let x_149 : vec3<f32> = (vec3<f32>(x_145.y, x_145.y, x_145.y) * vec3<f32>(x_147.x, x_147.y, x_147.z));
      let x_150 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
      let x_152 : vec4<f32> = u_xlat0;
      let x_154 : vec3<f32> = (vec3<f32>(x_152.x, x_152.y, x_152.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
      let x_155 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
      let x_157 : vec3<f32> = u_xlat5;
      let x_159 : vec4<f32> = u_xlat0;
      let x_161 : vec3<f32> = (vec3<f32>(x_157.z, x_157.z, x_157.z) * vec3<f32>(x_159.x, x_159.y, x_159.z));
      let x_162 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
      let x_164 : vec3<f32> = u_xlat4;
      let x_165 : vec4<f32> = u_xlat2;
      u_xlat4.x = dot(x_164, vec3<f32>(x_165.x, x_165.y, x_165.z));
      let x_169 : vec4<f32> = u_xlat3;
      let x_171 : vec4<f32> = u_xlat2;
      u_xlat4.y = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
      let x_175 : vec4<f32> = u_xlat0;
      let x_177 : vec4<f32> = u_xlat2;
      u_xlat4.z = dot(vec3<f32>(x_175.x, x_175.y, x_175.z), vec3<f32>(x_177.x, x_177.y, x_177.z));
      let x_181 : vec4<f32> = u_xlat1;
      let x_183 : vec3<f32> = u_xlat4;
      let x_184 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + x_183);
      let x_185 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    }
    let x_189 : f32 = x_14.x_ExposureCompensation;
    u_xlat0.x = exp2(x_189);
    let x_194 : vec4<f32> = u_xlat0;
    let x_196 : vec4<f32> = u_xlat1;
    let x_198 : vec3<f32> = (vec3<f32>(x_194.x, x_194.x, x_194.x) * vec3<f32>(x_196.x, x_196.y, x_196.z));
    let x_199 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
    SV_Target0.w = 1.0f;
    return;
  } else {
    let x_207 : i32 = x_14.x_ShadingMode;
    u_xlatb0 = (x_207 == 5i);
    let x_210 : bool = u_xlatb0;
    if (x_210) {
      let x_215 : f32 = x_37.x_TouchupedByVolume;
      u_xlatb0 = (0.0f < x_215);
      let x_218 : f32 = x_37.x_TouchupedByVolume;
      u_xlatb6 = (x_218 < 1.0f);
      let x_220 : bool = u_xlatb6;
      let x_221 : bool = u_xlatb0;
      u_xlatb0 = (x_220 & x_221);
      let x_223 : bool = u_xlatb0;
      if (x_223) {
        SV_Target0 = vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f);
        return;
      }
      let x_229 : vec4<f32> = x_37.x_IndexInAtlas;
      let x_232 : vec3<u32> = bitcast<vec3<u32>>(vec3<i32>(vec3<f32>(x_229.x, x_229.y, x_229.z)));
      let x_233 : vec4<u32> = u_xlatu0;
      u_xlatu0 = vec4<u32>(x_232.x, x_232.y, x_232.z, x_233.w);
      let x_235 : vec3<f32> = vs_TEXCOORD1;
      let x_236 : vec3<f32> = vs_TEXCOORD1;
      u_xlat1.x = dot(x_235, x_236);
      let x_240 : f32 = u_xlat1.x;
      u_xlat1.x = inverseSqrt(x_240);
      let x_243 : vec4<f32> = u_xlat1;
      let x_245 : vec3<f32> = vs_TEXCOORD1;
      let x_246 : vec3<f32> = (vec3<f32>(x_243.x, x_243.x, x_243.x) * x_245);
      let x_247 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
      u_xlatu0.w = 0u;
      let x_251 : vec4<u32> = u_xlatu0;
      let x_255 : u32 = u_xlatu0.w;
      let x_257 : vec4<f32> = textureLoad(x_APVResL0_L1Rx, bitcast<vec3<i32>>(vec3<u32>(x_251.x, x_251.y, x_251.z)), bitcast<i32>(x_255));
      u_xlat2 = x_257;
      let x_259 : vec4<u32> = u_xlatu0;
      let x_263 : u32 = u_xlatu0.w;
      let x_265 : vec4<f32> = textureLoad(x_APVResL1G_L1Ry, bitcast<vec3<i32>>(vec3<u32>(x_259.x, x_259.y, x_259.z)), bitcast<i32>(x_263));
      u_xlat3 = x_265;
      let x_267 : vec4<u32> = u_xlatu0;
      let x_271 : u32 = u_xlatu0.w;
      let x_273 : vec4<f32> = textureLoad(x_APVResL1B_L1Rz, bitcast<vec3<i32>>(vec3<u32>(x_267.x, x_267.y, x_267.z)), bitcast<i32>(x_271));
      u_xlat0 = x_273;
      let x_275 : f32 = u_xlat2.w;
      u_xlat4.x = x_275;
      let x_278 : f32 = u_xlat3.w;
      u_xlat4.y = x_278;
      let x_281 : f32 = u_xlat0.w;
      u_xlat4.z = x_281;
      let x_283 : vec3<f32> = u_xlat4;
      u_xlat4 = (x_283 + vec3<f32>(-0.5f, -0.5f, -0.5f));
      let x_285 : vec4<f32> = u_xlat2;
      u_xlat5 = (vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(4.0f, 4.0f, 4.0f));
      let x_288 : vec3<f32> = u_xlat4;
      let x_289 : vec3<f32> = u_xlat5;
      u_xlat4 = (x_288 * vec3<f32>(x_289.x, x_289.x, x_289.x));
      let x_292 : vec4<f32> = u_xlat3;
      let x_294 : vec3<f32> = (vec3<f32>(x_292.x, x_292.y, x_292.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
      let x_295 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
      let x_297 : vec3<f32> = u_xlat5;
      let x_299 : vec4<f32> = u_xlat3;
      let x_301 : vec3<f32> = (vec3<f32>(x_297.y, x_297.y, x_297.y) * vec3<f32>(x_299.x, x_299.y, x_299.z));
      let x_302 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
      let x_304 : vec4<f32> = u_xlat0;
      let x_306 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
      let x_307 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
      let x_309 : vec3<f32> = u_xlat5;
      let x_311 : vec4<f32> = u_xlat0;
      let x_313 : vec3<f32> = (vec3<f32>(x_309.z, x_309.z, x_309.z) * vec3<f32>(x_311.x, x_311.y, x_311.z));
      let x_314 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
      let x_316 : vec3<f32> = u_xlat4;
      let x_317 : vec4<f32> = u_xlat1;
      u_xlat4.x = dot(x_316, vec3<f32>(x_317.x, x_317.y, x_317.z));
      let x_321 : vec4<f32> = u_xlat3;
      let x_323 : vec4<f32> = u_xlat1;
      u_xlat4.y = dot(vec3<f32>(x_321.x, x_321.y, x_321.z), vec3<f32>(x_323.x, x_323.y, x_323.z));
      let x_327 : vec4<f32> = u_xlat0;
      let x_329 : vec4<f32> = u_xlat1;
      u_xlat4.z = dot(vec3<f32>(x_327.x, x_327.y, x_327.z), vec3<f32>(x_329.x, x_329.y, x_329.z));
      let x_333 : vec4<f32> = u_xlat2;
      let x_335 : vec3<f32> = u_xlat4;
      let x_336 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) + x_335);
      let x_337 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
      let x_341 : f32 = x_14.x_ExposureCompensation;
      u_xlat18 = exp2(x_341);
      let x_343 : f32 = u_xlat18;
      let x_345 : vec4<f32> = u_xlat0;
      let x_347 : vec3<f32> = (vec3<f32>(x_343, x_343, x_343) * vec3<f32>(x_345.x, x_345.y, x_345.z));
      let x_348 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
      SV_Target0.w = 1.0f;
      return;
    } else {
      let x_354 : i32 = x_14.x_ShadingMode;
      u_xlatb0 = (x_354 == 3i);
      let x_356 : bool = u_xlatb0;
      if (x_356) {
        let x_360 : f32 = x_37.x_Validity;
        SV_Target0 = ((vec4<f32>(x_360, x_360, x_360, x_360) * vec4<f32>(1.0f, -1.0f, 0.0f, 0.0f)) + vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
        return;
      } else {
        let x_370 : i32 = x_14.x_ShadingMode;
        u_xlatb0 = (x_370 == 4i);
        let x_373 : bool = u_xlatb0;
        if (x_373) {
          let x_377 : f32 = x_37.x_DilationThreshold;
          let x_379 : f32 = x_37.x_Validity;
          u_xlatb0 = (x_377 < x_379);
          let x_381 : bool = u_xlatb0;
          if (x_381) {
            SV_Target0 = vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f);
            return;
          } else {
            SV_Target0 = vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f);
            return;
          }
        } else {
          let x_389 : i32 = x_14.x_ShadingMode;
          u_xlatb0 = (x_389 == 6i);
          let x_392 : bool = u_xlatb0;
          if (x_392) {
            let x_396 : f32 = x_37.x_RelativeSize;
            SV_Target0 = ((vec4<f32>(x_396, x_396, x_396, x_396) * vec4<f32>(1.0f, -1.0f, 0.0f, 0.0f)) + vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
            return;
          }
        }
      }
    }
  }
  let x_402 : vec4<f32> = x_14.x_Color;
  SV_Target0 = x_402;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


